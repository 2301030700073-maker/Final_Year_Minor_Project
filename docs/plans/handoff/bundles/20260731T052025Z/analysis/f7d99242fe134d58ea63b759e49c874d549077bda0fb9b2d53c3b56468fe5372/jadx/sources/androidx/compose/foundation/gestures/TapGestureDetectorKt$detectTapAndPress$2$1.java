package androidx.compose.foundation.gestures;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import kotlin.Function;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TapGestureDetectorKt$detectTapAndPress$2$1 extends RestrictedSuspendLambda implements Function2 {
    public final /* synthetic */ Object $$this$coroutineScope;
    public final /* synthetic */ Function $onPress;
    public final /* synthetic */ Function $onTap;
    public final /* synthetic */ Object $pressScope;
    public final /* synthetic */ int $r8$classId = 1;
    public /* synthetic */ Object L$0;
    public Object L$1;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapGestureDetectorKt$detectTapAndPress$2$1(ImmLeaksCleaner$$ExternalSyntheticLambda0 immLeaksCleaner$$ExternalSyntheticLambda0, DragGestureDetectorKt$$ExternalSyntheticLambda0 dragGestureDetectorKt$$ExternalSyntheticLambda0, Function2 function2, Function0 function0, AppBarKt$$ExternalSyntheticLambda0 appBarKt$$ExternalSyntheticLambda0, Continuation continuation) {
        super(2, continuation);
        this.L$1 = immLeaksCleaner$$ExternalSyntheticLambda0;
        this.$$this$coroutineScope = dragGestureDetectorKt$$ExternalSyntheticLambda0;
        this.$onPress = function2;
        this.$onTap = function0;
        this.$pressScope = appBarKt$$ExternalSyntheticLambda0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$pressScope;
        Function function = this.$onTap;
        Function function2 = this.$onPress;
        Object obj3 = this.$$this$coroutineScope;
        switch (i) {
            case 0:
                TapGestureDetectorKt$detectTapAndPress$2$1 tapGestureDetectorKt$detectTapAndPress$2$1 = new TapGestureDetectorKt$detectTapAndPress$2$1((CoroutineScope) obj3, (TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1.AnonymousClass1) function2, (BasicTextKt$$ExternalSyntheticLambda0) function, (PressGestureScopeImpl) obj2, continuation);
                tapGestureDetectorKt$detectTapAndPress$2$1.L$0 = obj;
                return tapGestureDetectorKt$detectTapAndPress$2$1;
            default:
                TapGestureDetectorKt$detectTapAndPress$2$1 tapGestureDetectorKt$detectTapAndPress$2$12 = new TapGestureDetectorKt$detectTapAndPress$2$1((ImmLeaksCleaner$$ExternalSyntheticLambda0) this.L$1, (DragGestureDetectorKt$$ExternalSyntheticLambda0) obj3, (Function2) function2, (Function0) function, (AppBarKt$$ExternalSyntheticLambda0) obj2, continuation);
                tapGestureDetectorKt$detectTapAndPress$2$12.L$0 = obj;
                return tapGestureDetectorKt$detectTapAndPress$2$12;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine pointerEventHandlerCoroutine = (SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((TapGestureDetectorKt$detectTapAndPress$2$1) create(pointerEventHandlerCoroutine, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0045, code lost:
    
        if (r5 == r9) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00db, code lost:
    
        if (r3 == r9) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:?, code lost:
    
        return r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b3, code lost:
    
        if (r6 == r9) goto L33;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapGestureDetectorKt$detectTapAndPress$2$1(CoroutineScope coroutineScope, TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1.AnonymousClass1 anonymousClass1, BasicTextKt$$ExternalSyntheticLambda0 basicTextKt$$ExternalSyntheticLambda0, PressGestureScopeImpl pressGestureScopeImpl, Continuation continuation) {
        super(2, continuation);
        this.$$this$coroutineScope = coroutineScope;
        this.$onPress = anonymousClass1;
        this.$onTap = basicTextKt$$ExternalSyntheticLambda0;
        this.$pressScope = pressGestureScopeImpl;
    }
}
