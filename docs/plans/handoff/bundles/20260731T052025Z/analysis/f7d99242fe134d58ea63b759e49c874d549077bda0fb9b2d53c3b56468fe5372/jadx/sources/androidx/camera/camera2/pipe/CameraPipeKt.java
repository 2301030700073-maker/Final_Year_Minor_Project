package androidx.camera.camera2.pipe;

import android.os.Trace;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.pipe.config.DaggerCameraPipeComponent$CameraPipeComponentImpl;
import com.google.zxing.PlanarYUVLuminanceSource;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CameraPipeKt {
    public static final AtomicInt cameraPipeIds = AtomicFU.atomic(0);

    public static final CameraPipeImpl CameraPipe(CameraPipe$Config cameraPipe$Config) {
        try {
            Trace.beginSection("CameraPipe");
            DaggerCameraPipeComponent$CameraPipeComponentImpl daggerCameraPipeComponent$CameraPipeComponentImpl = new DaggerCameraPipeComponent$CameraPipeComponentImpl(new BiometricPrompt(17, cameraPipe$Config), new PlanarYUVLuminanceSource(cameraPipe$Config.threadConfig));
            Trace.endSection();
            return new CameraPipeImpl(daggerCameraPipeComponent$CameraPipeComponentImpl);
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }
}
