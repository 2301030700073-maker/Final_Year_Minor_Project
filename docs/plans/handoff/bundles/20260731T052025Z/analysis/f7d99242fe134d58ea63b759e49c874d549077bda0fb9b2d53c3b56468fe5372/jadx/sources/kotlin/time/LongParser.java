package kotlin.time;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
