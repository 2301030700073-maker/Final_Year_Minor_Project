package androidx.camera.core.internal;

import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.camera.core.ImageInfo;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.TagBundle;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraCaptureResultImageInfo implements ImageInfo {
    public final CameraCaptureResult mCameraCaptureResult;

    public CameraCaptureResultImageInfo(CameraCaptureResult cameraCaptureResult) {
        this.mCameraCaptureResult = cameraCaptureResult;
    }

    @Override // androidx.camera.core.ImageInfo
    public final int getFlashState() {
        int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(this.mCameraCaptureResult.getFlashState());
        if (ordinal == 1) {
            return 2;
        }
        if (ordinal != 2) {
            return ordinal != 3 ? 0 : 1;
        }
        return 3;
    }

    @Override // androidx.camera.core.ImageInfo
    public final TagBundle getTagBundle() {
        return this.mCameraCaptureResult.getTagBundle();
    }

    @Override // androidx.camera.core.ImageInfo
    public final long getTimestamp() {
        return this.mCameraCaptureResult.getTimestamp();
    }
}
