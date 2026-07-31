package org.acra.plugins;

import java.util.Iterator;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.config.CoreConfiguration;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class HasConfigPlugin implements Plugin {
    private final Class<? extends CoreConfiguration> configClass;

    public HasConfigPlugin(Class<? extends CoreConfiguration> cls) {
        cls.getClass();
        this.configClass = cls;
    }

    @Override // org.acra.plugins.Plugin
    public boolean enabled(CoreConfiguration coreConfiguration) {
        CoreConfiguration coreConfiguration2;
        coreConfiguration.getClass();
        Class<? extends CoreConfiguration> cls = this.configClass;
        cls.getClass();
        ErrorReporter errorReporter = ACRA.errorReporter;
        Iterator it = coreConfiguration.getPluginConfigurations().iterator();
        while (true) {
            if (!it.hasNext()) {
                coreConfiguration2 = null;
                break;
            }
            coreConfiguration2 = (CoreConfiguration) it.next();
            ErrorReporter errorReporter2 = ACRA.errorReporter;
            if (cls.isAssignableFrom(coreConfiguration2.getClass())) {
                break;
            }
        }
        return coreConfiguration2 != null;
    }
}
