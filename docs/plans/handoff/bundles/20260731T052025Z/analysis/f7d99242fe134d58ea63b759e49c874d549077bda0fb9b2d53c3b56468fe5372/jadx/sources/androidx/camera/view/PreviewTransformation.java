package androidx.camera.view;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Size;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.view.PreviewView;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.room.util.RelationUtil;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PreviewTransformation {
    public boolean mHasCameraTransform;
    public boolean mIsFrontCamera;
    public int mPreviewRotationDegrees;
    public Size mResolution;
    public PreviewView.ScaleType mScaleType;
    public Matrix mSensorToBufferTransform;
    public Rect mSurfaceCropRect;
    public int mTargetRotation;

    public final void getPreviewViewToNormalizedSensorMatrix(Size size, int i, Rect rect) {
        Matrix matrix;
        if (isTransformationInfoReady()) {
            Matrix matrix2 = new Matrix();
            if (isTransformationInfoReady()) {
                Matrix matrix3 = new Matrix(this.mSensorToBufferTransform);
                matrix3.postConcat(getSurfaceToPreviewViewMatrix(i, size));
                matrix = matrix3;
            } else {
                matrix = null;
            }
            matrix.invert(matrix2);
            Matrix matrix4 = new Matrix();
            matrix4.setRectToRect(new RectF(0.0f, 0.0f, rect.width(), rect.height()), new RectF(0.0f, 0.0f, 1.0f, 1.0f), Matrix.ScaleToFit.FILL);
            matrix2.postConcat(matrix4);
        }
    }

    public final Size getRotatedViewportSize() {
        return TransformUtils.is90or270(this.mPreviewRotationDegrees) ? new Size(this.mSurfaceCropRect.height(), this.mSurfaceCropRect.width()) : new Size(this.mSurfaceCropRect.width(), this.mSurfaceCropRect.height());
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Matrix getSurfaceToPreviewViewMatrix(int r8, android.util.Size r9) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.view.PreviewTransformation.getSurfaceToPreviewViewMatrix(int, android.util.Size):android.graphics.Matrix");
    }

    public final Matrix getTextureViewCorrectionMatrix() {
        RelationUtil.checkState(null, isTransformationInfoReady());
        RectF rectF = new RectF(0.0f, 0.0f, this.mResolution.getWidth(), this.mResolution.getHeight());
        return TransformUtils.getRectToRect(rectF, rectF, !this.mHasCameraTransform ? this.mPreviewRotationDegrees : -IntOffsetKt.surfaceRotationToDegrees(this.mTargetRotation), false);
    }

    public final RectF getTransformedSurfaceRect(int i, Size size) {
        RelationUtil.checkState(null, isTransformationInfoReady());
        Matrix surfaceToPreviewViewMatrix = getSurfaceToPreviewViewMatrix(i, size);
        RectF rectF = new RectF(0.0f, 0.0f, this.mResolution.getWidth(), this.mResolution.getHeight());
        surfaceToPreviewViewMatrix.mapRect(rectF);
        return rectF;
    }

    public final boolean isTransformationInfoReady() {
        return (this.mSurfaceCropRect == null || this.mResolution == null || !(!this.mHasCameraTransform || this.mTargetRotation != -1)) ? false : true;
    }
}
