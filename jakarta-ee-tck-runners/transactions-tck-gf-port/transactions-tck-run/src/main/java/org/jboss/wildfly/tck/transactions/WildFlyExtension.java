/*
 * Copyright (c) "2022" Red Hat and others
 *
 * This program and the accompanying materials are made available under the Apache Software License 2.0 which is available at:
 *  https://www.apache.org/licenses/LICENSE-2.0.
 *
 *  SPDX-License-Identifier: Apache-2.0
 */

package org.jboss.wildfly.tck.transactions;


import org.jboss.arquillian.container.spi.client.container.DeploymentExceptionTransformer;
import org.jboss.arquillian.core.spi.LoadableExtension;
import org.jboss.arquillian.test.spi.enricher.resource.ResourceProvider;
import org.jboss.as.arquillian.container.ExceptionTransformer;
import org.kohsuke.MetaInfServices;

@MetaInfServices
public class WildFlyExtension implements LoadableExtension {

    private static final String MANAGED_CONTAINER_CLASS = "org.jboss.as.arquillian.container.managed.ManagedDeployableContainer";
    private static final String REMOTE_CONTAINER_CLASS = "org.jboss.as.arquillian.container.remote.RemoteDeployableContainer";

    @Override
    public void register(ExtensionBuilder builder) {

        // Register TestArchiveProcessor as a ResourceProvider
        builder.service(ResourceProvider.class, WildFlyTestArchiveProcessor.class);
        builder.observer(WildFlyTestArchiveProcessor.class);

        if (Validate.classExists(MANAGED_CONTAINER_CLASS) || Validate.classExists(REMOTE_CONTAINER_CLASS)) {

            // Override the default NOOP exception transformer
            builder.override(DeploymentExceptionTransformer.class, ExceptionTransformer.class,
                             WildFlyExceptionTransformer.class);

        }
    }

}
