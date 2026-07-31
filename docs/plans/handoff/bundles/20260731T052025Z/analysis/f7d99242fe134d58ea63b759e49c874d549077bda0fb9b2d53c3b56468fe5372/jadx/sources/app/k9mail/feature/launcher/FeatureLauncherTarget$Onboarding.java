package app.k9mail.feature.launcher;

import android.net.Uri;
import net.openid.appauth.JsonUtil$Field;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FeatureLauncherTarget$Onboarding extends JsonUtil$Field {
    public static final FeatureLauncherTarget$Onboarding INSTANCE = new FeatureLauncherTarget$Onboarding(Uri.parse("app://onboarding"), 268468224);

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof FeatureLauncherTarget$Onboarding);
    }

    public final int hashCode() {
        return 1007892924;
    }

    public final String toString() {
        return "Onboarding";
    }
}
