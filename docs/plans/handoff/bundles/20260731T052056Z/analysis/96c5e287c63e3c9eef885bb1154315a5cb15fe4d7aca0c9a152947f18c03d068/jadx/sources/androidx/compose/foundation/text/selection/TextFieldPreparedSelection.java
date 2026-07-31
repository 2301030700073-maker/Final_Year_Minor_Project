package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.SetSelectionCommand;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.room.Room;
import java.util.List;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextFieldPreparedSelection {
    public final AnnotatedString annotatedString;
    public final TextFieldValue currentValue;
    public final TextLayoutResult layoutResult;
    public final TextLayoutResultProxy layoutResultProxy;
    public final OffsetMapping offsetMapping;
    public final long originalSelection;
    public final AnnotatedString originalText;
    public long selection;
    public final TextPreparedSelectionState state;

    public TextFieldPreparedSelection(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResultProxy textLayoutResultProxy, TextPreparedSelectionState textPreparedSelectionState) {
        AnnotatedString annotatedString = textFieldValue.annotatedString;
        long j = textFieldValue.selection;
        TextLayoutResult textLayoutResult = textLayoutResultProxy != null ? textLayoutResultProxy.value : null;
        this.originalText = annotatedString;
        this.originalSelection = j;
        this.layoutResult = textLayoutResult;
        this.offsetMapping = offsetMapping;
        this.state = textPreparedSelectionState;
        this.selection = j;
        this.annotatedString = annotatedString;
        this.currentValue = textFieldValue;
        this.layoutResultProxy = textLayoutResultProxy;
    }

    public final List deleteIfSelectedOr(Function1 function1) {
        if (!TextRange.m641getCollapsedimpl(this.selection)) {
            return Room.listOf((Object[]) new EditCommand[]{new CommitTextCommand(0, ""), new SetSelectionCommand(TextRange.m644getMinimpl(this.selection), TextRange.m644getMinimpl(this.selection))});
        }
        EditCommand editCommand = (EditCommand) function1.invoke(this);
        if (editCommand != null) {
            return Room.listOf(editCommand);
        }
        return null;
    }

    public final Integer getLineEndByOffset() {
        TextLayoutResult textLayoutResult = this.layoutResult;
        if (textLayoutResult == null) {
            return null;
        }
        MultiParagraph multiParagraph = textLayoutResult.multiParagraph;
        int m643getMaximpl = TextRange.m643getMaximpl(this.selection);
        OffsetMapping offsetMapping = this.offsetMapping;
        return Integer.valueOf(offsetMapping.transformedToOriginal(multiParagraph.getLineEnd(multiParagraph.getLineForOffset(offsetMapping.originalToTransformed(m643getMaximpl)), true)));
    }

    public final Integer getLineStartByOffset() {
        TextLayoutResult textLayoutResult = this.layoutResult;
        if (textLayoutResult == null) {
            return null;
        }
        int m644getMinimpl = TextRange.m644getMinimpl(this.selection);
        OffsetMapping offsetMapping = this.offsetMapping;
        return Integer.valueOf(offsetMapping.transformedToOriginal(textLayoutResult.getLineStart(textLayoutResult.multiParagraph.getLineForOffset(offsetMapping.originalToTransformed(m644getMinimpl)))));
    }

    public final Integer getNextWordOffset() {
        int length;
        TextLayoutResult textLayoutResult = this.layoutResult;
        if (textLayoutResult == null) {
            return null;
        }
        int transformedEndOffset = transformedEndOffset();
        while (true) {
            AnnotatedString annotatedString = this.originalText;
            if (transformedEndOffset < annotatedString.text.length()) {
                int length2 = this.annotatedString.text.length() - 1;
                if (transformedEndOffset <= length2) {
                    length2 = transformedEndOffset;
                }
                long m638getWordBoundaryjx7JFs = textLayoutResult.m638getWordBoundaryjx7JFs(length2);
                int i = TextRange.$r8$clinit;
                int i2 = (int) (m638getWordBoundaryjx7JFs & 4294967295L);
                if (i2 > transformedEndOffset) {
                    length = this.offsetMapping.transformedToOriginal(i2);
                    break;
                }
                transformedEndOffset++;
            } else {
                length = annotatedString.text.length();
                break;
            }
        }
        return Integer.valueOf(length);
    }

    public final Integer getPreviousWordOffset() {
        int i;
        TextLayoutResult textLayoutResult = this.layoutResult;
        if (textLayoutResult == null) {
            return null;
        }
        int transformedEndOffset = transformedEndOffset();
        while (true) {
            if (transformedEndOffset <= 0) {
                i = 0;
                break;
            }
            int length = this.annotatedString.text.length() - 1;
            if (transformedEndOffset <= length) {
                length = transformedEndOffset;
            }
            long m638getWordBoundaryjx7JFs = textLayoutResult.m638getWordBoundaryjx7JFs(length);
            int i2 = TextRange.$r8$clinit;
            int i3 = (int) (m638getWordBoundaryjx7JFs >> 32);
            if (i3 < transformedEndOffset) {
                i = this.offsetMapping.transformedToOriginal(i3);
                break;
            }
            transformedEndOffset--;
        }
        return Integer.valueOf(i);
    }

    public final boolean isLtr() {
        TextLayoutResult textLayoutResult = this.layoutResult;
        return (textLayoutResult != null ? textLayoutResult.getParagraphDirection(transformedEndOffset()) : null) != ResolvedTextDirection.Rtl;
    }

    public final int jumpByLinesOffset(TextLayoutResult textLayoutResult, int i) {
        int transformedEndOffset = transformedEndOffset();
        TextPreparedSelectionState textPreparedSelectionState = this.state;
        if (textPreparedSelectionState.cachedX == null) {
            textPreparedSelectionState.cachedX = Float.valueOf(textLayoutResult.getCursorRect(transformedEndOffset).left);
        }
        MultiParagraph multiParagraph = textLayoutResult.multiParagraph;
        int lineForOffset = multiParagraph.getLineForOffset(transformedEndOffset) + i;
        if (lineForOffset < 0) {
            return 0;
        }
        if (lineForOffset >= multiParagraph.lineCount) {
            return this.annotatedString.text.length();
        }
        float lineBottom = multiParagraph.getLineBottom(lineForOffset) - 1.0f;
        Float f = textPreparedSelectionState.cachedX;
        f.getClass();
        float floatValue = f.floatValue();
        if ((isLtr() && floatValue >= textLayoutResult.getLineRight(lineForOffset)) || (!isLtr() && floatValue <= textLayoutResult.getLineLeft(lineForOffset))) {
            return multiParagraph.getLineEnd(lineForOffset, true);
        }
        return this.offsetMapping.transformedToOriginal(multiParagraph.m629getOffsetForPositionk4lQ0M((Float.floatToRawIntBits(lineBottom) & 4294967295L) | (Float.floatToRawIntBits(f.floatValue()) << 32)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0011, code lost:
    
        if (r9 == null) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int jumpByPagesOffset(androidx.compose.foundation.text.TextLayoutResultProxy r9, int r10) {
        /*
            r8 = this;
            androidx.compose.ui.layout.LayoutCoordinates r0 = r9.innerTextFieldCoordinates
            androidx.compose.ui.text.TextLayoutResult r1 = r9.value
            if (r0 == 0) goto L13
            androidx.compose.ui.layout.LayoutCoordinates r9 = r9.decorationBoxCoordinates
            if (r9 == 0) goto L10
            r2 = 1
            androidx.compose.ui.geometry.Rect r9 = r9.localBoundingBoxOf(r0, r2)
            goto L11
        L10:
            r9 = 0
        L11:
            if (r9 != 0) goto L15
        L13:
            androidx.compose.ui.geometry.Rect r9 = androidx.compose.ui.geometry.Rect.Zero
        L15:
            androidx.compose.ui.text.input.TextFieldValue r0 = r8.currentValue
            long r2 = r0.selection
            int r0 = androidx.compose.ui.text.TextRange.$r8$clinit
            r4 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r2 = r2 & r4
            int r0 = (int) r2
            androidx.compose.ui.text.input.OffsetMapping r8 = r8.offsetMapping
            int r0 = r8.originalToTransformed(r0)
            androidx.compose.ui.geometry.Rect r0 = r1.getCursorRect(r0)
            float r2 = r0.left
            float r0 = r0.top
            long r6 = r9.m391getSizeNHjbRc()
            long r6 = r6 & r4
            int r9 = (int) r6
            float r9 = java.lang.Float.intBitsToFloat(r9)
            float r10 = (float) r10
            float r9 = r9 * r10
            float r9 = r9 + r0
            int r10 = java.lang.Float.floatToRawIntBits(r2)
            long r2 = (long) r10
            int r9 = java.lang.Float.floatToRawIntBits(r9)
            long r9 = (long) r9
            r0 = 32
            long r2 = r2 << r0
            long r9 = r9 & r4
            long r9 = r9 | r2
            androidx.compose.ui.text.MultiParagraph r0 = r1.multiParagraph
            int r9 = r0.m629getOffsetForPositionk4lQ0M(r9)
            int r8 = r8.transformedToOriginal(r9)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.TextFieldPreparedSelection.jumpByPagesOffset(androidx.compose.foundation.text.TextLayoutResultProxy, int):int");
    }

    public final void moveCursorLeft() {
        TextPreparedSelectionState textPreparedSelectionState = this.state;
        textPreparedSelectionState.cachedX = null;
        AnnotatedString annotatedString = this.annotatedString;
        if (annotatedString.text.length() > 0) {
            if (isLtr()) {
                moveCursorPrev();
                return;
            }
            textPreparedSelectionState.cachedX = null;
            if (annotatedString.text.length() > 0) {
                String str = annotatedString.text;
                long j = this.selection;
                int i = TextRange.$r8$clinit;
                int findFollowingBreak = BasicTextKt.findFollowingBreak((int) (j & 4294967295L), str);
                if (findFollowingBreak != -1) {
                    setSelection(findFollowingBreak, findFollowingBreak);
                }
            }
        }
    }

    public final void moveCursorNextByParagraph() {
        this.state.cachedX = null;
        AnnotatedString annotatedString = this.annotatedString;
        String str = annotatedString.text;
        String str2 = annotatedString.text;
        if (str.length() > 0) {
            int findParagraphEnd = BasicTextKt.findParagraphEnd(str2, TextRange.m643getMaximpl(this.selection));
            if (findParagraphEnd == TextRange.m643getMaximpl(this.selection) && findParagraphEnd != str2.length()) {
                findParagraphEnd = BasicTextKt.findParagraphEnd(str2, findParagraphEnd + 1);
            }
            setSelection(findParagraphEnd, findParagraphEnd);
        }
    }

    public final void moveCursorPrev() {
        this.state.cachedX = null;
        AnnotatedString annotatedString = this.annotatedString;
        if (annotatedString.text.length() > 0) {
            String str = annotatedString.text;
            long j = this.selection;
            int i = TextRange.$r8$clinit;
            int findPrecedingBreak = BasicTextKt.findPrecedingBreak((int) (j & 4294967295L), str);
            if (findPrecedingBreak != -1) {
                setSelection(findPrecedingBreak, findPrecedingBreak);
            }
        }
    }

    public final void moveCursorPrevByParagraph() {
        this.state.cachedX = null;
        AnnotatedString annotatedString = this.annotatedString;
        String str = annotatedString.text;
        String str2 = annotatedString.text;
        if (str.length() > 0) {
            int findParagraphStart = BasicTextKt.findParagraphStart(str2, TextRange.m644getMinimpl(this.selection));
            if (findParagraphStart == TextRange.m644getMinimpl(this.selection) && findParagraphStart != 0) {
                findParagraphStart = BasicTextKt.findParagraphStart(str2, findParagraphStart - 1);
            }
            setSelection(findParagraphStart, findParagraphStart);
        }
    }

    public final void moveCursorRight() {
        TextPreparedSelectionState textPreparedSelectionState = this.state;
        textPreparedSelectionState.cachedX = null;
        AnnotatedString annotatedString = this.annotatedString;
        if (annotatedString.text.length() > 0) {
            if (!isLtr()) {
                moveCursorPrev();
                return;
            }
            textPreparedSelectionState.cachedX = null;
            if (annotatedString.text.length() > 0) {
                String str = annotatedString.text;
                long j = this.selection;
                int i = TextRange.$r8$clinit;
                int findFollowingBreak = BasicTextKt.findFollowingBreak((int) (j & 4294967295L), str);
                if (findFollowingBreak != -1) {
                    setSelection(findFollowingBreak, findFollowingBreak);
                }
            }
        }
    }

    public final void moveCursorToLineEnd() {
        Integer lineEndByOffset;
        this.state.cachedX = null;
        if (this.annotatedString.text.length() <= 0 || (lineEndByOffset = getLineEndByOffset()) == null) {
            return;
        }
        int intValue = lineEndByOffset.intValue();
        setSelection(intValue, intValue);
    }

    public final void moveCursorToLineStart() {
        Integer lineStartByOffset;
        this.state.cachedX = null;
        if (this.annotatedString.text.length() <= 0 || (lineStartByOffset = getLineStartByOffset()) == null) {
            return;
        }
        int intValue = lineStartByOffset.intValue();
        setSelection(intValue, intValue);
    }

    public final void selectMovement() {
        if (this.annotatedString.text.length() > 0) {
            int i = TextRange.$r8$clinit;
            this.selection = ParagraphKt.TextRange((int) (this.originalSelection >> 32), (int) (this.selection & 4294967295L));
        }
    }

    public final void setSelection(int i, int i2) {
        this.selection = ParagraphKt.TextRange(i, i2);
    }

    public final int transformedEndOffset() {
        long j = this.selection;
        int i = TextRange.$r8$clinit;
        return this.offsetMapping.originalToTransformed((int) (j & 4294967295L));
    }
}
