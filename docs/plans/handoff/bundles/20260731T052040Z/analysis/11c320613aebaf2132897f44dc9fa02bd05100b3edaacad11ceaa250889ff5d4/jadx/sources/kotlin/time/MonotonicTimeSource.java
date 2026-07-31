package kotlin.time;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class MonotonicTimeSource {
    public static final long zero = System.nanoTime();

    public static long read() {
        return System.nanoTime() - zero;
    }
}
