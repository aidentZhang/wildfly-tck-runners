/*
 * Copyright (c) "2022" Red Hat and others
 *
 * This program and the accompanying materials are made available under the Apache Software License 2.0 which is available at:
 *  https://www.apache.org/licenses/LICENSE-2.0.
 *
 *  SPDX-License-Identifier: Apache-2.0
 */

package org.jboss.wildfly.tck.transactions;

/**
 * Utility class for validation operations.
 */
public class Validate {

    /**
     * Check if a class exists on the classpath.
     *
     * @param className the fully qualified class name
     * @return true if the class exists, false otherwise
     */
    public static boolean classExists(String className) {
        try {
            Class.forName(className);
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }
}

// Made with Bob
