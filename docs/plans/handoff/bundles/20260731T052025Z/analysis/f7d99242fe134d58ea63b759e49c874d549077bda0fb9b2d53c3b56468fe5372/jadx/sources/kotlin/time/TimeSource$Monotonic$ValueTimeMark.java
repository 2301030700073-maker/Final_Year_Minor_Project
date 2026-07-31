package kotlin.time;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TimeSource$Monotonic$ValueTimeMark implements Comparable {
    /* renamed from: elapsedNow-UwyO8pc, reason: not valid java name */
    public static long m1005elapsedNowUwyO8pc(long j) {
        return (1 | (j - 1)) == Long.MAX_VALUE ? Duration.m1003unaryMinusUwyO8pc(InstantKt.infinityOfSign(j)) : InstantKt.saturatingFiniteDiff(MonotonicTimeSource.read(), j);
    }
}
