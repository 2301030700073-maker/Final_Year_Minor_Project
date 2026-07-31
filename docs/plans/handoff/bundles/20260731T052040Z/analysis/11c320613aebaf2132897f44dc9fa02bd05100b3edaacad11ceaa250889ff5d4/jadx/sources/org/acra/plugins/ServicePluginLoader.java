package org.acra.plugins;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.config.CoreConfiguration;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ServicePluginLoader implements PluginLoader {
    public final ArrayList loadEnabled(CoreConfiguration coreConfiguration, Class cls) {
        coreConfiguration.getClass();
        ArrayList arrayList = new ArrayList();
        ServiceLoader load = ServiceLoader.load(cls, ServicePluginLoader.class.getClassLoader());
        ErrorReporter errorReporter = ACRA.errorReporter;
        Iterator it = load.iterator();
        it.getClass();
        while (it.hasNext()) {
            try {
                try {
                    Plugin plugin = (Plugin) it.next();
                    plugin.getClass();
                    if (plugin.enabled(coreConfiguration)) {
                        ErrorReporter errorReporter2 = ACRA.errorReporter;
                        arrayList.add(plugin);
                    } else {
                        ErrorReporter errorReporter3 = ACRA.errorReporter;
                    }
                } catch (ServiceConfigurationError e) {
                    ErrorReporter errorReporter4 = ACRA.errorReporter;
                    Log.e("ACRA", "Unable to load ".concat(cls.getSimpleName()), e);
                }
            } catch (ServiceConfigurationError e2) {
                ErrorReporter errorReporter5 = ACRA.errorReporter;
                ErrorReporter errorReporter6 = ACRA.errorReporter;
                Log.e("ACRA", "Broken ServiceLoader for ".concat(cls.getSimpleName()), e2);
            }
        }
        return arrayList;
    }
}
