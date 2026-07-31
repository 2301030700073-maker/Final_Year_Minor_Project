package app.k9mail.feature.account.setup.ui.specialfolders;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import app.k9mail.core.ui.compose.designsystem.molecule.LoadingErrorState;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SpecialFoldersContract$State implements LoadingErrorState {
    public final SpecialFoldersContract$Failure$LoadFoldersFailed error;
    public final SpecialFoldersContract$FormState formState;
    public final boolean isLoading;
    public final boolean isManualSetup;
    public final boolean isSuccess;

    public SpecialFoldersContract$State(SpecialFoldersContract$FormState specialFoldersContract$FormState, boolean z, boolean z2, SpecialFoldersContract$Failure$LoadFoldersFailed specialFoldersContract$Failure$LoadFoldersFailed, boolean z3) {
        this.formState = specialFoldersContract$FormState;
        this.isManualSetup = z;
        this.isSuccess = z2;
        this.error = specialFoldersContract$Failure$LoadFoldersFailed;
        this.isLoading = z3;
    }

    public static SpecialFoldersContract$State copy$default(SpecialFoldersContract$State specialFoldersContract$State, SpecialFoldersContract$FormState specialFoldersContract$FormState, boolean z, SpecialFoldersContract$Failure$LoadFoldersFailed specialFoldersContract$Failure$LoadFoldersFailed, boolean z2, int i) {
        if ((i & 1) != 0) {
            specialFoldersContract$FormState = specialFoldersContract$State.formState;
        }
        SpecialFoldersContract$FormState specialFoldersContract$FormState2 = specialFoldersContract$FormState;
        boolean z3 = (i & 2) != 0 ? specialFoldersContract$State.isManualSetup : true;
        if ((i & 4) != 0) {
            z = specialFoldersContract$State.isSuccess;
        }
        boolean z4 = z;
        if ((i & 8) != 0) {
            specialFoldersContract$Failure$LoadFoldersFailed = specialFoldersContract$State.error;
        }
        SpecialFoldersContract$Failure$LoadFoldersFailed specialFoldersContract$Failure$LoadFoldersFailed2 = specialFoldersContract$Failure$LoadFoldersFailed;
        if ((i & 16) != 0) {
            z2 = specialFoldersContract$State.isLoading;
        }
        specialFoldersContract$State.getClass();
        return new SpecialFoldersContract$State(specialFoldersContract$FormState2, z3, z4, specialFoldersContract$Failure$LoadFoldersFailed2, z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpecialFoldersContract$State)) {
            return false;
        }
        SpecialFoldersContract$State specialFoldersContract$State = (SpecialFoldersContract$State) obj;
        return this.formState.equals(specialFoldersContract$State.formState) && this.isManualSetup == specialFoldersContract$State.isManualSetup && this.isSuccess == specialFoldersContract$State.isSuccess && Intrinsics.areEqual(this.error, specialFoldersContract$State.error) && this.isLoading == specialFoldersContract$State.isLoading;
    }

    @Override // app.k9mail.core.ui.compose.designsystem.molecule.LoadingErrorState
    public final Object getError() {
        return this.error;
    }

    public final int hashCode() {
        int hashCode = ((((this.formState.hashCode() * 31) + (this.isManualSetup ? 1231 : 1237)) * 31) + (this.isSuccess ? 1231 : 1237)) * 31;
        SpecialFoldersContract$Failure$LoadFoldersFailed specialFoldersContract$Failure$LoadFoldersFailed = this.error;
        return ((hashCode + (specialFoldersContract$Failure$LoadFoldersFailed == null ? 0 : specialFoldersContract$Failure$LoadFoldersFailed.hashCode())) * 31) + (this.isLoading ? 1231 : 1237);
    }

    @Override // app.k9mail.core.ui.compose.designsystem.molecule.LoadingErrorState
    public final boolean isLoading() {
        return this.isLoading;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("State(formState=");
        sb.append(this.formState);
        sb.append(", isManualSetup=");
        sb.append(this.isManualSetup);
        sb.append(", isSuccess=");
        sb.append(this.isSuccess);
        sb.append(", error=");
        sb.append(this.error);
        sb.append(", isLoading=");
        return CameraDevices$CC.m(")", sb, this.isLoading);
    }
}
