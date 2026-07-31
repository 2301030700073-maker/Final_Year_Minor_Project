package androidx.camera.camera2.impl;

import android.os.Build;
import android.util.Log;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.compat.Api35Compat;
import androidx.compose.foundation.BorderKt$$ExternalSyntheticLambda1;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.lifecycle.MutableLiveData;
import androidx.room.util.DBUtil;
import java.util.LinkedHashMap;
import java.util.List;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.JobSupport;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TorchControl implements UseCaseCameraControl {
    public UseCaseCameraRequestControl _requestControl;
    public final MutableLiveData _torchState;
    public final MutableLiveData _torchStrength;
    public CompletableDeferredImpl _updateTorchStateSignal;
    public CompletableDeferredImpl _updateTorchStrengthSignal;
    public final int defaultTorchStrength;
    public final boolean hasFlashUnit;
    public final boolean isTorchStrengthSupported;
    public final State3AControl state3AControl;
    public TorchMode torchMode;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class TorchMode {
        public final int value;

        public /* synthetic */ TorchMode(int i) {
            this.value = i;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof TorchMode) {
                return this.value == ((TorchMode) obj).value;
            }
            return false;
        }

        public final int hashCode() {
            return this.value;
        }

        public final String toString() {
            return CameraDevices$CC.m("TorchMode(value=", this.value, ')');
        }
    }

    public TorchControl(CameraPipeCameraProperties cameraPipeCameraProperties, State3AControl state3AControl, UseCaseThreads useCaseThreads) {
        cameraPipeCameraProperties.getClass();
        state3AControl.getClass();
        useCaseThreads.getClass();
        this.state3AControl = state3AControl;
        this.hasFlashUnit = Utf8.SafeProcessor.isFlashAvailable$default(cameraPipeCameraProperties);
        boolean z = false;
        this._torchState = new MutableLiveData(0);
        CameraMetadata.Companion companion = CameraMetadata.Companion;
        CameraMetadata cameraMetadata = cameraPipeCameraProperties.metadata;
        companion.getClass();
        cameraMetadata.getClass();
        int i = Build.VERSION.SDK_INT;
        if (i >= 35 && Api35Compat.isTorchStrengthSupported(cameraMetadata)) {
            z = true;
        }
        this.isTorchStrengthSupported = z;
        int defaultTorchStrengthLevel = i >= 35 ? Api35Compat.getDefaultTorchStrengthLevel(cameraMetadata) : 1;
        this.defaultTorchStrength = defaultTorchStrengthLevel;
        if (i >= 35) {
            Api35Compat.getMaxTorchStrengthLevel(cameraMetadata);
        }
        this._torchStrength = new MutableLiveData(Integer.valueOf(defaultTorchStrengthLevel));
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public final void reset() {
        CompletableDeferredImpl completableDeferredImpl = this._updateTorchStateSignal;
        if (completableDeferredImpl != null) {
            CameraDevices$CC.m("There is a new enableTorch being set", completableDeferredImpl);
        }
        this._updateTorchStateSignal = null;
        CompletableDeferredImpl completableDeferredImpl2 = this._updateTorchStrengthSignal;
        if (completableDeferredImpl2 != null) {
            CameraDevices$CC.m("There is a new torch strength being set", completableDeferredImpl2);
        }
        this._updateTorchStrengthSignal = null;
        if (this.torchMode != null) {
            m23updateTorchStateRaJ5uN0(0);
            m22setTorchAsyncOup_wC0$camera_camera2(0, true, false);
            this.torchMode = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0017, code lost:
    
        if (r3.intValue() == 1) goto L11;
     */
    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setRequestControl(androidx.camera.camera2.impl.UseCaseCameraRequestControl r3) {
        /*
            r2 = this;
            r2._requestControl = r3
            androidx.camera.camera2.impl.TorchControl$TorchMode r3 = r2.torchMode
            if (r3 == 0) goto L1e
            androidx.lifecycle.MutableLiveData r3 = r2._torchState
            java.lang.Object r3 = r3.getValue()
            java.lang.Integer r3 = (java.lang.Integer) r3
            r0 = 0
            if (r3 != 0) goto L12
            goto L1a
        L12:
            int r3 = r3.intValue()
            r1 = 1
            if (r3 != r1) goto L1a
            goto L1b
        L1a:
            r1 = r0
        L1b:
            r2.m22setTorchAsyncOup_wC0$camera_camera2(r1, r0, r0)
        L1e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.impl.TorchControl.setRequestControl(androidx.camera.camera2.impl.UseCaseCameraRequestControl):void");
    }

    /* renamed from: setTorchAsync-Oup_wC0$camera_camera2, reason: not valid java name */
    public final CompletableDeferredImpl m22setTorchAsyncOup_wC0$camera_camera2(int i, boolean z, boolean z2) {
        int i2;
        Object mo21setTorchOffAsyncMtizInI;
        State3AControl state3AControl = this.state3AControl;
        if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
            StringBuilder sb = new StringBuilder("TorchControl#setTorchAsync: torch mode = ");
            sb.append((Object) ("TorchMode(value=" + i + ')'));
            Log.d("CXCP", sb.toString());
        }
        CompletableDeferredImpl completableDeferredImpl = new CompletableDeferredImpl();
        if (!z2 && !this.hasFlashUnit) {
            completableDeferredImpl.completeExceptionally(new IllegalStateException("No flash unit"));
            return completableDeferredImpl;
        }
        UseCaseCameraRequestControl useCaseCameraRequestControl = this._requestControl;
        if (useCaseCameraRequestControl == null) {
            CameraDevices$CC.m("Camera is not active.", completableDeferredImpl);
            return completableDeferredImpl;
        }
        m23updateTorchStateRaJ5uN0(i);
        CompletableDeferredImpl completableDeferredImpl2 = this._updateTorchStateSignal;
        if (z) {
            if (completableDeferredImpl2 != null) {
                CameraDevices$CC.m("There is a new enableTorch being set", completableDeferredImpl2);
            }
            this._updateTorchStateSignal = null;
        } else if (completableDeferredImpl2 != null) {
            DBUtil.propagateTo(completableDeferredImpl, completableDeferredImpl2);
        }
        this._updateTorchStateSignal = completableDeferredImpl;
        int i3 = 1;
        Integer num = i == 0 ? null : 1;
        synchronized (state3AControl.lock) {
            state3AControl._preferredAeMode = num;
        }
        state3AControl.update();
        List list = AeMode.values;
        AeMode m758fromIntOrNullkQd0u18 = IntOffsetKt.m758fromIntOrNullkQd0u18(state3AControl.getFinalSupportedAeMode());
        if (m758fromIntOrNullkQd0u18 != null) {
            i2 = m758fromIntOrNullkQd0u18.value;
        } else {
            if (Utf8.SafeProcessor.isWarnEnabled()) {
                Log.w("CXCP", "TorchControl#setTorchAsync: Failed to convert ae mode of value " + state3AControl.getFinalSupportedAeMode() + " with AeMode.fromIntOrNull, fallback to AeMode.ON");
            }
            i2 = 1;
        }
        if (i == 0) {
            mo21setTorchOffAsyncMtizInI = useCaseCameraRequestControl.mo21setTorchOffAsyncMtizInI(i2);
        } else {
            if (i == 1) {
                Integer num2 = (Integer) this._torchStrength.getValue();
                if (num2 != null) {
                    updateTorchStrengthLevelAsync(num2.intValue());
                }
            } else {
                updateTorchStrengthLevelAsync(this.defaultTorchStrength);
            }
            mo21setTorchOffAsyncMtizInI = useCaseCameraRequestControl.setTorchOnAsync();
        }
        BorderKt$$ExternalSyntheticLambda1 borderKt$$ExternalSyntheticLambda1 = new BorderKt$$ExternalSyntheticLambda1(3);
        mo21setTorchOffAsyncMtizInI.getClass();
        ((JobSupport) mo21setTorchOffAsyncMtizInI).invokeOnCompletion(new SimpleActor$$ExternalSyntheticLambda0(mo21setTorchOffAsyncMtizInI, completableDeferredImpl, borderKt$$ExternalSyntheticLambda1, i3));
        return completableDeferredImpl;
    }

    /* renamed from: updateTorchState-RaJ5uN0, reason: not valid java name */
    public final void m23updateTorchStateRaJ5uN0(int i) {
        this.torchMode = new TorchMode(i);
        int i2 = i != 1 ? 0 : 1;
        boolean isMainThread = Validate.isMainThread();
        MutableLiveData mutableLiveData = this._torchState;
        if (isMainThread) {
            mutableLiveData.setValue(Integer.valueOf(i2));
        } else {
            mutableLiveData.postValue(Integer.valueOf(i2));
        }
    }

    public final void updateTorchStrengthLevelAsync(int i) {
        Deferred parametersAsync;
        CompletableDeferredImpl completableDeferredImpl = new CompletableDeferredImpl();
        if (Build.VERSION.SDK_INT < 35 || !this.isTorchStrengthSupported) {
            completableDeferredImpl.completeExceptionally(new UnsupportedOperationException("Configuring torch strength is not supported on the device."));
            return;
        }
        CompletableDeferredImpl completableDeferredImpl2 = this._updateTorchStrengthSignal;
        if (completableDeferredImpl2 != null) {
            if (completableDeferredImpl2 != null) {
                CameraDevices$CC.m("There is a new torch strength being set", completableDeferredImpl2);
            }
            this._updateTorchStrengthSignal = null;
        }
        this._updateTorchStrengthSignal = completableDeferredImpl;
        completableDeferredImpl.invokeOnCompletion(new TorchControl$$ExternalSyntheticLambda1(0, this));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        androidx.camera.camera2.compat.Api35Compat.setFlashStrengthLevel(linkedHashMap, i);
        UseCaseCameraRequestControl useCaseCameraRequestControl = this._requestControl;
        if (useCaseCameraRequestControl == null || (parametersAsync = useCaseCameraRequestControl.setParametersAsync(linkedHashMap, UseCaseCameraKt.defaultOptionPriority)) == null) {
            CameraDevices$CC.m("Camera is not active.", completableDeferredImpl);
        } else {
            DBUtil.propagateTo(parametersAsync, completableDeferredImpl);
        }
    }
}
