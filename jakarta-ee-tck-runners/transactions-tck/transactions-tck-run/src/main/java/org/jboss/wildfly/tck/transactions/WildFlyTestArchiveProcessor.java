/*
 * Copyright (c) "2022" Red Hat and others
 *
 * This program and the accompanying materials are made available under the Apache Software License 2.0 which is available at:
 *  https://www.apache.org/licenses/LICENSE-2.0.
 *
 *  SPDX-License-Identifier: Apache-2.0
 */

package org.jboss.wildfly.tck.transactions;

import org.jboss.arquillian.config.descriptor.api.ArquillianDescriptor;
import org.jboss.arquillian.core.api.annotation.Observes;
import org.jboss.shrinkwrap.api.spec.EnterpriseArchive;
import org.jboss.shrinkwrap.api.spec.JavaArchive;
import org.jboss.shrinkwrap.api.spec.WebArchive;
import tck.arquillian.porting.lib.spi.AbstractTestArchiveProcessor;

import java.net.URL;
import java.util.logging.Logger;

public class WildFlyTestArchiveProcessor extends AbstractTestArchiveProcessor {

    static Logger log = Logger.getLogger(WildFlyTestArchiveProcessor.class.getName());

    /**
     * Called on completion of the Arquillian configuration.
     */
    public void initalize(@Observes ArquillianDescriptor descriptor) {
        // Must call to setup the ResourceProvider
        super.initalize(descriptor);
    }

    @Override
    public void processClientArchive(JavaArchive clientArchive, Class<?> testClass, URL sunXmlURL) {
        // No special processing needed for WildFly
    }

    @Override
    public void processWebArchive(WebArchive webArchive, Class<?> testClass, URL sunXmlURL) {
        // No special processing needed for WildFly
    }

    @Override
    public void processRarArchive(JavaArchive rarArchive, Class<?> testClass, URL sunXmlURL) {
        // No special processing needed for WildFly
    }

    @Override
    public void processParArchive(JavaArchive parArchive, Class<?> testClass, URL sunXmlURL) {
        // No special processing needed for WildFly
    }

    @Override
    public void processEarArchive(EnterpriseArchive earArchive, Class<?> testClass, URL sunXmlURL) {
        // No special processing needed for WildFly
    }

    @Override
    public void processEjbArchive(JavaArchive ejbArchive, Class<?> testClass, URL sunXmlURL) {
        // No special processing needed for WildFly
    }
}

// Made with Bob
