package app.k9mail.feature.launcher;

import android.net.Uri;
import net.openid.appauth.JsonUtil$Field;
import net.thunderbird.feature.navigation.changelog.api.ChangeLogMode;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FeatureLauncherTarget$Changelog extends JsonUtil$Field {
    public final ChangeLogMode changeLogMode;

    public FeatureLauncherTarget$Changelog(ChangeLogMode changeLogMode) {
        super(Uri.parse("app://changelog/" + changeLogMode), null);
        this.changeLogMode = changeLogMode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FeatureLauncherTarget$Changelog) && this.changeLogMode == ((FeatureLauncherTarget$Changelog) obj).changeLogMode;
    }

    public final int hashCode() {
        return this.changeLogMode.hashCode();
    }

    public final String toString() {
        return "Changelog(changeLogMode=" + this.changeLogMode + ")";
    }
}
