package androidx.compose.foundation.text.input.internal;

import android.os.CancellationSignal;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.DeleteGesture;
import android.view.inputmethod.DeleteRangeGesture;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.HandwritingGesture;
import android.view.inputmethod.InsertGesture;
import android.view.inputmethod.JoinOrSplitGesture;
import android.view.inputmethod.PreviewableHandwritingGesture;
import android.view.inputmethod.RemoveSpaceGesture;
import android.view.inputmethod.SelectGesture;
import android.view.inputmethod.SelectRangeGesture;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.DeleteSurroundingTextCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.SetSelectionCommand;
import androidx.room.Room;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class EditorInfoApi34 {
    public static final void addVisibleLineBounds(CursorAnchorInfo.Builder builder, TextLayoutResult textLayoutResult, Rect rect) {
        if (rect.isEmpty()) {
            return;
        }
        MultiParagraph multiParagraph = textLayoutResult.multiParagraph;
        int i = multiParagraph.lineCount - 1;
        if (i < 0) {
            i = 0;
        }
        int coerceIn = RegexKt.coerceIn(multiParagraph.getLineForVerticalPosition(rect.top), 0, i);
        int coerceIn2 = RegexKt.coerceIn(multiParagraph.getLineForVerticalPosition(rect.bottom), 0, i);
        if (coerceIn > coerceIn2) {
            return;
        }
        while (true) {
            builder.addVisibleLineBounds(textLayoutResult.getLineLeft(coerceIn), multiParagraph.getLineTop(coerceIn), textLayoutResult.getLineRight(coerceIn), multiParagraph.getLineBottom(coerceIn));
            if (coerceIn == coerceIn2) {
                return;
            } else {
                coerceIn++;
            }
        }
    }

    public static int fallbackOnLegacyTextField(HandwritingGesture handwritingGesture, AppBarKt$$ExternalSyntheticLambda11 appBarKt$$ExternalSyntheticLambda11) {
        String fallbackText = handwritingGesture.getFallbackText();
        if (fallbackText == null) {
            return 3;
        }
        appBarKt$$ExternalSyntheticLambda11.invoke(new CommitTextCommand(1, fallbackText));
        return 5;
    }

    /* renamed from: performDeletionOnLegacyTextField-vJH6DeI, reason: not valid java name */
    public static void m204performDeletionOnLegacyTextFieldvJH6DeI(long j, AnnotatedString annotatedString, boolean z, AppBarKt$$ExternalSyntheticLambda11 appBarKt$$ExternalSyntheticLambda11) {
        if (z) {
            int i = TextRange.$r8$clinit;
            int i2 = (int) (j >> 32);
            int i3 = (int) (j & 4294967295L);
            int codePointBefore = i2 > 0 ? Character.codePointBefore(annotatedString, i2) : 10;
            int codePointAt = i3 < annotatedString.text.length() ? Character.codePointAt(annotatedString, i3) : 10;
            if (HandwritingGesture_androidKt.isWhitespaceExceptNewline(codePointBefore) && (HandwritingGesture_androidKt.isWhitespace(codePointAt) || HandwritingGesture_androidKt.isPunctuation(codePointAt))) {
                do {
                    i2 -= Character.charCount(codePointBefore);
                    if (i2 == 0) {
                        break;
                    } else {
                        codePointBefore = Character.codePointBefore(annotatedString, i2);
                    }
                } while (HandwritingGesture_androidKt.isWhitespaceExceptNewline(codePointBefore));
                j = ParagraphKt.TextRange(i2, i3);
            } else if (HandwritingGesture_androidKt.isWhitespaceExceptNewline(codePointAt) && (HandwritingGesture_androidKt.isWhitespace(codePointBefore) || HandwritingGesture_androidKt.isPunctuation(codePointBefore))) {
                do {
                    i3 += Character.charCount(codePointAt);
                    if (i3 == annotatedString.text.length()) {
                        break;
                    } else {
                        codePointAt = Character.codePointAt(annotatedString, i3);
                    }
                } while (HandwritingGesture_androidKt.isWhitespaceExceptNewline(codePointAt));
                j = ParagraphKt.TextRange(i2, i3);
            }
        }
        int i4 = (int) (4294967295L & j);
        appBarKt$$ExternalSyntheticLambda11.invoke(new HandwritingGesture_androidKt$compoundEditCommand$1(new EditCommand[]{new SetSelectionCommand(i4, i4), new DeleteSurroundingTextCommand(TextRange.m642getLengthimpl(j), 0)}));
    }

    /* JADX WARN: Removed duplicated region for block: B:132:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0271  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int performHandwritingGesture$foundation(androidx.compose.foundation.text.LegacyTextFieldState r16, android.view.inputmethod.HandwritingGesture r17, androidx.compose.foundation.text.selection.TextFieldSelectionManager r18, androidx.compose.ui.platform.ViewConfiguration r19, androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11 r20) {
        /*
            Method dump skipped, instructions count: 733
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.input.internal.EditorInfoApi34.performHandwritingGesture$foundation(androidx.compose.foundation.text.LegacyTextFieldState, android.view.inputmethod.HandwritingGesture, androidx.compose.foundation.text.selection.TextFieldSelectionManager, androidx.compose.ui.platform.ViewConfiguration, androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11):int");
    }

    public static boolean previewHandwritingGesture$foundation(LegacyTextFieldState legacyTextFieldState, PreviewableHandwritingGesture previewableHandwritingGesture, TextFieldSelectionManager textFieldSelectionManager, CancellationSignal cancellationSignal) {
        TextLayoutInput textLayoutInput;
        AnnotatedString annotatedString = legacyTextFieldState.untransformedText;
        int i = 0;
        if (annotatedString != null) {
            TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
            if (annotatedString.equals((layoutResult == null || (textLayoutInput = layoutResult.value.layoutInput) == null) ? null : textLayoutInput.text)) {
                if (previewableHandwritingGesture instanceof SelectGesture) {
                    SelectGesture selectGesture = (SelectGesture) previewableHandwritingGesture;
                    if (textFieldSelectionManager != null) {
                        long m207getRangeForScreenRectOH9lIzo = HandwritingGesture_androidKt.m207getRangeForScreenRectOH9lIzo(legacyTextFieldState, ColorKt.toComposeRect(selectGesture.getSelectionArea()), selectGesture.getGranularity() != 1 ? 0 : 1);
                        LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.state;
                        if (legacyTextFieldState2 != null) {
                            legacyTextFieldState2.m190setSelectionPreviewHighlightRange5zctL8(m207getRangeForScreenRectOH9lIzo);
                        }
                        LegacyTextFieldState legacyTextFieldState3 = textFieldSelectionManager.state;
                        if (legacyTextFieldState3 != null) {
                            legacyTextFieldState3.m189setDeletionPreviewHighlightRange5zctL8(TextRange.Zero);
                        }
                        if (!TextRange.m641getCollapsedimpl(m207getRangeForScreenRectOH9lIzo)) {
                            textFieldSelectionManager.updateFloatingToolbar(false);
                            textFieldSelectionManager.setHandleState(HandleState.None);
                        }
                    }
                } else if (previewableHandwritingGesture instanceof DeleteGesture) {
                    DeleteGesture deleteGesture = (DeleteGesture) previewableHandwritingGesture;
                    if (textFieldSelectionManager != null) {
                        long m207getRangeForScreenRectOH9lIzo2 = HandwritingGesture_androidKt.m207getRangeForScreenRectOH9lIzo(legacyTextFieldState, ColorKt.toComposeRect(deleteGesture.getDeletionArea()), deleteGesture.getGranularity() != 1 ? 0 : 1);
                        LegacyTextFieldState legacyTextFieldState4 = textFieldSelectionManager.state;
                        if (legacyTextFieldState4 != null) {
                            legacyTextFieldState4.m189setDeletionPreviewHighlightRange5zctL8(m207getRangeForScreenRectOH9lIzo2);
                        }
                        LegacyTextFieldState legacyTextFieldState5 = textFieldSelectionManager.state;
                        if (legacyTextFieldState5 != null) {
                            legacyTextFieldState5.m190setSelectionPreviewHighlightRange5zctL8(TextRange.Zero);
                        }
                        if (!TextRange.m641getCollapsedimpl(m207getRangeForScreenRectOH9lIzo2)) {
                            textFieldSelectionManager.updateFloatingToolbar(false);
                            textFieldSelectionManager.setHandleState(HandleState.None);
                        }
                    }
                } else if (previewableHandwritingGesture instanceof SelectRangeGesture) {
                    SelectRangeGesture selectRangeGesture = (SelectRangeGesture) previewableHandwritingGesture;
                    if (textFieldSelectionManager != null) {
                        long m208getRangeForScreenRectsO048IG0 = HandwritingGesture_androidKt.m208getRangeForScreenRectsO048IG0(legacyTextFieldState, ColorKt.toComposeRect(selectRangeGesture.getSelectionStartArea()), ColorKt.toComposeRect(selectRangeGesture.getSelectionEndArea()), selectRangeGesture.getGranularity() != 1 ? 0 : 1);
                        LegacyTextFieldState legacyTextFieldState6 = textFieldSelectionManager.state;
                        if (legacyTextFieldState6 != null) {
                            legacyTextFieldState6.m190setSelectionPreviewHighlightRange5zctL8(m208getRangeForScreenRectsO048IG0);
                        }
                        LegacyTextFieldState legacyTextFieldState7 = textFieldSelectionManager.state;
                        if (legacyTextFieldState7 != null) {
                            legacyTextFieldState7.m189setDeletionPreviewHighlightRange5zctL8(TextRange.Zero);
                        }
                        if (!TextRange.m641getCollapsedimpl(m208getRangeForScreenRectsO048IG0)) {
                            textFieldSelectionManager.updateFloatingToolbar(false);
                            textFieldSelectionManager.setHandleState(HandleState.None);
                        }
                    }
                } else if (previewableHandwritingGesture instanceof DeleteRangeGesture) {
                    DeleteRangeGesture deleteRangeGesture = (DeleteRangeGesture) previewableHandwritingGesture;
                    if (textFieldSelectionManager != null) {
                        long m208getRangeForScreenRectsO048IG02 = HandwritingGesture_androidKt.m208getRangeForScreenRectsO048IG0(legacyTextFieldState, ColorKt.toComposeRect(deleteRangeGesture.getDeletionStartArea()), ColorKt.toComposeRect(deleteRangeGesture.getDeletionEndArea()), deleteRangeGesture.getGranularity() != 1 ? 0 : 1);
                        LegacyTextFieldState legacyTextFieldState8 = textFieldSelectionManager.state;
                        if (legacyTextFieldState8 != null) {
                            legacyTextFieldState8.m189setDeletionPreviewHighlightRange5zctL8(m208getRangeForScreenRectsO048IG02);
                        }
                        LegacyTextFieldState legacyTextFieldState9 = textFieldSelectionManager.state;
                        if (legacyTextFieldState9 != null) {
                            legacyTextFieldState9.m190setSelectionPreviewHighlightRange5zctL8(TextRange.Zero);
                        }
                        if (!TextRange.m641getCollapsedimpl(m208getRangeForScreenRectsO048IG02)) {
                            textFieldSelectionManager.updateFloatingToolbar(false);
                            textFieldSelectionManager.setHandleState(HandleState.None);
                        }
                    }
                }
                if (cancellationSignal != null) {
                    cancellationSignal.setOnCancelListener(new HandwritingGestureApi34$$ExternalSyntheticLambda0(i, textFieldSelectionManager));
                }
                return true;
            }
        }
        return false;
    }

    public static void setHandwritingGestures(EditorInfo editorInfo) {
        editorInfo.setSupportedHandwritingGestures(Room.listOf((Object[]) new Class[]{SelectGesture.class, DeleteGesture.class, SelectRangeGesture.class, DeleteRangeGesture.class, JoinOrSplitGesture.class, InsertGesture.class, RemoveSpaceGesture.class}));
        editorInfo.setSupportedHandwritingGesturePreviews(ArraysKt___ArraysKt.toSet(new Class[]{SelectGesture.class, DeleteGesture.class, SelectRangeGesture.class, DeleteRangeGesture.class}));
    }
}
