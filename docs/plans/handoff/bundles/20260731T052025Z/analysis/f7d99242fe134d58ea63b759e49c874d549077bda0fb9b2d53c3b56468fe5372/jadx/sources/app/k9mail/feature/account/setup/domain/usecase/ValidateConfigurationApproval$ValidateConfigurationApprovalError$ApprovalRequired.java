package app.k9mail.feature.account.setup.domain.usecase;

import net.thunderbird.core.validation.ValidationError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ValidateConfigurationApproval$ValidateConfigurationApprovalError$ApprovalRequired implements ValidationError {
    public static final ValidateConfigurationApproval$ValidateConfigurationApprovalError$ApprovalRequired INSTANCE = new ValidateConfigurationApproval$ValidateConfigurationApprovalError$ApprovalRequired();

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof ValidateConfigurationApproval$ValidateConfigurationApprovalError$ApprovalRequired);
    }

    public final int hashCode() {
        return -2130949915;
    }

    public final String toString() {
        return "ApprovalRequired";
    }
}
