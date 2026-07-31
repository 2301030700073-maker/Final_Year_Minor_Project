package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import java.util.ArrayList;
import kotlin.text.UStringsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        return UStringsKt.m675equalsimpl0(this.id, pointerInputEventData.id) && this.uptime == pointerInputEventData.uptime && Offset.m196equalsimpl0(this.positionOnScreen, pointerInputEventData.positionOnScreen) && Offset.m196equalsimpl0(this.position, pointerInputEventData.position) && this.down == pointerInputEventData.down && Float.compare(this.pressure, pointerInputEventData.pressure) == 0 && this.type == pointerInputEventData.type && this.activeHover == pointerInputEventData.activeHover && this.historical.equals(pointerInputEventData.historical) && Offset.m196equalsimpl0(this.scrollDelta, pointerInputEventData.scrollDelta) && Float.compare(this.scaleGestureFactor, pointerInputEventData.scaleGestureFactor) == 0 && Offset.m196equalsimpl0(this.panGestureOffset, pointerInputEventData.panGestureOffset) && Offset.m196equalsimpl0(this.originalEventPosition, pointerInputEventData.originalEventPosition);
    }

    public final int hashCode() {
        long j = this.id;
        long j2 = this.uptime;
        return Offset.m198hashCodeimpl(this.originalEventPosition) + ((Offset.m198hashCodeimpl(this.panGestureOffset) + Modifier.CC.m(this.scaleGestureFactor, (Offset.m198hashCodeimpl(this.scrollDelta) + ((this.historical.hashCode() + ((((Modifier.CC.m(this.pressure, (((Offset.m198hashCodeimpl(this.position) + ((Offset.m198hashCodeimpl(this.positionOnScreen) + (((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31)) * 31)) * 31) + (this.down ? 1231 : 1237)) * 31, 31) + this.type) * 31) + (this.activeHover ? 1231 : 1237)) * 31)) * 31)) * 31, 31)) * 31);
    }

    public final String toString() {
        return "PointerInputEventData(id=" + ((Object) UStringsKt.m677toStringimpl(this.id)) + ", uptime=" + this.uptime + ", positionOnScreen=" + ((Object) Offset.m202toStringimpl(this.positionOnScreen)) + ", position=" + ((Object) Offset.m202toStringimpl(this.position)) + ", down=" + this.down + ", pressure=" + this.pressure + ", type=" + ((Object) PointerType.m290toStringimpl(this.type)) + ", activeHover=" + this.activeHover + ", historical=" + this.historical + ", scrollDelta=" + ((Object) Offset.m202toStringimpl(this.scrollDelta)) + ", scaleGestureFactor=" + this.scaleGestureFactor + ", panGestureOffset=" + ((Object) Offset.m202toStringimpl(this.panGestureOffset)) + ", originalEventPosition=" + ((Object) Offset.m202toStringimpl(this.originalEventPosition)) + ')';
    }
}
