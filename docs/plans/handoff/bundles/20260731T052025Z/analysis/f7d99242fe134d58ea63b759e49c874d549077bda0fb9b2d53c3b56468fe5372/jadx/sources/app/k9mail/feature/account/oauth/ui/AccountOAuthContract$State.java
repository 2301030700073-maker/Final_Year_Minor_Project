package app.k9mail.feature.account.oauth.ui;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import app.k9mail.feature.account.common.ui.WizardNavigationBarState;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountOAuthContract$State {
    public final String emailAddress;
    public final AccountOAuthContract$Error error;
    public final String hostname;
    public final boolean isGoogleSignIn;
    public final boolean isLoading;
    public final WizardNavigationBarState wizardNavigationBarState;

    public /* synthetic */ AccountOAuthContract$State(int i, String str, String str2) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, new WizardNavigationBarState(14, false, false, false), false, null, false);
    }

    public static AccountOAuthContract$State copy$default(AccountOAuthContract$State accountOAuthContract$State, boolean z, AccountOAuthContract$Error accountOAuthContract$Error, boolean z2, int i) {
        String str = accountOAuthContract$State.hostname;
        String str2 = accountOAuthContract$State.emailAddress;
        WizardNavigationBarState wizardNavigationBarState = accountOAuthContract$State.wizardNavigationBarState;
        if ((i & 8) != 0) {
            z = accountOAuthContract$State.isGoogleSignIn;
        }
        boolean z3 = z;
        if ((i & 16) != 0) {
            accountOAuthContract$Error = accountOAuthContract$State.error;
        }
        AccountOAuthContract$Error accountOAuthContract$Error2 = accountOAuthContract$Error;
        if ((i & 32) != 0) {
            z2 = accountOAuthContract$State.isLoading;
        }
        accountOAuthContract$State.getClass();
        str.getClass();
        str2.getClass();
        wizardNavigationBarState.getClass();
        return new AccountOAuthContract$State(str, str2, wizardNavigationBarState, z3, accountOAuthContract$Error2, z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccountOAuthContract$State)) {
            return false;
        }
        AccountOAuthContract$State accountOAuthContract$State = (AccountOAuthContract$State) obj;
        return Intrinsics.areEqual(this.hostname, accountOAuthContract$State.hostname) && Intrinsics.areEqual(this.emailAddress, accountOAuthContract$State.emailAddress) && Intrinsics.areEqual(this.wizardNavigationBarState, accountOAuthContract$State.wizardNavigationBarState) && this.isGoogleSignIn == accountOAuthContract$State.isGoogleSignIn && Intrinsics.areEqual(this.error, accountOAuthContract$State.error) && this.isLoading == accountOAuthContract$State.isLoading;
    }

    public final int hashCode() {
        int hashCode = (((this.wizardNavigationBarState.hashCode() + Modifier.CC.m(this.hostname.hashCode() * 31, this.emailAddress, 31)) * 31) + (this.isGoogleSignIn ? 1231 : 1237)) * 31;
        AccountOAuthContract$Error accountOAuthContract$Error = this.error;
        return ((hashCode + (accountOAuthContract$Error == null ? 0 : accountOAuthContract$Error.hashCode())) * 31) + (this.isLoading ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("State(hostname=", this.hostname, ", emailAddress=", this.emailAddress, ", wizardNavigationBarState=");
        m.append(this.wizardNavigationBarState);
        m.append(", isGoogleSignIn=");
        m.append(this.isGoogleSignIn);
        m.append(", error=");
        m.append(this.error);
        m.append(", isLoading=");
        m.append(this.isLoading);
        m.append(")");
        return m.toString();
    }

    public AccountOAuthContract$State(String str, String str2, WizardNavigationBarState wizardNavigationBarState, boolean z, AccountOAuthContract$Error accountOAuthContract$Error, boolean z2) {
        str.getClass();
        str2.getClass();
        this.hostname = str;
        this.emailAddress = str2;
        this.wizardNavigationBarState = wizardNavigationBarState;
        this.isGoogleSignIn = z;
        this.error = accountOAuthContract$Error;
        this.isLoading = z2;
    }
}
