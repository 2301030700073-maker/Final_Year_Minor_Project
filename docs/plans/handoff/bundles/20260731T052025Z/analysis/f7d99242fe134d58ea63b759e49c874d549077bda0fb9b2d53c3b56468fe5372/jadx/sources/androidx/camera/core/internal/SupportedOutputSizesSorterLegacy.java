package androidx.camera.core.internal;

import android.util.Rational;
import android.util.Size;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.compose.ui.unit.IntOffsetKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SupportedOutputSizesSorterLegacy {
    public final Rational mFullFovRatio;
    public final boolean mIsSensorLandscapeResolution;
    public final int mLensFacing;
    public final int mSensorOrientation;

    public SupportedOutputSizesSorterLegacy(CameraInfoInternal cameraInfoInternal, Rational rational) {
        this.mSensorOrientation = cameraInfoInternal.getSensorRotationDegrees();
        this.mLensFacing = cameraInfoInternal.getLensFacing();
        this.mFullFovRatio = rational;
        boolean z = true;
        if (rational != null && rational.getNumerator() < rational.getDenominator()) {
            z = false;
        }
        this.mIsSensorLandscapeResolution = z;
    }

    public final Size getTargetSize(ImageOutputConfig imageOutputConfig) {
        int targetRotation = imageOutputConfig.getTargetRotation(0);
        Size targetResolution = imageOutputConfig.getTargetResolution();
        if (targetResolution != null) {
            int relativeImageRotation = IntOffsetKt.getRelativeImageRotation(IntOffsetKt.surfaceRotationToDegrees(targetRotation), this.mSensorOrientation, 1 == this.mLensFacing);
            if (relativeImageRotation == 90 || relativeImageRotation == 270) {
                return new Size(targetResolution.getHeight(), targetResolution.getWidth());
            }
        }
        return targetResolution;
    }
}
