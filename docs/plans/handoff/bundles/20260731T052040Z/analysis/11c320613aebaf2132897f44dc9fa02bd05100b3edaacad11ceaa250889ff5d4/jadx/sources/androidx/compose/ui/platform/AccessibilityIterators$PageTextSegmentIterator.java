package androidx.compose.ui.platform;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.ParagraphInfo;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.core.app.NotificationCompat$Style;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AccessibilityIterators$PageTextSegmentIterator extends NotificationCompat$Style {
    public static AccessibilityIterators$PageTextSegmentIterator pageInstance;
    public TextLayoutResult layoutResult;
    public SemanticsNode node;
    public static final ResolvedTextDirection DirectionStart = ResolvedTextDirection.Rtl;
    public static final ResolvedTextDirection DirectionEnd = ResolvedTextDirection.Ltr;

    @Override // androidx.core.app.NotificationCompat$Style
    public final int[] following(int i) {
        int i2;
        if (getText().length() > 0 && i < getText().length()) {
            try {
                SemanticsNode semanticsNode = this.node;
                if (semanticsNode == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("node");
                    throw null;
                }
                Rect boundsInRoot = semanticsNode.getBoundsInRoot();
                int round = Math.round(boundsInRoot.bottom - boundsInRoot.top);
                if (i <= 0) {
                    i = 0;
                }
                TextLayoutResult textLayoutResult = this.layoutResult;
                if (textLayoutResult == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                    throw null;
                }
                int lineForOffset = textLayoutResult.getLineForOffset(i);
                TextLayoutResult textLayoutResult2 = this.layoutResult;
                if (textLayoutResult2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                    throw null;
                }
                float lineTop = textLayoutResult2.getLineTop(lineForOffset) + round;
                TextLayoutResult textLayoutResult3 = this.layoutResult;
                if (textLayoutResult3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                    throw null;
                }
                float lineTop2 = textLayoutResult3.getLineTop(textLayoutResult3.multiParagraph.lineCount - 1);
                TextLayoutResult textLayoutResult4 = this.layoutResult;
                if (lineTop < lineTop2) {
                    if (textLayoutResult4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                        throw null;
                    }
                    i2 = textLayoutResult4.getLineForVerticalPosition(lineTop);
                } else {
                    if (textLayoutResult4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                        throw null;
                    }
                    i2 = textLayoutResult4.multiParagraph.lineCount;
                }
                return getRange(i, getLineEdgeIndex$1(i2 - 1, DirectionEnd) + 1);
            } catch (IllegalStateException unused) {
            }
        }
        return null;
    }

    public final int getLineEdgeIndex$1(int i, ResolvedTextDirection resolvedTextDirection) {
        TextLayoutResult textLayoutResult = this.layoutResult;
        if (textLayoutResult == null) {
            Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
            throw null;
        }
        int lineStart = textLayoutResult.getLineStart(i);
        TextLayoutResult textLayoutResult2 = this.layoutResult;
        if (textLayoutResult2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
            throw null;
        }
        ResolvedTextDirection paragraphDirection = textLayoutResult2.getParagraphDirection(lineStart);
        TextLayoutResult textLayoutResult3 = this.layoutResult;
        if (resolvedTextDirection != paragraphDirection) {
            if (textLayoutResult3 != null) {
                return textLayoutResult3.getLineStart(i);
            }
            Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
            throw null;
        }
        if (textLayoutResult3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
            throw null;
        }
        MultiParagraph multiParagraph = textLayoutResult3.multiParagraph;
        multiParagraph.requireLineIndexInRange(i);
        ArrayList arrayList = (ArrayList) multiParagraph.paragraphInfoList;
        AndroidParagraph androidParagraph = ((ParagraphInfo) arrayList.get(ParagraphKt.findParagraphByLineIndex(i, arrayList))).paragraph;
        return (androidParagraph.layout.getLineEnd(i - r4.startLineIndex) + r4.startIndex) - 1;
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final int[] preceding(int i) {
        int i2;
        if (getText().length() <= 0 || i <= 0) {
            return null;
        }
        try {
            SemanticsNode semanticsNode = this.node;
            if (semanticsNode == null) {
                Intrinsics.throwUninitializedPropertyAccessException("node");
                throw null;
            }
            Rect boundsInRoot = semanticsNode.getBoundsInRoot();
            int round = Math.round(boundsInRoot.bottom - boundsInRoot.top);
            int length = getText().length();
            if (length <= i) {
                i = length;
            }
            TextLayoutResult textLayoutResult = this.layoutResult;
            if (textLayoutResult == null) {
                Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                throw null;
            }
            int lineForOffset = textLayoutResult.getLineForOffset(i);
            TextLayoutResult textLayoutResult2 = this.layoutResult;
            if (textLayoutResult2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                throw null;
            }
            float lineTop = textLayoutResult2.getLineTop(lineForOffset) - round;
            if (lineTop > 0.0f) {
                TextLayoutResult textLayoutResult3 = this.layoutResult;
                if (textLayoutResult3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                    throw null;
                }
                i2 = textLayoutResult3.getLineForVerticalPosition(lineTop);
            } else {
                i2 = 0;
            }
            if (i == getText().length() && i2 < lineForOffset) {
                i2++;
            }
            return getRange(getLineEdgeIndex$1(i2, DirectionStart), i);
        } catch (IllegalStateException unused) {
            return null;
        }
    }
}
