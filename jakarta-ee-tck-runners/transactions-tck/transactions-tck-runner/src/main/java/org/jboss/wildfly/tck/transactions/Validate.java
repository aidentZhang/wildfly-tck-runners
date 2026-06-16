/*
 * Copyright The WildFly Authors
 * SPDX-License-Identifier: Apache-2.0
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
