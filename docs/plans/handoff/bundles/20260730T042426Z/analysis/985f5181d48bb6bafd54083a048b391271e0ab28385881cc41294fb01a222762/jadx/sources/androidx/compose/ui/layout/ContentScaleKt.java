package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Size;

/* compiled from: ContentScale.kt */
/* loaded from: classes.dex */
public abstract class ContentScaleKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: computeFillMaxDimension-iLBOSCw, reason: not valid java name */
    public static final float m1748computeFillMaxDimensioniLBOSCw(long j, long j2) {
        return Math.max(m1750computeFillWidthiLBOSCw(j, j2), m1747computeFillHeightiLBOSCw(j, j2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: computeFillMinDimension-iLBOSCw, reason: not valid java name */
    public static final float m1749computeFillMinDimensioniLBOSCw(long j, long j2) {
        return Math.min(m1750computeFillWidthiLBOSCw(j, j2), m1747computeFillHeightiLBOSCw(j, j2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: computeFillWidth-iLBOSCw, reason: not valid java name */
    public static final float m1750computeFillWidthiLBOSCw(long j, long j2) {
        return Size.m1204getWidthimpl(j2) / Size.m1204getWidthimpl(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: computeFillHeight-iLBOSCw, reason: not valid java name */
    public static final float m1747computeFillHeightiLBOSCw(long j, long j2) {
        return Size.m1202getHeightimpl(j2) / Size.m1202getHeightimpl(j);
    }
}
