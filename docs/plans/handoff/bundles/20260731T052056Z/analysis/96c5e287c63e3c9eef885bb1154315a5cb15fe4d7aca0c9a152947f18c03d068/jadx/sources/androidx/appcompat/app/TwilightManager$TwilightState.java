package androidx.appcompat.app;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TwilightManager$TwilightState {
    public boolean isNight;
    public long nextUpdate;

    public long availableTimeNanos() {
        if (this.isNight) {
            return Long.MAX_VALUE;
        }
        return Math.max(0L, this.nextUpdate - System.nanoTime());
    }
}
