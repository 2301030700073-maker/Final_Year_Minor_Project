package androidx.compose.foundation.gestures;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.platform.ViewConfiguration;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DragGestureDetectorKt {
    public static final float mouseToTouchSlopRatio = 0.125f / 18.0f;

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00b5, code lost:
    
        if (androidx.compose.ui.geometry.Offset.m437equalsimpl0(androidx.compose.ui.input.pointer.PointerId.positionChangeInternal(r6, true), 0) == false) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0057 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x007c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0058 -> B:10:0x005b). Please report as a decompilation issue!!! */
    /* renamed from: awaitDragOrCancellation-rnUCldI, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m154awaitDragOrCancellationrnUCldI(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine r12, long r13, kotlin.coroutines.jvm.internal.ContinuationImpl r15) {
        /*
            boolean r0 = r15 instanceof androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitDragOrCancellation$1
            if (r0 == 0) goto L13
            r0 = r15
            androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitDragOrCancellation$1 r0 = (androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitDragOrCancellation$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitDragOrCancellation$1 r0 = new androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitDragOrCancellation$1
            r0.<init>(r15)
        L18:
            java.lang.Object r15 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L33
            if (r1 != r2) goto L2d
            kotlin.jvm.internal.Ref$LongRef r12 = r0.L$1
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r13 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r15)
            r11 = r13
            r13 = r12
            r12 = r11
            goto L5b
        L2d:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r12)
            return r3
        L33:
            kotlin.ResultKt.throwOnFailure(r15)
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl r15 = androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.this
            androidx.compose.ui.input.pointer.PointerEvent r15 = r15.currentEvent
            boolean r15 = m158isPointerUpDmW0f2w(r15, r13)
            if (r15 == 0) goto L42
            goto Lc0
        L42:
            kotlin.jvm.internal.Ref$LongRef r15 = new kotlin.jvm.internal.Ref$LongRef
            r15.<init>()
            r15.element = r13
        L49:
            r0.L$0 = r12
            r0.L$1 = r15
            r0.label = r2
            java.lang.Object r13 = androidx.compose.ui.Modifier.CC.awaitPointerEvent$default(r12, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r14 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r13 != r14) goto L58
            return r14
        L58:
            r11 = r15
            r15 = r13
            r13 = r11
        L5b:
            androidx.compose.ui.input.pointer.PointerEvent r15 = (androidx.compose.ui.input.pointer.PointerEvent) r15
            java.util.List r14 = r15.changes
            int r1 = r14.size()
            r4 = 0
            r5 = r4
        L65:
            if (r5 >= r1) goto L7c
            java.lang.Object r6 = r14.get(r5)
            r7 = r6
            androidx.compose.ui.input.pointer.PointerInputChange r7 = (androidx.compose.ui.input.pointer.PointerInputChange) r7
            long r7 = r7.id
            long r9 = r13.element
            boolean r7 = androidx.compose.ui.input.pointer.PointerId.m564equalsimpl0(r7, r9)
            if (r7 == 0) goto L79
            goto L7d
        L79:
            int r5 = r5 + 1
            goto L65
        L7c:
            r6 = r3
        L7d:
            androidx.compose.ui.input.pointer.PointerInputChange r6 = (androidx.compose.ui.input.pointer.PointerInputChange) r6
            if (r6 != 0) goto L83
            r6 = r3
            goto Lb7
        L83:
            boolean r14 = androidx.compose.ui.input.pointer.PointerId.changedToUpIgnoreConsumed(r6)
            if (r14 == 0) goto Lab
            java.util.List r14 = r15.changes
            int r15 = r14.size()
        L8f:
            if (r4 >= r15) goto La0
            java.lang.Object r1 = r14.get(r4)
            r5 = r1
            androidx.compose.ui.input.pointer.PointerInputChange r5 = (androidx.compose.ui.input.pointer.PointerInputChange) r5
            boolean r5 = r5.pressed
            if (r5 == 0) goto L9d
            goto La1
        L9d:
            int r4 = r4 + 1
            goto L8f
        La0:
            r1 = r3
        La1:
            androidx.compose.ui.input.pointer.PointerInputChange r1 = (androidx.compose.ui.input.pointer.PointerInputChange) r1
            if (r1 != 0) goto La6
            goto Lb7
        La6:
            long r14 = r1.id
            r13.element = r14
            goto Lc1
        Lab:
            long r14 = androidx.compose.ui.input.pointer.PointerId.positionChangeInternal(r6, r2)
            r4 = 0
            boolean r14 = androidx.compose.ui.geometry.Offset.m437equalsimpl0(r14, r4)
            if (r14 != 0) goto Lc1
        Lb7:
            if (r6 == 0) goto Lc0
            boolean r12 = r6.isConsumed()
            if (r12 != 0) goto Lc0
            return r6
        Lc0:
            return r3
        Lc1:
            r15 = r13
            goto L49
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m154awaitDragOrCancellationrnUCldI(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x009b A[Catch: PointerEventTimeoutCancellationException -> 0x00a4, TRY_LEAVE, TryCatch #0 {PointerEventTimeoutCancellationException -> 0x00a4, blocks: (B:11:0x0028, B:12:0x0097, B:14:0x009b, B:34:0x007b), top: B:7:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0020  */
    /* JADX WARN: Type inference failed for: r9v3, types: [kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* renamed from: awaitLongPressOrCancellation-rnUCldI, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m155awaitLongPressOrCancellationrnUCldI(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine r8, long r9, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            boolean r0 = r11 instanceof androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$1
            if (r0 == 0) goto L13
            r0 = r11
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
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L32
            if (r1 != r2) goto L2c
            kotlin.jvm.internal.Ref$BooleanRef r8 = r0.L$2
            kotlin.jvm.internal.Ref$ObjectRef r9 = r0.L$1
            androidx.compose.ui.input.pointer.PointerInputChange r10 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            goto L97
        L2c:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r8)
            return r3
        L32:
            kotlin.ResultKt.throwOnFailure(r11)
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl r11 = androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.this
            androidx.compose.ui.input.pointer.PointerEvent r11 = r11.currentEvent
            boolean r11 = m158isPointerUpDmW0f2w(r11, r9)
            if (r11 == 0) goto L40
            goto La3
        L40:
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl r11 = androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.this
            androidx.compose.ui.input.pointer.PointerEvent r11 = r11.currentEvent
            java.util.List r11 = r11.changes
            int r1 = r11.size()
            r4 = 0
        L4b:
            if (r4 >= r1) goto L60
            java.lang.Object r5 = r11.get(r4)
            r6 = r5
            androidx.compose.ui.input.pointer.PointerInputChange r6 = (androidx.compose.ui.input.pointer.PointerInputChange) r6
            long r6 = r6.id
            boolean r6 = androidx.compose.ui.input.pointer.PointerId.m564equalsimpl0(r6, r9)
            if (r6 == 0) goto L5d
            goto L61
        L5d:
            int r4 = r4 + 1
            goto L4b
        L60:
            r5 = r3
        L61:
            r10 = r5
            androidx.compose.ui.input.pointer.PointerInputChange r10 = (androidx.compose.ui.input.pointer.PointerInputChange) r10
            if (r10 != 0) goto L67
            goto La3
        L67:
            kotlin.jvm.internal.Ref$ObjectRef r9 = new kotlin.jvm.internal.Ref$ObjectRef
            r9.<init>()
            kotlin.jvm.internal.Ref$ObjectRef r11 = new kotlin.jvm.internal.Ref$ObjectRef
            r11.<init>()
            r11.element = r10
            androidx.compose.ui.platform.ViewConfiguration r1 = r8.getViewConfiguration()
            long r4 = r1.getLongPressTimeoutMillis()
            kotlin.jvm.internal.Ref$BooleanRef r1 = new kotlin.jvm.internal.Ref$BooleanRef     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            r1.<init>()     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$2 r6 = new androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$2     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            r6.<init>(r1, r11, r9, r3)     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            r0.L$0 = r10     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            r0.L$1 = r9     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            r0.L$2 = r1     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            r0.label = r2     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            java.lang.Object r8 = r8.withTimeout(r4, r6, r0)     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            kotlin.coroutines.intrinsics.CoroutineSingletons r11 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r8 != r11) goto L96
            return r11
        L96:
            r8 = r1
        L97:
            boolean r8 = r8.element     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            if (r8 == 0) goto La3
            java.lang.Object r8 = r9.element     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            androidx.compose.ui.input.pointer.PointerInputChange r8 = (androidx.compose.ui.input.pointer.PointerInputChange) r8     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> La4
            if (r8 != 0) goto La2
            return r10
        La2:
            return r8
        La3:
            return r3
        La4:
            java.lang.Object r8 = r9.element
            androidx.compose.ui.input.pointer.PointerInputChange r8 = (androidx.compose.ui.input.pointer.PointerInputChange) r8
            if (r8 != 0) goto Lab
            goto Lac
        Lab:
            r10 = r8
        Lac:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m155awaitLongPressOrCancellationrnUCldI(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
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
    public static final java.lang.Object m156awaitTouchSlopOrCancellationjO51t88(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine r18, long r19, androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0 r21, kotlin.coroutines.jvm.internal.BaseContinuationImpl r22) {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m156awaitTouchSlopOrCancellationjO51t88(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, long, androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    public static final Object detectDragGestures(PointerInputScope pointerInputScope, Function1 function1, Function0 function0, Function0 function02, Function2 function2, Continuation continuation) {
        Object awaitEachGesture = ScrollableKt.awaitEachGesture(pointerInputScope, new TapGestureDetectorKt$detectTapAndPress$2$1(new ImmLeaksCleaner$$ExternalSyntheticLambda0(13), new DragGestureDetectorKt$$ExternalSyntheticLambda0(0, function1), function2, function02, new AppBarKt$$ExternalSyntheticLambda0(1, function0), null), continuation);
        Unit unit = Unit.INSTANCE;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (awaitEachGesture != coroutineSingletons) {
            awaitEachGesture = unit;
        }
        return awaitEachGesture == coroutineSingletons ? awaitEachGesture : unit;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0041 -> B:10:0x0044). Please report as a decompilation issue!!! */
    /* renamed from: drag-jO51t88, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m157dragjO51t88(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine r4, long r5, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
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
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L32
            if (r1 != r2) goto L2b
            kotlin.jvm.functions.Function1 r4 = r0.L$1
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r5 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r8)
            r7 = r4
            r4 = r5
            goto L44
        L2b:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r4 = 0
            return r4
        L32:
            kotlin.ResultKt.throwOnFailure(r8)
        L35:
            r0.L$0 = r4
            r0.L$1 = r7
            r0.label = r2
            java.lang.Object r8 = m154awaitDragOrCancellationrnUCldI(r4, r5, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r8 != r5) goto L44
            return r5
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
            goto L35
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.m157dragjO51t88(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, long, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* renamed from: isPointerUp-DmW0f2w, reason: not valid java name */
    public static final boolean m158isPointerUpDmW0f2w(PointerEvent pointerEvent, long j) {
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
            if (PointerId.m564equalsimpl0(((PointerInputChange) obj).id, j)) {
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
    public static final float m159pointerSlopE8SPZFQ(ViewConfiguration viewConfiguration, int i) {
        return i == 2 ? viewConfiguration.getTouchSlop() * mouseToTouchSlopRatio : viewConfiguration.getTouchSlop();
    }

    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:96)
        */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:104:0x050a -> B:60:0x05e2). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:123:0x056c -> B:60:0x05e2). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:127:0x05c7 -> B:57:0x05d3). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:131:0x05fb -> B:61:0x05e4). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:150:0x024f -> B:143:0x0251). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:162:0x02e0 -> B:143:0x0251). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:181:0x033a -> B:144:0x03a2). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:185:0x038f -> B:140:0x0396). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x0663 -> B:12:0x066c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x0433 -> B:68:0x03e1). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:92:0x0471 -> B:60:0x05e2). Please report as a decompilation issue!!! */
    public static final java.lang.Object processDragGesture(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine r27, androidx.compose.ui.input.pointer.PointerInputChange r28, androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0 r29, androidx.compose.foundation.gestures.DragGestureDetectorKt$$ExternalSyntheticLambda0 r30, kotlin.jvm.functions.Function2 r31, kotlin.jvm.functions.Function0 r32, androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda0 r33, kotlin.coroutines.jvm.internal.BaseContinuationImpl r34) {
        /*
            Method dump skipped, instructions count: 1842
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.processDragGesture(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, androidx.compose.ui.input.pointer.PointerInputChange, androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0, androidx.compose.foundation.gestures.DragGestureDetectorKt$$ExternalSyntheticLambda0, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function0, androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda0, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }
}
