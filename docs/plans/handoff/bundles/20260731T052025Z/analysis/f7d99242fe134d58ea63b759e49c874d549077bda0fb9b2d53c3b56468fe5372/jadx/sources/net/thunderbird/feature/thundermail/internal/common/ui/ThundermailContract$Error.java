package net.thunderbird.feature.thundermail.internal.common.ui;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ThundermailContract$Error {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class BrowserNotAvailable implements ThundermailContract$Error {
        public static final BrowserNotAvailable INSTANCE = new BrowserNotAvailable();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BrowserNotAvailable);
        }

        public final int hashCode() {
            return 1585615292;
        }

        public final String toString() {
            return "BrowserNotAvailable";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Canceled implements ThundermailContract$Error {
        public static final Canceled INSTANCE = new Canceled();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Canceled);
        }

        public final int hashCode() {
            return 970509851;
        }

        public final String toString() {
            return "Canceled";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Unknown implements ThundermailContract$Error {
        public final Exception error;

        public Unknown(Exception exc) {
            exc.getClass();
            this.error = exc;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Unknown) && Intrinsics.areEqual(this.error, ((Unknown) obj).error);
        }

        public final int hashCode() {
            return this.error.hashCode();
        }

        public final String toString() {
            return "Unknown(error=" + this.error + ")";
        }
    }
}
