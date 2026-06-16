package org.jboss.wildfly.tck.transactions;

import javax.naming.*;
import javax.naming.spi.InitialContextFactory;
import java.util.Hashtable;
import java.util.Properties;

/**
 * Custom InitialContextFactory that provides java:comp/env context for application client tests.
 * Maps java:comp/env/ejb/EJBVehicle to the actual remote JNDI name.
 */
public class AppClientInitialContextFactory implements InitialContextFactory {
    
    @Override
    public Context getInitialContext(Hashtable<?, ?> environment) throws NamingException {
        return new AppClientContext(environment);
    }
    
    private static class AppClientContext implements Context {
        private final Context delegate;
        private final Hashtable<?, ?> environment;
        
        public AppClientContext(Hashtable<?, ?> environment) throws NamingException {
            this.environment = environment;
            // Create the real WildFly naming context
            Hashtable<Object, Object> env = new Hashtable<>();
            env.put(Context.INITIAL_CONTEXT_FACTORY, "org.wildfly.naming.client.WildFlyInitialContextFactory");
            Object providerUrl = environment.get(Context.PROVIDER_URL);
            if (providerUrl == null) {
                providerUrl = "remote+http://localhost:8080";
            }
            env.put(Context.PROVIDER_URL, providerUrl);
            this.delegate = new javax.naming.InitialContext(env);
        }
        
        @Override
        public Object lookup(Name name) throws NamingException {
            return lookup(name.toString());
        }
        
        @Override
        public Object lookup(String name) throws NamingException {
            // Handle java:comp/env/ejb/EJBVehicle lookups
            if (name.startsWith("java:comp/env/ejb/EJBVehicle") || name.equals("ejb/EJBVehicle")) {
                // Extract the deployment name from system property or use default pattern
                String deploymentName = System.getProperty("ejb.deployment.name", "begin_ejb_vehicle");
                String ejbName = "com_sun_ts_tests_common_vehicle_ejb_EJBVehicle";
                String remoteName = "ejb:" + deploymentName + "/" + deploymentName + "_ejb/" + ejbName + 
                                  "!com.sun.ts.tests.common.vehicle.ejb.EJBVehicleRemote?stateful";
                System.out.println("Mapping " + name + " to " + remoteName);
                return delegate.lookup(remoteName);
            }
            
            // For other lookups, try direct lookup
            return delegate.lookup(name);
        }
        
        @Override
        public void bind(Name name, Object obj) throws NamingException {
            delegate.bind(name, obj);
        }
        
        @Override
        public void bind(String name, Object obj) throws NamingException {
            delegate.bind(name, obj);
        }
        
        @Override
        public void rebind(Name name, Object obj) throws NamingException {
            delegate.rebind(name, obj);
        }
        
        @Override
        public void rebind(String name, Object obj) throws NamingException {
            delegate.rebind(name, obj);
        }
        
        @Override
        public void unbind(Name name) throws NamingException {
            delegate.unbind(name);
        }
        
        @Override
        public void unbind(String name) throws NamingException {
            delegate.unbind(name);
        }
        
        @Override
        public void rename(Name oldName, Name newName) throws NamingException {
            delegate.rename(oldName, newName);
        }
        
        @Override
        public void rename(String oldName, String newName) throws NamingException {
            delegate.rename(oldName, newName);
        }
        
        @Override
        public NamingEnumeration<NameClassPair> list(Name name) throws NamingException {
            return delegate.list(name);
        }
        
        @Override
        public NamingEnumeration<NameClassPair> list(String name) throws NamingException {
            return delegate.list(name);
        }
        
        @Override
        public NamingEnumeration<Binding> listBindings(Name name) throws NamingException {
            return delegate.listBindings(name);
        }
        
        @Override
        public NamingEnumeration<Binding> listBindings(String name) throws NamingException {
            return delegate.listBindings(name);
        }
        
        @Override
        public void destroySubcontext(Name name) throws NamingException {
            delegate.destroySubcontext(name);
        }
        
        @Override
        public void destroySubcontext(String name) throws NamingException {
            delegate.destroySubcontext(name);
        }
        
        @Override
        public Context createSubcontext(Name name) throws NamingException {
            return delegate.createSubcontext(name);
        }
        
        @Override
        public Context createSubcontext(String name) throws NamingException {
            return delegate.createSubcontext(name);
        }
        
        @Override
        public Object lookupLink(Name name) throws NamingException {
            return delegate.lookupLink(name);
        }
        
        @Override
        public Object lookupLink(String name) throws NamingException {
            return delegate.lookupLink(name);
        }
        
        @Override
        public NameParser getNameParser(Name name) throws NamingException {
            return delegate.getNameParser(name);
        }
        
        @Override
        public NameParser getNameParser(String name) throws NamingException {
            return delegate.getNameParser(name);
        }
        
        @Override
        public Name composeName(Name name, Name prefix) throws NamingException {
            return delegate.composeName(name, prefix);
        }
        
        @Override
        public String composeName(String name, String prefix) throws NamingException {
            return delegate.composeName(name, prefix);
        }
        
        @Override
        public Object addToEnvironment(String propName, Object propVal) throws NamingException {
            return delegate.addToEnvironment(propName, propVal);
        }
        
        @Override
        public Object removeFromEnvironment(String propName) throws NamingException {
            return delegate.removeFromEnvironment(propName);
        }
        
        @Override
        public Hashtable<?, ?> getEnvironment() throws NamingException {
            return delegate.getEnvironment();
        }
        
        @Override
        public void close() throws NamingException {
            delegate.close();
        }
        
        @Override
        public String getNameInNamespace() throws NamingException {
            return delegate.getNameInNamespace();
        }
    }
}

// Made with Bob
