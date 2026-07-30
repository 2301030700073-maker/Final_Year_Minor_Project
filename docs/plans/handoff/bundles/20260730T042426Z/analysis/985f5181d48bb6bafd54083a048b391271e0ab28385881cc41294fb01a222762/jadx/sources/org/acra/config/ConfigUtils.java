package org.acra.config;

import kotlin.jvm.internal.Intrinsics;
import org.acra.ACRA;

/* compiled from: ConfigUtils.kt */
/* loaded from: classes2.dex */
public abstract class ConfigUtils {
    public static final Configuration findPluginConfiguration(CoreConfiguration coreConfiguration, Class c) {
        Intrinsics.checkNotNullParameter(coreConfiguration, "<this>");
        Intrinsics.checkNotNullParameter(c, "c");
        if (ACRA.DEV_LOGGING) {
            ACRA.log.d(ACRA.LOG_TAG, "Checking plugin Configurations : " + coreConfiguration.getPluginConfigurations() + " for class : " + c);
        }
        for (Configuration configuration : coreConfiguration.getPluginConfigurations()) {
            if (ACRA.DEV_LOGGING) {
                ACRA.log.d(ACRA.LOG_TAG, "Checking plugin Configuration : " + configuration + " against plugin class : " + c);
            }
            if (c.isAssignableFrom(configuration.getClass())) {
                Intrinsics.checkNotNull(configuration, "null cannot be cast to non-null type T of org.acra.config.ConfigUtils.findPluginConfiguration");
                return configuration;
            }
        }
        return null;
    }

    public static final Configuration getPluginConfiguration(CoreConfiguration coreConfiguration, Class c) {
        Intrinsics.checkNotNullParameter(coreConfiguration, "<this>");
        Intrinsics.checkNotNullParameter(c, "c");
        Configuration findPluginConfiguration = findPluginConfiguration(coreConfiguration, c);
        if (findPluginConfiguration != null) {
            return findPluginConfiguration;
        }
        throw new IllegalArgumentException(c.getName() + " is no registered configuration");
    }
}
