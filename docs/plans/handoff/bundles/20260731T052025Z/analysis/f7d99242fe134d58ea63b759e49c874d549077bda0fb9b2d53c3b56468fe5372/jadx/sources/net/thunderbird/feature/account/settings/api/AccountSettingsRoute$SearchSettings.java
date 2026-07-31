package net.thunderbird.feature.account.settings.api;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@Serializable
/* loaded from: classes.dex */
public final class AccountSettingsRoute$SearchSettings {
    public static final Companion Companion = new Companion();
    public final String accountId;
    public final String basePath;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public final KSerializer serializer() {
            return AccountSettingsRoute$SearchSettings$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ AccountSettingsRoute$SearchSettings(int i, String str, String str2) {
        if (1 != (i & 1)) {
            TuplesKt.throwMissingFieldException(i, 1, AccountSettingsRoute$SearchSettings$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.accountId = str;
        if ((i & 2) == 0) {
            this.basePath = "app://account/settings/search";
        } else {
            this.basePath = str2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AccountSettingsRoute$SearchSettings) && Intrinsics.areEqual(this.accountId, ((AccountSettingsRoute$SearchSettings) obj).accountId);
    }

    public final int hashCode() {
        return this.accountId.hashCode();
    }

    public final String toString() {
        return CameraDevices$CC.m("SearchSettings(accountId=", this.accountId, ")");
    }

    public AccountSettingsRoute$SearchSettings(String str) {
        str.getClass();
        this.accountId = str;
        this.basePath = "app://account/settings/search";
    }
}
