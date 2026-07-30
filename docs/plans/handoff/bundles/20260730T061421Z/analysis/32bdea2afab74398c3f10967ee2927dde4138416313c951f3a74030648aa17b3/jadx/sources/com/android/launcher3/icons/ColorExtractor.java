package com.android.launcher3.icons;

import android.util.SparseArray;

/* loaded from: classes.dex */
public class ColorExtractor {
    public final float[] mTmpHsv = new float[3];
    public final float[] mTmpHueScoreHistogram = new float[360];
    public final int[] mTmpPixels = new int[20];
    public final SparseArray mTmpRgbScores = new SparseArray();
}
