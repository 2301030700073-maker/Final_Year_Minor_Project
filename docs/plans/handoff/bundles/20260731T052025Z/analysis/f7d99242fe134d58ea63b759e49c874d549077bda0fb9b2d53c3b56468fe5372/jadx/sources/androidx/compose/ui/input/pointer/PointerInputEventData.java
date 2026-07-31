package androidx.compose.ui.input.pointer;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.geometry.Offset;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        return PointerId.m564equalsimpl0(this.id, pointerInputEventData.id) && this.uptime == pointerInputEventData.uptime && Offset.m437equalsimpl0(this.positionOnScreen, pointerInputEventData.positionOnScreen) && Offset.m437equalsimpl0(this.position, pointerInputEventData.position) && this.down == pointerInputEventData.down && Float.compare(this.pressure, pointerInputEventData.pressure) == 0 && this.type == pointerInputEventData.type && this.activeHover == pointerInputEventData.activeHover && this.historical.equals(pointerInputEventData.historical) && Offset.m437equalsimpl0(this.scrollDelta, pointerInputEventData.scrollDelta) && Float.compare(this.scaleGestureFactor, pointerInputEventData.scaleGestureFactor) == 0 && Offset.m437equalsimpl0(this.panGestureOffset, pointerInputEventData.panGestureOffset) && Offset.m437equalsimpl0(this.originalEventPosition, pointerInputEventData.originalEventPosition);
    }

    public final int hashCode() {
        long j = this.id;
        long j2 = this.uptime;
        return Offset.m439hashCodeimpl(this.originalEventPosition) + ((Offset.m439hashCodeimpl(this.panGestureOffset) + CameraDevices$CC.m((Offset.m439hashCodeimpl(this.scrollDelta) + Config.CC.m(this.historical, (((CameraDevices$CC.m((((Offset.m439hashCodeimpl(this.position) + ((Offset.m439hashCodeimpl(this.positionOnScreen) + (((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31)) * 31)) * 31) + (this.down ? 1231 : 1237)) * 31, this.pressure, 31) + this.type) * 31) + (this.activeHover ? 1231 : 1237)) * 31, 31)) * 31, this.scaleGestureFactor, 31)) * 31);
    }

    public final String toString() {
        return "PointerInputEventData(id=" + ((Object) PointerId.m567toStringimpl(this.id)) + ", uptime=" + this.uptime + ", positionOnScreen=" + ((Object) Offset.m443toStringimpl(this.positionOnScreen)) + ", position=" + ((Object) Offset.m443toStringimpl(this.position)) + ", down=" + this.down + ", pressure=" + this.pressure + ", type=" + ((Object) PointerType.m568toStringimpl(this.type)) + ", activeHover=" + this.activeHover + ", historical=" + this.historical + ", scrollDelta=" + ((Object) Offset.m443toStringimpl(this.scrollDelta)) + ", scaleGestureFactor=" + this.scaleGestureFactor + ", panGestureOffset=" + ((Object) Offset.m443toStringimpl(this.panGestureOffset)) + ", originalEventPosition=" + ((Object) Offset.m443toStringimpl(this.originalEventPosition)) + ')';
    }
}
