package androidx.work.impl.utils;

import android.net.NetworkRequest;
import androidx.work.Logger$LogcatLogger;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
