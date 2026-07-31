package androidx.compose.ui.platform;

import androidx.appcompat.view.menu.BaseMenuWrapper;
import java.text.BreakIterator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AccessibilityIterators$WordTextSegmentIterator extends BaseMenuWrapper {
    public static AccessibilityIterators$WordTextSegmentIterator instance;
    public static AccessibilityIterators$WordTextSegmentIterator instance$1;
    public final /* synthetic */ int $r8$classId;
    public BreakIterator impl;

    @Override // androidx.appcompat.view.menu.BaseMenuWrapper
    public final int[] following(int i) {
        switch (this.$r8$classId) {
            case 0:
                if (getText().length() <= 0 || i >= getText().length()) {
                    return null;
                }
                if (i < 0) {
                    i = 0;
                }
                while (!isLetterOrDigit(i) && (!isLetterOrDigit(i) || (i != 0 && isLetterOrDigit(i - 1)))) {
                    BreakIterator breakIterator = this.impl;
                    if (breakIterator == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("impl");
                        throw null;
                    }
                    i = breakIterator.following(i);
                    if (i == -1) {
                        return null;
                    }
                }
                BreakIterator breakIterator2 = this.impl;
                if (breakIterator2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("impl");
                    throw null;
                }
                int following = breakIterator2.following(i);
                if (following == -1 || !isEndBoundary$1(following)) {
                    return null;
                }
                return getRange(i, following);
            default:
                int length = getText().length();
                if (length <= 0 || i >= length) {
                    return null;
                }
                if (i < 0) {
                    i = 0;
                }
                do {
                    BreakIterator breakIterator3 = this.impl;
                    if (breakIterator3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("impl");
                        throw null;
                    }
                    boolean isBoundary = breakIterator3.isBoundary(i);
                    BreakIterator breakIterator4 = this.impl;
                    if (isBoundary) {
                        if (breakIterator4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("impl");
                            throw null;
                        }
                        int following2 = breakIterator4.following(i);
                        if (following2 == -1) {
                            return null;
                        }
                        return getRange(i, following2);
                    }
                    if (breakIterator4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("impl");
                        throw null;
                    }
                    i = breakIterator4.following(i);
                } while (i != -1);
                return null;
        }
    }

    public final void initialize(String str) {
        switch (this.$r8$classId) {
            case 0:
                this.mContext = str;
                BreakIterator breakIterator = this.impl;
                if (breakIterator != null) {
                    breakIterator.setText(str);
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("impl");
                    throw null;
                }
            default:
                this.mContext = str;
                BreakIterator breakIterator2 = this.impl;
                if (breakIterator2 != null) {
                    breakIterator2.setText(str);
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("impl");
                    throw null;
                }
        }
    }

    public boolean isEndBoundary$1(int i) {
        if (i <= 0 || !isLetterOrDigit(i - 1)) {
            return false;
        }
        return i == getText().length() || !isLetterOrDigit(i);
    }

    public boolean isLetterOrDigit(int i) {
        if (i < 0 || i >= getText().length()) {
            return false;
        }
        return Character.isLetterOrDigit(getText().codePointAt(i));
    }

    @Override // androidx.appcompat.view.menu.BaseMenuWrapper
    public final int[] preceding(int i) {
        switch (this.$r8$classId) {
            case 0:
                int length = getText().length();
                if (length <= 0 || i <= 0) {
                    return null;
                }
                if (i > length) {
                    i = length;
                }
                while (i > 0 && !isLetterOrDigit(i - 1) && !isEndBoundary$1(i)) {
                    BreakIterator breakIterator = this.impl;
                    if (breakIterator == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("impl");
                        throw null;
                    }
                    i = breakIterator.preceding(i);
                    if (i == -1) {
                        return null;
                    }
                }
                BreakIterator breakIterator2 = this.impl;
                if (breakIterator2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("impl");
                    throw null;
                }
                int preceding = breakIterator2.preceding(i);
                if (preceding == -1 || !isLetterOrDigit(preceding)) {
                    return null;
                }
                if (preceding == 0 || !isLetterOrDigit(preceding - 1)) {
                    return getRange(preceding, i);
                }
                return null;
            default:
                int length2 = getText().length();
                if (length2 <= 0 || i <= 0) {
                    return null;
                }
                if (i > length2) {
                    i = length2;
                }
                do {
                    BreakIterator breakIterator3 = this.impl;
                    if (breakIterator3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("impl");
                        throw null;
                    }
                    boolean isBoundary = breakIterator3.isBoundary(i);
                    BreakIterator breakIterator4 = this.impl;
                    if (isBoundary) {
                        if (breakIterator4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("impl");
                            throw null;
                        }
                        int preceding2 = breakIterator4.preceding(i);
                        if (preceding2 == -1) {
                            return null;
                        }
                        return getRange(preceding2, i);
                    }
                    if (breakIterator4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("impl");
                        throw null;
                    }
                    i = breakIterator4.preceding(i);
                } while (i != -1);
                return null;
        }
    }
}
