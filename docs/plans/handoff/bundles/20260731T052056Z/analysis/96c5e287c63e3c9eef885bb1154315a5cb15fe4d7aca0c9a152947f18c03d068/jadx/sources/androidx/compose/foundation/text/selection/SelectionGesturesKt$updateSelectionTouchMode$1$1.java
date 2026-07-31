package androidx.compose.foundation.text.selection;

import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SelectionGesturesKt$updateSelectionTouchMode$1$1 extends RestrictedSuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 $updateTouchMode;
    public /* synthetic */ Object L$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SelectionGesturesKt$updateSelectionTouchMode$1$1(int i, Continuation continuation, Function1 function1) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$updateTouchMode = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Function1 function1 = this.$updateTouchMode;
        switch (i) {
            case 0:
                SelectionGesturesKt$updateSelectionTouchMode$1$1 selectionGesturesKt$updateSelectionTouchMode$1$1 = new SelectionGesturesKt$updateSelectionTouchMode$1$1(0, continuation, function1);
                selectionGesturesKt$updateSelectionTouchMode$1$1.L$0 = obj;
                return selectionGesturesKt$updateSelectionTouchMode$1$1;
            default:
                SelectionGesturesKt$updateSelectionTouchMode$1$1 selectionGesturesKt$updateSelectionTouchMode$1$12 = new SelectionGesturesKt$updateSelectionTouchMode$1$1(1, continuation, function1);
                selectionGesturesKt$updateSelectionTouchMode$1$12.L$0 = obj;
                return selectionGesturesKt$updateSelectionTouchMode$1$12;
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
        return ((SelectionGesturesKt$updateSelectionTouchMode$1$1) create(pointerEventHandlerCoroutine, continuation)).invokeSuspend(unit);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0088  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0086 -> B:25:0x008a). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            int r0 = r9.$r8$classId
            kotlin.jvm.functions.Function1 r1 = r9.$updateTouchMode
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r3 = 1
            r4 = 0
            switch(r0) {
                case 0: goto L60;
                default: goto Lb;
            }
        Lb:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r5 = r9.label
            r6 = 2
            if (r5 == 0) goto L26
            if (r5 == r3) goto L1e
            if (r5 != r6) goto L1a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L56
        L1a:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r2)
            goto L5f
        L1e:
            java.lang.Object r2 = r9.L$0
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r2 = (androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) r2
            kotlin.ResultKt.throwOnFailure(r10)
            goto L39
        L26:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.Object r10 = r9.L$0
            r2 = r10
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r2 = (androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) r2
            r9.L$0 = r2
            r9.label = r3
            java.lang.Object r10 = coil3.util.ContextsKt.awaitFirstRightClickDown(r2, r9)
            if (r10 != r0) goto L39
            goto L54
        L39:
            androidx.compose.ui.input.pointer.PointerInputChange r10 = (androidx.compose.ui.input.pointer.PointerInputChange) r10
            r10.consume()
            long r7 = r10.position
            androidx.compose.ui.geometry.Offset r10 = new androidx.compose.ui.geometry.Offset
            r10.<init>(r7)
            r1.invoke(r10)
            r9.L$0 = r4
            r9.label = r6
            androidx.compose.ui.input.pointer.PointerEventPass r10 = androidx.compose.ui.input.pointer.PointerEventPass.Main
            java.lang.Object r10 = androidx.compose.foundation.gestures.TapGestureDetectorKt.waitForUpOrCancellation(r2, r10, r9)
            if (r10 != r0) goto L56
        L54:
            r4 = r0
            goto L5f
        L56:
            androidx.compose.ui.input.pointer.PointerInputChange r10 = (androidx.compose.ui.input.pointer.PointerInputChange) r10
            if (r10 == 0) goto L5d
            r10.consume()
        L5d:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
        L5f:
            return r4
        L60:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r5 = r9.label
            if (r5 == 0) goto L74
            if (r5 != r3) goto L70
            java.lang.Object r2 = r9.L$0
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r2 = (androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) r2
            kotlin.ResultKt.throwOnFailure(r10)
            goto L8a
        L70:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r2)
            goto L89
        L74:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.Object r10 = r9.L$0
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r10 = (androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) r10
            r2 = r10
        L7c:
            androidx.compose.ui.input.pointer.PointerEventPass r10 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
            r9.L$0 = r2
            r9.label = r3
            java.lang.Object r10 = r2.awaitPointerEvent(r10, r9)
            if (r10 != r0) goto L8a
            r4 = r0
        L89:
            return r4
        L8a:
            androidx.compose.ui.input.pointer.PointerEvent r10 = (androidx.compose.ui.input.pointer.PointerEvent) r10
            boolean r10 = androidx.compose.foundation.text.selection.SelectionGestures_androidKt.isMouseOrTouchPad(r10)
            r10 = r10 ^ r3
            java.lang.Boolean r10 = java.lang.Boolean.valueOf(r10)
            r1.invoke(r10)
            goto L7c
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.SelectionGesturesKt$updateSelectionTouchMode$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
