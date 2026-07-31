package net.thunderbird.feature.account.settings.impl.domain;

import net.thunderbird.core.validation.ValidationError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AccountSettingsDomainContract$ValidateAccountNameError extends ValidationError {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class EmptyName implements AccountSettingsDomainContract$ValidateAccountNameError {
        public static final EmptyName INSTANCE = new EmptyName();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof EmptyName);
        }

        public final int hashCode() {
            return -1166035644;
        }

        public final String toString() {
            return "EmptyName";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class TooLongName implements AccountSettingsDomainContract$ValidateAccountNameError {
        public static final TooLongName INSTANCE = new TooLongName();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof TooLongName);
        }

        public final int hashCode() {
            return 298882407;
        }

        public final String toString() {
            return "TooLongName";
        }
    }
}
