package net.thunderbird.feature.account.settings.impl.domain;

import net.thunderbird.core.validation.ValidationError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AccountSettingsDomainContract$ValidateMonogramError extends ValidationError {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class EmptyMonogram implements AccountSettingsDomainContract$ValidateMonogramError {
        public static final EmptyMonogram INSTANCE = new EmptyMonogram();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof EmptyMonogram);
        }

        public final int hashCode() {
            return 1081609213;
        }

        public final String toString() {
            return "EmptyMonogram";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class TooLongMonogram implements AccountSettingsDomainContract$ValidateMonogramError {
        public static final TooLongMonogram INSTANCE = new TooLongMonogram();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof TooLongMonogram);
        }

        public final int hashCode() {
            return -1709193184;
        }

        public final String toString() {
            return "TooLongMonogram";
        }
    }
}
