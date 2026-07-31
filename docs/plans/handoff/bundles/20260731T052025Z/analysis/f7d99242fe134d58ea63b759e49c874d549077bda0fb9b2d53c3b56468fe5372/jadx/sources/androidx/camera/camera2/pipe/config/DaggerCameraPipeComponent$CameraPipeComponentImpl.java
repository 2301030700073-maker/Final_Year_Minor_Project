package androidx.camera.camera2.pipe.config;

import android.content.Context;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.pipe.CameraPipe$Config;
import androidx.camera.core.impl.Config;
import com.google.zxing.PlanarYUVLuminanceSource;
import dagger.internal.Provider;
import dagger.internal.SingleCheck;
import kotlin.math.MathKt;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DaggerCameraPipeComponent$CameraPipeComponentImpl {
    public final Provider audioRestrictionControllerImplProvider;
    public final PriorityQueue camera2BackendProvider;
    public final Provider camera2DeviceCacheProvider;
    public final Provider camera2DeviceCloserImplProvider;
    public final Provider camera2ErrorProcessorProvider;
    public final Provider camera2MetadataCacheProvider;
    public final Provider camera2QuirksProvider;
    public final Provider cameraDevicesImplProvider;
    public final DaggerCameraPipeComponent$CameraPipeComponentImpl cameraPipeComponentImpl;
    public final BiometricPrompt cameraPipeConfigModule;
    public final Provider cameraPipeLifetimeProvider;
    public final Provider concurrentSessionSequencersProvider;
    public final Provider permissionsProvider;
    public final Provider provideCameraBackendsProvider;
    public final Provider provideCameraContextProvider;
    public final Provider provideCameraDeviceSetupCompatFactoryProvider;
    public final Provider provideCameraManagerProvider;
    public final Provider provideCameraPipeJobProvider;
    public final Provider provideCameraSurfaceManagerProvider;
    public final Provider provideDevicePolicyManagerWrapperProvider;
    public final Provider providePackageManagerProvider;
    public final Provider provideStrictModeProvider;
    public final Provider provideThreadsProvider;
    public final Provider pruningCamera2DeviceManagerProvider;
    public final Provider retryingCameraStateOpenerImplProvider;
    public final Provider systemTimeSourceProvider;
    public final PlanarYUVLuminanceSource threadConfigModule;

    public DaggerCameraPipeComponent$CameraPipeComponentImpl(BiometricPrompt biometricPrompt, PlanarYUVLuminanceSource planarYUVLuminanceSource) {
        Object obj = SingleCheck.UNINITIALIZED;
        this.cameraPipeComponentImpl = this;
        this.cameraPipeConfigModule = biometricPrompt;
        this.threadConfigModule = planarYUVLuminanceSource;
        this.provideCameraPipeJobProvider = Config.CC.m(this, 1);
        this.cameraPipeLifetimeProvider = Config.CC.m(this, 0);
        this.provideThreadsProvider = Config.CC.m(this, 5);
        int i = 2;
        PriorityQueue priorityQueue = new PriorityQueue(7, i, this);
        SingleCheck singleCheck = new SingleCheck();
        singleCheck.instance = obj;
        singleCheck.provider = priorityQueue;
        this.provideCameraManagerProvider = singleCheck;
        this.providePackageManagerProvider = Config.CC.m(this, 8);
        this.camera2ErrorProcessorProvider = Config.CC.m(this, 9);
        this.provideCameraDeviceSetupCompatFactoryProvider = Config.CC.m(this, 10);
        this.camera2DeviceCacheProvider = Config.CC.m(this, 6);
        this.permissionsProvider = Config.CC.m(this, 12);
        this.systemTimeSourceProvider = Config.CC.m(this, 13);
        this.camera2MetadataCacheProvider = Config.CC.m(this, 11);
        this.provideStrictModeProvider = Config.CC.m(this, 17);
        this.camera2QuirksProvider = Config.CC.m(this, 16);
        PriorityQueue priorityQueue2 = new PriorityQueue(18, i, this);
        SingleCheck singleCheck2 = new SingleCheck();
        singleCheck2.instance = obj;
        singleCheck2.provider = priorityQueue2;
        this.provideDevicePolicyManagerWrapperProvider = singleCheck2;
        this.audioRestrictionControllerImplProvider = Config.CC.m(this, 19);
        this.retryingCameraStateOpenerImplProvider = Config.CC.m(this, 15);
        this.camera2DeviceCloserImplProvider = Config.CC.m(this, 20);
        this.pruningCamera2DeviceManagerProvider = Config.CC.m(this, 14);
        this.camera2BackendProvider = new PriorityQueue(4, i, this);
        this.provideCameraBackendsProvider = Config.CC.m(this, 3);
        this.cameraDevicesImplProvider = Config.CC.m(this, 2);
        this.provideCameraContextProvider = Config.CC.m(this, 21);
        this.provideCameraSurfaceManagerProvider = Config.CC.m(this, 22);
        this.concurrentSessionSequencersProvider = Config.CC.m(this, 23);
    }

    public final Context cameraPipeContextContext() {
        Context context = ((CameraPipe$Config) this.cameraPipeConfigModule.mClientFragmentManager).appContext;
        MathKt.checkNotNullFromProvides(context);
        return context;
    }
}
