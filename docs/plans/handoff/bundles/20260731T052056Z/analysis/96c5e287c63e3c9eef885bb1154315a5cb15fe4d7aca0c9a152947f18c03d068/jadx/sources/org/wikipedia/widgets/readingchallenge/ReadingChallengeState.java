package org.wikipedia.widgets.readingchallenge;

import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface ReadingChallengeState {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ChallengeConcludedIncomplete implements ReadingChallengeState {
        public final int streak;

        public ChallengeConcludedIncomplete(int i) {
            this.streak = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ChallengeConcludedIncomplete) && this.streak == ((ChallengeConcludedIncomplete) obj).streak;
        }

        public final int hashCode() {
            return this.streak;
        }

        public final String toString() {
            return Animation.CC.m(this.streak, "ChallengeConcludedIncomplete(streak=", ")");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EnrolledNotStarted implements ReadingChallengeState {
        public static final EnrolledNotStarted INSTANCE = new EnrolledNotStarted();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Loading implements ReadingChallengeState {
        public static final Loading INSTANCE$1 = new Loading();
        public static final Loading INSTANCE$2 = new Loading();
        public static final Loading INSTANCE$3 = new Loading();
        public static final Loading INSTANCE = new Loading();
        public static final Loading INSTANCE$4 = new Loading();
        public static final Loading INSTANCE$5 = new Loading();
        public static final Loading INSTANCE$6 = new Loading();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class StreakOngoingNeedsReading implements ReadingChallengeState {
        public final int streak;

        public StreakOngoingNeedsReading(int i) {
            this.streak = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof StreakOngoingNeedsReading) && this.streak == ((StreakOngoingNeedsReading) obj).streak;
        }

        public final int hashCode() {
            return this.streak;
        }

        public final String toString() {
            return Animation.CC.m(this.streak, "StreakOngoingNeedsReading(streak=", ")");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class StreakOngoingReadToday implements ReadingChallengeState {
        public final int streak;

        public StreakOngoingReadToday(int i) {
            this.streak = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof StreakOngoingReadToday) && this.streak == ((StreakOngoingReadToday) obj).streak;
        }

        public final int hashCode() {
            return this.streak;
        }

        public final String toString() {
            return Animation.CC.m(this.streak, "StreakOngoingReadToday(streak=", ")");
        }
    }
}
