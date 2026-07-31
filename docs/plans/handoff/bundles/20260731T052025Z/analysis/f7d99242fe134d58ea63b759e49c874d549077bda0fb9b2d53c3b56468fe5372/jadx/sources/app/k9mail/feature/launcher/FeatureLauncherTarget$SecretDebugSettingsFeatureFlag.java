package app.k9mail.feature.launcher;

import android.net.Uri;
import net.openid.appauth.JsonUtil$Field;
import net.thunderbird.feature.debug.settings.navigation.SecretDebugSettingsRoute;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FeatureLauncherTarget$SecretDebugSettingsFeatureFlag extends JsonUtil$Field {
    public static final FeatureLauncherTarget$SecretDebugSettingsFeatureFlag INSTANCE;

    static {
        new SecretDebugSettingsRoute();
        INSTANCE = new FeatureLauncherTarget$SecretDebugSettingsFeatureFlag(Uri.parse("app://secret_debug_settings/FeatureFlag"), null);
    }

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof FeatureLauncherTarget$SecretDebugSettingsFeatureFlag);
    }

    public final int hashCode() {
        return -1982543363;
    }

    public final String toString() {
        return "SecretDebugSettingsFeatureFlag";
    }
}
