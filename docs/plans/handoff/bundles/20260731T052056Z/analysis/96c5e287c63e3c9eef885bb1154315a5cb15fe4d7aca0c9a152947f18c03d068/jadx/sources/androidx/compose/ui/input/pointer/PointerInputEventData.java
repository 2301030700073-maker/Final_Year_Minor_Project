package androidx.compose.ui.input.pointer;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import java.util.ArrayList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PointerInputEventData {
    public final boolean activeHover;
    public final boolean down;
    public final ArrayList historical;
    public final long id;
    public final long originalEventPosition;
    public final long panGestureOffset;
    public final long position;
    public final long positionOnScreen;
    public final float pressure;
    public final float scaleGestureFactor;
    public final long scrollDelta;
    public final int type;
    public final long uptime;

    public PointerInputEventData(long j, long j2, long j3, long j4, boolean z, float f, int i, boolean z2, ArrayList arrayList, long j5, float f2, long j6, long j7) {
        this.id = j;
        this.uptime = j2;
        this.positionOnScreen = j3;
        this.position = j4;
        this.down = z;
        this.pressure = f;
        this.type = i;
        this.activeHover = z2;
        this.historical = arrayList;
        this.scrollDelta = j5;
        this.scaleGestureFactor = f2;
        this.panGestureOffset = j6;
        this.originalEventPosition = j7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PointerInputEventData)) {
            return false;
        }
        PointerInputEventData pointerInputEventData = (PointerInputEventData) obj;
        return PointerId.m505equalsimpl0(this.id, pointerInputEventData.id) && this.uptime == pointerInputEventData.uptime && Offset.m383equalsimpl0(this.positionOnScreen, pointerInputEventData.positionOnScreen) && Offset.m383equalsimpl0(this.position, pointerInputEventData.position) && this.down == pointerInputEventData.down && Float.compare(this.pressure, pointerInputEventData.pressure) == 0 && this.type == pointerInputEventData.type && this.activeHover == pointerInputEventData.activeHover && this.historical.equals(pointerInputEventData.historical) && Offset.m383equalsimpl0(this.scrollDelta, pointerInputEventData.scrollDelta) && Float.compare(this.scaleGestureFactor, pointerInputEventData.scaleGestureFactor) == 0 && Offset.m383equalsimpl0(this.panGestureOffset, pointerInputEventData.panGestureOffset) && Offset.m383equalsimpl0(this.originalEventPosition, pointerInputEventData.originalEventPosition);
    }

    public final int hashCode() {
        long j = this.id;
        long j2 = this.uptime;
        return Modifier.CC.m(this.originalEventPosition) + ((Modifier.CC.m(this.panGestureOffset) + Animation.CC.m((Modifier.CC.m(this.scrollDelta) + ((this.historical.hashCode() + ((((Animation.CC.m((((Modifier.CC.m(this.position) + ((Modifier.CC.m(this.positionOnScreen) + (((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31)) * 31)) * 31) + (this.down ? 1231 : 1237)) * 31, this.pressure, 31) + this.type) * 31) + (this.activeHover ? 1231 : 1237)) * 31)) * 31)) * 31, this.scaleGestureFactor, 31)) * 31);
    }

    public final String toString() {
        return "PointerInputEventData(id=" + ((Object) PointerId.m508toStringimpl(this.id)) + ", uptime=" + this.uptime + ", positionOnScreen=" + ((Object) Offset.m388toStringimpl(this.positionOnScreen)) + ", position=" + ((Object) Offset.m388toStringimpl(this.position)) + ", down=" + this.down + ", pressure=" + this.pressure + ", type=" + ((Object) PointerType.m509toStringimpl(this.type)) + ", activeHover=" + this.activeHover + ", historical=" + this.historical + ", scrollDelta=" + ((Object) Offset.m388toStringimpl(this.scrollDelta)) + ", scaleGestureFactor=" + this.scaleGestureFactor + ", panGestureOffset=" + ((Object) Offset.m388toStringimpl(this.panGestureOffset)) + ", originalEventPosition=" + ((Object) Offset.m388toStringimpl(this.originalEventPosition)) + ')';
    }
}
