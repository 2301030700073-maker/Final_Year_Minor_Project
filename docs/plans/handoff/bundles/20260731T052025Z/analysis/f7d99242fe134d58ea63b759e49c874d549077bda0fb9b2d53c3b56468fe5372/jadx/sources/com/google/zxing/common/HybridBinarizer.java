package com.google.zxing.common;

import com.google.zxing.PlanarYUVLuminanceSource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HybridBinarizer {
    public static final byte[] EMPTY = new byte[0];
    public BitMatrix matrix;
    public final PlanarYUVLuminanceSource source;
    public byte[] luminances = EMPTY;
    public final int[] buckets = new int[32];

    public HybridBinarizer(PlanarYUVLuminanceSource planarYUVLuminanceSource) {
        this.source = planarYUVLuminanceSource;
    }
}
