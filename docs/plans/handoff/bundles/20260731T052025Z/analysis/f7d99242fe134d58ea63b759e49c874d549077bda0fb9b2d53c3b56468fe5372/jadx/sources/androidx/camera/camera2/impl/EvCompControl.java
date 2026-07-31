package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureRequest;
import android.util.Range;
import android.util.Rational;
import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda2;
import androidx.camera.camera2.adapter.EvCompValue;
import androidx.camera.camera2.compat.EvCompImpl;
import androidx.camera.camera2.compat.EvCompImpl$applyAsync$3;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.room.util.DBUtil;
import java.util.Collections;
import java.util.Map;
import kotlinx.coroutines.CompletableDeferredImpl;
import org.koin.core.error.InstanceCreationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EvCompControl implements UseCaseCameraControl {
    public UseCaseCameraRequestControl _requestControl;
    public final EvCompImpl compat;
    public EvCompValue exposureState;

    public EvCompControl(EvCompImpl evCompImpl) {
        evCompImpl.getClass();
        this.compat = evCompImpl;
        this.exposureState = new EvCompValue(evCompImpl.supported, 0, evCompImpl.range, evCompImpl.step);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public final void reset() {
        EvCompValue evCompValue = this.exposureState;
        boolean z = evCompValue.supported;
        Range range = evCompValue.range;
        Rational rational = evCompValue.step;
        range.getClass();
        rational.getClass();
        this.exposureState = new EvCompValue(z, 0, range, rational);
        updateAsync(true);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public final void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
        updateAsync(false);
    }

    public final CompletableDeferredImpl updateAsync(boolean z) {
        EvCompImpl evCompImpl = this.compat;
        boolean z2 = evCompImpl.supported;
        Range range = evCompImpl.range;
        if (!z2) {
            IllegalArgumentException illegalArgumentException = new IllegalArgumentException("ExposureCompensation is not supported");
            CompletableDeferredImpl completableDeferredImpl = new CompletableDeferredImpl();
            completableDeferredImpl.completeExceptionally(illegalArgumentException);
            return completableDeferredImpl;
        }
        if (!range.contains((Range) 0)) {
            IllegalArgumentException illegalArgumentException2 = new IllegalArgumentException("Requested ExposureCompensation 0 is not within valid range [" + range.getUpper() + " .. " + range.getLower() + ']');
            CompletableDeferredImpl completableDeferredImpl2 = new CompletableDeferredImpl();
            completableDeferredImpl2.completeExceptionally(illegalArgumentException2);
            return completableDeferredImpl2;
        }
        UseCaseCameraRequestControl useCaseCameraRequestControl = this._requestControl;
        if (useCaseCameraRequestControl == null) {
            InstanceCreationException instanceCreationException = new InstanceCreationException("Camera is not active.");
            CompletableDeferredImpl completableDeferredImpl3 = evCompImpl.updateSignal;
            if (completableDeferredImpl3 != null) {
                completableDeferredImpl3.completeExceptionally(instanceCreationException);
            }
            CompletableDeferredImpl completableDeferredImpl4 = new CompletableDeferredImpl();
            completableDeferredImpl4.completeExceptionally(instanceCreationException);
            return completableDeferredImpl4;
        }
        EvCompValue evCompValue = this.exposureState;
        boolean z3 = evCompValue.supported;
        Range range2 = evCompValue.range;
        Rational rational = evCompValue.step;
        range2.getClass();
        rational.getClass();
        this.exposureState = new EvCompValue(z3, 0, range2, rational);
        ComboRequestListener comboRequestListener = evCompImpl.comboRequestListener;
        CompletableDeferredImpl completableDeferredImpl5 = new CompletableDeferredImpl();
        CompletableDeferredImpl completableDeferredImpl6 = evCompImpl.updateSignal;
        if (completableDeferredImpl6 != null) {
            if (z) {
                CameraDevices$CC.m("Cancelled by another setExposureCompensationIndex()", completableDeferredImpl6);
            } else {
                DBUtil.propagateTo(completableDeferredImpl5, completableDeferredImpl6);
            }
        }
        evCompImpl.updateSignal = completableDeferredImpl5;
        EvCompImpl$applyAsync$3 evCompImpl$applyAsync$3 = evCompImpl.updateListener;
        if (evCompImpl$applyAsync$3 != null) {
            comboRequestListener.removeListener(evCompImpl$applyAsync$3);
            evCompImpl.updateListener = null;
        }
        Map singletonMap = Collections.singletonMap(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, 0);
        singletonMap.getClass();
        useCaseCameraRequestControl.setParametersAsync(singletonMap, UseCaseCameraKt.defaultOptionPriority);
        EvCompImpl$applyAsync$3 evCompImpl$applyAsync$32 = new EvCompImpl$applyAsync$3(0, completableDeferredImpl5);
        comboRequestListener.addListener(evCompImpl$applyAsync$32, evCompImpl.threads.sequentialExecutor);
        completableDeferredImpl5.invokeOnCompletion(new BackHandlerKt$$ExternalSyntheticLambda2(4, evCompImpl, evCompImpl$applyAsync$32));
        evCompImpl.updateListener = evCompImpl$applyAsync$32;
        return completableDeferredImpl5;
    }
}
