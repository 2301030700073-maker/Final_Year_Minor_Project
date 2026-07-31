package app.k9mail.feature.account.setup.ui.specialfolders;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import app.k9mail.feature.account.common.domain.entity.SpecialFolderOption;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SpecialFoldersContract$FormState {
    public final List archiveSpecialFolderOptions;
    public final List draftsSpecialFolderOptions;
    public final SpecialFolderOption selectedArchiveSpecialFolderOption;
    public final SpecialFolderOption selectedDraftsSpecialFolderOption;
    public final SpecialFolderOption selectedSentSpecialFolderOption;
    public final SpecialFolderOption selectedSpamSpecialFolderOption;
    public final SpecialFolderOption selectedTrashSpecialFolderOption;
    public final List sentSpecialFolderOptions;
    public final List spamSpecialFolderOptions;
    public final List trashSpecialFolderOptions;

    public SpecialFoldersContract$FormState(List list, List list2, List list3, List list4, List list5, SpecialFolderOption specialFolderOption, SpecialFolderOption specialFolderOption2, SpecialFolderOption specialFolderOption3, SpecialFolderOption specialFolderOption4, SpecialFolderOption specialFolderOption5) {
        list.getClass();
        list2.getClass();
        list3.getClass();
        list4.getClass();
        list5.getClass();
        specialFolderOption.getClass();
        specialFolderOption2.getClass();
        specialFolderOption3.getClass();
        specialFolderOption4.getClass();
        specialFolderOption5.getClass();
        this.archiveSpecialFolderOptions = list;
        this.draftsSpecialFolderOptions = list2;
        this.sentSpecialFolderOptions = list3;
        this.spamSpecialFolderOptions = list4;
        this.trashSpecialFolderOptions = list5;
        this.selectedArchiveSpecialFolderOption = specialFolderOption;
        this.selectedDraftsSpecialFolderOption = specialFolderOption2;
        this.selectedSentSpecialFolderOption = specialFolderOption3;
        this.selectedSpamSpecialFolderOption = specialFolderOption4;
        this.selectedTrashSpecialFolderOption = specialFolderOption5;
    }

    public static SpecialFoldersContract$FormState copy$default(SpecialFoldersContract$FormState specialFoldersContract$FormState, SpecialFolderOption specialFolderOption, SpecialFolderOption specialFolderOption2, SpecialFolderOption specialFolderOption3, SpecialFolderOption specialFolderOption4, SpecialFolderOption specialFolderOption5, int i) {
        List list = specialFoldersContract$FormState.archiveSpecialFolderOptions;
        List list2 = specialFoldersContract$FormState.draftsSpecialFolderOptions;
        List list3 = specialFoldersContract$FormState.sentSpecialFolderOptions;
        List list4 = specialFoldersContract$FormState.spamSpecialFolderOptions;
        List list5 = specialFoldersContract$FormState.trashSpecialFolderOptions;
        if ((i & 32) != 0) {
            specialFolderOption = specialFoldersContract$FormState.selectedArchiveSpecialFolderOption;
        }
        SpecialFolderOption specialFolderOption6 = specialFolderOption;
        if ((i & 64) != 0) {
            specialFolderOption2 = specialFoldersContract$FormState.selectedDraftsSpecialFolderOption;
        }
        SpecialFolderOption specialFolderOption7 = specialFolderOption2;
        if ((i & 128) != 0) {
            specialFolderOption3 = specialFoldersContract$FormState.selectedSentSpecialFolderOption;
        }
        SpecialFolderOption specialFolderOption8 = specialFolderOption3;
        SpecialFolderOption specialFolderOption9 = (i & 256) != 0 ? specialFoldersContract$FormState.selectedSpamSpecialFolderOption : specialFolderOption4;
        SpecialFolderOption specialFolderOption10 = (i & 512) != 0 ? specialFoldersContract$FormState.selectedTrashSpecialFolderOption : specialFolderOption5;
        specialFoldersContract$FormState.getClass();
        list.getClass();
        list2.getClass();
        list3.getClass();
        list4.getClass();
        list5.getClass();
        specialFolderOption6.getClass();
        specialFolderOption7.getClass();
        specialFolderOption8.getClass();
        specialFolderOption9.getClass();
        specialFolderOption10.getClass();
        return new SpecialFoldersContract$FormState(list, list2, list3, list4, list5, specialFolderOption6, specialFolderOption7, specialFolderOption8, specialFolderOption9, specialFolderOption10);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpecialFoldersContract$FormState)) {
            return false;
        }
        SpecialFoldersContract$FormState specialFoldersContract$FormState = (SpecialFoldersContract$FormState) obj;
        return Intrinsics.areEqual(this.archiveSpecialFolderOptions, specialFoldersContract$FormState.archiveSpecialFolderOptions) && Intrinsics.areEqual(this.draftsSpecialFolderOptions, specialFoldersContract$FormState.draftsSpecialFolderOptions) && Intrinsics.areEqual(this.sentSpecialFolderOptions, specialFoldersContract$FormState.sentSpecialFolderOptions) && Intrinsics.areEqual(this.spamSpecialFolderOptions, specialFoldersContract$FormState.spamSpecialFolderOptions) && Intrinsics.areEqual(this.trashSpecialFolderOptions, specialFoldersContract$FormState.trashSpecialFolderOptions) && Intrinsics.areEqual(this.selectedArchiveSpecialFolderOption, specialFoldersContract$FormState.selectedArchiveSpecialFolderOption) && Intrinsics.areEqual(this.selectedDraftsSpecialFolderOption, specialFoldersContract$FormState.selectedDraftsSpecialFolderOption) && Intrinsics.areEqual(this.selectedSentSpecialFolderOption, specialFoldersContract$FormState.selectedSentSpecialFolderOption) && Intrinsics.areEqual(this.selectedSpamSpecialFolderOption, specialFoldersContract$FormState.selectedSpamSpecialFolderOption) && Intrinsics.areEqual(this.selectedTrashSpecialFolderOption, specialFoldersContract$FormState.selectedTrashSpecialFolderOption);
    }

    public final int hashCode() {
        return this.selectedTrashSpecialFolderOption.hashCode() + ((this.selectedSpamSpecialFolderOption.hashCode() + ((this.selectedSentSpecialFolderOption.hashCode() + ((this.selectedDraftsSpecialFolderOption.hashCode() + ((this.selectedArchiveSpecialFolderOption.hashCode() + CameraDevices$CC.m(this.trashSpecialFolderOptions, CameraDevices$CC.m(this.spamSpecialFolderOptions, CameraDevices$CC.m(this.sentSpecialFolderOptions, CameraDevices$CC.m(this.draftsSpecialFolderOptions, this.archiveSpecialFolderOptions.hashCode() * 31, 31), 31), 31), 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "FormState(archiveSpecialFolderOptions=" + this.archiveSpecialFolderOptions + ", draftsSpecialFolderOptions=" + this.draftsSpecialFolderOptions + ", sentSpecialFolderOptions=" + this.sentSpecialFolderOptions + ", spamSpecialFolderOptions=" + this.spamSpecialFolderOptions + ", trashSpecialFolderOptions=" + this.trashSpecialFolderOptions + ", selectedArchiveSpecialFolderOption=" + this.selectedArchiveSpecialFolderOption + ", selectedDraftsSpecialFolderOption=" + this.selectedDraftsSpecialFolderOption + ", selectedSentSpecialFolderOption=" + this.selectedSentSpecialFolderOption + ", selectedSpamSpecialFolderOption=" + this.selectedSpamSpecialFolderOption + ", selectedTrashSpecialFolderOption=" + this.selectedTrashSpecialFolderOption + ")";
    }
}
