package androidx.camera.camera2.pipe.compat;

import android.content.Context;
import android.util.Log;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.core.Threads;
import java.util.LinkedHashSet;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Camera2Backend implements CameraBackend {
    public final LinkedHashSet activeCameraControllers;
    public final BiometricPrompt camera2CameraControllerComponent;
    public final Camera2DeviceCache camera2DeviceCache;
    public final PruningCamera2DeviceManager camera2DeviceManager;
    public final Camera2MetadataCache camera2MetadataCache;
    public final Object lock;
    public final Threads threads;

    public Camera2Backend(Threads threads, Camera2DeviceCache camera2DeviceCache, Camera2MetadataCache camera2MetadataCache, PruningCamera2DeviceManager pruningCamera2DeviceManager, BiometricPrompt biometricPrompt, Context context) {
        threads.getClass();
        camera2DeviceCache.getClass();
        camera2MetadataCache.getClass();
        pruningCamera2DeviceManager.getClass();
        this.threads = threads;
        this.camera2DeviceCache = camera2DeviceCache;
        this.camera2MetadataCache = camera2MetadataCache;
        this.camera2DeviceManager = pruningCamera2DeviceManager;
        this.camera2CameraControllerComponent = biometricPrompt;
        this.lock = new Object();
        this.activeCameraControllers = new LinkedHashSet();
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x0062, code lost:
    
        if (r2 == r9) goto L53;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
    /* renamed from: isConfigSupported-NpXggIU, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m53isConfigSupportedNpXggIU(androidx.camera.camera2.pipe.CameraGraph$Config r29, kotlin.coroutines.jvm.internal.ContinuationImpl r30) {
        /*
            Method dump skipped, instructions count: 403
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.Camera2Backend.m53isConfigSupportedNpXggIU(androidx.camera.camera2.pipe.CameraGraph$Config, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void onControllerClosed(Camera2CameraController camera2CameraController) {
        Log.d("CXCP", camera2CameraController + " finalized");
        synchronized (this.lock) {
            this.activeCameraControllers.remove(camera2CameraController);
        }
    }
}
