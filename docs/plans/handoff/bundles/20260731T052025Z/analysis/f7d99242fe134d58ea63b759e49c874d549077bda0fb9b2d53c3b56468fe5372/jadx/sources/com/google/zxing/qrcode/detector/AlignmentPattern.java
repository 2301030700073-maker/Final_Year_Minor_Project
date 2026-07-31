package com.google.zxing.qrcode.detector;

import com.google.zxing.ResultPoint;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AlignmentPattern extends ResultPoint {
    public final float estimatedModuleSize;

    public AlignmentPattern(float f, float f2, float f3) {
        super(f, f2);
        this.estimatedModuleSize = f3;
    }
}
