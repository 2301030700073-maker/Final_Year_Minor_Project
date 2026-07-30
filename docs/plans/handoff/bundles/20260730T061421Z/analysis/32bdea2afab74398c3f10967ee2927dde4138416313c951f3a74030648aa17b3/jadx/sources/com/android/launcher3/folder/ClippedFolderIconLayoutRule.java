package com.android.launcher3.folder;

import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class ClippedFolderIconLayoutRule {
    public float mAvailableSpace;
    public float mBaselineIconScale;
    public float mIconSize;
    public boolean mIsRtl;
    public float mRadius;
    public float[] mTmpPoint = new float[2];

    public PreviewItemDrawingParams computePreviewItemDrawingParams(int i, int i2, PreviewItemDrawingParams previewItemDrawingParams) {
        float scaleForItem = scaleForItem(i2);
        if (i == -2) {
            getGridPosition(0, 2, this.mTmpPoint);
        } else if (i == -3) {
            getGridPosition(1, 2, this.mTmpPoint);
        } else if (i >= 4) {
            float[] fArr = this.mTmpPoint;
            float f = (this.mAvailableSpace / 2.0f) - ((this.mIconSize * scaleForItem) / 2.0f);
            fArr[1] = f;
            fArr[0] = f;
        } else {
            getPosition(i, i2, this.mTmpPoint);
        }
        float[] fArr2 = this.mTmpPoint;
        float f2 = fArr2[0];
        float f3 = fArr2[1];
        if (previewItemDrawingParams == null) {
            return new PreviewItemDrawingParams(f2, f3, scaleForItem, RecentsState.NO_OFFSET);
        }
        previewItemDrawingParams.update(f2, f3, scaleForItem);
        return previewItemDrawingParams;
    }

    public final void getGridPosition(int i, int i2, float[] fArr) {
        getPosition(0, 4, fArr);
        float f = fArr[0];
        float f2 = fArr[1];
        getPosition(3, 4, fArr);
        float f3 = fArr[0] - f;
        float f4 = fArr[1] - f2;
        fArr[0] = (i2 * f3) + f;
        fArr[1] = (i * f4) + f2;
    }

    public final void getPosition(int i, int i2, float[] fArr) {
        int i3 = i;
        int max = Math.max(i2, 2);
        double d2 = 0.0d;
        double d3 = this.mIsRtl ? 0.0d : 3.141592653589793d;
        int i4 = this.mIsRtl ? 1 : -1;
        if (max == 3) {
            d2 = 0.5235987755982988d;
        } else if (max == 4) {
            d2 = 0.7853981633974483d;
        }
        double d4 = i4;
        double d5 = (d2 * d4) + d3;
        if (max == 4 && i3 == 3) {
            i3 = 2;
        } else if (max == 4 && i3 == 2) {
            i3 = 3;
        }
        float f = ((((max - 2) * 0.15f) / 2.0f) + 1.0f) * this.mRadius;
        double d6 = ((6.283185307179586d / max) * i3 * d4) + d5;
        float scaleForItem = (scaleForItem(max) * this.mIconSize) / 2.0f;
        fArr[0] = ((this.mAvailableSpace / 2.0f) + ((float) ((Math.cos(d6) * f) / 2.0d))) - scaleForItem;
        fArr[1] = ((this.mAvailableSpace / 2.0f) + ((float) ((Math.sin(d6) * (-f)) / 2.0d))) - scaleForItem;
    }

    public float scaleForItem(int i) {
        return (i <= 2 ? 0.58f : i == 3 ? 0.53f : 0.48f) * this.mBaselineIconScale;
    }
}
