package androidx.compose.foundation.gestures;

import androidx.collection.MutableObjectList;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda3;
import androidx.compose.foundation.text.TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.paging.HintHandler;
import androidx.recyclerview.widget.RecyclerView;
import coil3.memory.RealStrongMemoryCache;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function2;
import okio.PriorityQueue;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ScrollableKt {
    public static final BasicTextKt$$ExternalSyntheticLambda3 CanDragCalculation = new BasicTextKt$$ExternalSyntheticLambda3(1);
    public static final ScrollableKt$NoOpScrollScope$1 NoOpScrollScope = new ScrollableKt$NoOpScrollScope$1();
    public static final ScrollableKt$DefaultScrollMotionDurationScale$1 DefaultScrollMotionDurationScale = new ScrollableKt$DefaultScrollMotionDurationScale$1();
    public static final ScrollableKt$UnityDensity$1 UnityDensity = new ScrollableKt$UnityDensity$1();
    public static final BasicTextKt$$ExternalSyntheticLambda3 NoOnReport = new BasicTextKt$$ExternalSyntheticLambda3(2);

    /* renamed from: addIndirectPointerInputChange-Qf4Zb88, reason: not valid java name */
    public static final void m90addIndirectPointerInputChangeQf4Zb88(HintHandler hintHandler, IndirectPointerInputChange indirectPointerInputChange, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, PriorityQueue priorityQueue, long j) {
        float intBitsToFloat;
        MutableObjectList mutableObjectList = (MutableObjectList) priorityQueue.array;
        float intBitsToFloat2 = Float.intBitsToFloat((int) (indirectPointerInputChange.position >> 32));
        float intBitsToFloat3 = Float.intBitsToFloat((int) (indirectPointerInputChange.position & 4294967295L));
        if (changedToDownIgnoreConsumed(indirectPointerInputChange)) {
            priorityQueue.size = 0;
            mutableObjectList.clear();
        }
        if (!changedToUpIgnoreConsumed(indirectPointerInputChange) && !changedToDownIgnoreConsumed(indirectPointerInputChange)) {
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
            floatToRawIntBits = orientation == Orientation.Horizontal ? (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) & 4294967295L) : (Float.floatToRawIntBits(intBitsToFloat) & 4294967295L) | (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) << 32);
        }
        ((RealStrongMemoryCache) hintHandler.state).m782addPositionUv8p0NA(indirectPointerInputChange.uptimeMillis, Offset.m386plusMKHz9U(floatToRawIntBits, j));
    }

    public static final boolean allPointersUp(SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine pointerEventHandlerCoroutine) {
        List list = SuspendingPointerInputModifierNodeImpl.this.currentEvent.changes;
        int size = list.size();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            if (((PointerInputChange) list.get(i)).pressed) {
                z = true;
                break;
            }
            i++;
        }
        return !z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x003c, code lost:
    
        if (allPointersUp(r7) == false) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0048 -> B:10:0x004b). Please report as a decompilation issue!!! */
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
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2e
            androidx.compose.ui.input.pointer.PointerEventPass r7 = r0.L$1
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r8 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            r6 = r8
            r8 = r7
            r7 = r6
            goto L4b
        L2e:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
            r7 = 0
            return r7
        L35:
            kotlin.ResultKt.throwOnFailure(r9)
            boolean r9 = allPointersUp(r7)
            if (r9 != 0) goto L64
        L3e:
            r0.L$0 = r7
            r0.L$1 = r8
            r0.label = r3
            java.lang.Object r9 = r7.awaitPointerEvent(r8, r0)
            if (r9 != r1) goto L4b
            return r1
        L4b:
            androidx.compose.ui.input.pointer.PointerEvent r9 = (androidx.compose.ui.input.pointer.PointerEvent) r9
            java.util.List r9 = r9.changes
            int r2 = r9.size()
            r4 = 0
        L54:
            if (r4 >= r2) goto L64
            java.lang.Object r5 = r9.get(r4)
            androidx.compose.ui.input.pointer.PointerInputChange r5 = (androidx.compose.ui.input.pointer.PointerInputChange) r5
            boolean r5 = r5.pressed
            if (r5 == 0) goto L61
            goto L3e
        L61:
            int r4 = r4 + 1
            goto L54
        L64:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollableKt.awaitAllPointersUp(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, androidx.compose.ui.input.pointer.PointerEventPass, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    public static final Object awaitEachGesture(PointerInputScope pointerInputScope, Function2 function2, Continuation continuation) {
        Object awaitPointerEventScope = ((SuspendingPointerInputModifierNodeImpl) pointerInputScope).awaitPointerEventScope(new ForEachGestureKt$awaitEachGesture$2(continuation.getContext(), function2, null, 0), continuation);
        return awaitPointerEventScope == CoroutineSingletons.COROUTINE_SUSPENDED ? awaitPointerEventScope : Unit.INSTANCE;
    }

    public static final boolean changedToDownIgnoreConsumed(IndirectPointerInputChange indirectPointerInputChange) {
        return !indirectPointerInputChange.previousPressed && indirectPointerInputChange.pressed;
    }

    public static final boolean changedToUpIgnoreConsumed(IndirectPointerInputChange indirectPointerInputChange) {
        return indirectPointerInputChange.previousPressed && !indirectPointerInputChange.pressed;
    }

    public static final boolean isLowScrollingDelta(float f) {
        return Float.isNaN(f) || Math.abs(f) < 0.5f;
    }

    /* renamed from: positionChangeInternal-wfG_k4k, reason: not valid java name */
    public static final long m91positionChangeInternalwfG_k4k(IndirectPointerInputChange indirectPointerInputChange, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, boolean z) {
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
                floatToRawIntBits = Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE);
                j = floatToRawIntBits2 << 32;
            } else {
                long floatToRawIntBits3 = Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE);
                floatToRawIntBits = Float.floatToRawIntBits(intBitsToFloat);
                j = floatToRawIntBits3 << 32;
            }
            j2 = j | (4294967295L & floatToRawIntBits);
        }
        long m385minusMKHz9U = Offset.m385minusMKHz9U(m92primaryAxisPosition_bfSUIo(indirectPointerInputChange, orientation, indirectPointerEventPrimaryDirectionalMotionAxis), j2);
        if (z || !indirectPointerInputChange.isConsumed) {
            return m385minusMKHz9U;
        }
        return 0L;
    }

    /* renamed from: primaryAxisPosition-_bfSUIo, reason: not valid java name */
    public static final long m92primaryAxisPosition_bfSUIo(IndirectPointerInputChange indirectPointerInputChange, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis) {
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
            floatToRawIntBits = Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE);
            j = floatToRawIntBits2 << 32;
        } else {
            long floatToRawIntBits3 = Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE);
            floatToRawIntBits = Float.floatToRawIntBits(intBitsToFloat);
            j = floatToRawIntBits3 << 32;
        }
        return j | (4294967295L & floatToRawIntBits);
    }

    public static Modifier scrollable$default(TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1 textFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1, Orientation orientation, boolean z, boolean z2, MutableInteractionSourceImpl mutableInteractionSourceImpl) {
        return new ScrollableElement(textFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1, orientation, z, z2, mutableInteractionSourceImpl);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* renamed from: semanticsScrollBy-d-4ec7I, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m93semanticsScrollByd4ec7I(androidx.compose.foundation.gestures.ScrollingLogic r11, long r12, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            boolean r0 = r14 instanceof androidx.compose.foundation.gestures.ScrollableKt$semanticsScrollBy$1
            if (r0 == 0) goto L13
            r0 = r14
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
            r0.<init>(r14)
        L18:
            java.lang.Object r14 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L34
            if (r2 != r3) goto L2d
            kotlin.jvm.internal.Ref$FloatRef r11 = r0.L$1
            androidx.compose.foundation.gestures.ScrollingLogic r12 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r14)
            r8 = r11
            r11 = r12
            goto L55
        L2d:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r11)
            r11 = 0
            return r11
        L34:
            kotlin.ResultKt.throwOnFailure(r14)
            kotlin.jvm.internal.Ref$FloatRef r8 = new kotlin.jvm.internal.Ref$FloatRef
            r8.<init>()
            androidx.compose.foundation.MutatePriority r14 = androidx.compose.foundation.MutatePriority.Default
            org.wikipedia.talk.TalkTopicsViewModel$undoSave$1 r4 = new org.wikipedia.talk.TalkTopicsViewModel$undoSave$1
            r9 = 0
            r10 = 2
            r5 = r11
            r6 = r12
            r4.<init>(r5, r6, r8, r9, r10)
            r0.L$0 = r5
            r0.L$1 = r8
            r0.label = r3
            java.lang.Object r11 = r5.scroll(r14, r4, r0)
            if (r11 != r1) goto L54
            return r1
        L54:
            r11 = r5
        L55:
            float r12 = r8.element
            long r11 = r11.m104toOffsettuRUvjQ(r12)
            androidx.compose.ui.geometry.Offset r13 = new androidx.compose.ui.geometry.Offset
            r13.<init>(r11)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollableKt.m93semanticsScrollByd4ec7I(androidx.compose.foundation.gestures.ScrollingLogic, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
