package androidx.compose.ui.input.pointer;

import androidx.collection.LongSparseArray;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: PointerInputEventProcessor.kt */
/* loaded from: classes.dex */
final class PointerInputChangeEventProducer {
    private final LongSparseArray previousPointerInputData = new LongSparseArray(0, 1, null);

    public final InternalPointerEvent produce(PointerInputEvent pointerInputEvent, PositionCalculator positionCalculator) {
        long j;
        boolean down;
        long mo1719screenToLocalMKHz9U;
        LongSparseArray longSparseArray = new LongSparseArray(pointerInputEvent.getPointers().size());
        List pointers = pointerInputEvent.getPointers();
        int size = pointers.size();
        for (int i = 0; i < size; i++) {
            PointerInputEventData pointerInputEventData = (PointerInputEventData) pointers.get(i);
            PointerInputData pointerInputData = (PointerInputData) this.previousPointerInputData.get(pointerInputEventData.m1695getIdJ3iCeTQ());
            if (pointerInputData == null) {
                j = pointerInputEventData.getUptime();
                mo1719screenToLocalMKHz9U = pointerInputEventData.m1697getPositionF1C5BW0();
                down = false;
            } else {
                long uptime = pointerInputData.getUptime();
                j = uptime;
                down = pointerInputData.getDown();
                mo1719screenToLocalMKHz9U = positionCalculator.mo1719screenToLocalMKHz9U(pointerInputData.m1694getPositionOnScreenF1C5BW0());
            }
            longSparseArray.put(pointerInputEventData.m1695getIdJ3iCeTQ(), new PointerInputChange(pointerInputEventData.m1695getIdJ3iCeTQ(), pointerInputEventData.getUptime(), pointerInputEventData.m1697getPositionF1C5BW0(), pointerInputEventData.getDown(), pointerInputEventData.getPressure(), j, mo1719screenToLocalMKHz9U, down, false, pointerInputEventData.m1700getTypeT8wyACA(), pointerInputEventData.getHistorical(), pointerInputEventData.m1699getScrollDeltaF1C5BW0(), pointerInputEventData.m1696getOriginalEventPositionF1C5BW0(), null));
            if (pointerInputEventData.getDown()) {
                this.previousPointerInputData.put(pointerInputEventData.m1695getIdJ3iCeTQ(), new PointerInputData(pointerInputEventData.getUptime(), pointerInputEventData.m1698getPositionOnScreenF1C5BW0(), pointerInputEventData.getDown(), pointerInputEventData.m1700getTypeT8wyACA(), null));
            } else {
                this.previousPointerInputData.remove(pointerInputEventData.m1695getIdJ3iCeTQ());
            }
        }
        return new InternalPointerEvent(longSparseArray, pointerInputEvent);
    }

    public final void clear() {
        this.previousPointerInputData.clear();
    }

    /* compiled from: PointerInputEventProcessor.kt */
    private static final class PointerInputData {
        private final boolean down;
        private final long positionOnScreen;
        private final int type;
        private final long uptime;

        public /* synthetic */ PointerInputData(long j, long j2, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(j, j2, z, i);
        }

        private PointerInputData(long j, long j2, boolean z, int i) {
            this.uptime = j;
            this.positionOnScreen = j2;
            this.down = z;
            this.type = i;
        }

        public final long getUptime() {
            return this.uptime;
        }

        /* renamed from: getPositionOnScreen-F1C5BW0, reason: not valid java name */
        public final long m1694getPositionOnScreenF1C5BW0() {
            return this.positionOnScreen;
        }

        public final boolean getDown() {
            return this.down;
        }
    }
}
