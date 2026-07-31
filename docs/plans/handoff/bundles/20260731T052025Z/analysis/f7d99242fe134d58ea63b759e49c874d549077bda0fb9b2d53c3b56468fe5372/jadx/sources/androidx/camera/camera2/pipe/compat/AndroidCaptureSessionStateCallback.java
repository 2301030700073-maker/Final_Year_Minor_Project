package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraConstrainedHighSpeedCaptureSession;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import androidx.camera.camera2.impl.RejectOperationCameraCaptureSession;
import androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper;
import androidx.cardview.widget.CardView;
import androidx.datastore.core.Api26Impl;
import androidx.datastore.preferences.protobuf.Utf8;
import java.util.Iterator;
import java.util.List;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidCaptureSessionStateCallback extends CameraCaptureSession.StateCallback {
    public final AtomicRef _lastStateCallback;
    public final Handler callbackHandler;
    public final Camera2ErrorProcessor cameraErrorListener;
    public final AtomicRef captureSession;
    public final AndroidCameraDevice device;
    public final CardView.AnonymousClass1 interopCaptureSessionListener;
    public final CameraCaptureSessionWrapper.StateCallback stateCallback;

    public AndroidCaptureSessionStateCallback(AndroidCameraDevice androidCameraDevice, CameraCaptureSessionWrapper.StateCallback stateCallback, SessionStateCallback sessionStateCallback, Camera2ErrorProcessor camera2ErrorProcessor, CardView.AnonymousClass1 anonymousClass1, Handler handler) {
        stateCallback.getClass();
        camera2ErrorProcessor.getClass();
        handler.getClass();
        this.device = androidCameraDevice;
        this.stateCallback = stateCallback;
        this.cameraErrorListener = camera2ErrorProcessor;
        this.interopCaptureSessionListener = anonymousClass1;
        this.callbackHandler = handler;
        this._lastStateCallback = AtomicFU.atomic(sessionStateCallback);
        this.captureSession = AtomicFU.atomic((Object) null);
    }

    public final CameraCaptureSessionWrapper getWrapped(CameraCaptureSession cameraCaptureSession, Camera2ErrorProcessor camera2ErrorProcessor) {
        CameraCaptureSessionWrapper cameraCaptureSessionWrapper = (CameraCaptureSessionWrapper) this.captureSession.value;
        if (cameraCaptureSessionWrapper != null) {
            return cameraCaptureSessionWrapper;
        }
        Handler handler = this.callbackHandler;
        boolean z = cameraCaptureSession instanceof CameraConstrainedHighSpeedCaptureSession;
        AndroidCameraDevice androidCameraDevice = this.device;
        CameraCaptureSessionWrapper androidCameraConstrainedHighSpeedCaptureSession = z ? new AndroidCameraConstrainedHighSpeedCaptureSession(androidCameraDevice, (CameraConstrainedHighSpeedCaptureSession) cameraCaptureSession, camera2ErrorProcessor, handler) : new AndroidCameraCaptureSession(androidCameraDevice, cameraCaptureSession, camera2ErrorProcessor, handler);
        if (this.captureSession.compareAndSet(null, androidCameraConstrainedHighSpeedCaptureSession)) {
            return androidCameraConstrainedHighSpeedCaptureSession;
        }
        Object obj = this.captureSession.value;
        obj.getClass();
        return (CameraCaptureSessionWrapper) obj;
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public final void onActive(CameraCaptureSession cameraCaptureSession) {
        cameraCaptureSession.getClass();
        getWrapped(cameraCaptureSession, this.cameraErrorListener);
        this.stateCallback.onActive(getWrapped(cameraCaptureSession, this.cameraErrorListener));
        CardView.AnonymousClass1 anonymousClass1 = this.interopCaptureSessionListener;
        if (anonymousClass1 != null) {
            this.device.cameraId.getClass();
            Iterator it = ((List) ((AtomicRef) anonymousClass1.this$0).value).iterator();
            while (it.hasNext()) {
                ((CameraCaptureSession.StateCallback) it.next()).onActive((RejectOperationCameraCaptureSession) anonymousClass1.mCardBackground);
            }
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public final void onCaptureQueueEmpty(CameraCaptureSession cameraCaptureSession) {
        cameraCaptureSession.getClass();
        Camera2ErrorProcessor camera2ErrorProcessor = this.cameraErrorListener;
        getWrapped(cameraCaptureSession, camera2ErrorProcessor);
        this.stateCallback.onCaptureQueueEmpty(getWrapped(cameraCaptureSession, camera2ErrorProcessor));
        CardView.AnonymousClass1 anonymousClass1 = this.interopCaptureSessionListener;
        if (anonymousClass1 != null) {
            this.device.cameraId.getClass();
            if (Build.VERSION.SDK_INT >= 26) {
                Api26Impl.onCaptureQueueEmpty((RejectOperationCameraCaptureSession) anonymousClass1.mCardBackground, (AtomicRef) anonymousClass1.this$0);
            } else if (Utf8.SafeProcessor.isErrorEnabled()) {
                Log.e("CXCP", "onCaptureQueueEmpty called for unsupported OS version.");
            }
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public final void onClosed(CameraCaptureSession cameraCaptureSession) {
        cameraCaptureSession.getClass();
        Camera2ErrorProcessor camera2ErrorProcessor = this.cameraErrorListener;
        getWrapped(cameraCaptureSession, camera2ErrorProcessor);
        CameraCaptureSessionWrapper wrapped = getWrapped(cameraCaptureSession, camera2ErrorProcessor);
        CameraCaptureSessionWrapper.StateCallback stateCallback = this.stateCallback;
        stateCallback.onClosed(wrapped);
        AtomicRef atomicRef = this._lastStateCallback;
        atomicRef.getClass();
        SessionStateCallback sessionStateCallback = (SessionStateCallback) AtomicRef.FU.getAndSet(atomicRef, null);
        if (sessionStateCallback != null) {
            sessionStateCallback.onSessionFinalized();
        }
        stateCallback.onSessionFinalized();
        CardView.AnonymousClass1 anonymousClass1 = this.interopCaptureSessionListener;
        if (anonymousClass1 != null) {
            anonymousClass1.m100onClosedrphkYDA(this.device.cameraId);
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public final void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
        cameraCaptureSession.getClass();
        CameraCaptureSessionWrapper wrapped = getWrapped(cameraCaptureSession, this.cameraErrorListener);
        CameraCaptureSessionWrapper.StateCallback stateCallback = this.stateCallback;
        stateCallback.onConfigureFailed(wrapped);
        AtomicRef atomicRef = this._lastStateCallback;
        atomicRef.getClass();
        SessionStateCallback sessionStateCallback = (SessionStateCallback) AtomicRef.FU.getAndSet(atomicRef, null);
        if (sessionStateCallback != null) {
            sessionStateCallback.onSessionFinalized();
        }
        stateCallback.onSessionFinalized();
        CardView.AnonymousClass1 anonymousClass1 = this.interopCaptureSessionListener;
        if (anonymousClass1 != null) {
            anonymousClass1.m101onConfigureFailedrphkYDA(this.device.cameraId);
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public final void onConfigured(CameraCaptureSession cameraCaptureSession) {
        cameraCaptureSession.getClass();
        this.stateCallback.onConfigured(getWrapped(cameraCaptureSession, this.cameraErrorListener));
        AtomicRef atomicRef = this._lastStateCallback;
        atomicRef.getClass();
        SessionStateCallback sessionStateCallback = (SessionStateCallback) AtomicRef.FU.getAndSet(atomicRef, null);
        if (sessionStateCallback != null) {
            sessionStateCallback.onSessionFinalized();
        }
        CardView.AnonymousClass1 anonymousClass1 = this.interopCaptureSessionListener;
        if (anonymousClass1 != null) {
            anonymousClass1.m102onConfiguredrphkYDA(this.device.cameraId);
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public final void onReady(CameraCaptureSession cameraCaptureSession) {
        cameraCaptureSession.getClass();
        getWrapped(cameraCaptureSession, this.cameraErrorListener);
        this.stateCallback.onReady(getWrapped(cameraCaptureSession, this.cameraErrorListener));
        CardView.AnonymousClass1 anonymousClass1 = this.interopCaptureSessionListener;
        if (anonymousClass1 != null) {
            this.device.cameraId.getClass();
            Iterator it = ((List) ((AtomicRef) anonymousClass1.this$0).value).iterator();
            while (it.hasNext()) {
                ((CameraCaptureSession.StateCallback) it.next()).onReady((RejectOperationCameraCaptureSession) anonymousClass1.mCardBackground);
            }
        }
    }
}
