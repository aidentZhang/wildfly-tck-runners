/*
 * Copyright The WildFly Authors
 * SPDX-License-Identifier: Apache-2.0
 */

package org.jboss.wildfly.tck.transactions;

import org.jboss.arquillian.container.spi.client.container.DeploymentExceptionTransformer;

public class WildFlyExceptionTransformer implements DeploymentExceptionTransformer {

    public Throwable transform(Throwable throwable) {
        // For transactions TCK, we simply return the throwable as-is
        // No special exception transformation needed
        return throwable;
    }

}

// Made with Bob
