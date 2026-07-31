package androidx.camera.camera2.adapter;

import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda2;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.compat.Camera2CameraControlCompatImpl;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.impl.CameraPipeCameraProperties;
import androidx.camera.camera2.impl.EvCompControl;
import androidx.camera.camera2.impl.FlashControl;
import androidx.camera.camera2.impl.FocusMeteringControl;
import androidx.camera.camera2.impl.LowLightBoostControl;
import androidx.camera.camera2.impl.StillCaptureRequestControl;
import androidx.camera.camera2.impl.TorchControl;
import androidx.camera.camera2.impl.UseCaseManager;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.camera2.impl.VideoUsageControl;
import androidx.camera.camera2.impl.ZoomControl;
import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Preview;
import androidx.camera.core.impl.AutoValue_Config_Option;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.concurrent.futures.ResolvableFuture;
import kotlinx.coroutines.CompletableDeferredImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraControlAdapter implements CameraControlInternal {
    public final Camera2CameraControl camera2cameraControl;
    public final FlashControl flashControl;
    public final ZslControl zslControl;

    public CameraControlAdapter(CameraPipeCameraProperties cameraPipeCameraProperties, EvCompControl evCompControl, FlashControl flashControl, FocusMeteringControl focusMeteringControl, StillCaptureRequestControl stillCaptureRequestControl, TorchControl torchControl, LowLightBoostControl lowLightBoostControl, ZoomControl zoomControl, ZslControl zslControl, Camera2CameraControl camera2CameraControl, UseCaseManager useCaseManager, UseCaseThreads useCaseThreads, VideoUsageControl videoUsageControl) {
        cameraPipeCameraProperties.getClass();
        evCompControl.getClass();
        flashControl.getClass();
        focusMeteringControl.getClass();
        stillCaptureRequestControl.getClass();
        torchControl.getClass();
        lowLightBoostControl.getClass();
        zoomControl.getClass();
        zslControl.getClass();
        camera2CameraControl.getClass();
        useCaseManager.getClass();
        useCaseThreads.getClass();
        videoUsageControl.getClass();
        this.flashControl = flashControl;
        this.zslControl = zslControl;
        this.camera2cameraControl = camera2CameraControl;
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final void addInteropConfig(Config config) {
        config.getClass();
        Camera2CameraControl camera2CameraControl = this.camera2cameraControl;
        Preview.Builder builder = new Preview.Builder(2);
        config.findOptions(new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(0, builder, config));
        OptionsBundle from = OptionsBundle.from(builder.mMutableConfig);
        camera2CameraControl.getClass();
        Camera2CameraControlCompatImpl camera2CameraControlCompatImpl = camera2CameraControl.compat;
        synchronized (camera2CameraControlCompatImpl.lock) {
            for (AutoValue_Config_Option autoValue_Config_Option : from.listOptions()) {
                autoValue_Config_Option.getClass();
                camera2CameraControlCompatImpl.configBuilder.mMutableConfig.insertOption(autoValue_Config_Option, Config.OptionPriority.ALWAYS_OVERRIDE, from.retrieveOption(autoValue_Config_Option));
            }
        }
        CompletableDeferredImpl applyAsync = camera2CameraControl.compat.applyAsync(camera2CameraControl._useCaseCameraRequestControl, true);
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = new CallbackToFutureAdapter$Completer();
        callbackToFutureAdapter$Completer.cancellationFuture = new ResolvableFuture();
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = new CallbackToFutureAdapter$SafeFuture(callbackToFutureAdapter$Completer);
        callbackToFutureAdapter$Completer.future = callbackToFutureAdapter$SafeFuture;
        callbackToFutureAdapter$Completer.tag = CameraDevices$CC.class;
        try {
            applyAsync.invokeOnCompletion(new BackHandlerKt$$ExternalSyntheticLambda2(3, callbackToFutureAdapter$Completer, applyAsync));
            callbackToFutureAdapter$Completer.tag = "addCaptureRequestOptions";
        } catch (Exception e) {
            callbackToFutureAdapter$SafeFuture.setException(e);
        }
        Futures.nonCancellationPropagating(callbackToFutureAdapter$SafeFuture);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final void addZslConfig(SessionConfig.Builder builder) {
        this.zslControl.addZslConfig(builder);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final void clearInteropConfig() {
        Camera2CameraControl camera2CameraControl = this.camera2cameraControl;
        Camera2CameraControlCompatImpl camera2CameraControlCompatImpl = camera2CameraControl.compat;
        synchronized (camera2CameraControlCompatImpl.lock) {
            camera2CameraControlCompatImpl.configBuilder = new Preview.Builder(1);
        }
        CompletableDeferredImpl applyAsync = camera2CameraControl.compat.applyAsync(camera2CameraControl._useCaseCameraRequestControl, true);
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = new CallbackToFutureAdapter$Completer();
        callbackToFutureAdapter$Completer.cancellationFuture = new ResolvableFuture();
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = new CallbackToFutureAdapter$SafeFuture(callbackToFutureAdapter$Completer);
        callbackToFutureAdapter$Completer.future = callbackToFutureAdapter$SafeFuture;
        callbackToFutureAdapter$Completer.tag = CameraDevices$CC.class;
        try {
            applyAsync.invokeOnCompletion(new BackHandlerKt$$ExternalSyntheticLambda2(3, callbackToFutureAdapter$Completer, applyAsync));
            callbackToFutureAdapter$Completer.tag = "clearCaptureRequestOptions";
        } catch (Exception e) {
            callbackToFutureAdapter$SafeFuture.setException(e);
        }
        Futures.nonCancellationPropagating(callbackToFutureAdapter$SafeFuture);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final void clearZslConfig() {
        this.zslControl.clearZslConfig();
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final Config getInteropConfig() {
        BiometricPrompt biometricPrompt;
        Camera2CameraControlCompatImpl camera2CameraControlCompatImpl = this.camera2cameraControl.compat;
        synchronized (camera2CameraControlCompatImpl.lock) {
            Camera2ImplConfig build = camera2CameraControlCompatImpl.configBuilder.build();
            Preview.Builder builder = new Preview.Builder(2);
            build.findOptions(new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(0, builder, build));
            biometricPrompt = new BiometricPrompt(OptionsBundle.from(builder.mMutableConfig));
        }
        return biometricPrompt;
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final void setFlashMode(int i) {
        boolean z = true;
        this.flashControl.setFlashAsync(i, true);
        if (i != 1 && i != 0) {
            z = false;
        }
        this.zslControl.setZslDisabledByFlashMode(z);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final void setScreenFlash(ImageCapture.ScreenFlash screenFlash) {
        this.flashControl.getClass();
    }
}
