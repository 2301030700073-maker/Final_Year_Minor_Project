package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$LongRef;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TapGestureDetectorKt$awaitSecondDown$2 extends RestrictedSuspendLambda implements Function2 {
    public final /* synthetic */ Object $firstUp;
    public final /* synthetic */ int $r8$classId = 1;
    public long J$0;
    public /* synthetic */ Object L$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapGestureDetectorKt$awaitSecondDown$2(long j, Ref$LongRef ref$LongRef, Continuation continuation) {
        super(2, continuation);
        this.J$0 = j;
        this.$firstUp = ref$LongRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$firstUp;
        switch (i) {
            case 0:
                TapGestureDetectorKt$awaitSecondDown$2 tapGestureDetectorKt$awaitSecondDown$2 = new TapGestureDetectorKt$awaitSecondDown$2((PointerInputChange) obj2, continuation);
                tapGestureDetectorKt$awaitSecondDown$2.L$0 = obj;
                return tapGestureDetectorKt$awaitSecondDown$2;
            default:
                TapGestureDetectorKt$awaitSecondDown$2 tapGestureDetectorKt$awaitSecondDown$22 = new TapGestureDetectorKt$awaitSecondDown$2(this.J$0, (Ref$LongRef) obj2, continuation);
                tapGestureDetectorKt$awaitSecondDown$22.L$0 = obj;
                return tapGestureDetectorKt$awaitSecondDown$22;
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
        return ((TapGestureDetectorKt$awaitSecondDown$2) create(pointerEventHandlerCoroutine, continuation)).invokeSuspend(unit);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b7  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00ab -> B:27:0x00af). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            int r0 = r10.$r8$classId
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r2 = 1
            java.lang.Object r3 = r10.$firstUp
            r4 = 0
            switch(r0) {
                case 0: goto L73;
                default: goto Lb;
            }
        Lb:
            kotlin.jvm.internal.Ref$LongRef r3 = (kotlin.jvm.internal.Ref$LongRef) r3
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r5 = r10.label
            if (r5 == 0) goto L21
            if (r5 != r2) goto L1d
            java.lang.Object r10 = r10.L$0
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r10 = (androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) r10
            kotlin.ResultKt.throwOnFailure(r11)
            goto L40
        L1d:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r1)
            goto L72
        L21:
            kotlin.ResultKt.throwOnFailure(r11)
            java.lang.Object r11 = r10.L$0
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r11 = (androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) r11
            long r4 = r10.J$0
            androidx.paging.HintHandler$$ExternalSyntheticLambda0 r1 = new androidx.paging.HintHandler$$ExternalSyntheticLambda0
            r6 = 13
            r1.<init>(r6, r3)
            r10.L$0 = r11
            r10.label = r2
            java.lang.Object r10 = androidx.compose.foundation.gestures.DragGestureDetectorKt.m70awaitTouchSlopOrCancellationjO51t88(r11, r4, r1, r10)
            if (r10 != r0) goto L3d
            r4 = r0
            goto L72
        L3d:
            r9 = r11
            r11 = r10
            r10 = r9
        L40:
            androidx.compose.ui.input.pointer.PointerInputChange r11 = (androidx.compose.ui.input.pointer.PointerInputChange) r11
            if (r11 == 0) goto L58
            long r0 = r3.element
            r2 = 9223372034707292159(0x7fffffff7fffffff, double:NaN)
            long r0 = r0 & r2
            r2 = 9205357640488583168(0x7fc000007fc00000, double:2.247117487993712E307)
            int r11 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r11 == 0) goto L58
            androidx.compose.foundation.text.selection.DownResolution r4 = androidx.compose.foundation.text.selection.DownResolution.Drag
            goto L72
        L58:
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl r10 = androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.this
            androidx.compose.ui.input.pointer.PointerEvent r10 = r10.currentEvent
            java.util.List r10 = r10.changes
            java.lang.Object r10 = kotlin.collections.CollectionsKt.first(r10)
            androidx.compose.ui.input.pointer.PointerInputChange r10 = (androidx.compose.ui.input.pointer.PointerInputChange) r10
            boolean r11 = androidx.compose.ui.input.pointer.PointerId.changedToUpIgnoreConsumed(r10)
            if (r11 == 0) goto L70
            r10.consume()
            androidx.compose.foundation.text.selection.DownResolution r4 = androidx.compose.foundation.text.selection.DownResolution.Up
            goto L72
        L70:
            androidx.compose.foundation.text.selection.DownResolution r4 = androidx.compose.foundation.text.selection.DownResolution.Cancel
        L72:
            return r4
        L73:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r5 = r10.label
            if (r5 == 0) goto L89
            if (r5 != r2) goto L85
            long r5 = r10.J$0
            java.lang.Object r1 = r10.L$0
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r1 = (androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) r1
            kotlin.ResultKt.throwOnFailure(r11)
            goto Laf
        L85:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r1)
            goto Lb8
        L89:
            kotlin.ResultKt.throwOnFailure(r11)
            java.lang.Object r11 = r10.L$0
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r11 = (androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) r11
            androidx.compose.ui.input.pointer.PointerInputChange r3 = (androidx.compose.ui.input.pointer.PointerInputChange) r3
            long r5 = r3.uptimeMillis
            androidx.compose.ui.platform.ViewConfiguration r1 = r11.getViewConfiguration()
            r1.getClass()
            r7 = 40
            long r7 = r7 + r5
            r1 = r11
            r5 = r7
        La0:
            r10.L$0 = r1
            r10.J$0 = r5
            r10.label = r2
            r11 = 3
            java.lang.Object r11 = androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown$default(r1, r4, r10, r11)
            if (r11 != r0) goto Laf
            r4 = r0
            goto Lb8
        Laf:
            androidx.compose.ui.input.pointer.PointerInputChange r11 = (androidx.compose.ui.input.pointer.PointerInputChange) r11
            long r7 = r11.uptimeMillis
            int r3 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r3 < 0) goto La0
            r4 = r11
        Lb8:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitSecondDown$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapGestureDetectorKt$awaitSecondDown$2(PointerInputChange pointerInputChange, Continuation continuation) {
        super(2, continuation);
        this.$firstUp = pointerInputChange;
    }
}
