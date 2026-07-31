package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.platform.ViewConfiguration;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DragGestureDetectorKt {
    public static final float mouseToTouchSlopRatio = 0.125f / 18.0f;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0088 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00f9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00ba A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0089 -> B:10:0x0094). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object awaitAllPointersUpWithSlopDetection(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine r17, androidx.compose.ui.input.pointer.PointerInputChange r18, androidx.compose.ui.input.pointer.PointerEventPass r19, kotlin.coroutines.jvm.internal.BaseContinuationImpl r20) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.awaitAllPointersUpWithSlopDetection(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, androidx.compose.ui.input.pointer.PointerInputChange, androidx.compose.ui.input.pointer.PointerEventPass, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00bb, code lost:
    
        if (androidx.compose.ui.geometry.Offset.m383equalsimpl0(androidx.compose.ui.input.pointer.PointerId.positionChangeInternal(r11, true), 0) == false) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x005b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0082 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x005c -> B:10:0x0061). Please report as a decompilation issue!!! */
    /* renamed from: awaitDragOrCancellation-rnUCldI, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m68awaitDragOrCancellationrnUCldI(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine r17, long r18, kotlin.coroutines.jvm.internal.ContinuationImpl r20) {
        /*
            Method dump skipped, instructions count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m68awaitDragOrCancellationrnUCldI(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x009b A[Catch: PointerEventTimeoutCancellationException -> 0x00a4, TRY_LEAVE, TryCatch #0 {PointerEventTimeoutCancellationException -> 0x00a4, blocks: (B:11:0x002a, B:12:0x0097, B:14:0x009b, B:34:0x007d), top: B:7:0x0020 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /* JADX WARN: Type inference failed for: r10v3, types: [kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* renamed from: awaitLongPressOrCancellation-rnUCldI, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m69awaitLongPressOrCancellationrnUCldI(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine r9, long r10, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            boolean r0 = r12 instanceof androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$1
            if (r0 == 0) goto L13
            r0 = r12
            androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$1 r0 = (androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$1 r0 = new androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$1
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L34
            if (r2 != r3) goto L2e
            kotlin.jvm.internal.Ref$BooleanRef r9 = r0.L$2
            kotlin.jvm.internal.Ref$ObjectRef r10 = r0.L$1
            androidx.compose.ui.input.pointer.PointerInputChange r11 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r12)     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            goto L97
        L2e:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r9)
            return r4
        L34:
            kotlin.ResultKt.throwOnFailure(r12)
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl r12 = androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.this
            androidx.compose.ui.input.pointer.PointerEvent r12 = r12.currentEvent
            boolean r12 = m72isPointerUpDmW0f2w(r12, r10)
            if (r12 == 0) goto L42
            goto La3
        L42:
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl r12 = androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.this
            androidx.compose.ui.input.pointer.PointerEvent r12 = r12.currentEvent
            java.util.List r12 = r12.changes
            int r2 = r12.size()
            r5 = 0
        L4d:
            if (r5 >= r2) goto L62
            java.lang.Object r6 = r12.get(r5)
            r7 = r6
            androidx.compose.ui.input.pointer.PointerInputChange r7 = (androidx.compose.ui.input.pointer.PointerInputChange) r7
            long r7 = r7.id
            boolean r7 = androidx.compose.ui.input.pointer.PointerId.m505equalsimpl0(r7, r10)
            if (r7 == 0) goto L5f
            goto L63
        L5f:
            int r5 = r5 + 1
            goto L4d
        L62:
            r6 = r4
        L63:
            r11 = r6
            androidx.compose.ui.input.pointer.PointerInputChange r11 = (androidx.compose.ui.input.pointer.PointerInputChange) r11
            if (r11 != 0) goto L69
            goto La3
        L69:
            kotlin.jvm.internal.Ref$ObjectRef r10 = new kotlin.jvm.internal.Ref$ObjectRef
            r10.<init>()
            kotlin.jvm.internal.Ref$ObjectRef r12 = new kotlin.jvm.internal.Ref$ObjectRef
            r12.<init>()
            r12.element = r11
            androidx.compose.ui.platform.ViewConfiguration r2 = r9.getViewConfiguration()
            long r5 = r2.getLongPressTimeoutMillis()
            kotlin.jvm.internal.Ref$BooleanRef r2 = new kotlin.jvm.internal.Ref$BooleanRef     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            r2.<init>()     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$2 r7 = new androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$2     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            r7.<init>(r2, r12, r10, r4)     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            r0.L$0 = r11     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            r0.L$1 = r10     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            r0.L$2 = r2     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            r0.label = r3     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            java.lang.Object r9 = r9.withTimeout(r5, r7, r0)     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            if (r9 != r1) goto L96
            return r1
        L96:
            r9 = r2
        L97:
            boolean r9 = r9.element     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            if (r9 == 0) goto La3
            java.lang.Object r9 = r10.element     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            androidx.compose.ui.input.pointer.PointerInputChange r9 = (androidx.compose.ui.input.pointer.PointerInputChange) r9     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            if (r9 != 0) goto La2
            return r11
        La2:
            return r9
        La3:
            return r4
        La4:
            java.lang.Object r9 = r10.element
            androidx.compose.ui.input.pointer.PointerInputChange r9 = (androidx.compose.ui.input.pointer.PointerInputChange) r9
            if (r9 != 0) goto Lab
            goto Lac
        Lab:
            r11 = r9
        Lac:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m69awaitLongPressOrCancellationrnUCldI(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x015d -> B:11:0x0163). Please report as a decompilation issue!!! */
    /* renamed from: awaitTouchSlopOrCancellation-jO51t88, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m70awaitTouchSlopOrCancellationjO51t88(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine r18, long r19, androidx.paging.HintHandler$$ExternalSyntheticLambda0 r21, kotlin.coroutines.jvm.internal.BaseContinuationImpl r22) {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m70awaitTouchSlopOrCancellationjO51t88(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, long, androidx.paging.HintHandler$$ExternalSyntheticLambda0, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0041 -> B:10:0x0044). Please report as a decompilation issue!!! */
    /* renamed from: drag-jO51t88, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m71dragjO51t88(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine r4, long r5, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            boolean r0 = r8 instanceof androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1 r0 = (androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1 r0 = new androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L34
            if (r2 != r3) goto L2d
            kotlin.jvm.functions.Function1 r4 = r0.L$1
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r5 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r8)
            r7 = r4
            r4 = r5
            goto L44
        L2d:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            r4 = 0
            return r4
        L34:
            kotlin.ResultKt.throwOnFailure(r8)
        L37:
            r0.L$0 = r4
            r0.L$1 = r7
            r0.label = r3
            java.lang.Object r8 = m68awaitDragOrCancellationrnUCldI(r4, r5, r0)
            if (r8 != r1) goto L44
            return r1
        L44:
            androidx.compose.ui.input.pointer.PointerInputChange r8 = (androidx.compose.ui.input.pointer.PointerInputChange) r8
            if (r8 != 0) goto L4b
            java.lang.Boolean r4 = java.lang.Boolean.FALSE
            return r4
        L4b:
            boolean r5 = androidx.compose.ui.input.pointer.PointerId.changedToUpIgnoreConsumed(r8)
            if (r5 == 0) goto L54
            java.lang.Boolean r4 = java.lang.Boolean.TRUE
            return r4
        L54:
            r7.invoke(r8)
            long r5 = r8.id
            goto L37
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m71dragjO51t88(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, long, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* renamed from: isPointerUp-DmW0f2w, reason: not valid java name */
    public static final boolean m72isPointerUpDmW0f2w(PointerEvent pointerEvent, long j) {
        Object obj;
        List list = pointerEvent.changes;
        int size = list.size();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= size) {
                obj = null;
                break;
            }
            obj = list.get(i);
            if (PointerId.m505equalsimpl0(((PointerInputChange) obj).id, j)) {
                break;
            }
            i++;
        }
        PointerInputChange pointerInputChange = (PointerInputChange) obj;
        if (pointerInputChange != null && pointerInputChange.pressed) {
            z = true;
        }
        return true ^ z;
    }

    /* renamed from: pointerSlop-E8SPZFQ, reason: not valid java name */
    public static final float m73pointerSlopE8SPZFQ(ViewConfiguration viewConfiguration, int i) {
        return i == 2 ? viewConfiguration.getTouchSlop() * mouseToTouchSlopRatio : viewConfiguration.getTouchSlop();
    }

    /* JADX WARN: Code restructure failed: missing block: B:122:0x05bf, code lost:
    
        if (m72isPointerUpDmW0f2w(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.this.currentEvent, r0) != false) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0661, code lost:
    
        if (androidx.compose.ui.geometry.Offset.m384getDistanceimpl(androidx.compose.ui.input.pointer.PointerId.positionChangeInternal(r5, true)) == androidx.recyclerview.widget.RecyclerView.DECELERATION_RATE) goto L200;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x058e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0405 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x05a1  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x04e2  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0508  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x05fe  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x04bd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:153:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x057e  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x037a  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x02b4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0386  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0628  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x067f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0683  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x067b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0687  */
    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x062b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x061f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x047d  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0493  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x03e1  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /* JADX WARN: Type inference failed for: r11v3, types: [kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r11v32, types: [kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r11v59, types: [kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r12v44, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v13, types: [kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r13v39, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r22v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v4, types: [kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r8v30, types: [kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r9v47, types: [kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r9v50 */
    /* JADX WARN: Type inference failed for: r9v51 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:130:0x0572 -> B:56:0x0578). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:147:0x0235 -> B:140:0x0236). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:159:0x02c0 -> B:141:0x0378). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:178:0x031a -> B:141:0x0378). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:182:0x0365 -> B:137:0x036d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x05f0 -> B:12:0x05f3). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:85:0x03fc -> B:76:0x03b0). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:0x0442 -> B:58:0x0457). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object processDragGesture(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine r24, androidx.compose.ui.input.pointer.PointerInputChange r25, androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0 r26, org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda47 r27, androidx.paging.HintHandler$$ExternalSyntheticLambda0 r28, androidx.compose.foundation.text.LongPressTextDragObserverKt$$ExternalSyntheticLambda1 r29, androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11 r30, kotlin.coroutines.jvm.internal.BaseContinuationImpl r31) {
        /*
            Method dump skipped, instructions count: 1720
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.processDragGesture(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, androidx.compose.ui.input.pointer.PointerInputChange, androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0, org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda47, androidx.paging.HintHandler$$ExternalSyntheticLambda0, androidx.compose.foundation.text.LongPressTextDragObserverKt$$ExternalSyntheticLambda1, androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }
}
