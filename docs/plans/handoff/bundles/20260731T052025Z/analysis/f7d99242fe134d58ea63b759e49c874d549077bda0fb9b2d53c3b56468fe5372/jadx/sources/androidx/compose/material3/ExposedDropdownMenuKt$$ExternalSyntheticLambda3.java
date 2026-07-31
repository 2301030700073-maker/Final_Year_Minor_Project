package androidx.compose.material3;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.feature.account.edit.ui.server.settings.save.SaveServerSettingsContract$Event;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$Event;
import app.k9mail.feature.account.server.certificate.ui.ServerCertificateErrorContract$Event;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsContract$Event;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsContract$Event;
import app.k9mail.feature.account.server.validation.ui.ServerValidationContract$Event;
import app.k9mail.feature.account.setup.navigation.AccountSetupRoute;
import app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryContract$Event;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExposedDropdownMenuKt$$ExternalSyntheticLambda3 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;

    public /* synthetic */ ExposedDropdownMenuKt$$ExternalSyntheticLambda3(int i, Function1 function1) {
        this.$r8$classId = i;
        this.f$0 = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        ServerCertificateErrorContract$Event.OnBackClicked onBackClicked = ServerCertificateErrorContract$Event.OnBackClicked.INSTANCE;
        SaveServerSettingsContract$Event.OnBackClicked onBackClicked2 = SaveServerSettingsContract$Event.OnBackClicked.INSTANCE;
        IncomingServerSettingsContract$Event.OnBackClicked onBackClicked3 = IncomingServerSettingsContract$Event.OnBackClicked.INSTANCE;
        OutgoingServerSettingsContract$Event.OnBackClicked onBackClicked4 = OutgoingServerSettingsContract$Event.OnBackClicked.INSTANCE;
        Unit unit = Unit.INSTANCE;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                function1.invoke(Boolean.FALSE);
                break;
            case 1:
                function1.invoke(Boolean.FALSE);
                break;
            case 2:
                function1.invoke(onBackClicked2);
                break;
            case 3:
                function1.invoke(onBackClicked2);
                break;
            case 4:
                function1.invoke(onBackClicked2);
                break;
            case 5:
                function1.invoke(AccountOAuthContract$Event.OnBackClicked.INSTANCE$1);
                break;
            case 6:
                function1.invoke(AccountOAuthContract$Event.OnBackClicked.INSTANCE$2);
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                function1.invoke(onBackClicked);
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                function1.invoke(ServerCertificateErrorContract$Event.OnShowAdvancedClicked.INSTANCE);
                break;
            case 9:
                function1.invoke(onBackClicked);
                break;
            case 10:
                function1.invoke(ServerCertificateErrorContract$Event.OnCertificateAcceptedClicked.INSTANCE);
                break;
            case 11:
                function1.invoke(onBackClicked3);
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                function1.invoke(IncomingServerSettingsContract$Event.OnNextClicked.INSTANCE);
                break;
            case 13:
                function1.invoke(onBackClicked3);
                break;
            case 14:
                function1.invoke(onBackClicked3);
                break;
            case OffsetKt.Horizontal /* 15 */:
                function1.invoke(onBackClicked4);
                break;
            case 16:
                function1.invoke(onBackClicked4);
                break;
            case 17:
                function1.invoke(OutgoingServerSettingsContract$Event.OnNextClicked.INSTANCE);
                break;
            case 18:
                function1.invoke(onBackClicked4);
                break;
            case 19:
                function1.invoke(ServerValidationContract$Event.OnBackClicked.INSTANCE$4);
                break;
            case 20:
                function1.invoke(ServerValidationContract$Event.OnBackClicked.INSTANCE);
                break;
            case 21:
                function1.invoke(ServerValidationContract$Event.OnBackClicked.INSTANCE);
                break;
            case 22:
                function1.invoke(ServerValidationContract$Event.OnBackClicked.INSTANCE$2);
                break;
            case 23:
                function1.invoke(ServerValidationContract$Event.OnBackClicked.INSTANCE);
                break;
            case 24:
                function1.invoke(ServerValidationContract$Event.OnBackClicked.INSTANCE);
                break;
            case 25:
                function1.invoke(ServerValidationContract$Event.OnBackClicked.INSTANCE);
                break;
            case 26:
                function1.invoke(AccountSetupRoute.ThundermailSignIn.INSTANCE);
                break;
            case 27:
                function1.invoke(AccountSetupRoute.ThundermailScanQrCode.INSTANCE);
                break;
            case 28:
                function1.invoke(AccountAutoDiscoveryContract$Event.OnRetryClicked.INSTANCE);
                break;
            default:
                function1.invoke(AccountAutoDiscoveryContract$Event.OnNextClicked.INSTANCE);
                break;
        }
        return unit;
    }
}
