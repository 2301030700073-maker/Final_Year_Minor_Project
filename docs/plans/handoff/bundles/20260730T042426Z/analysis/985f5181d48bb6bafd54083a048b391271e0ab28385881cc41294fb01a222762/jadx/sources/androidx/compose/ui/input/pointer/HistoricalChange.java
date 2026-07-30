package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: PointerEvent.kt */
/* loaded from: classes.dex */
public final class HistoricalChange {
    private long originalEventPosition;
    private final long position;
    private final long uptimeMillis;

    public /* synthetic */ HistoricalChange(long j, long j2, long j3, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3);
    }

    public /* synthetic */ HistoricalChange(long j, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2);
    }

    private HistoricalChange(long j, long j2) {
        this.uptimeMillis = j;
        this.position = j2;
        this.originalEventPosition = Offset.Companion.m1179getZeroF1C5BW0();
    }

    public final long getUptimeMillis() {
        return this.uptimeMillis;
    }

    /* renamed from: getPosition-F1C5BW0, reason: not valid java name */
    public final long m1655getPositionF1C5BW0() {
        return this.position;
    }

    /* renamed from: getOriginalEventPosition-F1C5BW0$ui_release, reason: not valid java name */
    public final long m1654getOriginalEventPositionF1C5BW0$ui_release() {
        return this.originalEventPosition;
    }

    private HistoricalChange(long j, long j2, long j3) {
        this(j, j2, (DefaultConstructorMarker) null);
        this.originalEventPosition = j3;
    }

    public String toString() {
        return "HistoricalChange(uptimeMillis=" + this.uptimeMillis + ", position=" + ((Object) Offset.m1174toStringimpl(this.position)) + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }
}
