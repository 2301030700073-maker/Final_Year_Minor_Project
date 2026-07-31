package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraExtensionSession;
import android.hardware.camera2.CameraExtensionSession$StateCallback;
import androidx.camera.camera2.pipe.core.HandlerExecutor;
import androidx.cardview.widget.CardView;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidExtensionSessionStateCallback extends CameraExtensionSession$StateCallback {
    public final AtomicRef _lastStateCallback;
    public final HandlerExecutor callbackExecutor;
    public final Camera2ErrorProcessor cameraErrorListener;
    public final AndroidCameraDevice device;
    public final AtomicRef extensionSession;
    public final CardView.AnonymousClass1 interopCaptureSessionListener;
    public final ExtensionSessionState stateCallback;

    public AndroidExtensionSessionStateCallback(AndroidCameraDevice androidCameraDevice, ExtensionSessionState extensionSessionState, SessionStateCallback sessionStateCallback, Camera2ErrorProcessor camera2ErrorProcessor, CardView.AnonymousClass1 anonymousClass1, HandlerExecutor handlerExecutor) {
        camera2ErrorProcessor.getClass();
        this.device = androidCameraDevice;
        this.stateCallback = extensionSessionState;
        this.cameraErrorListener = camera2ErrorProcessor;
        this.interopCaptureSessionListener = anonymousClass1;
        this.callbackExecutor = handlerExecutor;
        this._lastStateCallback = AtomicFU.atomic(sessionStateCallback);
        this.extensionSession = AtomicFU.atomic((Object) null);
    }

    public final CameraExtensionSessionWrapper getWrapped(CameraExtensionSession cameraExtensionSession, Camera2ErrorProcessor camera2ErrorProcessor) {
        CameraExtensionSessionWrapper cameraExtensionSessionWrapper = (CameraExtensionSessionWrapper) this.extensionSession.value;
        if (cameraExtensionSessionWrapper != null) {
            return cameraExtensionSessionWrapper;
        }
        AndroidCameraExtensionSession androidCameraExtensionSession = new AndroidCameraExtensionSession(this.device, cameraExtensionSession, camera2ErrorProcessor, this.callbackExecutor);
        if (this.extensionSession.compareAndSet(null, androidCameraExtensionSession)) {
            return androidCameraExtensionSession;
        }
        Object obj = this.extensionSession.value;
        obj.getClass();
        return (CameraExtensionSessionWrapper) obj;
    }

    public final void onClosed(CameraExtensionSession cameraExtensionSession) {
        cameraExtensionSession.getClass();
        Camera2ErrorProcessor camera2ErrorProcessor = this.cameraErrorListener;
        getWrapped(cameraExtensionSession, camera2ErrorProcessor);
        CameraExtensionSessionWrapper wrapped = getWrapped(cameraExtensionSession, camera2ErrorProcessor);
        ExtensionSessionState extensionSessionState = this.stateCallback;
        extensionSessionState.getClass();
        extensionSessionState.captureSessionState.onClosed(wrapped);
        AtomicRef atomicRef = this._lastStateCallback;
        atomicRef.getClass();
        SessionStateCallback sessionStateCallback = (SessionStateCallback) AtomicRef.FU.getAndSet(atomicRef, null);
        if (sessionStateCallback != null) {
            sessionStateCallback.onSessionFinalized();
        }
        extensionSessionState.onSessionFinalized();
        CardView.AnonymousClass1 anonymousClass1 = this.interopCaptureSessionListener;
        if (anonymousClass1 != null) {
            anonymousClass1.m100onClosedrphkYDA(this.device.cameraId);
        }
    }

    public final void onConfigureFailed(CameraExtensionSession cameraExtensionSession) {
        cameraExtensionSession.getClass();
        CameraExtensionSessionWrapper wrapped = getWrapped(cameraExtensionSession, this.cameraErrorListener);
        ExtensionSessionState extensionSessionState = this.stateCallback;
        extensionSessionState.getClass();
        extensionSessionState.captureSessionState.onConfigureFailed(wrapped);
        AtomicRef atomicRef = this._lastStateCallback;
        atomicRef.getClass();
        SessionStateCallback sessionStateCallback = (SessionStateCallback) AtomicRef.FU.getAndSet(atomicRef, null);
        if (sessionStateCallback != null) {
            sessionStateCallback.onSessionFinalized();
        }
        extensionSessionState.onSessionFinalized();
        CardView.AnonymousClass1 anonymousClass1 = this.interopCaptureSessionListener;
        if (anonymousClass1 != null) {
            anonymousClass1.m101onConfigureFailedrphkYDA(this.device.cameraId);
        }
    }

    public final void onConfigured(CameraExtensionSession cameraExtensionSession) {
        cameraExtensionSession.getClass();
        CameraExtensionSessionWrapper wrapped = getWrapped(cameraExtensionSession, this.cameraErrorListener);
        ExtensionSessionState extensionSessionState = this.stateCallback;
        extensionSessionState.getClass();
        extensionSessionState.captureSessionState.onConfigured(wrapped);
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
}
