package kotlin.time;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class MonotonicTimeSource {
    public static final long zero = System.nanoTime();

    public static long read() {
        return System.nanoTime() - zero;
    }
}
