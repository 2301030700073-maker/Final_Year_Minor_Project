package kotlin.time;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class TimeSource$Monotonic$ValueTimeMark implements Comparable {
    /* renamed from: elapsedNow-UwyO8pc, reason: not valid java name */
    public static long m685elapsedNowUwyO8pc(long j) {
        return (1 | (j - 1)) == Long.MAX_VALUE ? Duration.m684unaryMinusUwyO8pc(InstantKt.infinityOfSign(j)) : InstantKt.saturatingFiniteDiff(MonotonicTimeSource.read(), j);
    }
}
