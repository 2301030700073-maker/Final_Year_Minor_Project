package androidx.compose.foundation.gestures;

import androidx.camera.core.streamsharing.VirtualCameraCaptureResult;
import androidx.camera.view.PreviewView;
import androidx.collection.MutableObjectList;
import androidx.compose.foundation.ScrollState$$ExternalSyntheticLambda4;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.text.TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function2;
import okio.PriorityQueue;
import okio.internal.FileSystem$commonDeleteRecursively$sequence$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ScrollableKt {
    public static final ScrollState$$ExternalSyntheticLambda4 CanDragCalculation = new ScrollState$$ExternalSyntheticLambda4(6);
    public static final ScrollableKt$NoOpScrollScope$1 NoOpScrollScope = new ScrollableKt$NoOpScrollScope$1();
    public static final ScrollableKt$DefaultScrollMotionDurationScale$1 DefaultScrollMotionDurationScale = new ScrollableKt$DefaultScrollMotionDurationScale$1();
    public static final ScrollableKt$UnityDensity$1 UnityDensity = new ScrollableKt$UnityDensity$1();

    /* renamed from: access$addIndirectPointerInputChange-Qf4Zb88, reason: not valid java name */
    public static final void m181access$addIndirectPointerInputChangeQf4Zb88(PreviewView.AnonymousClass1 anonymousClass1, IndirectPointerInputChange indirectPointerInputChange, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, PriorityQueue priorityQueue, long j) {
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
        ((VirtualCameraCaptureResult) anonymousClass1.this$0).m95addPositionUv8p0NA(indirectPointerInputChange.uptimeMillis, Offset.m441plusMKHz9U(floatToRawIntBits, j));
    }

    public static final boolean access$changedToUpIgnoreConsumed(IndirectPointerInputChange indirectPointerInputChange) {
        return indirectPointerInputChange.previousPressed && !indirectPointerInputChange.pressed;
    }

    public static final boolean access$isLowScrollingDelta(float f) {
        return Float.isNaN(f) || Math.abs(f) < 0.5f;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /* renamed from: access$semanticsScrollBy-d-4ec7I, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m182access$semanticsScrollByd4ec7I(androidx.compose.foundation.gestures.ScrollingLogic r10, long r11, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            boolean r0 = r13 instanceof androidx.compose.foundation.gestures.ScrollableKt$semanticsScrollBy$1
            if (r0 == 0) goto L13
            r0 = r13
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
            r0.<init>(r13)
        L18:
            java.lang.Object r13 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L32
            if (r1 != r2) goto L2b
            kotlin.jvm.internal.Ref$FloatRef r10 = r0.L$1
            androidx.compose.foundation.gestures.ScrollingLogic r11 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r13)
            r8 = r10
            r10 = r11
            goto L55
        L2b:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r10)
            r10 = 0
            return r10
        L32:
            kotlin.ResultKt.throwOnFailure(r13)
            kotlin.jvm.internal.Ref$FloatRef r8 = new kotlin.jvm.internal.Ref$FloatRef
            r8.<init>()
            androidx.compose.foundation.gestures.ScrollableKt$semanticsScrollBy$2 r3 = new androidx.compose.foundation.gestures.ScrollableKt$semanticsScrollBy$2
            r9 = 0
            r4 = 0
            r7 = r10
            r5 = r11
            r3.<init>(r4, r5, r7, r8, r9)
            r0.L$0 = r7
            r0.L$1 = r8
            r0.label = r2
            androidx.compose.foundation.MutatePriority r10 = androidx.compose.foundation.MutatePriority.Default
            java.lang.Object r10 = r7.scroll(r10, r3, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r11 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r10 != r11) goto L54
            return r11
        L54:
            r10 = r7
        L55:
            float r11 = r8.element
            long r10 = r10.m194toOffsettuRUvjQ(r11)
            androidx.compose.ui.geometry.Offset r12 = new androidx.compose.ui.geometry.Offset
            r12.<init>(r10)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollableKt.m182access$semanticsScrollByd4ec7I(androidx.compose.foundation.gestures.ScrollingLogic, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x005a -> B:10:0x005d). Please report as a decompilation issue!!! */
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
            if (r1 == 0) goto L34
            if (r1 != r3) goto L2d
            androidx.compose.ui.input.pointer.PointerEventPass r7 = r0.L$1
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r8 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            r6 = r8
            r8 = r7
            r7 = r6
            goto L5d
        L2d:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r7)
            r7 = 0
            return r7
        L34:
            kotlin.ResultKt.throwOnFailure(r9)
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl r9 = androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.this
            androidx.compose.ui.input.pointer.PointerEvent r9 = r9.currentEvent
            java.util.List r9 = r9.changes
            int r1 = r9.size()
            r4 = r2
        L42:
            if (r4 >= r1) goto L79
            java.lang.Object r5 = r9.get(r4)
            androidx.compose.ui.input.pointer.PointerInputChange r5 = (androidx.compose.ui.input.pointer.PointerInputChange) r5
            boolean r5 = r5.pressed
            if (r5 == 0) goto L76
        L4e:
            r0.L$0 = r7
            r0.L$1 = r8
            r0.label = r3
            java.lang.Object r9 = r7.awaitPointerEvent(r8, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r9 != r1) goto L5d
            return r1
        L5d:
            androidx.compose.ui.input.pointer.PointerEvent r9 = (androidx.compose.ui.input.pointer.PointerEvent) r9
            java.util.List r9 = r9.changes
            int r1 = r9.size()
            r4 = r2
        L66:
            if (r4 >= r1) goto L79
            java.lang.Object r5 = r9.get(r4)
            androidx.compose.ui.input.pointer.PointerInputChange r5 = (androidx.compose.ui.input.pointer.PointerInputChange) r5
            boolean r5 = r5.pressed
            if (r5 == 0) goto L73
            goto L4e
        L73:
            int r4 = r4 + 1
            goto L66
        L76:
            int r4 = r4 + 1
            goto L42
        L79:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollableKt.awaitAllPointersUp(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, androidx.compose.ui.input.pointer.PointerEventPass, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    public static final Object awaitEachGesture(PointerInputScope pointerInputScope, Function2 function2, Continuation continuation) {
        Object awaitPointerEventScope = ((SuspendingPointerInputModifierNodeImpl) pointerInputScope).awaitPointerEventScope(new FileSystem$commonDeleteRecursively$sequence$1(continuation.getContext(), function2, null, 1), continuation);
        return awaitPointerEventScope == CoroutineSingletons.COROUTINE_SUSPENDED ? awaitPointerEventScope : Unit.INSTANCE;
    }

    public static final boolean changedToDownIgnoreConsumed(IndirectPointerInputChange indirectPointerInputChange) {
        return !indirectPointerInputChange.previousPressed && indirectPointerInputChange.pressed;
    }

    /* renamed from: positionChangeInternal-wfG_k4k, reason: not valid java name */
    public static final long m183positionChangeInternalwfG_k4k(IndirectPointerInputChange indirectPointerInputChange, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, boolean z) {
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
        long m440minusMKHz9U = Offset.m440minusMKHz9U(m184primaryAxisPosition_bfSUIo(indirectPointerInputChange, orientation, indirectPointerEventPrimaryDirectionalMotionAxis), j2);
        if (z || !indirectPointerInputChange.isConsumed) {
            return m440minusMKHz9U;
        }
        return 0L;
    }

    /* renamed from: primaryAxisPosition-_bfSUIo, reason: not valid java name */
    public static final long m184primaryAxisPosition_bfSUIo(IndirectPointerInputChange indirectPointerInputChange, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis) {
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

    public static Modifier scrollable$default(TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1 textFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1, Orientation orientation, boolean z, boolean z2, MutableInteractionSourceImpl mutableInteractionSourceImpl) {
        return new ScrollableElement(textFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1, orientation, z, z2, mutableInteractionSourceImpl);
    }
}
