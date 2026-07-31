package androidx.compose.foundation.lazy.layout;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
