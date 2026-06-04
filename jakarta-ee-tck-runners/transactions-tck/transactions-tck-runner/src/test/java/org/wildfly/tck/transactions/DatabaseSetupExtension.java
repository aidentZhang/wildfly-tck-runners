/*
 * Copyright The WildFly Authors
 * SPDX-License-Identifier: Apache-2.0
 */
package org.wildfly.tck.transactions;

import org.jboss.arquillian.container.spi.event.container.AfterStart;
import org.jboss.arquillian.core.api.annotation.Observes;
import org.jboss.arquillian.core.spi.LoadableExtension;

import java.util.logging.Logger;

/**
 * Arquillian extension to set up the database after the container starts.
 */
public class DatabaseSetupExtension implements LoadableExtension {
    private static final Logger log = Logger.getLogger(DatabaseSetupExtension.class.getName());

    @Override
    public void register(ExtensionBuilder builder) {
        builder.observer(DatabaseSetupObserver.class);
    }

    public static class DatabaseSetupObserver {
        private static boolean initialized = false;
        
        public void setupDatabase(@Observes AfterStart event) {
            if (initialized) {
                log.info("Database already initialized, skipping");
                return;
            }
            
            log.info("Container started, setting up database for TCK tests...");
            try {
                // Wait a bit for WildFly to fully start and be ready for JNDI lookups
                Thread.sleep(3000);
                DatabaseInitializer.initializeDatabase();
                initialized = true;
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new RuntimeException("Interrupted while waiting for server startup", e);
            }
        }
    }
}

// Made with Bob
