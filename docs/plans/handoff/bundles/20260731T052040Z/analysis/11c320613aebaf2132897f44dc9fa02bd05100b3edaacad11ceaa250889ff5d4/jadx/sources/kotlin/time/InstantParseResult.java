package kotlin.time;

import com.google.android.exoplayer2.C;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface InstantParseResult {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Success implements InstantParseResult {
        public long epochSeconds;
        public int nanosecondsOfSecond;

        @Override // kotlin.time.InstantParseResult
        public Instant toInstant() {
            long j = this.epochSeconds;
            Instant instant = Instant.MIN;
            Instant instant2 = Instant.MIN;
            if (j >= instant2.getEpochSeconds()) {
                Instant instant3 = Instant.MAX;
                if (j <= instant3.getEpochSeconds()) {
                    long j2 = this.nanosecondsOfSecond;
                    long j3 = j2 / C.NANOS_PER_SECOND;
                    if ((j2 ^ C.NANOS_PER_SECOND) < 0 && j3 * C.NANOS_PER_SECOND != j2) {
                        j3--;
                    }
                    long j4 = j + j3;
                    if ((j ^ j4) < 0 && (j3 ^ j) >= 0) {
                        return j > 0 ? instant3 : instant2;
                    }
                    if (j4 >= -31557014167219200L) {
                        if (j4 <= 31556889864403199L) {
                            long j5 = j2 % C.NANOS_PER_SECOND;
                            return new Instant(j4, (int) (j5 + ((((j5 ^ C.NANOS_PER_SECOND) & ((-j5) | j5)) >> 63) & C.NANOS_PER_SECOND)));
                        }
                    }
                }
            }
            throw new InstantFormatException("The parsed date is outside the range representable by Instant (Unix epoch second " + j + ')');
        }
    }

    Instant toInstant();
}
