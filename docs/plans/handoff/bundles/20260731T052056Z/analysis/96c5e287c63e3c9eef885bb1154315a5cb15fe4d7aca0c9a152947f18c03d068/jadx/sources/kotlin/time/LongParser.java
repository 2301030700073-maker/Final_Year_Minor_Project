package kotlin.time;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
