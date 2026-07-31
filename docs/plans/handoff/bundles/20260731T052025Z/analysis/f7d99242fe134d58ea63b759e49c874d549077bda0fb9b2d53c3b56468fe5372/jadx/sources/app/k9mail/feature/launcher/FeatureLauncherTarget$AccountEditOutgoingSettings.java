package app.k9mail.feature.launcher;

import android.net.Uri;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import app.k9mail.feature.account.edit.navigation.AccountEditRoute;
import kotlin.jvm.internal.Intrinsics;
import net.openid.appauth.JsonUtil$Field;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FeatureLauncherTarget$AccountEditOutgoingSettings extends JsonUtil$Field {
    public final String accountUuid;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeatureLauncherTarget$AccountEditOutgoingSettings(String str) {
        super(Uri.parse("app://account/edit/outgoing/".concat(str)), null);
        str.getClass();
        new AccountEditRoute.OutgoingServerSettings(str);
        this.accountUuid = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FeatureLauncherTarget$AccountEditOutgoingSettings) && Intrinsics.areEqual(this.accountUuid, ((FeatureLauncherTarget$AccountEditOutgoingSettings) obj).accountUuid);
    }

    public final int hashCode() {
        return this.accountUuid.hashCode();
    }

    public final String toString() {
        return CameraDevices$CC.m("AccountEditOutgoingSettings(accountUuid=", this.accountUuid, ")");
    }
}
