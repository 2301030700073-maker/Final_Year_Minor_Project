package androidx.compose.ui.platform;

import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import java.text.BreakIterator;
import kotlin.jvm.internal.Intrinsics;
import net.openid.appauth.JsonUtil$Field;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccessibilityIterators$WordTextSegmentIterator extends JsonUtil$Field {
    public static AccessibilityIterators$WordTextSegmentIterator instance;
    public static AccessibilityIterators$WordTextSegmentIterator instance$1;
    public static AccessibilityIterators$WordTextSegmentIterator lineInstance;
    public final /* synthetic */ int $r8$classId;
    public Object impl;
    public static final ResolvedTextDirection DirectionStart = ResolvedTextDirection.Rtl;
    public static final ResolvedTextDirection DirectionEnd = ResolvedTextDirection.Ltr;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AccessibilityIterators$WordTextSegmentIterator(int i) {
        super(5);
        this.$r8$classId = i;
    }

    @Override // net.openid.appauth.JsonUtil$Field
    public final int[] following(int i) {
        int i2;
        switch (this.$r8$classId) {
            case 0:
                if (getText().length() <= 0 || i >= getText().length()) {
                    return null;
                }
                if (i < 0) {
                    i = 0;
                }
                while (!isLetterOrDigit(i) && (!isLetterOrDigit(i) || (i != 0 && isLetterOrDigit(i - 1)))) {
                    BreakIterator breakIterator = (BreakIterator) this.impl;
                    if (breakIterator == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("impl");
                        throw null;
                    }
                    i = breakIterator.following(i);
                    if (i == -1) {
                        return null;
                    }
                }
                BreakIterator breakIterator2 = (BreakIterator) this.impl;
                if (breakIterator2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("impl");
                    throw null;
                }
                int following = breakIterator2.following(i);
                if (following == -1 || !isEndBoundary$1(following)) {
                    return null;
                }
                return getRange(i, following);
            case 1:
                int length = getText().length();
                if (length <= 0 || i >= length) {
                    return null;
                }
                if (i < 0) {
                    i = 0;
                }
                do {
                    BreakIterator breakIterator3 = (BreakIterator) this.impl;
                    if (breakIterator3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("impl");
                        throw null;
                    }
                    boolean isBoundary = breakIterator3.isBoundary(i);
                    BreakIterator breakIterator4 = (BreakIterator) this.impl;
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
            default:
                if (getText().length() <= 0 || i >= getText().length()) {
                    return null;
                }
                TextLayoutResult textLayoutResult = (TextLayoutResult) this.impl;
                ResolvedTextDirection resolvedTextDirection = DirectionStart;
                if (i < 0) {
                    if (textLayoutResult == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                        throw null;
                    }
                    i2 = textLayoutResult.multiParagraph.getLineForOffset(0);
                } else {
                    if (textLayoutResult == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                        throw null;
                    }
                    int lineForOffset = textLayoutResult.multiParagraph.getLineForOffset(i);
                    i2 = getLineEdgeIndex(lineForOffset, resolvedTextDirection) == i ? lineForOffset : lineForOffset + 1;
                }
                TextLayoutResult textLayoutResult2 = (TextLayoutResult) this.impl;
                if (textLayoutResult2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                    throw null;
                }
                if (i2 >= textLayoutResult2.multiParagraph.lineCount) {
                    return null;
                }
                return getRange(getLineEdgeIndex(i2, resolvedTextDirection), getLineEdgeIndex(i2, DirectionEnd) + 1);
        }
    }

    public int getLineEdgeIndex(int i, ResolvedTextDirection resolvedTextDirection) {
        TextLayoutResult textLayoutResult = (TextLayoutResult) this.impl;
        if (textLayoutResult == null) {
            Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
            throw null;
        }
        int lineStart = textLayoutResult.getLineStart(i);
        TextLayoutResult textLayoutResult2 = (TextLayoutResult) this.impl;
        if (textLayoutResult2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
            throw null;
        }
        ResolvedTextDirection paragraphDirection = textLayoutResult2.getParagraphDirection(lineStart);
        TextLayoutResult textLayoutResult3 = (TextLayoutResult) this.impl;
        if (resolvedTextDirection != paragraphDirection) {
            if (textLayoutResult3 != null) {
                return textLayoutResult3.getLineStart(i);
            }
            Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
            throw null;
        }
        if (textLayoutResult3 != null) {
            return textLayoutResult3.multiParagraph.getLineEnd(i, false) - 1;
        }
        Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
        throw null;
    }

    public void initialize(String str) {
        switch (this.$r8$classId) {
            case 0:
                this.key = str;
                BreakIterator breakIterator = (BreakIterator) this.impl;
                if (breakIterator != null) {
                    breakIterator.setText(str);
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("impl");
                    throw null;
                }
            default:
                this.key = str;
                BreakIterator breakIterator2 = (BreakIterator) this.impl;
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

    @Override // net.openid.appauth.JsonUtil$Field
    public final int[] preceding(int i) {
        int i2;
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
                    BreakIterator breakIterator = (BreakIterator) this.impl;
                    if (breakIterator == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("impl");
                        throw null;
                    }
                    i = breakIterator.preceding(i);
                    if (i == -1) {
                        return null;
                    }
                }
                BreakIterator breakIterator2 = (BreakIterator) this.impl;
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
            case 1:
                int length2 = getText().length();
                if (length2 <= 0 || i <= 0) {
                    return null;
                }
                if (i > length2) {
                    i = length2;
                }
                do {
                    BreakIterator breakIterator3 = (BreakIterator) this.impl;
                    if (breakIterator3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("impl");
                        throw null;
                    }
                    boolean isBoundary = breakIterator3.isBoundary(i);
                    BreakIterator breakIterator4 = (BreakIterator) this.impl;
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
            default:
                if (getText().length() <= 0 || i <= 0) {
                    return null;
                }
                int length3 = getText().length();
                TextLayoutResult textLayoutResult = (TextLayoutResult) this.impl;
                ResolvedTextDirection resolvedTextDirection = DirectionEnd;
                if (i > length3) {
                    if (textLayoutResult == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                        throw null;
                    }
                    i2 = textLayoutResult.multiParagraph.getLineForOffset(getText().length());
                } else {
                    if (textLayoutResult == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                        throw null;
                    }
                    int lineForOffset = textLayoutResult.multiParagraph.getLineForOffset(i);
                    i2 = getLineEdgeIndex(lineForOffset, resolvedTextDirection) + 1 == i ? lineForOffset : lineForOffset - 1;
                }
                if (i2 < 0) {
                    return null;
                }
                return getRange(getLineEdgeIndex(i2, DirectionStart), getLineEdgeIndex(i2, resolvedTextDirection) + 1);
        }
    }
}
