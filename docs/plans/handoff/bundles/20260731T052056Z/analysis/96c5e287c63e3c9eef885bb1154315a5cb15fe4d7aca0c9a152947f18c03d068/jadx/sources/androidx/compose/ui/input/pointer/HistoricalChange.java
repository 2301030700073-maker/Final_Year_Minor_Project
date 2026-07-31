package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HistoricalChange {
    public final long originalEventPosition;
    public final long panOffset;
    public final long position;
    public final float scaleFactor;
    public final long uptimeMillis;

    public HistoricalChange(long j, long j2, float f, long j3, long j4) {
        this.uptimeMillis = j;
        this.position = j2;
        this.scaleFactor = f;
        this.panOffset = j3;
        this.originalEventPosition = j4;
    }

    public final String toString() {
        return "HistoricalChange(uptimeMillis=" + this.uptimeMillis + ", position=" + ((Object) Offset.m388toStringimpl(this.position)) + ", scaleFactor=" + this.scaleFactor + ", panOffset=" + ((Object) Offset.m388toStringimpl(this.panOffset)) + ')';
    }
}
