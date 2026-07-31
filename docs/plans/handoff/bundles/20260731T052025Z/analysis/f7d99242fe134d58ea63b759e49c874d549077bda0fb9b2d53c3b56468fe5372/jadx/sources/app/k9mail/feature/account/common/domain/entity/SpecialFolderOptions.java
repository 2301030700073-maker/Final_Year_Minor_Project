package app.k9mail.feature.account.common.domain.entity;

import androidx.camera.core.impl.Config;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SpecialFolderOptions {
    public final ArrayList archiveSpecialFolderOptions;
    public final ArrayList draftsSpecialFolderOptions;
    public final ArrayList sentSpecialFolderOptions;
    public final ArrayList spamSpecialFolderOptions;
    public final ArrayList trashSpecialFolderOptions;

    public SpecialFolderOptions(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, ArrayList arrayList5) {
        this.archiveSpecialFolderOptions = arrayList;
        this.draftsSpecialFolderOptions = arrayList2;
        this.sentSpecialFolderOptions = arrayList3;
        this.spamSpecialFolderOptions = arrayList4;
        this.trashSpecialFolderOptions = arrayList5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpecialFolderOptions)) {
            return false;
        }
        SpecialFolderOptions specialFolderOptions = (SpecialFolderOptions) obj;
        return this.archiveSpecialFolderOptions.equals(specialFolderOptions.archiveSpecialFolderOptions) && this.draftsSpecialFolderOptions.equals(specialFolderOptions.draftsSpecialFolderOptions) && this.sentSpecialFolderOptions.equals(specialFolderOptions.sentSpecialFolderOptions) && this.spamSpecialFolderOptions.equals(specialFolderOptions.spamSpecialFolderOptions) && this.trashSpecialFolderOptions.equals(specialFolderOptions.trashSpecialFolderOptions);
    }

    public final int hashCode() {
        return this.trashSpecialFolderOptions.hashCode() + Config.CC.m(this.spamSpecialFolderOptions, Config.CC.m(this.sentSpecialFolderOptions, Config.CC.m(this.draftsSpecialFolderOptions, this.archiveSpecialFolderOptions.hashCode() * 31, 31), 31), 31);
    }

    public final String toString() {
        return "SpecialFolderOptions(archiveSpecialFolderOptions=" + this.archiveSpecialFolderOptions + ", draftsSpecialFolderOptions=" + this.draftsSpecialFolderOptions + ", sentSpecialFolderOptions=" + this.sentSpecialFolderOptions + ", spamSpecialFolderOptions=" + this.spamSpecialFolderOptions + ", trashSpecialFolderOptions=" + this.trashSpecialFolderOptions + ")";
    }
}
