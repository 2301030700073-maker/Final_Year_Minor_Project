package com.fsck.k9.activity.setup;

import coil3.size.ViewSizeResolver;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AccountSetupCompositionContract$Effect {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Back implements AccountSetupCompositionContract$Effect {
        public static final Back INSTANCE = new Back();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Back);
        }

        public final int hashCode() {
            return 203378054;
        }

        public final String toString() {
            return "Back";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DoneUpdatingAccount implements AccountSetupCompositionContract$Effect {
        public static final DoneUpdatingAccount INSTANCE = new DoneUpdatingAccount();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof DoneUpdatingAccount);
        }

        public final int hashCode() {
            return -780819034;
        }

        public final String toString() {
            return "DoneUpdatingAccount";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ToggleSaveButtonEnabled implements AccountSetupCompositionContract$Effect {
        public final boolean isEnabled;

        public ToggleSaveButtonEnabled(boolean z) {
            this.isEnabled = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToggleSaveButtonEnabled) && this.isEnabled == ((ToggleSaveButtonEnabled) obj).isEnabled;
        }

        public final int hashCode() {
            return this.isEnabled ? 1231 : 1237;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("ToggleSaveButtonEnabled(isEnabled=", ")", this.isEnabled);
        }
    }
}
