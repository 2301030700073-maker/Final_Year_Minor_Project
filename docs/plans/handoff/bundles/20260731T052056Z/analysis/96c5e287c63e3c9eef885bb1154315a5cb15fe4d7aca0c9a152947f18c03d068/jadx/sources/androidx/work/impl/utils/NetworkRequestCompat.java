package androidx.work.impl.utils;

import android.net.NetworkRequest;
import androidx.work.Logger$LogcatLogger;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
