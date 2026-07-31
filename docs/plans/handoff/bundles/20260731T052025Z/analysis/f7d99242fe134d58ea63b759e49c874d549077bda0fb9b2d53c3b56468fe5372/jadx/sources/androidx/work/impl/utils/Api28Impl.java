package androidx.work.impl.utils;

import android.app.Application;
import android.net.NetworkRequest;
import android.util.Log;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.work.Logger$LogcatLogger;
import kotlin.collections.ArraysKt___ArraysKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
                String m = CameraDevices$CC.m("Ignoring adding capability '", i, '\'');
                if (logger$LogcatLogger.mLoggingLevel <= 5) {
                    Log.w(str2, m, e);
                }
            }
        }
        for (int i2 = 0; i2 < 3; i2++) {
            int i3 = EnqueueUtilsKt.defaultCapabilities[i2];
            if (!ArraysKt___ArraysKt.contains(iArr, i3)) {
                try {
                    builder.removeCapability(i3);
                } catch (IllegalArgumentException e2) {
                    Logger$LogcatLogger logger$LogcatLogger2 = Logger$LogcatLogger.get();
                    String str3 = NetworkRequestCompat.TAG;
                    String str4 = NetworkRequestCompat.TAG;
                    String m2 = CameraDevices$CC.m("Ignoring removing default capability '", i3, '\'');
                    if (logger$LogcatLogger2.mLoggingLevel <= 5) {
                        Log.w(str4, m2, e2);
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
