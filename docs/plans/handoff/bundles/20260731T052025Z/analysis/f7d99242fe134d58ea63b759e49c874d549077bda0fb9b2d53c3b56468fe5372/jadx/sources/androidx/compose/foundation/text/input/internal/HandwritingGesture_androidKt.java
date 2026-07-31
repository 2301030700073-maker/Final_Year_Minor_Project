package androidx.compose.foundation.text.input.internal;

import android.graphics.PointF;
import android.view.inputmethod.ExtractedText;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextInclusionStrategy$Companion;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextFieldValue;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class HandwritingGesture_androidKt {
    /* renamed from: access$getOffsetForHandwritingGesture-d-4ec7I, reason: not valid java name */
    public static final int m289access$getOffsetForHandwritingGestured4ec7I(LegacyTextFieldState legacyTextFieldState, long j, ViewConfiguration viewConfiguration) {
        long mo582screenToLocalMKHz9U;
        int m291getLineForHandwritingGestured4ec7I;
        TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
        if (layoutResult != null) {
            MultiParagraph multiParagraph = layoutResult.value.multiParagraph;
            LayoutCoordinates layoutCoordinates = legacyTextFieldState.getLayoutCoordinates();
            if (layoutCoordinates != null && (m291getLineForHandwritingGestured4ec7I = m291getLineForHandwritingGestured4ec7I(multiParagraph, (mo582screenToLocalMKHz9U = layoutCoordinates.mo582screenToLocalMKHz9U(j)), viewConfiguration)) != -1) {
                return multiParagraph.m687getOffsetForPositionk4lQ0M(Offset.m435copydBAh8RU$default((multiParagraph.getLineBottom(m291getLineForHandwritingGestured4ec7I) + multiParagraph.getLineTop(m291getLineForHandwritingGestured4ec7I)) / 2.0f, 1, mo582screenToLocalMKHz9U));
            }
        }
        return -1;
    }

    /* renamed from: access$getRangeForScreenRects-O048IG0, reason: not valid java name */
    public static final long m290access$getRangeForScreenRectsO048IG0(LegacyTextFieldState legacyTextFieldState, Rect rect, Rect rect2, int i) {
        long m292getRangeForScreenRectOH9lIzo = m292getRangeForScreenRectOH9lIzo(legacyTextFieldState, rect, i);
        if (TextRange.m699getCollapsedimpl(m292getRangeForScreenRectOH9lIzo)) {
            return TextRange.Zero;
        }
        long m292getRangeForScreenRectOH9lIzo2 = m292getRangeForScreenRectOH9lIzo(legacyTextFieldState, rect2, i);
        if (TextRange.m699getCollapsedimpl(m292getRangeForScreenRectOH9lIzo2)) {
            return TextRange.Zero;
        }
        int i2 = (int) (m292getRangeForScreenRectOH9lIzo >> 32);
        int i3 = (int) (m292getRangeForScreenRectOH9lIzo2 & 4294967295L);
        return ParagraphKt.TextRange(Math.min(i2, i2), Math.max(i3, i3));
    }

    public static final boolean access$isBiDiBoundary(TextLayoutResult textLayoutResult, int i) {
        MultiParagraph multiParagraph = textLayoutResult.multiParagraph;
        int lineForOffset = multiParagraph.getLineForOffset(i);
        return i == textLayoutResult.getLineStart(lineForOffset) || i == multiParagraph.getLineEnd(lineForOffset, false) ? textLayoutResult.getParagraphDirection(i) != textLayoutResult.getBidiRunDirection(i) : textLayoutResult.getBidiRunDirection(i) != textLayoutResult.getBidiRunDirection(i - 1);
    }

    public static final ExtractedText access$toExtractedText(TextFieldValue textFieldValue) {
        ExtractedText extractedText = new ExtractedText();
        String str = textFieldValue.annotatedString.text;
        extractedText.text = str;
        extractedText.startOffset = 0;
        extractedText.partialEndOffset = str.length();
        extractedText.partialStartOffset = -1;
        long j = textFieldValue.selection;
        extractedText.selectionStart = TextRange.m702getMinimpl(j);
        extractedText.selectionEnd = TextRange.m701getMaximpl(j);
        extractedText.flags = !StringsKt.contains$default(textFieldValue.annotatedString.text, '\n') ? 1 : 0;
        return extractedText;
    }

    public static final long access$toOffset(PointF pointF) {
        float f = pointF.x;
        float f2 = pointF.y;
        return (Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f2) & 4294967295L);
    }

    public static final boolean containsInclusive(Rect rect, float f, float f2) {
        float f3 = rect.left;
        if (f > rect.right || f3 > f) {
            return false;
        }
        return f2 <= rect.bottom && rect.top <= f2;
    }

    /* renamed from: getLineForHandwritingGesture-d-4ec7I, reason: not valid java name */
    public static final int m291getLineForHandwritingGestured4ec7I(MultiParagraph multiParagraph, long j, ViewConfiguration viewConfiguration) {
        float handwritingGestureLineMargin = viewConfiguration != null ? viewConfiguration.getHandwritingGestureLineMargin() : 0.0f;
        int i = (int) (4294967295L & j);
        int lineForVerticalPosition = multiParagraph.getLineForVerticalPosition(Float.intBitsToFloat(i));
        if (Float.intBitsToFloat(i) < multiParagraph.getLineTop(lineForVerticalPosition) - handwritingGestureLineMargin || Float.intBitsToFloat(i) > multiParagraph.getLineBottom(lineForVerticalPosition) + handwritingGestureLineMargin) {
            return -1;
        }
        int i2 = (int) (j >> 32);
        if (Float.intBitsToFloat(i2) < (-handwritingGestureLineMargin) || Float.intBitsToFloat(i2) > multiParagraph.width + handwritingGestureLineMargin) {
            return -1;
        }
        return lineForVerticalPosition;
    }

    /* renamed from: getRangeForScreenRect-OH9lIzo, reason: not valid java name */
    public static final long m292getRangeForScreenRectOH9lIzo(LegacyTextFieldState legacyTextFieldState, Rect rect, int i) {
        TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
        MultiParagraph multiParagraph = layoutResult != null ? layoutResult.value.multiParagraph : null;
        LayoutCoordinates layoutCoordinates = legacyTextFieldState.getLayoutCoordinates();
        return (multiParagraph == null || layoutCoordinates == null) ? TextRange.Zero : multiParagraph.m688getRangeForRect86BmAI(rect.m448translatek4lQ0M(layoutCoordinates.mo582screenToLocalMKHz9U(0L)), i, TextInclusionStrategy$Companion.ContainsCenter);
    }

    public static final boolean isPunctuation(int i) {
        int type = Character.getType(i);
        return type == 23 || type == 20 || type == 22 || type == 30 || type == 29 || type == 24 || type == 21;
    }

    public static final boolean isWhitespace(int i) {
        return Character.isWhitespace(i) || i == 160;
    }

    public static final boolean isWhitespaceExceptNewline(int i) {
        int type;
        return (!isWhitespace(i) || (type = Character.getType(i)) == 14 || type == 13 || i == 10) ? false : true;
    }

    public static final Modifier legacyTextInputAdapter(Modifier modifier, AndroidLegacyPlatformTextInputServiceAdapter androidLegacyPlatformTextInputServiceAdapter, LegacyTextFieldState legacyTextFieldState, TextFieldSelectionManager textFieldSelectionManager) {
        return modifier.then(new LegacyAdaptingPlatformTextInputModifier(androidLegacyPlatformTextInputServiceAdapter, legacyTextFieldState, textFieldSelectionManager));
    }
}
