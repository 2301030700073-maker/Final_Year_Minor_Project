package androidx.camera.camera2.pipe.compat;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ExtensionSessionState implements SessionStateCallback {
    public final CaptureSessionState captureSessionState;

    public ExtensionSessionState(CaptureSessionState captureSessionState) {
        captureSessionState.getClass();
        this.captureSessionState = captureSessionState;
    }

    @Override // androidx.camera.camera2.pipe.compat.SessionStateCallback
    public final void onSessionDisconnected() {
        this.captureSessionState.onSessionDisconnected();
    }

    @Override // androidx.camera.camera2.pipe.compat.SessionStateCallback
    public final void onSessionFinalized() {
        this.captureSessionState.onSessionFinalized();
    }
}
