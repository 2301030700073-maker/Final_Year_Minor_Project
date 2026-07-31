package com.fsck.k9.ui.messagedetails;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface MessageDetailsState {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DataLoaded implements MessageDetailsState {
        public final MessageDetailsAppearance appearance;
        public final MessageDetailsUi details;

        public DataLoaded(MessageDetailsAppearance messageDetailsAppearance, MessageDetailsUi messageDetailsUi) {
            this.appearance = messageDetailsAppearance;
            this.details = messageDetailsUi;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DataLoaded)) {
                return false;
            }
            DataLoaded dataLoaded = (DataLoaded) obj;
            return this.appearance.equals(dataLoaded.appearance) && this.details.equals(dataLoaded.details);
        }

        public final int hashCode() {
            return this.details.hashCode() + (this.appearance.hashCode() * 31);
        }

        public final String toString() {
            return "DataLoaded(appearance=" + this.appearance + ", details=" + this.details + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Error implements MessageDetailsState {
        public static final Error INSTANCE = new Error();
        public static final Error INSTANCE$1 = new Error();
    }
}
