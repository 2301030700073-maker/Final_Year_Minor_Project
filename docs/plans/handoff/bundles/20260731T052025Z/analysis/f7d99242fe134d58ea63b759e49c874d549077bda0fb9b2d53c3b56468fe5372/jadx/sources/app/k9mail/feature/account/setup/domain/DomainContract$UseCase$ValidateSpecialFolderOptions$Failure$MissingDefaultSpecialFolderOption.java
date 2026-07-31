package app.k9mail.feature.account.setup.domain;

import net.thunderbird.core.validation.ValidationError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DomainContract$UseCase$ValidateSpecialFolderOptions$Failure$MissingDefaultSpecialFolderOption implements ValidationError {
    public static final DomainContract$UseCase$ValidateSpecialFolderOptions$Failure$MissingDefaultSpecialFolderOption INSTANCE = new DomainContract$UseCase$ValidateSpecialFolderOptions$Failure$MissingDefaultSpecialFolderOption();

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof DomainContract$UseCase$ValidateSpecialFolderOptions$Failure$MissingDefaultSpecialFolderOption);
    }

    public final int hashCode() {
        return 614382599;
    }

    public final String toString() {
        return "MissingDefaultSpecialFolderOption";
    }
}
