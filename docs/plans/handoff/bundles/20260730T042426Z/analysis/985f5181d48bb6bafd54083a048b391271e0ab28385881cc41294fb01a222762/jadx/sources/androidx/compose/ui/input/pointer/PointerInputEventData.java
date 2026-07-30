package androidx.compose.ui.input.pointer;

import androidx.collection.LongObjectMap$$ExternalSyntheticBackport0;
import androidx.compose.animation.ChangeSize$$ExternalSyntheticBackport0;
import androidx.compose.ui.geometry.Offset;
import ch.qos.logback.core.CoreConstants;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: InternalPointerInput.kt */
/* loaded from: classes.dex */
public final class PointerInputEventData {
    private final boolean activeHover;
    private final boolean down;
    private final List historical;
    private final long id;
    private final long originalEventPosition;
    private final long position;
    private final long positionOnScreen;
    private final float pressure;
    private final long scrollDelta;
    private final int type;
    private final long uptime;

    public /* synthetic */ PointerInputEventData(long j, long j2, long j3, long j4, boolean z, float f, int i, boolean z2, List list, long j5, long j6, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, j4, z, f, i, z2, list, j5, j6);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PointerInputEventData)) {
            return false;
        }
        PointerInputEventData pointerInputEventData = (PointerInputEventData) obj;
        return PointerId.m1681equalsimpl0(this.id, pointerInputEventData.id) && this.uptime == pointerInputEventData.uptime && Offset.m1164equalsimpl0(this.positionOnScreen, pointerInputEventData.positionOnScreen) && Offset.m1164equalsimpl0(this.position, pointerInputEventData.position) && this.down == pointerInputEventData.down && Float.compare(this.pressure, pointerInputEventData.pressure) == 0 && PointerType.m1709equalsimpl0(this.type, pointerInputEventData.type) && this.activeHover == pointerInputEventData.activeHover && Intrinsics.areEqual(this.historical, pointerInputEventData.historical) && Offset.m1164equalsimpl0(this.scrollDelta, pointerInputEventData.scrollDelta) && Offset.m1164equalsimpl0(this.originalEventPosition, pointerInputEventData.originalEventPosition);
    }

    public int hashCode() {
        return (((((((((((((((((((PointerId.m1682hashCodeimpl(this.id) * 31) + LongObjectMap$$ExternalSyntheticBackport0.m(this.uptime)) * 31) + Offset.m1169hashCodeimpl(this.positionOnScreen)) * 31) + Offset.m1169hashCodeimpl(this.position)) * 31) + ChangeSize$$ExternalSyntheticBackport0.m(this.down)) * 31) + Float.floatToIntBits(this.pressure)) * 31) + PointerType.m1710hashCodeimpl(this.type)) * 31) + ChangeSize$$ExternalSyntheticBackport0.m(this.activeHover)) * 31) + this.historical.hashCode()) * 31) + Offset.m1169hashCodeimpl(this.scrollDelta)) * 31) + Offset.m1169hashCodeimpl(this.originalEventPosition);
    }

    public String toString() {
        return "PointerInputEventData(id=" + ((Object) PointerId.m1683toStringimpl(this.id)) + ", uptime=" + this.uptime + ", positionOnScreen=" + ((Object) Offset.m1174toStringimpl(this.positionOnScreen)) + ", position=" + ((Object) Offset.m1174toStringimpl(this.position)) + ", down=" + this.down + ", pressure=" + this.pressure + ", type=" + ((Object) PointerType.m1711toStringimpl(this.type)) + ", activeHover=" + this.activeHover + ", historical=" + this.historical + ", scrollDelta=" + ((Object) Offset.m1174toStringimpl(this.scrollDelta)) + ", originalEventPosition=" + ((Object) Offset.m1174toStringimpl(this.originalEventPosition)) + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    private PointerInputEventData(long j, long j2, long j3, long j4, boolean z, float f, int i, boolean z2, List list, long j5, long j6) {
        this.id = j;
        this.uptime = j2;
        this.positionOnScreen = j3;
        this.position = j4;
        this.down = z;
        this.pressure = f;
        this.type = i;
        this.activeHover = z2;
        this.historical = list;
        this.scrollDelta = j5;
        this.originalEventPosition = j6;
    }

    /* renamed from: getId-J3iCeTQ, reason: not valid java name */
    public final long m1695getIdJ3iCeTQ() {
        return this.id;
    }

    public final long getUptime() {
        return this.uptime;
    }

    /* renamed from: getPositionOnScreen-F1C5BW0, reason: not valid java name */
    public final long m1698getPositionOnScreenF1C5BW0() {
        return this.positionOnScreen;
    }

    /* renamed from: getPosition-F1C5BW0, reason: not valid java name */
    public final long m1697getPositionF1C5BW0() {
        return this.position;
    }

    public final boolean getDown() {
        return this.down;
    }

    public final float getPressure() {
        return this.pressure;
    }

    /* renamed from: getType-T8wyACA, reason: not valid java name */
    public final int m1700getTypeT8wyACA() {
        return this.type;
    }

    public final boolean getActiveHover() {
        return this.activeHover;
    }

    public final List getHistorical() {
        return this.historical;
    }

    /* renamed from: getScrollDelta-F1C5BW0, reason: not valid java name */
    public final long m1699getScrollDeltaF1C5BW0() {
        return this.scrollDelta;
    }

    /* renamed from: getOriginalEventPosition-F1C5BW0, reason: not valid java name */
    public final long m1696getOriginalEventPositionF1C5BW0() {
        return this.originalEventPosition;
    }
}
