package androidx.camera.camera2.impl;

import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.camera.camera2.adapter.ZoomValue;
import androidx.camera.camera2.compat.ZoomCompat;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.lifecycle.MutableLiveData;
import androidx.room.util.DBUtil;
import com.google.common.util.concurrent.ListenableFuture;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.CompletableDeferredImpl;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ZoomControl implements UseCaseCameraControl {
    public UseCaseCameraRequestControl _requestControl;
    public final SynchronizedLazyImpl _zoomState$delegate;
    public final SynchronizedLazyImpl defaultZoomState$delegate;
    public boolean isInitialized;
    public final float maxZoomRatio;
    public final float minZoomRatio;
    public CompletableDeferredImpl updateSignal;
    public final ZoomCompat zoomCompat;

    public ZoomControl(ZoomCompat zoomCompat) {
        this.zoomCompat = zoomCompat;
        this.minZoomRatio = zoomCompat.getMinZoomRatio();
        this.maxZoomRatio = zoomCompat.getMaxZoomRatio();
        final int i = 0;
        this.defaultZoomState$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.camera.camera2.impl.ZoomControl$$ExternalSyntheticLambda0
            public final /* synthetic */ ZoomControl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                ZoomControl zoomControl = this.f$0;
                switch (i2) {
                    case 0:
                        return new ZoomValue(zoomControl.minZoomRatio, zoomControl.maxZoomRatio);
                    default:
                        return new MutableLiveData((ZoomValue) zoomControl.defaultZoomState$delegate.getValue());
                }
            }
        });
        final int i2 = 1;
        this._zoomState$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.camera.camera2.impl.ZoomControl$$ExternalSyntheticLambda0
            public final /* synthetic */ ZoomControl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                ZoomControl zoomControl = this.f$0;
                switch (i22) {
                    case 0:
                        return new ZoomValue(zoomControl.minZoomRatio, zoomControl.maxZoomRatio);
                    default:
                        return new MutableLiveData((ZoomValue) zoomControl.defaultZoomState$delegate.getValue());
                }
            }
        });
    }

    public final ListenableFuture applyZoomState(ZoomValue zoomValue, boolean z, boolean z2) {
        zoomValue.getClass();
        CompletableDeferredImpl completableDeferredImpl = new CompletableDeferredImpl();
        CompletableDeferredImpl completableDeferredImpl2 = this.updateSignal;
        if (completableDeferredImpl2 != null) {
            if (z) {
                CameraDevices$CC.m("Cancelled due to another zoom value being set.", completableDeferredImpl2);
            } else {
                DBUtil.propagateTo(completableDeferredImpl, completableDeferredImpl2);
            }
        }
        this.updateSignal = completableDeferredImpl;
        boolean isMainThread = Validate.isMainThread();
        SynchronizedLazyImpl synchronizedLazyImpl = this._zoomState$delegate;
        if (isMainThread) {
            ((MutableLiveData) synchronizedLazyImpl.getValue()).setValue(zoomValue);
        } else {
            ((MutableLiveData) synchronizedLazyImpl.getValue()).postValue(zoomValue);
        }
        UseCaseCameraRequestControl useCaseCameraRequestControl = this._requestControl;
        if (useCaseCameraRequestControl != null) {
            ZoomCompat zoomCompat = this.zoomCompat;
            DBUtil.propagateTo(z2 ? zoomCompat.applyAsync(useCaseCameraRequestControl) : zoomCompat.resetAsync(useCaseCameraRequestControl), completableDeferredImpl);
        } else {
            CameraDevices$CC.m("Camera is not active.", completableDeferredImpl);
        }
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = new CallbackToFutureAdapter$Completer();
        callbackToFutureAdapter$Completer.cancellationFuture = new ResolvableFuture();
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = new CallbackToFutureAdapter$SafeFuture(callbackToFutureAdapter$Completer);
        callbackToFutureAdapter$Completer.future = callbackToFutureAdapter$SafeFuture;
        callbackToFutureAdapter$Completer.tag = OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0.class;
        try {
            completableDeferredImpl.invokeOnCompletion(new TorchControl$$ExternalSyntheticLambda1(1, callbackToFutureAdapter$Completer));
            callbackToFutureAdapter$Completer.tag = "Job.asListenableFuture";
        } catch (Exception e) {
            callbackToFutureAdapter$SafeFuture.setException(e);
        }
        return Futures.nonCancellationPropagating(callbackToFutureAdapter$SafeFuture);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public final void reset() {
        applyZoomState((ZoomValue) this.defaultZoomState$delegate.getValue(), true, true);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public final void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        boolean z;
        this._requestControl = useCaseCameraRequestControl;
        ZoomValue zoomValue = (ZoomValue) ((MutableLiveData) this._zoomState$delegate.getValue()).getValue();
        if (zoomValue == null) {
            zoomValue = (ZoomValue) this.defaultZoomState$delegate.getValue();
        }
        if (this.isInitialized) {
            z = true;
        } else {
            zoomValue.getClass();
            z = false;
        }
        applyZoomState(zoomValue, false, z);
        this.isInitialized = true;
    }
}
