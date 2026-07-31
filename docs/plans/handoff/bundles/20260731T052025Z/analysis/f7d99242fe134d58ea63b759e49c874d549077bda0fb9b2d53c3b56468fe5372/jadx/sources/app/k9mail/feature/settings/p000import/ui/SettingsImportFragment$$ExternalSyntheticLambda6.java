package app.k9mail.feature.settings.p000import.ui;

import android.content.Context;
import android.content.Intent;
import app.k9mail.feature.settings.p000import.ui.Action;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SettingsImportFragment$$ExternalSyntheticLambda6 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SettingsImportFragment f$0;

    public /* synthetic */ SettingsImportFragment$$ExternalSyntheticLambda6(SettingsImportFragment settingsImportFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = settingsImportFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        SettingsImportFragment settingsImportFragment = this.f$0;
        switch (i) {
            case 0:
                Action action = (Action) obj;
                action.getClass();
                if (action instanceof Action.Close) {
                    Util.setFragmentResult(settingsImportFragment, "settings_import", Util.bundleOf(new Pair("accountImported", Boolean.valueOf(((Action.Close) action).importSuccess))));
                    try {
                        MathKt.findNavController(settingsImportFragment).popBackStack();
                        return unit;
                    } catch (IllegalStateException unused) {
                        return unit;
                    }
                }
                if (action instanceof Action.PickDocument) {
                    settingsImportFragment.pickDocumentLauncher.launch("*/*");
                    return unit;
                }
                if (action instanceof Action.ScanQrCode) {
                    settingsImportFragment.qrCodeScannerLauncher.launch(unit);
                    return unit;
                }
                if (action instanceof Action.PickApp) {
                    new PickAppDialogFragment().show(settingsImportFragment.getParentFragmentManager(), "pick_app");
                    return unit;
                }
                if (!(action instanceof Action.PasswordPrompt)) {
                    if (!(action instanceof Action.StartAuthorization)) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return null;
                    }
                    int i2 = OAuthFlowActivity.$r8$clinit;
                    Context requireContext = settingsImportFragment.requireContext();
                    String str = ((Action.StartAuthorization) action).accountUuid;
                    Intent intent = new Intent(requireContext, (Class<?>) OAuthFlowActivity.class);
                    intent.putExtra("accountUuid", str);
                    settingsImportFragment.startActivityForResult(intent, 2);
                    return unit;
                }
                Action.PasswordPrompt passwordPrompt = (Action.PasswordPrompt) action;
                String str2 = passwordPrompt.accountUuid;
                String str3 = passwordPrompt.accountName;
                boolean z = passwordPrompt.inputIncomingServerPassword;
                String str4 = passwordPrompt.incomingServerName;
                boolean z2 = passwordPrompt.inputOutgoingServerPassword;
                String str5 = passwordPrompt.outgoingServerName;
                str3.getClass();
                PasswordPromptDialogFragment passwordPromptDialogFragment = new PasswordPromptDialogFragment();
                passwordPromptDialogFragment.setArguments(Util.bundleOf(new Pair("accountUuid", str2), new Pair("accountName", str3), new Pair("inputIncomingServerPassword", Boolean.valueOf(z)), new Pair("incomingServerName", str4), new Pair("inputOutgoingServerPassword", Boolean.valueOf(z2)), new Pair("outgoingServerName", str5)));
                passwordPromptDialogFragment.setTargetFragment(1, settingsImportFragment);
                passwordPromptDialogFragment.show(settingsImportFragment.getParentFragmentManager(), null);
                return unit;
            default:
                settingsImportFragment.getViewModel().onSettingsListItemClicked(((Integer) obj).intValue());
                return unit;
        }
    }
}
