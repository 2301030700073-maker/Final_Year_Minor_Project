package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import ch.qos.logback.core.CoreConstants;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* compiled from: EditProcessor.kt */
/* loaded from: classes.dex */
public final class EditProcessor {
    private TextFieldValue mBufferState = new TextFieldValue(AnnotatedStringKt.emptyAnnotatedString(), TextRange.Companion.m2130getZerod9O1mEE(), (TextRange) null, (DefaultConstructorMarker) null);
    private EditingBuffer mBuffer = new EditingBuffer(this.mBufferState.getAnnotatedString(), this.mBufferState.m2247getSelectiond9O1mEE(), null);

    public final TextFieldValue apply(List list) {
        EditCommand editCommand;
        Exception e;
        EditCommand editCommand2;
        try {
            int size = list.size();
            int i = 0;
            editCommand = null;
            while (i < size) {
                try {
                    editCommand2 = (EditCommand) list.get(i);
                } catch (Exception e2) {
                    e = e2;
                }
                try {
                    editCommand2.applyTo(this.mBuffer);
                    i++;
                    editCommand = editCommand2;
                } catch (Exception e3) {
                    e = e3;
                    editCommand = editCommand2;
                    throw new RuntimeException(generateBatchErrorMessage(list, editCommand), e);
                }
            }
            AnnotatedString annotatedString$ui_text_release = this.mBuffer.toAnnotatedString$ui_text_release();
            long m2193getSelectiond9O1mEE$ui_text_release = this.mBuffer.m2193getSelectiond9O1mEE$ui_text_release();
            TextRange m2113boximpl = TextRange.m2113boximpl(m2193getSelectiond9O1mEE$ui_text_release);
            m2113boximpl.m2129unboximpl();
            TextRange textRange = TextRange.m2124getReversedimpl(this.mBufferState.m2247getSelectiond9O1mEE()) ? null : m2113boximpl;
            TextFieldValue textFieldValue = new TextFieldValue(annotatedString$ui_text_release, textRange != null ? textRange.m2129unboximpl() : TextRangeKt.TextRange(TextRange.m2122getMaximpl(m2193getSelectiond9O1mEE$ui_text_release), TextRange.m2123getMinimpl(m2193getSelectiond9O1mEE$ui_text_release)), this.mBuffer.m2192getCompositionMzsxiRA$ui_text_release(), (DefaultConstructorMarker) null);
            this.mBufferState = textFieldValue;
            return textFieldValue;
        } catch (Exception e4) {
            editCommand = null;
            e = e4;
        }
    }

    public final void reset(TextFieldValue textFieldValue, TextInputSession textInputSession) {
        boolean areEqual = Intrinsics.areEqual(textFieldValue.m2246getCompositionMzsxiRA(), this.mBuffer.m2192getCompositionMzsxiRA$ui_text_release());
        boolean z = true;
        boolean z2 = false;
        if (!Intrinsics.areEqual(this.mBufferState.getAnnotatedString(), textFieldValue.getAnnotatedString())) {
            this.mBuffer = new EditingBuffer(textFieldValue.getAnnotatedString(), textFieldValue.m2247getSelectiond9O1mEE(), null);
        } else if (TextRange.m2118equalsimpl0(this.mBufferState.m2247getSelectiond9O1mEE(), textFieldValue.m2247getSelectiond9O1mEE())) {
            z = false;
        } else {
            this.mBuffer.setSelection$ui_text_release(TextRange.m2123getMinimpl(textFieldValue.m2247getSelectiond9O1mEE()), TextRange.m2122getMaximpl(textFieldValue.m2247getSelectiond9O1mEE()));
            z2 = true;
            z = false;
        }
        if (textFieldValue.m2246getCompositionMzsxiRA() == null) {
            this.mBuffer.commitComposition$ui_text_release();
        } else if (!TextRange.m2119getCollapsedimpl(textFieldValue.m2246getCompositionMzsxiRA().m2129unboximpl())) {
            this.mBuffer.setComposition$ui_text_release(TextRange.m2123getMinimpl(textFieldValue.m2246getCompositionMzsxiRA().m2129unboximpl()), TextRange.m2122getMaximpl(textFieldValue.m2246getCompositionMzsxiRA().m2129unboximpl()));
        }
        if (z || (!z2 && !areEqual)) {
            this.mBuffer.commitComposition$ui_text_release();
            textFieldValue = TextFieldValue.m2244copy3r_uNRQ$default(textFieldValue, null, 0L, null, 3, null);
        }
        TextFieldValue textFieldValue2 = this.mBufferState;
        this.mBufferState = textFieldValue;
        if (textInputSession != null) {
            textInputSession.updateState(textFieldValue2, textFieldValue);
        }
    }

    public final TextFieldValue toTextFieldValue() {
        return this.mBufferState;
    }

    private final String generateBatchErrorMessage(List list, final EditCommand editCommand) {
        StringBuilder sb = new StringBuilder();
        sb.append("Error while applying EditCommand batch to buffer (length=" + this.mBuffer.getLength$ui_text_release() + ", composition=" + this.mBuffer.m2192getCompositionMzsxiRA$ui_text_release() + ", selection=" + ((Object) TextRange.m2128toStringimpl(this.mBuffer.m2193getSelectiond9O1mEE$ui_text_release())) + "):");
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append('\\n')");
        CollectionsKt___CollectionsKt.joinTo(list, sb, (r14 & 2) != 0 ? ", " : "\n", (r14 & 4) != 0 ? "" : null, (r14 & 8) == 0 ? null : "", (r14 & 16) != 0 ? -1 : 0, (r14 & 32) != 0 ? "..." : null, (r14 & 64) != 0 ? null : new Function1() { // from class: androidx.compose.ui.text.input.EditProcessor$generateBatchErrorMessage$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(EditCommand editCommand2) {
                String stringForLog;
                String str = EditCommand.this == editCommand2 ? " > " : "   ";
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                stringForLog = this.toStringForLog(editCommand2);
                sb2.append(stringForLog);
                return sb2.toString();
            }
        });
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String toStringForLog(EditCommand editCommand) {
        if (editCommand instanceof CommitTextCommand) {
            StringBuilder sb = new StringBuilder();
            sb.append("CommitTextCommand(text.length=");
            CommitTextCommand commitTextCommand = (CommitTextCommand) editCommand;
            sb.append(commitTextCommand.getText().length());
            sb.append(", newCursorPosition=");
            sb.append(commitTextCommand.getNewCursorPosition());
            sb.append(CoreConstants.RIGHT_PARENTHESIS_CHAR);
            return sb.toString();
        }
        if (editCommand instanceof SetComposingTextCommand) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SetComposingTextCommand(text.length=");
            SetComposingTextCommand setComposingTextCommand = (SetComposingTextCommand) editCommand;
            sb2.append(setComposingTextCommand.getText().length());
            sb2.append(", newCursorPosition=");
            sb2.append(setComposingTextCommand.getNewCursorPosition());
            sb2.append(CoreConstants.RIGHT_PARENTHESIS_CHAR);
            return sb2.toString();
        }
        if (!(editCommand instanceof SetComposingRegionCommand) && !(editCommand instanceof DeleteSurroundingTextCommand) && !(editCommand instanceof DeleteSurroundingTextInCodePointsCommand) && !(editCommand instanceof SetSelectionCommand) && !(editCommand instanceof FinishComposingTextCommand) && !(editCommand instanceof DeleteAllCommand)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Unknown EditCommand: ");
            String simpleName = Reflection.getOrCreateKotlinClass(editCommand.getClass()).getSimpleName();
            if (simpleName == null) {
                simpleName = "{anonymous EditCommand}";
            }
            sb3.append(simpleName);
            return sb3.toString();
        }
        return editCommand.toString();
    }
}
