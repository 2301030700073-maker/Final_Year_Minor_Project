package kotlin.time;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LongParser {
    public static final LongParser iso = new LongParser(4611686018427387903L, true);
    public final long lastDigitMax;
    public final long overflowThreshold;

    public LongParser(long j, boolean z) {
        this.overflowThreshold = j / 10;
        this.lastDigitMax = j % 10;
    }
}
