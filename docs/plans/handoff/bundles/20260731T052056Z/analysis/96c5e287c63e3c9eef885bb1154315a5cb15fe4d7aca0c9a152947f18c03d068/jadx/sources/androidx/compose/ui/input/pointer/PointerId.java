package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import androidx.compose.ui.geometry.Offset;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PointerId {
    public static final StackTraceElement[] EmptyStackTraceElements;
    public static final AndroidPointerIconType pointerIconDefault = new AndroidPointerIconType(1000);
    public static final AndroidPointerIconType pointerIconHand;
    public static final AndroidPointerIconType pointerIconText;

    static {
        new AndroidPointerIconType(1007);
        pointerIconText = new AndroidPointerIconType(1008);
        pointerIconHand = new AndroidPointerIconType(1002);
        EmptyStackTraceElements = new StackTraceElement[0];
    }

    public static final boolean changedToDown(PointerInputChange pointerInputChange) {
        return (pointerInputChange.isConsumed() || pointerInputChange.previousPressed || !pointerInputChange.pressed) ? false : true;
    }

    public static final boolean changedToDownIgnoreConsumed(PointerInputChange pointerInputChange) {
        return !pointerInputChange.previousPressed && pointerInputChange.pressed;
    }

    public static final boolean changedToUp(PointerInputChange pointerInputChange) {
        return (pointerInputChange.isConsumed() || !pointerInputChange.previousPressed || pointerInputChange.pressed) ? false : true;
    }

    public static final boolean changedToUpIgnoreConsumed(PointerInputChange pointerInputChange) {
        return pointerInputChange.previousPressed && !pointerInputChange.pressed;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m505equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: isOutOfBounds-jwHxaWs, reason: not valid java name */
    public static final boolean m506isOutOfBoundsjwHxaWs(PointerInputChange pointerInputChange, long j, long j2) {
        int i = pointerInputChange.type == 1 ? 1 : 0;
        long j3 = pointerInputChange.position;
        float intBitsToFloat = Float.intBitsToFloat((int) (j3 >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j3 & 4294967295L));
        float f = i;
        float intBitsToFloat3 = Float.intBitsToFloat((int) (j2 >> 32)) * f;
        float f2 = ((int) (j >> 32)) + intBitsToFloat3;
        float intBitsToFloat4 = Float.intBitsToFloat((int) (j2 & 4294967295L)) * f;
        return (intBitsToFloat > f2) | (intBitsToFloat < (-intBitsToFloat3)) | (intBitsToFloat2 < (-intBitsToFloat4)) | (intBitsToFloat2 > ((int) (j & 4294967295L)) + intBitsToFloat4);
    }

    public static final long positionChangeInternal(PointerInputChange pointerInputChange, boolean z) {
        long m385minusMKHz9U = Offset.m385minusMKHz9U(pointerInputChange.position, pointerInputChange.previousPosition);
        if (z || !pointerInputChange.isConsumed()) {
            return m385minusMKHz9U;
        }
        return 0L;
    }

    /* renamed from: toMotionEventScope-ubNVwUQ, reason: not valid java name */
    public static final void m507toMotionEventScopeubNVwUQ(PointerEvent pointerEvent, long j, Function1 function1, boolean z) {
        MotionEvent motionEvent = pointerEvent.getMotionEvent();
        if (motionEvent == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("The PointerEvent receiver cannot have a null MotionEvent.");
            return;
        }
        int action = motionEvent.getAction();
        if (z) {
            motionEvent.setAction(3);
        }
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        motionEvent.offsetLocation(-Float.intBitsToFloat(i), -Float.intBitsToFloat(i2));
        function1.invoke(motionEvent);
        motionEvent.offsetLocation(Float.intBitsToFloat(i), Float.intBitsToFloat(i2));
        motionEvent.setAction(action);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m508toStringimpl(long j) {
        return "PointerId(value=" + j + ')';
    }
}
