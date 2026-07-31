package androidx.appcompat.app;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
