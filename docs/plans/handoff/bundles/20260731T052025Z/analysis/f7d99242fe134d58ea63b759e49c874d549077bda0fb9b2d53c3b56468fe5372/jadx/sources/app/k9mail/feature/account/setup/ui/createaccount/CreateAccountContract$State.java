package app.k9mail.feature.account.setup.ui.createaccount;

import app.k9mail.core.ui.compose.designsystem.molecule.LoadingErrorState;
import app.k9mail.feature.account.setup.AccountSetupExternalContract$AccountCreator$AccountCreatorResult;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CreateAccountContract$State implements LoadingErrorState {
    public final AccountSetupExternalContract$AccountCreator$AccountCreatorResult.Error error;
    public final boolean isLoading;

    public CreateAccountContract$State(boolean z, AccountSetupExternalContract$AccountCreator$AccountCreatorResult.Error error) {
        this.isLoading = z;
        this.error = error;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CreateAccountContract$State)) {
            return false;
        }
        CreateAccountContract$State createAccountContract$State = (CreateAccountContract$State) obj;
        return this.isLoading == createAccountContract$State.isLoading && Intrinsics.areEqual(this.error, createAccountContract$State.error);
    }

    @Override // app.k9mail.core.ui.compose.designsystem.molecule.LoadingErrorState
    public final Object getError() {
        return this.error;
    }

    public final int hashCode() {
        int i = (this.isLoading ? 1231 : 1237) * 31;
        AccountSetupExternalContract$AccountCreator$AccountCreatorResult.Error error = this.error;
        return i + (error == null ? 0 : error.message.hashCode());
    }

    @Override // app.k9mail.core.ui.compose.designsystem.molecule.LoadingErrorState
    public final boolean isLoading() {
        return this.isLoading;
    }

    public final String toString() {
        return "State(isLoading=" + this.isLoading + ", error=" + this.error + ")";
    }
}
