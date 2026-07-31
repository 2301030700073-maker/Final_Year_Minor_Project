package androidx.camera.view;

import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.utils.futures.ChainingListenableFuture;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.view.PreviewView;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.core.app.ActivityRecreator;
import androidx.core.view.MenuHostHelper;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.lifecycle.MutableLiveData;
import androidx.work.WorkRequest;
import java.util.ArrayList;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PreviewStreamStateObserver implements Observable.Observer {
    public final CameraInfoInternal mCameraInfoInternal;
    public FutureChain mFlowFuture;
    public boolean mHasStartedPreviewStreamFlow = false;
    public PreviewView.StreamState mPreviewStreamState;
    public final MutableLiveData mPreviewStreamStateLiveData;
    public final WorkRequest.Builder mPreviewViewImplementation;

    public PreviewStreamStateObserver(CameraInfoInternal cameraInfoInternal, MutableLiveData mutableLiveData, WorkRequest.Builder builder) {
        this.mCameraInfoInternal = cameraInfoInternal;
        this.mPreviewStreamStateLiveData = mutableLiveData;
        this.mPreviewViewImplementation = builder;
        synchronized (this) {
            this.mPreviewStreamState = (PreviewView.StreamState) mutableLiveData.getValue();
        }
    }

    @Override // androidx.camera.core.impl.Observable.Observer
    public final void onError(Throwable th) {
        FutureChain futureChain = this.mFlowFuture;
        if (futureChain != null) {
            futureChain.cancel(false);
            this.mFlowFuture = null;
        }
        updatePreviewStreamState(PreviewView.StreamState.IDLE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.camera.view.PreviewStreamStateObserver$2, java.lang.Object] */
    @Override // androidx.camera.core.impl.Observable.Observer
    public final void onNewData(Object obj) {
        CameraInternal.State state = (CameraInternal.State) obj;
        CameraInternal.State state2 = CameraInternal.State.CLOSING;
        PreviewView.StreamState streamState = PreviewView.StreamState.IDLE;
        if (state == state2 || state == CameraInternal.State.CLOSED || state == CameraInternal.State.RELEASING || state == CameraInternal.State.RELEASED) {
            updatePreviewStreamState(streamState);
            if (this.mHasStartedPreviewStreamFlow) {
                this.mHasStartedPreviewStreamFlow = false;
                FutureChain futureChain = this.mFlowFuture;
                if (futureChain != null) {
                    futureChain.cancel(false);
                    this.mFlowFuture = null;
                    return;
                }
                return;
            }
            return;
        }
        if ((state == CameraInternal.State.OPENING || state == CameraInternal.State.OPEN || state == CameraInternal.State.PENDING_OPEN) && !this.mHasStartedPreviewStreamFlow) {
            final CameraInfoInternal cameraInfoInternal = this.mCameraInfoInternal;
            updatePreviewStreamState(streamState);
            ArrayList arrayList = new ArrayList();
            final CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = new CallbackToFutureAdapter$Completer();
            callbackToFutureAdapter$Completer.cancellationFuture = new ResolvableFuture();
            CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = new CallbackToFutureAdapter$SafeFuture(callbackToFutureAdapter$Completer);
            callbackToFutureAdapter$Completer.future = callbackToFutureAdapter$SafeFuture;
            callbackToFutureAdapter$Completer.tag = CameraDevices$CC.class;
            try {
                ?? r2 = new CameraCaptureCallback() { // from class: androidx.camera.view.PreviewStreamStateObserver.2
                    @Override // androidx.camera.core.impl.CameraCaptureCallback
                    public final void onCaptureCompleted(int i, CameraCaptureResult cameraCaptureResult) {
                        CallbackToFutureAdapter$Completer.this.set(null);
                        ((CameraInfoInternal) cameraInfoInternal).removeSessionCaptureCallback(this);
                    }
                };
                arrayList.add(r2);
                cameraInfoInternal.addSessionCaptureCallback(Util.directExecutor(), r2);
                callbackToFutureAdapter$Completer.tag = "waitForCaptureResult";
            } catch (Exception e) {
                callbackToFutureAdapter$SafeFuture.setException(e);
            }
            ChainingListenableFuture transformAsync = Futures.transformAsync(new FutureChain(callbackToFutureAdapter$SafeFuture), new PreviewStreamStateObserver$$ExternalSyntheticLambda0(this), Util.directExecutor());
            PreviewStreamStateObserver$$ExternalSyntheticLambda0 previewStreamStateObserver$$ExternalSyntheticLambda0 = new PreviewStreamStateObserver$$ExternalSyntheticLambda0(this);
            ChainingListenableFuture transformAsync2 = Futures.transformAsync(transformAsync, new BiometricPrompt(29, previewStreamStateObserver$$ExternalSyntheticLambda0), Util.directExecutor());
            this.mFlowFuture = transformAsync2;
            MenuHostHelper menuHostHelper = new MenuHostHelper(this, arrayList, cameraInfoInternal, false, 11);
            transformAsync2.addListener(new ActivityRecreator.AnonymousClass1(1, transformAsync2, menuHostHelper), Util.directExecutor());
            this.mHasStartedPreviewStreamFlow = true;
        }
    }

    public final void updatePreviewStreamState(PreviewView.StreamState streamState) {
        synchronized (this) {
            try {
                if (this.mPreviewStreamState.equals(streamState)) {
                    return;
                }
                this.mPreviewStreamState = streamState;
                Utf8.SafeProcessor.d("StreamStateObserver", "Update Preview stream state to " + streamState);
                this.mPreviewStreamStateLiveData.postValue(streamState);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
