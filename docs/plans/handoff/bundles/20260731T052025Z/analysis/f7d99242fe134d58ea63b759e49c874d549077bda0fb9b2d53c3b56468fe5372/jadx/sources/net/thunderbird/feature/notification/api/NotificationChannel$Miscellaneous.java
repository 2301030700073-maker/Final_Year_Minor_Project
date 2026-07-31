package net.thunderbird.feature.notification.api;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationChannel$Miscellaneous {
    public final String accountUuid;
    public final String id;

    public NotificationChannel$Miscellaneous(String str) {
        String concat = (str == null || StringsKt.isBlank(str)) ? "misc" : "miscellaneous_channel_".concat(str);
        this.id = concat;
        this.accountUuid = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof NotificationChannel$Miscellaneous) && Intrinsics.areEqual(this.accountUuid, ((NotificationChannel$Miscellaneous) obj).accountUuid);
    }

    public final int hashCode() {
        String str = this.accountUuid;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return CameraDevices$CC.m("Miscellaneous(accountUuid=", this.accountUuid, ")");
    }
}
