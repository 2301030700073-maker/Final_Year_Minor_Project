package app.k9mail.feature.account.common.domain.entity;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SpecialFolderSettings {
    public final SpecialFolderOption archiveSpecialFolderOption;
    public final SpecialFolderOption draftsSpecialFolderOption;
    public final SpecialFolderOption sentSpecialFolderOption;
    public final SpecialFolderOption spamSpecialFolderOption;
    public final SpecialFolderOption trashSpecialFolderOption;

    public SpecialFolderSettings(SpecialFolderOption specialFolderOption, SpecialFolderOption specialFolderOption2, SpecialFolderOption specialFolderOption3, SpecialFolderOption specialFolderOption4, SpecialFolderOption specialFolderOption5) {
        specialFolderOption.getClass();
        specialFolderOption2.getClass();
        specialFolderOption3.getClass();
        specialFolderOption4.getClass();
        specialFolderOption5.getClass();
        this.archiveSpecialFolderOption = specialFolderOption;
        this.draftsSpecialFolderOption = specialFolderOption2;
        this.sentSpecialFolderOption = specialFolderOption3;
        this.spamSpecialFolderOption = specialFolderOption4;
        this.trashSpecialFolderOption = specialFolderOption5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpecialFolderSettings)) {
            return false;
        }
        SpecialFolderSettings specialFolderSettings = (SpecialFolderSettings) obj;
        return Intrinsics.areEqual(this.archiveSpecialFolderOption, specialFolderSettings.archiveSpecialFolderOption) && Intrinsics.areEqual(this.draftsSpecialFolderOption, specialFolderSettings.draftsSpecialFolderOption) && Intrinsics.areEqual(this.sentSpecialFolderOption, specialFolderSettings.sentSpecialFolderOption) && Intrinsics.areEqual(this.spamSpecialFolderOption, specialFolderSettings.spamSpecialFolderOption) && Intrinsics.areEqual(this.trashSpecialFolderOption, specialFolderSettings.trashSpecialFolderOption);
    }

    public final int hashCode() {
        return this.trashSpecialFolderOption.hashCode() + ((this.spamSpecialFolderOption.hashCode() + ((this.sentSpecialFolderOption.hashCode() + ((this.draftsSpecialFolderOption.hashCode() + (this.archiveSpecialFolderOption.hashCode() * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "SpecialFolderSettings(archiveSpecialFolderOption=" + this.archiveSpecialFolderOption + ", draftsSpecialFolderOption=" + this.draftsSpecialFolderOption + ", sentSpecialFolderOption=" + this.sentSpecialFolderOption + ", spamSpecialFolderOption=" + this.spamSpecialFolderOption + ", trashSpecialFolderOption=" + this.trashSpecialFolderOption + ")";
    }
}
