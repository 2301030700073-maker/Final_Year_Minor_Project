package app.k9mail.feature.account.setup.ui.autodiscovery;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountAutoDiscoveryContract$ConfigStep {
    public static final /* synthetic */ AccountAutoDiscoveryContract$ConfigStep[] $VALUES;
    public static final AccountAutoDiscoveryContract$ConfigStep EMAIL_ADDRESS;
    public static final AccountAutoDiscoveryContract$ConfigStep MANUAL_SETUP;
    public static final AccountAutoDiscoveryContract$ConfigStep OAUTH;
    public static final AccountAutoDiscoveryContract$ConfigStep PASSWORD;

    static {
        AccountAutoDiscoveryContract$ConfigStep accountAutoDiscoveryContract$ConfigStep = new AccountAutoDiscoveryContract$ConfigStep("EMAIL_ADDRESS", 0);
        EMAIL_ADDRESS = accountAutoDiscoveryContract$ConfigStep;
        AccountAutoDiscoveryContract$ConfigStep accountAutoDiscoveryContract$ConfigStep2 = new AccountAutoDiscoveryContract$ConfigStep("OAUTH", 1);
        OAUTH = accountAutoDiscoveryContract$ConfigStep2;
        AccountAutoDiscoveryContract$ConfigStep accountAutoDiscoveryContract$ConfigStep3 = new AccountAutoDiscoveryContract$ConfigStep("PASSWORD", 2);
        PASSWORD = accountAutoDiscoveryContract$ConfigStep3;
        AccountAutoDiscoveryContract$ConfigStep accountAutoDiscoveryContract$ConfigStep4 = new AccountAutoDiscoveryContract$ConfigStep("MANUAL_SETUP", 3);
        MANUAL_SETUP = accountAutoDiscoveryContract$ConfigStep4;
        $VALUES = new AccountAutoDiscoveryContract$ConfigStep[]{accountAutoDiscoveryContract$ConfigStep, accountAutoDiscoveryContract$ConfigStep2, accountAutoDiscoveryContract$ConfigStep3, accountAutoDiscoveryContract$ConfigStep4};
    }

    public static AccountAutoDiscoveryContract$ConfigStep valueOf(String str) {
        return (AccountAutoDiscoveryContract$ConfigStep) Enum.valueOf(AccountAutoDiscoveryContract$ConfigStep.class, str);
    }

    public static AccountAutoDiscoveryContract$ConfigStep[] values() {
        return (AccountAutoDiscoveryContract$ConfigStep[]) $VALUES.clone();
    }
}
