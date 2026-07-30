package androidx.compose.ui.node;

/* compiled from: MyersDiff.kt */
/* loaded from: classes.dex */
abstract class Snake {
    /* renamed from: constructor-impl, reason: not valid java name */
    public static int[] m1915constructorimpl(int[] iArr) {
        return iArr;
    }

    /* renamed from: getStartX-impl, reason: not valid java name */
    public static final int m1921getStartXimpl(int[] iArr) {
        return iArr[0];
    }

    /* renamed from: getStartY-impl, reason: not valid java name */
    public static final int m1922getStartYimpl(int[] iArr) {
        return iArr[1];
    }

    /* renamed from: getEndX-impl, reason: not valid java name */
    public static final int m1917getEndXimpl(int[] iArr) {
        return iArr[2];
    }

    /* renamed from: getEndY-impl, reason: not valid java name */
    public static final int m1918getEndYimpl(int[] iArr) {
        return iArr[3];
    }

    /* renamed from: getReverse-impl, reason: not valid java name */
    public static final boolean m1920getReverseimpl(int[] iArr) {
        return iArr[4] != 0;
    }

    /* renamed from: getDiagonalSize-impl, reason: not valid java name */
    public static final int m1916getDiagonalSizeimpl(int[] iArr) {
        return Math.min(m1917getEndXimpl(iArr) - m1921getStartXimpl(iArr), m1918getEndYimpl(iArr) - m1922getStartYimpl(iArr));
    }

    /* renamed from: getHasAdditionOrRemoval-impl, reason: not valid java name */
    private static final boolean m1919getHasAdditionOrRemovalimpl(int[] iArr) {
        return m1918getEndYimpl(iArr) - m1922getStartYimpl(iArr) != m1917getEndXimpl(iArr) - m1921getStartXimpl(iArr);
    }

    /* renamed from: isAddition-impl, reason: not valid java name */
    private static final boolean m1923isAdditionimpl(int[] iArr) {
        return m1918getEndYimpl(iArr) - m1922getStartYimpl(iArr) > m1917getEndXimpl(iArr) - m1921getStartXimpl(iArr);
    }

    /* renamed from: addDiagonalToStack-impl, reason: not valid java name */
    public static final void m1914addDiagonalToStackimpl(int[] iArr, IntStack intStack) {
        if (m1919getHasAdditionOrRemovalimpl(iArr)) {
            if (m1920getReverseimpl(iArr)) {
                intStack.pushDiagonal(m1921getStartXimpl(iArr), m1922getStartYimpl(iArr), m1916getDiagonalSizeimpl(iArr));
                return;
            } else if (m1923isAdditionimpl(iArr)) {
                intStack.pushDiagonal(m1921getStartXimpl(iArr), m1922getStartYimpl(iArr) + 1, m1916getDiagonalSizeimpl(iArr));
                return;
            } else {
                intStack.pushDiagonal(m1921getStartXimpl(iArr) + 1, m1922getStartYimpl(iArr), m1916getDiagonalSizeimpl(iArr));
                return;
            }
        }
        intStack.pushDiagonal(m1921getStartXimpl(iArr), m1922getStartYimpl(iArr), m1917getEndXimpl(iArr) - m1921getStartXimpl(iArr));
    }
}
