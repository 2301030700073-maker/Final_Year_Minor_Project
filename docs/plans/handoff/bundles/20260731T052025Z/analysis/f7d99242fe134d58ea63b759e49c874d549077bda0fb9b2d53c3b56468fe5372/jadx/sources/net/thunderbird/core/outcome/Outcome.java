package net.thunderbird.core.outcome;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface Outcome {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Failure implements Outcome {
        public final Object cause;
        public final Object error;

        public Failure(Object obj, Object obj2) {
            this.error = obj;
            this.cause = obj2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Failure)) {
                return false;
            }
            Failure failure = (Failure) obj;
            return Intrinsics.areEqual(this.error, failure.error) && Intrinsics.areEqual(this.cause, failure.cause);
        }

        public final int hashCode() {
            Object obj = this.error;
            int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
            Object obj2 = this.cause;
            return hashCode + (obj2 != null ? obj2.hashCode() : 0);
        }

        @Override // net.thunderbird.core.outcome.Outcome
        public final boolean isFailure() {
            return true;
        }

        public final String toString() {
            return "Failure(error=" + this.error + ", cause=" + this.cause + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Success implements Outcome {
        public final Object data;

        public Success(Object obj) {
            this.data = obj;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Success) && this.data.equals(((Success) obj).data);
        }

        public final int hashCode() {
            return this.data.hashCode();
        }

        @Override // net.thunderbird.core.outcome.Outcome
        public final boolean isFailure() {
            return false;
        }

        public final String toString() {
            return "Success(data=" + this.data + ")";
        }
    }

    boolean isFailure();
}
