package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import androidx.collection.LongSparseArray;
import java.util.List;

/* compiled from: InternalPointerEvent.android.kt */
/* loaded from: classes.dex */
public final class InternalPointerEvent {
    private final LongSparseArray changes;
    private final PointerInputEvent pointerInputEvent;
    private boolean suppressMovementConsumption;

    public InternalPointerEvent(LongSparseArray longSparseArray, PointerInputEvent pointerInputEvent) {
        this.changes = longSparseArray;
        this.pointerInputEvent = pointerInputEvent;
    }

    public final LongSparseArray getChanges() {
        return this.changes;
    }

    public final MotionEvent getMotionEvent() {
        return this.pointerInputEvent.getMotionEvent();
    }

    /* renamed from: activeHoverEvent-0FcD4WY, reason: not valid java name */
    public final boolean m1657activeHoverEvent0FcD4WY(long j) {
        Object obj;
        List pointers = this.pointerInputEvent.getPointers();
        int size = pointers.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                obj = null;
                break;
            }
            obj = pointers.get(i);
            if (PointerId.m1681equalsimpl0(((PointerInputEventData) obj).m1695getIdJ3iCeTQ(), j)) {
                break;
            }
            i++;
        }
        PointerInputEventData pointerInputEventData = (PointerInputEventData) obj;
        if (pointerInputEventData != null) {
            return pointerInputEventData.getActiveHover();
        }
        return false;
    }

    public final boolean getSuppressMovementConsumption() {
        return this.suppressMovementConsumption;
    }
}
