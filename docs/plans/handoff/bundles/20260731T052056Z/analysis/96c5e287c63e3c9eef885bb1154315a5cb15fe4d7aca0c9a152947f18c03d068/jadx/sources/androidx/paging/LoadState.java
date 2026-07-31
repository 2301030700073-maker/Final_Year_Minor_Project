package androidx.paging;

import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LoadState {
    public final boolean endOfPaginationReached;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Error extends LoadState {
        public final Exception error;

        public Error(Exception exc) {
            super(false);
            this.error = exc;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof Error)) {
                return false;
            }
            Error error = (Error) obj;
            return this.endOfPaginationReached == error.endOfPaginationReached && this.error.equals(error.error);
        }

        public final int hashCode() {
            return this.error.hashCode() + (this.endOfPaginationReached ? 1231 : 1237);
        }

        public final String toString() {
            return "Error(endOfPaginationReached=" + this.endOfPaginationReached + ", error=" + this.error + ')';
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Loading extends LoadState {
        public static final Loading INSTANCE = new Loading(false);

        public final boolean equals(Object obj) {
            if (obj instanceof Loading) {
                return this.endOfPaginationReached == ((Loading) obj).endOfPaginationReached;
            }
            return false;
        }

        public final int hashCode() {
            return this.endOfPaginationReached ? 1231 : 1237;
        }

        public final String toString() {
            return Animation.CC.m(new StringBuilder("Loading(endOfPaginationReached="), this.endOfPaginationReached, ')');
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class NotLoading extends LoadState {
        public static final NotLoading Complete = new NotLoading(true);
        public static final NotLoading Incomplete = new NotLoading(false);

        public final boolean equals(Object obj) {
            if (obj instanceof NotLoading) {
                return this.endOfPaginationReached == ((NotLoading) obj).endOfPaginationReached;
            }
            return false;
        }

        public final int hashCode() {
            return this.endOfPaginationReached ? 1231 : 1237;
        }

        public final String toString() {
            return Animation.CC.m(new StringBuilder("NotLoading(endOfPaginationReached="), this.endOfPaginationReached, ')');
        }
    }

    public /* synthetic */ LoadState(boolean z) {
        this.endOfPaginationReached = z;
    }
}
