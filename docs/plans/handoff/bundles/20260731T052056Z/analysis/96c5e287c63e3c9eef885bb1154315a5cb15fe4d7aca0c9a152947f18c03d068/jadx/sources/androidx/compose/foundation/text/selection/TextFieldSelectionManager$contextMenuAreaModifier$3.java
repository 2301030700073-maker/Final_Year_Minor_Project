package androidx.compose.foundation.text.selection;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextFieldSelectionManager$contextMenuAreaModifier$3 extends SuspendLambda implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TextFieldSelectionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TextFieldSelectionManager$contextMenuAreaModifier$3(TextFieldSelectionManager textFieldSelectionManager, Continuation continuation, int i) {
        super(1, continuation);
        this.$r8$classId = i;
        this.this$0 = textFieldSelectionManager;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        TextFieldSelectionManager textFieldSelectionManager = this.this$0;
        Continuation continuation = (Continuation) obj;
        switch (i) {
            case 0:
                new TextFieldSelectionManager$contextMenuAreaModifier$3(textFieldSelectionManager, continuation, 0).invokeSuspend(unit);
                break;
            case 1:
                new TextFieldSelectionManager$contextMenuAreaModifier$3(textFieldSelectionManager, continuation, 1).invokeSuspend(unit);
                break;
            case 2:
                new TextFieldSelectionManager$contextMenuAreaModifier$3(textFieldSelectionManager, continuation, 2).invokeSuspend(unit);
                break;
            default:
                new TextFieldSelectionManager$contextMenuAreaModifier$3(textFieldSelectionManager, continuation, 3).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        TextFieldSelectionManager textFieldSelectionManager = this.this$0;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                textFieldSelectionManager.textToolbarShownViaProvider = false;
                break;
            case 1:
                ResultKt.throwOnFailure(obj);
                textFieldSelectionManager.cut$foundation();
                break;
            case 2:
                ResultKt.throwOnFailure(obj);
                textFieldSelectionManager.copy$foundation(textFieldSelectionManager.textToolbarShownViaProvider);
                break;
            default:
                ResultKt.throwOnFailure(obj);
                textFieldSelectionManager.paste$foundation();
                break;
        }
        return unit;
    }
}
