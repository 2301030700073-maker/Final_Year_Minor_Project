package androidx.work.impl.utils;

import android.app.Application;
import android.net.NetworkRequest;
import android.util.Log;
import androidx.work.Logger$LogcatLogger;
import kotlin.collections.ArraysKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Api28Impl {
    public static NetworkRequestCompat createNetworkRequestCompat$work_runtime_release(int[] iArr, int[] iArr2) {
        NetworkRequest.Builder builder = new NetworkRequest.Builder();
        for (int i : iArr) {
            try {
                builder.addCapability(i);
            } catch (IllegalArgumentException e) {
                Logger$LogcatLogger logger$LogcatLogger = Logger$LogcatLogger.get();
                String str = NetworkRequestCompat.TAG;
                String str2 = NetworkRequestCompat.TAG;
                String str3 = "Ignoring adding capability '" + i + '\'';
                if (logger$LogcatLogger.mLoggingLevel <= 5) {
                    Log.w(str2, str3, e);
                }
            }
        }
        for (int i2 = 0; i2 < 3; i2++) {
            int i3 = EnqueueUtilsKt.defaultCapabilities[i2];
            if (!ArraysKt.contains(iArr, i3)) {
                try {
                    builder.removeCapability(i3);
                } catch (IllegalArgumentException e2) {
                    Logger$LogcatLogger logger$LogcatLogger2 = Logger$LogcatLogger.get();
                    String str4 = NetworkRequestCompat.TAG;
                    String str5 = NetworkRequestCompat.TAG;
                    String str6 = "Ignoring removing default capability '" + i3 + '\'';
                    if (logger$LogcatLogger2.mLoggingLevel <= 5) {
                        Log.w(str5, str6, e2);
                    }
                }
            }
        }
        for (int i4 : iArr2) {
            builder.addTransportType(i4);
        }
        NetworkRequest build = builder.build();
        build.getClass();
        return new NetworkRequestCompat(build);
    }

    public static String getProcessName() {
        String processName = Application.getProcessName();
        processName.getClass();
        return processName;
    }

    public static boolean hasCapability$work_runtime_release(NetworkRequest networkRequest, int i) {
        networkRequest.getClass();
        return networkRequest.hasCapability(i);
    }

    public static boolean hasTransport$work_runtime_release(NetworkRequest networkRequest, int i) {
        networkRequest.getClass();
        return networkRequest.hasTransport(i);
    }
}
