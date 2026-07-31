package androidx.compose.foundation.lazy.layout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Averages {
    public long applyTimeNanos;
    public long measureTimeNanos;
    public int nestedPrefetchCount;
    public long pauseTimeNanos;
    public long resumeTimeNanos;

    public static long calculateAverageTime(long j, long j2) {
        if (j2 == 0) {
            return j;
        }
        return (j / 4) + ((j2 / 4) * 3);
    }
}
