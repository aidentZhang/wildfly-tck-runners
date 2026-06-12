/*
 * Copyright \(c\) "2022" Red Hat and others
 *
 * This program and the accompanying materials are made available under the Apache Software License 2.0 which is available at:
 *  https://www.apache.org/licenses/LICENSE-2.0.
 *
 *  SPDX-License-Identifier: Apache-2.0
 */

package org.jboss.wildfly.tck.transactions;

import java.util.List;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.jboss.arquillian.container.spi.client.container.DeploymentExceptionTransformer;

public class WildFlyExceptionTransformer implements DeploymentExceptionTransformer {

    public Throwable transform(Throwable throwable) {
        // For transactions TCK, we simply return the throwable as-is
        // No special exception transformation needed
        return throwable;
    }

}
