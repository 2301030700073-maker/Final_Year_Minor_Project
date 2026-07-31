package kotlin.time;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface InstantParseResult {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Success implements InstantParseResult {
        public final long epochSeconds;
        public final int nanosecondsOfSecond;

        public Success(int i, long j) {
            this.epochSeconds = j;
            this.nanosecondsOfSecond = i;
        }

        @Override // kotlin.time.InstantParseResult
        public final Instant toInstant() {
            long j = Instant.MIN.epochSeconds;
            long j2 = this.epochSeconds;
            if (j2 >= j && j2 <= Instant.MAX.epochSeconds) {
                return InstantKt.fromEpochSeconds(this.nanosecondsOfSecond, j2);
            }
            throw new InstantFormatException("The parsed date is outside the range representable by Instant (Unix epoch second " + j2 + ')');
        }
    }

    Instant toInstant();
}
