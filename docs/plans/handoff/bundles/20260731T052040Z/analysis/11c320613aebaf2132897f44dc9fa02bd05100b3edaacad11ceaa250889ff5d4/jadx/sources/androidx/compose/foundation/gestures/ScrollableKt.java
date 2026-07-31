package androidx.compose.foundation.gestures;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.collection.MutableObjectList;
import androidx.compose.foundation.ImageKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine;
import coil3.memory.RealStrongMemoryCache;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import okio.PriorityQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ScrollableKt {
    public static final ImageKt$$ExternalSyntheticLambda0 CanDragCalculation = new ImageKt$$ExternalSyntheticLambda0(26);
    public static final ScrollableKt$NoOpScrollScope$1 NoOpScrollScope = new ScrollableKt$NoOpScrollScope$1();
    public static final ScrollableKt$DefaultScrollMotionDurationScale$1 DefaultScrollMotionDurationScale = new ScrollableKt$DefaultScrollMotionDurationScale$1();
    public static final ScrollableKt$UnityDensity$1 UnityDensity = new ScrollableKt$UnityDensity$1();
    public static final ImageKt$$ExternalSyntheticLambda0 NoOnReport = new ImageKt$$ExternalSyntheticLambda0(27);

    /* renamed from: access$addIndirectPointerInputChange-Qf4Zb88, reason: not valid java name */
    public static final void m53access$addIndirectPointerInputChangeQf4Zb88(PopupMenu$1 popupMenu$1, IndirectPointerInputChange indirectPointerInputChange, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, PriorityQueue priorityQueue, long j) {
        float intBitsToFloat;
        MutableObjectList mutableObjectList = (MutableObjectList) priorityQueue.array;
        float intBitsToFloat2 = Float.intBitsToFloat((int) (indirectPointerInputChange.position >> 32));
        float intBitsToFloat3 = Float.intBitsToFloat((int) (indirectPointerInputChange.position & 4294967295L));
        if (changedToDownIgnoreConsumed(indirectPointerInputChange)) {
            priorityQueue.size = 0;
            mutableObjectList.clear();
        }
        if (!access$changedToUpIgnoreConsumed(indirectPointerInputChange) && !changedToDownIgnoreConsumed(indirectPointerInputChange)) {
            if (mutableObjectList._size == 3) {
                int i = priorityQueue.size;
                priorityQueue.size = i + 1;
                mutableObjectList.set(i, indirectPointerInputChange);
            } else {
                mutableObjectList.add(indirectPointerInputChange);
            }
            if (priorityQueue.size == 3) {
                priorityQueue.size = 0;
            }
            Object[] objArr = mutableObjectList.content;
            int i2 = mutableObjectList._size;
            float f = 0.0f;
            for (int i3 = 0; i3 < i2; i3++) {
                f += Float.intBitsToFloat((int) (((IndirectPointerInputChange) objArr[i3]).position >> 32));
            }
            int i4 = mutableObjectList._size;
            intBitsToFloat2 = f / i4;
            Object[] objArr2 = mutableObjectList.content;
            float f2 = 0.0f;
            for (int i5 = 0; i5 < i4; i5++) {
                f2 += Float.intBitsToFloat((int) (((IndirectPointerInputChange) objArr2[i5]).position & 4294967295L));
            }
            intBitsToFloat3 = f2 / mutableObjectList._size;
        }
        long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat2) << 32) | (Float.floatToRawIntBits(intBitsToFloat3) & 4294967295L);
        if (orientation != null) {
            int i6 = indirectPointerEventPrimaryDirectionalMotionAxis.value;
            if (i6 == 1) {
                intBitsToFloat = Float.intBitsToFloat((int) (floatToRawIntBits >> 32));
            } else if (i6 == 2) {
                intBitsToFloat = Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L));
            }
            floatToRawIntBits = orientation == Orientation.Horizontal ? (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(0.0f) & 4294967295L) : (Float.floatToRawIntBits(intBitsToFloat) & 4294967295L) | (Float.floatToRawIntBits(0.0f) << 32);
        }
        ((RealStrongMemoryCache) popupMenu$1.this$0).m477addPositionUv8p0NA(indirectPointerInputChange.uptimeMillis, Offset.m200plusMKHz9U(floatToRawIntBits, j));
    }

    public static final boolean access$changedToUpIgnoreConsumed(IndirectPointerInputChange indirectPointerInputChange) {
        return indirectPointerInputChange.previousPressed && !indirectPointerInputChange.pressed;
    }

    public static final boolean access$isLowScrollingDelta(float f) {
        return Float.isNaN(f) || Math.abs(f) < 0.5f;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /* renamed from: access$semanticsScrollBy-d-4ec7I, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m54access$semanticsScrollByd4ec7I(androidx.compose.foundation.gestures.ScrollingLogic r9, long r10, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            boolean r0 = r12 instanceof androidx.compose.foundation.gestures.ScrollableKt$semanticsScrollBy$1
            if (r0 == 0) goto L13
            r0 = r12
            androidx.compose.foundation.gestures.ScrollableKt$semanticsScrollBy$1 r0 = (androidx.compose.foundation.gestures.ScrollableKt$semanticsScrollBy$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.ScrollableKt$semanticsScrollBy$1 r0 = new androidx.compose.foundation.gestures.ScrollableKt$semanticsScrollBy$1
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L36
            if (r1 != r2) goto L2f
            java.lang.Object r9 = r0.L$1
            kotlin.jvm.internal.Ref$FloatRef r9 = (kotlin.jvm.internal.Ref$FloatRef) r9
            java.lang.Object r10 = r0.L$0
            androidx.compose.foundation.gestures.ScrollingLogic r10 = (androidx.compose.foundation.gestures.ScrollingLogic) r10
            kotlin.ResultKt.throwOnFailure(r12)
            r7 = r9
            r9 = r10
            goto L58
        L2f:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r9)
            r9 = 0
            return r9
        L36:
            kotlin.ResultKt.throwOnFailure(r12)
            kotlin.jvm.internal.Ref$FloatRef r7 = new kotlin.jvm.internal.Ref$FloatRef
            r7.<init>()
            androidx.compose.foundation.gestures.ScrollableKt$semanticsScrollBy$2 r3 = new androidx.compose.foundation.gestures.ScrollableKt$semanticsScrollBy$2
            r8 = 0
            r4 = r9
            r5 = r10
            r3.<init>(r4, r5, r7, r8)
            r0.L$0 = r4
            r0.L$1 = r7
            r0.label = r2
            androidx.compose.foundation.MutatePriority r9 = androidx.compose.foundation.MutatePriority.Default
            java.lang.Object r9 = r4.scroll(r9, r3, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r10 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r9 != r10) goto L57
            return r10
        L57:
            r9 = r4
        L58:
            float r10 = r7.element
            long r9 = r9.m75toOffsettuRUvjQ(r10)
            androidx.compose.ui.geometry.Offset r11 = new androidx.compose.ui.geometry.Offset
            r11.<init>(r9)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollableKt.m54access$semanticsScrollByd4ec7I(androidx.compose.foundation.gestures.ScrollingLogic, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0060 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x005e -> B:10:0x0061). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object awaitAllPointersUp(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine r7, androidx.compose.ui.input.pointer.PointerEventPass r8, kotlin.coroutines.jvm.internal.BaseContinuationImpl r9) {
        /*
            boolean r0 = r9 instanceof androidx.compose.foundation.gestures.ForEachGestureKt$awaitAllPointersUp$3
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.foundation.gestures.ForEachGestureKt$awaitAllPointersUp$3 r0 = (androidx.compose.foundation.gestures.ForEachGestureKt$awaitAllPointersUp$3) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.ForEachGestureKt$awaitAllPointersUp$3 r0 = new androidx.compose.foundation.gestures.ForEachGestureKt$awaitAllPointersUp$3
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L38
            if (r1 != r3) goto L31
            java.lang.Object r7 = r0.L$1
            androidx.compose.ui.input.pointer.PointerEventPass r7 = (androidx.compose.ui.input.pointer.PointerEventPass) r7
            java.lang.Object r8 = r0.L$0
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r8 = (androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) r8
            kotlin.ResultKt.throwOnFailure(r9)
            r6 = r8
            r8 = r7
            r7 = r6
            goto L61
        L31:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r7)
            r7 = 0
            return r7
        L38:
            kotlin.ResultKt.throwOnFailure(r9)
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl r9 = androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.this
            androidx.compose.ui.input.pointer.PointerEvent r9 = r9.currentEvent
            java.util.List r9 = r9.changes
            int r1 = r9.size()
            r4 = r2
        L46:
            if (r4 >= r1) goto L7d
            java.lang.Object r5 = r9.get(r4)
            androidx.compose.ui.input.pointer.PointerInputChange r5 = (androidx.compose.ui.input.pointer.PointerInputChange) r5
            boolean r5 = r5.pressed
            if (r5 == 0) goto L7a
        L52:
            r0.L$0 = r7
            r0.L$1 = r8
            r0.label = r3
            java.lang.Object r9 = r7.awaitPointerEvent(r8, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r9 != r1) goto L61
            return r1
        L61:
            androidx.compose.ui.input.pointer.PointerEvent r9 = (androidx.compose.ui.input.pointer.PointerEvent) r9
            java.util.List r9 = r9.changes
            int r1 = r9.size()
            r4 = r2
        L6a:
            if (r4 >= r1) goto L7d
            java.lang.Object r5 = r9.get(r4)
            androidx.compose.ui.input.pointer.PointerInputChange r5 = (androidx.compose.ui.input.pointer.PointerInputChange) r5
            boolean r5 = r5.pressed
            if (r5 == 0) goto L77
            goto L52
        L77:
            int r4 = r4 + 1
            goto L6a
        L7a:
            int r4 = r4 + 1
            goto L46
        L7d:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollableKt.awaitAllPointersUp(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, androidx.compose.ui.input.pointer.PointerEventPass, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    public static final Object awaitEachGesture(PointerInputScope pointerInputScope, Function2 function2, Continuation continuation) {
        CoroutineSingletons coroutineSingletons;
        Unit unit;
        ForEachGestureKt$awaitEachGesture$2 forEachGestureKt$awaitEachGesture$2 = new ForEachGestureKt$awaitEachGesture$2(continuation.getContext(), function2, null);
        SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = (SuspendingPointerInputModifierNodeImpl) pointerInputScope;
        suspendingPointerInputModifierNodeImpl.getClass();
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, UStringsKt.intercepted(continuation));
        cancellableContinuationImpl.initCancellability();
        final SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine pointerEventHandlerCoroutine = suspendingPointerInputModifierNodeImpl.new PointerEventHandlerCoroutine(cancellableContinuationImpl);
        synchronized (suspendingPointerInputModifierNodeImpl.pointerHandlersLock) {
            suspendingPointerInputModifierNodeImpl.pointerHandlers.add(pointerEventHandlerCoroutine);
            Continuation intercepted = UStringsKt.intercepted(UStringsKt.createCoroutineUnintercepted(pointerEventHandlerCoroutine, pointerEventHandlerCoroutine, forEachGestureKt$awaitEachGesture$2));
            coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            SafeContinuation safeContinuation = new SafeContinuation(intercepted);
            unit = Unit.INSTANCE;
            safeContinuation.resumeWith(unit);
        }
        cancellableContinuationImpl.invokeOnCancellation(new Function1() { // from class: androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$awaitPointerEventScope$2$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Throwable th = (Throwable) obj;
                SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine pointerEventHandlerCoroutine2 = SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine.this;
                CancellableContinuationImpl cancellableContinuationImpl2 = pointerEventHandlerCoroutine2.pointerAwaiter;
                if (cancellableContinuationImpl2 != null) {
                    cancellableContinuationImpl2.cancel(th);
                }
                pointerEventHandlerCoroutine2.pointerAwaiter = null;
                return Unit.INSTANCE;
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        return result == coroutineSingletons ? result : unit;
    }

    public static final boolean changedToDownIgnoreConsumed(IndirectPointerInputChange indirectPointerInputChange) {
        return !indirectPointerInputChange.previousPressed && indirectPointerInputChange.pressed;
    }

    /* renamed from: positionChangeInternal-wfG_k4k, reason: not valid java name */
    public static final long m55positionChangeInternalwfG_k4k(IndirectPointerInputChange indirectPointerInputChange, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, boolean z) {
        float intBitsToFloat;
        long floatToRawIntBits;
        long j;
        long j2 = indirectPointerInputChange.previousPosition;
        if (orientation != null) {
            int i = indirectPointerEventPrimaryDirectionalMotionAxis.value;
            if (i == 1) {
                intBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
            } else if (i == 2) {
                intBitsToFloat = Float.intBitsToFloat((int) (j2 & 4294967295L));
            }
            if (orientation == Orientation.Horizontal) {
                long floatToRawIntBits2 = Float.floatToRawIntBits(intBitsToFloat);
                floatToRawIntBits = Float.floatToRawIntBits(0.0f);
                j = floatToRawIntBits2 << 32;
            } else {
                long floatToRawIntBits3 = Float.floatToRawIntBits(0.0f);
                floatToRawIntBits = Float.floatToRawIntBits(intBitsToFloat);
                j = floatToRawIntBits3 << 32;
            }
            j2 = j | (4294967295L & floatToRawIntBits);
        }
        long m199minusMKHz9U = Offset.m199minusMKHz9U(m56primaryAxisPosition_bfSUIo(indirectPointerInputChange, orientation, indirectPointerEventPrimaryDirectionalMotionAxis), j2);
        if (z || !indirectPointerInputChange.isConsumed) {
            return m199minusMKHz9U;
        }
        return 0L;
    }

    /* renamed from: primaryAxisPosition-_bfSUIo, reason: not valid java name */
    public static final long m56primaryAxisPosition_bfSUIo(IndirectPointerInputChange indirectPointerInputChange, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis) {
        float intBitsToFloat;
        long floatToRawIntBits;
        long j;
        if (orientation == null) {
            return indirectPointerInputChange.position;
        }
        int i = indirectPointerEventPrimaryDirectionalMotionAxis.value;
        if (i == 1) {
            intBitsToFloat = Float.intBitsToFloat((int) (indirectPointerInputChange.position >> 32));
        } else {
            if (i != 2) {
                return indirectPointerInputChange.position;
            }
            intBitsToFloat = Float.intBitsToFloat((int) (indirectPointerInputChange.position & 4294967295L));
        }
        if (orientation == Orientation.Horizontal) {
            long floatToRawIntBits2 = Float.floatToRawIntBits(intBitsToFloat);
            floatToRawIntBits = Float.floatToRawIntBits(0.0f);
            j = floatToRawIntBits2 << 32;
        } else {
            long floatToRawIntBits3 = Float.floatToRawIntBits(0.0f);
            floatToRawIntBits = Float.floatToRawIntBits(intBitsToFloat);
            j = floatToRawIntBits3 << 32;
        }
        return j | (4294967295L & floatToRawIntBits);
    }
}
