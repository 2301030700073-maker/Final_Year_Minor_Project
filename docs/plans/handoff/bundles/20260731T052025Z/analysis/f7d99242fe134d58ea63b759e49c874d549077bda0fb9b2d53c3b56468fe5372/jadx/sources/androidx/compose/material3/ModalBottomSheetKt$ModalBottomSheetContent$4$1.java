package androidx.compose.material3;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ModalBottomSheetKt$ModalBottomSheetContent$4$1 extends SuspendLambda implements Function3 {
    public final /* synthetic */ Function1 $settleToDismiss;
    public /* synthetic */ float F$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModalBottomSheetKt$ModalBottomSheetContent$4$1(Function1 function1, Continuation continuation) {
        super(3, continuation);
        this.$settleToDismiss = function1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        float floatValue = ((Number) obj2).floatValue();
        ModalBottomSheetKt$ModalBottomSheetContent$4$1 modalBottomSheetKt$ModalBottomSheetContent$4$1 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(this.$settleToDismiss, (Continuation) obj3);
        modalBottomSheetKt$ModalBottomSheetContent$4$1.F$0 = floatValue;
        Unit unit = Unit.INSTANCE;
        modalBottomSheetKt$ModalBottomSheetContent$4$1.invokeSuspend(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ResultKt.throwOnFailure(obj);
        this.$settleToDismiss.invoke(new Float(this.F$0));
        return Unit.INSTANCE;
    }
}
