package app.k9mail.feature.account.setup.ui.autodiscovery;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import app.k9mail.autodiscovery.api.AutoDiscoveryResult;
import app.k9mail.core.ui.compose.designsystem.molecule.LoadingErrorState;
import app.k9mail.feature.account.common.domain.entity.AuthorizationState;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.validation.input.BooleanInputField;
import net.thunderbird.core.validation.input.StringInputField;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountAutoDiscoveryContract$State implements LoadingErrorState {
    public final AuthorizationState authorizationState;
    public final AutoDiscoveryResult.Settings autoDiscoverySettings;
    public final AccountAutoDiscoveryContract$ConfigStep configStep;
    public final BooleanInputField configurationApproved;
    public final StringInputField emailAddress;
    public final AccountAutoDiscoveryContract$Error error;
    public final boolean isLoading;
    public final boolean isNextButtonVisible;
    public final StringInputField password;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ AccountAutoDiscoveryContract$State(net.thunderbird.core.validation.input.StringInputField r13, int r14) {
        /*
            r12 = this;
            r14 = r14 & 2
            r0 = 7
            r1 = 0
            if (r14 == 0) goto Lb
            net.thunderbird.core.validation.input.StringInputField r13 = new net.thunderbird.core.validation.input.StringInputField
            r13.<init>(r1, r0)
        Lb:
            r4 = r13
            net.thunderbird.core.validation.input.StringInputField r5 = new net.thunderbird.core.validation.input.StringInputField
            r5.<init>(r1, r0)
            net.thunderbird.core.validation.input.BooleanInputField r7 = new net.thunderbird.core.validation.input.BooleanInputField
            r13 = 0
            r7.<init>(r1, r1, r13)
            r10 = 0
            r11 = 1
            app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryContract$ConfigStep r3 = app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryContract$ConfigStep.EMAIL_ADDRESS
            r6 = 0
            r8 = 0
            r9 = 0
            r2 = r12
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryContract$State.<init>(net.thunderbird.core.validation.input.StringInputField, int):void");
    }

    public static AccountAutoDiscoveryContract$State copy$default(AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State, AccountAutoDiscoveryContract$ConfigStep accountAutoDiscoveryContract$ConfigStep, StringInputField stringInputField, StringInputField stringInputField2, AutoDiscoveryResult.Settings settings, BooleanInputField booleanInputField, AuthorizationState authorizationState, AccountAutoDiscoveryContract$Error accountAutoDiscoveryContract$Error, boolean z, boolean z2, int i) {
        if ((i & 1) != 0) {
            accountAutoDiscoveryContract$ConfigStep = accountAutoDiscoveryContract$State.configStep;
        }
        AccountAutoDiscoveryContract$ConfigStep accountAutoDiscoveryContract$ConfigStep2 = accountAutoDiscoveryContract$ConfigStep;
        if ((i & 2) != 0) {
            stringInputField = accountAutoDiscoveryContract$State.emailAddress;
        }
        StringInputField stringInputField3 = stringInputField;
        if ((i & 4) != 0) {
            stringInputField2 = accountAutoDiscoveryContract$State.password;
        }
        StringInputField stringInputField4 = stringInputField2;
        if ((i & 8) != 0) {
            settings = accountAutoDiscoveryContract$State.autoDiscoverySettings;
        }
        AutoDiscoveryResult.Settings settings2 = settings;
        if ((i & 16) != 0) {
            booleanInputField = accountAutoDiscoveryContract$State.configurationApproved;
        }
        BooleanInputField booleanInputField2 = booleanInputField;
        AuthorizationState authorizationState2 = (i & 32) != 0 ? accountAutoDiscoveryContract$State.authorizationState : authorizationState;
        accountAutoDiscoveryContract$State.getClass();
        AccountAutoDiscoveryContract$Error accountAutoDiscoveryContract$Error2 = (i & 128) != 0 ? accountAutoDiscoveryContract$State.error : accountAutoDiscoveryContract$Error;
        boolean z3 = (i & 256) != 0 ? accountAutoDiscoveryContract$State.isLoading : z;
        boolean z4 = (i & 512) != 0 ? accountAutoDiscoveryContract$State.isNextButtonVisible : z2;
        accountAutoDiscoveryContract$State.getClass();
        accountAutoDiscoveryContract$ConfigStep2.getClass();
        stringInputField3.getClass();
        stringInputField4.getClass();
        booleanInputField2.getClass();
        return new AccountAutoDiscoveryContract$State(accountAutoDiscoveryContract$ConfigStep2, stringInputField3, stringInputField4, settings2, booleanInputField2, authorizationState2, accountAutoDiscoveryContract$Error2, z3, z4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccountAutoDiscoveryContract$State)) {
            return false;
        }
        AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State = (AccountAutoDiscoveryContract$State) obj;
        return this.configStep == accountAutoDiscoveryContract$State.configStep && Intrinsics.areEqual(this.emailAddress, accountAutoDiscoveryContract$State.emailAddress) && Intrinsics.areEqual(this.password, accountAutoDiscoveryContract$State.password) && Intrinsics.areEqual(this.autoDiscoverySettings, accountAutoDiscoveryContract$State.autoDiscoverySettings) && Intrinsics.areEqual(this.configurationApproved, accountAutoDiscoveryContract$State.configurationApproved) && Intrinsics.areEqual(this.authorizationState, accountAutoDiscoveryContract$State.authorizationState) && Intrinsics.areEqual(this.error, accountAutoDiscoveryContract$State.error) && this.isLoading == accountAutoDiscoveryContract$State.isLoading && this.isNextButtonVisible == accountAutoDiscoveryContract$State.isNextButtonVisible;
    }

    @Override // app.k9mail.core.ui.compose.designsystem.molecule.LoadingErrorState
    public final Object getError() {
        return this.error;
    }

    public final int hashCode() {
        int hashCode = (this.password.hashCode() + ((this.emailAddress.hashCode() + (this.configStep.hashCode() * 31)) * 31)) * 31;
        AutoDiscoveryResult.Settings settings = this.autoDiscoverySettings;
        int hashCode2 = (this.configurationApproved.hashCode() + ((hashCode + (settings == null ? 0 : settings.hashCode())) * 31)) * 31;
        AuthorizationState authorizationState = this.authorizationState;
        int hashCode3 = (((hashCode2 + (authorizationState == null ? 0 : authorizationState.hashCode())) * 31) + 1237) * 31;
        AccountAutoDiscoveryContract$Error accountAutoDiscoveryContract$Error = this.error;
        return ((((hashCode3 + (accountAutoDiscoveryContract$Error != null ? accountAutoDiscoveryContract$Error.hashCode() : 0)) * 31) + (this.isLoading ? 1231 : 1237)) * 31) + (this.isNextButtonVisible ? 1231 : 1237);
    }

    @Override // app.k9mail.core.ui.compose.designsystem.molecule.LoadingErrorState
    public final boolean isLoading() {
        return this.isLoading;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("State(configStep=");
        sb.append(this.configStep);
        sb.append(", emailAddress=");
        sb.append(this.emailAddress);
        sb.append(", password=");
        sb.append(this.password);
        sb.append(", autoDiscoverySettings=");
        sb.append(this.autoDiscoverySettings);
        sb.append(", configurationApproved=");
        sb.append(this.configurationApproved);
        sb.append(", authorizationState=");
        sb.append(this.authorizationState);
        sb.append(", isSuccess=false, error=");
        sb.append(this.error);
        sb.append(", isLoading=");
        sb.append(this.isLoading);
        sb.append(", isNextButtonVisible=");
        return CameraDevices$CC.m(")", sb, this.isNextButtonVisible);
    }

    public AccountAutoDiscoveryContract$State(AccountAutoDiscoveryContract$ConfigStep accountAutoDiscoveryContract$ConfigStep, StringInputField stringInputField, StringInputField stringInputField2, AutoDiscoveryResult.Settings settings, BooleanInputField booleanInputField, AuthorizationState authorizationState, AccountAutoDiscoveryContract$Error accountAutoDiscoveryContract$Error, boolean z, boolean z2) {
        stringInputField.getClass();
        this.configStep = accountAutoDiscoveryContract$ConfigStep;
        this.emailAddress = stringInputField;
        this.password = stringInputField2;
        this.autoDiscoverySettings = settings;
        this.configurationApproved = booleanInputField;
        this.authorizationState = authorizationState;
        this.error = accountAutoDiscoveryContract$Error;
        this.isLoading = z;
        this.isNextButtonVisible = z2;
    }
}
