package androidx.compose.ui.input.pointer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PointerInputChangeEventProducer$PointerInputData {
    public final boolean down;
    public final long positionOnScreen;
    public final long uptime;

    public PointerInputChangeEventProducer$PointerInputData(long j, long j2, boolean z) {
        this.uptime = j;
        this.positionOnScreen = j2;
        this.down = z;
    }
}
