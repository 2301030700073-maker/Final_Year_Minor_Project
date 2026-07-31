package org.wikipedia.feed.wikigames;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface OnThisDayGameAction {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CountdownFinished implements OnThisDayGameAction {
        public static final CountdownFinished INSTANCE = new CountdownFinished();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CountdownFinished);
        }

        public final int hashCode() {
            return -459102096;
        }

        public final String toString() {
            return "CountdownFinished";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Play implements OnThisDayGameAction {
        public static final Play INSTANCE = new Play();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Play);
        }

        public final int hashCode() {
            return -710785177;
        }

        public final String toString() {
            return "Play";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PlayArchive implements OnThisDayGameAction {
        public static final PlayArchive INSTANCE = new PlayArchive();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PlayArchive);
        }

        public final int hashCode() {
            return 1707761499;
        }

        public final String toString() {
            return "PlayArchive";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ReviewResults implements OnThisDayGameAction {
        public static final ReviewResults INSTANCE = new ReviewResults();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ReviewResults);
        }

        public final int hashCode() {
            return 254785195;
        }

        public final String toString() {
            return "ReviewResults";
        }
    }
}
