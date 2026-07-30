package androidx.compose.foundation.text.input.internal;

import android.graphics.PointF;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextGranularity;
import androidx.compose.ui.text.TextInclusionStrategy;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.EditingBuffer;

/* compiled from: HandwritingGesture.android.kt */
/* loaded from: classes.dex */
public abstract class HandwritingGesture_androidKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adjustHandwritingDeleteGestureRange-72CqOWE, reason: not valid java name */
    public static final long m499adjustHandwritingDeleteGestureRange72CqOWE(long j, CharSequence charSequence) {
        int m2125getStartimpl = TextRange.m2125getStartimpl(j);
        int m2120getEndimpl = TextRange.m2120getEndimpl(j);
        int codePointBefore = m2125getStartimpl > 0 ? Character.codePointBefore(charSequence, m2125getStartimpl) : 10;
        int codePointAt = m2120getEndimpl < charSequence.length() ? Character.codePointAt(charSequence, m2120getEndimpl) : 10;
        if (isWhitespaceExceptNewline(codePointBefore) && (isWhitespace(codePointAt) || isPunctuation(codePointAt))) {
            do {
                m2125getStartimpl -= Character.charCount(codePointBefore);
                if (m2125getStartimpl == 0) {
                    break;
                }
                codePointBefore = Character.codePointBefore(charSequence, m2125getStartimpl);
            } while (isWhitespaceExceptNewline(codePointBefore));
            return TextRangeKt.TextRange(m2125getStartimpl, m2120getEndimpl);
        }
        if (!isWhitespaceExceptNewline(codePointAt)) {
            return j;
        }
        if (!isWhitespace(codePointBefore) && !isPunctuation(codePointBefore)) {
            return j;
        }
        do {
            m2120getEndimpl += Character.charCount(codePointAt);
            if (m2120getEndimpl == charSequence.length()) {
                break;
            }
            codePointAt = Character.codePointAt(charSequence, m2120getEndimpl);
        } while (isWhitespaceExceptNewline(codePointAt));
        return TextRangeKt.TextRange(m2125getStartimpl, m2120getEndimpl);
    }

    private static final boolean isNewline(int i) {
        int type = Character.getType(i);
        return type == 14 || type == 13 || i == 10;
    }

    private static final boolean isWhitespace(int i) {
        return Character.isWhitespace(i) || i == 160;
    }

    private static final boolean isWhitespaceExceptNewline(int i) {
        return isWhitespace(i) && !isNewline(i);
    }

    private static final boolean isPunctuation(int i) {
        int type = Character.getType(i);
        return type == 23 || type == 20 || type == 22 || type == 30 || type == 29 || type == 24 || type == 21;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long toOffset(PointF pointF) {
        return OffsetKt.Offset(pointF.x, pointF.y);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getRangeForScreenRect-OH9lIzo, reason: not valid java name */
    public static final long m508getRangeForScreenRectOH9lIzo(TextLayoutState textLayoutState, Rect rect, int i, TextInclusionStrategy textInclusionStrategy) {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getRangeForScreenRects-O048IG0, reason: not valid java name */
    public static final long m510getRangeForScreenRectsO048IG0(TextLayoutState textLayoutState, Rect rect, Rect rect2, int i, TextInclusionStrategy textInclusionStrategy) {
        long m508getRangeForScreenRectOH9lIzo = m508getRangeForScreenRectOH9lIzo(textLayoutState, rect, i, textInclusionStrategy);
        if (TextRange.m2119getCollapsedimpl(m508getRangeForScreenRectOH9lIzo)) {
            return TextRange.Companion.m2130getZerod9O1mEE();
        }
        long m508getRangeForScreenRectOH9lIzo2 = m508getRangeForScreenRectOH9lIzo(textLayoutState, rect2, i, textInclusionStrategy);
        return TextRange.m2119getCollapsedimpl(m508getRangeForScreenRectOH9lIzo2) ? TextRange.Companion.m2130getZerod9O1mEE() : m500enclosurepWDy79M(m508getRangeForScreenRectOH9lIzo, m508getRangeForScreenRectOH9lIzo2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getRangeForScreenRect-OH9lIzo, reason: not valid java name */
    public static final long m507getRangeForScreenRectOH9lIzo(LegacyTextFieldState legacyTextFieldState, Rect rect, int i, TextInclusionStrategy textInclusionStrategy) {
        TextLayoutResult value;
        TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
        return m506getRangeForScreenRectO048IG0((layoutResult == null || (value = layoutResult.getValue()) == null) ? null : value.getMultiParagraph(), rect, legacyTextFieldState.getLayoutCoordinates(), i, textInclusionStrategy);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getRangeForScreenRects-O048IG0, reason: not valid java name */
    public static final long m509getRangeForScreenRectsO048IG0(LegacyTextFieldState legacyTextFieldState, Rect rect, Rect rect2, int i, TextInclusionStrategy textInclusionStrategy) {
        long m507getRangeForScreenRectOH9lIzo = m507getRangeForScreenRectOH9lIzo(legacyTextFieldState, rect, i, textInclusionStrategy);
        if (TextRange.m2119getCollapsedimpl(m507getRangeForScreenRectOH9lIzo)) {
            return TextRange.Companion.m2130getZerod9O1mEE();
        }
        long m507getRangeForScreenRectOH9lIzo2 = m507getRangeForScreenRectOH9lIzo(legacyTextFieldState, rect2, i, textInclusionStrategy);
        return TextRange.m2119getCollapsedimpl(m507getRangeForScreenRectOH9lIzo2) ? TextRange.Companion.m2130getZerod9O1mEE() : m500enclosurepWDy79M(m507getRangeForScreenRectOH9lIzo, m507getRangeForScreenRectOH9lIzo2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long rangeOfWhitespaces(CharSequence charSequence, int i) {
        int i2 = i;
        while (i2 > 0) {
            int codePointBefore = CodepointHelpers_jvmKt.codePointBefore(charSequence, i2);
            if (!isWhitespace(codePointBefore)) {
                break;
            }
            i2 -= Character.charCount(codePointBefore);
        }
        while (i < charSequence.length()) {
            int codePointAt = CodepointHelpers_jvmKt.codePointAt(charSequence, i);
            if (!isWhitespace(codePointAt)) {
                break;
            }
            i += CodepointHelpers_jvmKt.charCount(codePointAt);
        }
        return TextRangeKt.TextRange(i2, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getOffsetForHandwritingGesture-d-4ec7I, reason: not valid java name */
    public static final int m503getOffsetForHandwritingGestured4ec7I(TextLayoutState textLayoutState, long j, ViewConfiguration viewConfiguration) {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getOffsetForHandwritingGesture-d-4ec7I, reason: not valid java name */
    public static final int m502getOffsetForHandwritingGestured4ec7I(LegacyTextFieldState legacyTextFieldState, long j, ViewConfiguration viewConfiguration) {
        TextLayoutResult value;
        MultiParagraph multiParagraph;
        TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
        if (layoutResult == null || (value = layoutResult.getValue()) == null || (multiParagraph = value.getMultiParagraph()) == null) {
            return -1;
        }
        return m504getOffsetForHandwritingGestureubNVwUQ(multiParagraph, j, legacyTextFieldState.getLayoutCoordinates(), viewConfiguration);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isBiDiBoundary(TextLayoutResult textLayoutResult, int i) {
        int lineForOffset = textLayoutResult.getLineForOffset(i);
        return (i == textLayoutResult.getLineStart(lineForOffset) || i == TextLayoutResult.getLineEnd$default(textLayoutResult, lineForOffset, false, 2, null)) ? textLayoutResult.getParagraphDirection(i) != textLayoutResult.getBidiRunDirection(i) : textLayoutResult.getBidiRunDirection(i) != textLayoutResult.getBidiRunDirection(i - 1);
    }

    /* renamed from: getRangeForScreenRect-O048IG0, reason: not valid java name */
    private static final long m506getRangeForScreenRectO048IG0(MultiParagraph multiParagraph, Rect rect, LayoutCoordinates layoutCoordinates, int i, TextInclusionStrategy textInclusionStrategy) {
        if (multiParagraph == null || layoutCoordinates == null) {
            return TextRange.Companion.m2130getZerod9O1mEE();
        }
        return multiParagraph.m2059getRangeForRect86BmAI(rect.m1189translatek4lQ0M(layoutCoordinates.mo1758screenToLocalMKHz9U(Offset.Companion.m1179getZeroF1C5BW0())), i, textInclusionStrategy);
    }

    /* renamed from: getOffsetForHandwritingGesture-ubNVwUQ, reason: not valid java name */
    private static final int m504getOffsetForHandwritingGestureubNVwUQ(MultiParagraph multiParagraph, long j, LayoutCoordinates layoutCoordinates, ViewConfiguration viewConfiguration) {
        long mo1758screenToLocalMKHz9U;
        int m501getLineForHandwritingGestured4ec7I;
        if (layoutCoordinates == null || (m501getLineForHandwritingGestured4ec7I = m501getLineForHandwritingGestured4ec7I(multiParagraph, (mo1758screenToLocalMKHz9U = layoutCoordinates.mo1758screenToLocalMKHz9U(j)), viewConfiguration)) == -1) {
            return -1;
        }
        return multiParagraph.m2058getOffsetForPositionk4lQ0M(Offset.m1161copydBAh8RU$default(mo1758screenToLocalMKHz9U, 0.0f, (multiParagraph.getLineTop(m501getLineForHandwritingGestured4ec7I) + multiParagraph.getLineBottom(m501getLineForHandwritingGestured4ec7I)) / 2.0f, 1, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getRangeForRemoveSpaceGesture-5iVPX68, reason: not valid java name */
    public static final long m505getRangeForRemoveSpaceGesture5iVPX68(TextLayoutResult textLayoutResult, long j, long j2, LayoutCoordinates layoutCoordinates, ViewConfiguration viewConfiguration) {
        if (textLayoutResult == null || layoutCoordinates == null) {
            return TextRange.Companion.m2130getZerod9O1mEE();
        }
        long mo1758screenToLocalMKHz9U = layoutCoordinates.mo1758screenToLocalMKHz9U(j);
        long mo1758screenToLocalMKHz9U2 = layoutCoordinates.mo1758screenToLocalMKHz9U(j2);
        int m501getLineForHandwritingGestured4ec7I = m501getLineForHandwritingGestured4ec7I(textLayoutResult.getMultiParagraph(), mo1758screenToLocalMKHz9U, viewConfiguration);
        int m501getLineForHandwritingGestured4ec7I2 = m501getLineForHandwritingGestured4ec7I(textLayoutResult.getMultiParagraph(), mo1758screenToLocalMKHz9U2, viewConfiguration);
        if (m501getLineForHandwritingGestured4ec7I != -1) {
            if (m501getLineForHandwritingGestured4ec7I2 != -1) {
                m501getLineForHandwritingGestured4ec7I = Math.min(m501getLineForHandwritingGestured4ec7I, m501getLineForHandwritingGestured4ec7I2);
            }
            m501getLineForHandwritingGestured4ec7I2 = m501getLineForHandwritingGestured4ec7I;
        } else if (m501getLineForHandwritingGestured4ec7I2 == -1) {
            return TextRange.Companion.m2130getZerod9O1mEE();
        }
        float lineTop = (textLayoutResult.getLineTop(m501getLineForHandwritingGestured4ec7I2) + textLayoutResult.getLineBottom(m501getLineForHandwritingGestured4ec7I2)) / 2;
        return textLayoutResult.getMultiParagraph().m2059getRangeForRect86BmAI(new Rect(Math.min(Offset.m1167getXimpl(mo1758screenToLocalMKHz9U), Offset.m1167getXimpl(mo1758screenToLocalMKHz9U2)), lineTop - 0.1f, Math.max(Offset.m1167getXimpl(mo1758screenToLocalMKHz9U), Offset.m1167getXimpl(mo1758screenToLocalMKHz9U2)), lineTop + 0.1f), TextGranularity.Companion.m2104getCharacterDRrd7Zo(), TextInclusionStrategy.Companion.getAnyOverlap());
    }

    /* renamed from: getLineForHandwritingGesture-d-4ec7I, reason: not valid java name */
    private static final int m501getLineForHandwritingGestured4ec7I(MultiParagraph multiParagraph, long j, ViewConfiguration viewConfiguration) {
        float handwritingGestureLineMargin = viewConfiguration != null ? viewConfiguration.getHandwritingGestureLineMargin() : 0.0f;
        int lineForVerticalPosition = multiParagraph.getLineForVerticalPosition(Offset.m1168getYimpl(j));
        if (Offset.m1168getYimpl(j) < multiParagraph.getLineTop(lineForVerticalPosition) - handwritingGestureLineMargin || Offset.m1168getYimpl(j) > multiParagraph.getLineBottom(lineForVerticalPosition) + handwritingGestureLineMargin || Offset.m1167getXimpl(j) < (-handwritingGestureLineMargin) || Offset.m1167getXimpl(j) > multiParagraph.getWidth() + handwritingGestureLineMargin) {
            return -1;
        }
        return lineForVerticalPosition;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EditCommand compoundEditCommand(final EditCommand... editCommandArr) {
        return new EditCommand() { // from class: androidx.compose.foundation.text.input.internal.HandwritingGesture_androidKt$compoundEditCommand$1
            @Override // androidx.compose.ui.text.input.EditCommand
            public void applyTo(EditingBuffer editingBuffer) {
                for (EditCommand editCommand : editCommandArr) {
                    editCommand.applyTo(editingBuffer);
                }
            }
        };
    }

    /* renamed from: enclosure-pWDy79M, reason: not valid java name */
    private static final long m500enclosurepWDy79M(long j, long j2) {
        return TextRangeKt.TextRange(Math.min(TextRange.m2125getStartimpl(j), TextRange.m2125getStartimpl(j)), Math.max(TextRange.m2120getEndimpl(j2), TextRange.m2120getEndimpl(j2)));
    }
}
