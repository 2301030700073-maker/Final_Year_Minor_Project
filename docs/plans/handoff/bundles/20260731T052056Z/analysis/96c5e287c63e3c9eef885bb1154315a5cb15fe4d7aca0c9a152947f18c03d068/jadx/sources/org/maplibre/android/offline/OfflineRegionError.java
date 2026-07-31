package org.maplibre.android.offline;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0019\b\u0003\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lorg/maplibre/android/offline/OfflineRegionError;", "", "", "reason", "message", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "MapLibreAndroid_vulkanRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OfflineRegionError {
    public final String message;
    public final String reason;

    private OfflineRegionError(String str, String str2) {
        this.reason = str;
        this.message = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !OfflineRegionError.class.equals(obj.getClass())) {
            return false;
        }
        OfflineRegionError offlineRegionError = (OfflineRegionError) obj;
        if (Intrinsics.areEqual(this.reason, offlineRegionError.reason)) {
            return Intrinsics.areEqual(this.message, offlineRegionError.message);
        }
        return false;
    }

    public final int hashCode() {
        return this.message.hashCode() + (this.reason.hashCode() * 31);
    }

    public final String toString() {
        return Modifier.CC.m("OfflineRegionError{reason='", this.reason, "', message='", this.message, "'}");
    }
}
