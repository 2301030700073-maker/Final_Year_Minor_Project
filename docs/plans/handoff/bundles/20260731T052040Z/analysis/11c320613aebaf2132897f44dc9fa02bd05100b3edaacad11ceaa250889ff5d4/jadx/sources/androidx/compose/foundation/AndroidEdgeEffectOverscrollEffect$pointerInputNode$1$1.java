package androidx.compose.foundation;

import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidEdgeEffectOverscrollEffect$pointerInputNode$1$1 extends RestrictedSuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ AndroidEdgeEffectOverscrollEffect this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidEdgeEffectOverscrollEffect$pointerInputNode$1$1(AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, Continuation continuation) {
        super(2, continuation);
        this.this$0 = androidEdgeEffectOverscrollEffect;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        AndroidEdgeEffectOverscrollEffect$pointerInputNode$1$1 androidEdgeEffectOverscrollEffect$pointerInputNode$1$1 = new AndroidEdgeEffectOverscrollEffect$pointerInputNode$1$1(this.this$0, continuation);
        androidEdgeEffectOverscrollEffect$pointerInputNode$1$1.L$0 = obj;
        return androidEdgeEffectOverscrollEffect$pointerInputNode$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AndroidEdgeEffectOverscrollEffect$pointerInputNode$1$1) create((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x004c, code lost:
    
        if (r13 != r4) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x004e, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0033, code lost:
    
        if (r13 == r4) goto L16;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x004c -> B:6:0x004f). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            int r0 = r12.label
            r1 = 2
            r2 = 0
            r3 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 == 0) goto L23
            if (r0 == r3) goto L1b
            if (r0 != r1) goto L15
            java.lang.Object r0 = r12.L$0
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r0 = (androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) r0
            kotlin.ResultKt.throwOnFailure(r13)
            goto L4f
        L15:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r12)
            return r2
        L1b:
            java.lang.Object r0 = r12.L$0
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r0 = (androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) r0
            kotlin.ResultKt.throwOnFailure(r13)
            goto L36
        L23:
            kotlin.ResultKt.throwOnFailure(r13)
            java.lang.Object r13 = r12.L$0
            r0 = r13
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r0 = (androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) r0
            r12.L$0 = r0
            r12.label = r3
            java.lang.Object r13 = androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown$default(r0, r12, r1)
            if (r13 != r4) goto L36
            goto L4e
        L36:
            androidx.compose.ui.input.pointer.PointerInputChange r13 = (androidx.compose.ui.input.pointer.PointerInputChange) r13
            androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect r3 = r12.this$0
            long r5 = r13.id
            r3.pointerId = r5
            long r5 = r13.position
            r3.pointerPosition = r5
        L42:
            r12.L$0 = r0
            r12.label = r1
            androidx.compose.ui.input.pointer.PointerEventPass r13 = androidx.compose.ui.input.pointer.PointerEventPass.Main
            java.lang.Object r13 = r0.awaitPointerEvent(r13, r12)
            if (r13 != r4) goto L4f
        L4e:
            return r4
        L4f:
            androidx.compose.ui.input.pointer.PointerEvent r13 = (androidx.compose.ui.input.pointer.PointerEvent) r13
            java.util.List r13 = r13.changes
            java.util.ArrayList r3 = new java.util.ArrayList
            int r5 = r13.size()
            r3.<init>(r5)
            int r5 = r13.size()
            r6 = 0
            r7 = r6
        L62:
            if (r7 >= r5) goto L75
            java.lang.Object r8 = r13.get(r7)
            r9 = r8
            androidx.compose.ui.input.pointer.PointerInputChange r9 = (androidx.compose.ui.input.pointer.PointerInputChange) r9
            boolean r9 = r9.pressed
            if (r9 == 0) goto L72
            r3.add(r8)
        L72:
            int r7 = r7 + 1
            goto L62
        L75:
            androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect r13 = r12.this$0
            int r5 = r3.size()
        L7b:
            if (r6 >= r5) goto L92
            java.lang.Object r7 = r3.get(r6)
            r8 = r7
            androidx.compose.ui.input.pointer.PointerInputChange r8 = (androidx.compose.ui.input.pointer.PointerInputChange) r8
            long r8 = r8.id
            long r10 = r13.pointerId
            boolean r8 = kotlin.text.UStringsKt.m675equalsimpl0(r8, r10)
            if (r8 == 0) goto L8f
            goto L93
        L8f:
            int r6 = r6 + 1
            goto L7b
        L92:
            r7 = r2
        L93:
            androidx.compose.ui.input.pointer.PointerInputChange r7 = (androidx.compose.ui.input.pointer.PointerInputChange) r7
            if (r7 != 0) goto L9e
            java.lang.Object r13 = kotlin.collections.CollectionsKt.firstOrNull(r3)
            r7 = r13
            androidx.compose.ui.input.pointer.PointerInputChange r7 = (androidx.compose.ui.input.pointer.PointerInputChange) r7
        L9e:
            if (r7 == 0) goto Laa
            androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect r13 = r12.this$0
            long r5 = r7.id
            r13.pointerId = r5
            long r5 = r7.position
            r13.pointerPosition = r5
        Laa:
            boolean r13 = r3.isEmpty()
            if (r13 == 0) goto L42
            androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect r12 = r12.this$0
            r0 = -1
            r12.pointerId = r0
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$pointerInputNode$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
