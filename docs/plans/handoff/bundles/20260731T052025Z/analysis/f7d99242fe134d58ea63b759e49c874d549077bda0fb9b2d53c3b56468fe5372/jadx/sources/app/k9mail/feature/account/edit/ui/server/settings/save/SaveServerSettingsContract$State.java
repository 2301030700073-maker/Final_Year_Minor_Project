package app.k9mail.feature.account.edit.ui.server.settings.save;

import app.k9mail.core.ui.compose.designsystem.molecule.LoadingErrorState;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SaveServerSettingsContract$State implements LoadingErrorState {
    public final SaveServerSettingsContract$Failure$SaveServerSettingsFailed error;
    public final boolean isLoading;

    public SaveServerSettingsContract$State(SaveServerSettingsContract$Failure$SaveServerSettingsFailed saveServerSettingsContract$Failure$SaveServerSettingsFailed, boolean z) {
        this.error = saveServerSettingsContract$Failure$SaveServerSettingsFailed;
        this.isLoading = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SaveServerSettingsContract$State)) {
            return false;
        }
        SaveServerSettingsContract$State saveServerSettingsContract$State = (SaveServerSettingsContract$State) obj;
        return Intrinsics.areEqual(this.error, saveServerSettingsContract$State.error) && this.isLoading == saveServerSettingsContract$State.isLoading;
    }

    @Override // app.k9mail.core.ui.compose.designsystem.molecule.LoadingErrorState
    public final Object getError() {
        return this.error;
    }

    public final int hashCode() {
        SaveServerSettingsContract$Failure$SaveServerSettingsFailed saveServerSettingsContract$Failure$SaveServerSettingsFailed = this.error;
        return ((saveServerSettingsContract$Failure$SaveServerSettingsFailed == null ? 0 : saveServerSettingsContract$Failure$SaveServerSettingsFailed.message.hashCode()) * 31) + (this.isLoading ? 1231 : 1237);
    }

    @Override // app.k9mail.core.ui.compose.designsystem.molecule.LoadingErrorState
    public final boolean isLoading() {
        return this.isLoading;
    }

    public final String toString() {
        return "State(error=" + this.error + ", isLoading=" + this.isLoading + ")";
    }

    public /* synthetic */ SaveServerSettingsContract$State() {
        this(null, true);
    }
}
