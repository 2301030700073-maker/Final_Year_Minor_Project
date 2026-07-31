package androidx.compose.foundation.text.selection;

import androidx.appcompat.app.ActionBar;
import androidx.compose.foundation.internal.ClipboardUtils_androidKt;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.ui.platform.AndroidClipboard;
import androidx.compose.ui.platform.ClipEntry;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.PasswordVisualTransformation;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextFieldSelectionManager$copy$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ boolean $cancelSelection;
    public int label;
    public final /* synthetic */ TextFieldSelectionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldSelectionManager$copy$1(TextFieldSelectionManager textFieldSelectionManager, boolean z, Continuation continuation) {
        super(2, continuation);
        this.this$0 = textFieldSelectionManager;
        this.$cancelSelection = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TextFieldSelectionManager$copy$1(this.this$0, this.$cancelSelection, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TextFieldSelectionManager$copy$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Clipboard clipboard;
        int i = this.label;
        AnnotatedString annotatedString = null;
        Unit unit = Unit.INSTANCE;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return unit;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        TextFieldSelectionManager textFieldSelectionManager = this.this$0;
        if (!TextRange.m699getCollapsedimpl(textFieldSelectionManager.getValue$foundation().selection) && !(textFieldSelectionManager.visualTransformation instanceof PasswordVisualTransformation)) {
            annotatedString = ActionBar.getSelectedText(textFieldSelectionManager.getValue$foundation());
            if (this.$cancelSelection) {
                int m701getMaximpl = TextRange.m701getMaximpl(textFieldSelectionManager.getValue$foundation().selection);
                textFieldSelectionManager.onValueChange.invoke(TextFieldSelectionManager.m309createTextFieldValueFDrldGo(textFieldSelectionManager.getValue$foundation().annotatedString, ParagraphKt.TextRange(m701getMaximpl, m701getMaximpl)));
                textFieldSelectionManager.setHandleState(HandleState.None);
            }
        }
        if (annotatedString != null && (clipboard = textFieldSelectionManager.clipboard) != null) {
            ClipEntry clipEntry = ClipboardUtils_androidKt.toClipEntry(annotatedString);
            this.label = 1;
            ((AndroidClipboard) clipboard).setClipEntry(clipEntry);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (unit == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return unit;
    }
}
