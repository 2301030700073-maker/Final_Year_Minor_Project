package androidx.compose.ui.node;

/* compiled from: MyersDiff.kt */
/* loaded from: classes.dex */
abstract class CenteredArray {
    /* renamed from: constructor-impl, reason: not valid java name */
    public static int[] m1798constructorimpl(int[] iArr) {
        return iArr;
    }

    /* renamed from: getMid-impl, reason: not valid java name */
    private static final int m1800getMidimpl(int[] iArr) {
        return iArr.length / 2;
    }

    /* renamed from: get-impl, reason: not valid java name */
    public static final int m1799getimpl(int[] iArr, int i) {
        return iArr[i + m1800getMidimpl(iArr)];
    }

    /* renamed from: set-impl, reason: not valid java name */
    public static final void m1801setimpl(int[] iArr, int i, int i2) {
        iArr[i + m1800getMidimpl(iArr)] = i2;
    }
}
