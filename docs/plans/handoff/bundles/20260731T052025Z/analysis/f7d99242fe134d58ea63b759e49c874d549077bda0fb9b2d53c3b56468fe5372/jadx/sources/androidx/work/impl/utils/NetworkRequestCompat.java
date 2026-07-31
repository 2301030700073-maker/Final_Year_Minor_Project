package androidx.work.impl.utils;

import android.net.NetworkRequest;
import androidx.work.Logger$LogcatLogger;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NetworkRequestCompat {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("NetworkRequestCompat");
    public final Object wrapped;

    public NetworkRequestCompat(NetworkRequest networkRequest) {
        this.wrapped = networkRequest;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof NetworkRequestCompat) && Intrinsics.areEqual(this.wrapped, ((NetworkRequestCompat) obj).wrapped);
    }

    public final int hashCode() {
        Object obj = this.wrapped;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        return "NetworkRequestCompat(wrapped=" + this.wrapped + ')';
    }
}
