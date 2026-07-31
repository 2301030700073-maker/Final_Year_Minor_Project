package androidx.camera.core.imagecapture;

import androidx.camera.core.impl.CameraCaptureCallback;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CaptureNode$1 extends CameraCaptureCallback {
    @Override // androidx.camera.core.impl.CameraCaptureCallback
    public final void onCaptureProcessProgressed(int i, int i2) {
        Util.mainThreadExecutor().execute(new CaptureNode$1$$ExternalSyntheticLambda0(this, i2));
    }

    @Override // androidx.camera.core.impl.CameraCaptureCallback
    public final void onCaptureStarted(int i) {
        Util.mainThreadExecutor().execute(new CaptureNode$1$$ExternalSyntheticLambda0(this));
    }
}
