package com.fsck.k9.ui.settings;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryContract$Event;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountContract$Event;
import app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsContract$Event;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsContract$Event;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$Event;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerContract$Event;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsContract$Event;
import com.fsck.k9.activity.setup.AccountSetupCompositionContract$Event;
import com.fsck.k9.ui.settings.AboutContract$Event;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsContract$Event;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AboutFragment$$ExternalSyntheticLambda2 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;

    public /* synthetic */ AboutFragment$$ExternalSyntheticLambda2(int i, Function1 function1) {
        this.$r8$classId = i;
        this.f$0 = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        AccountAutoDiscoveryContract$Event.OnBackClicked onBackClicked = AccountAutoDiscoveryContract$Event.OnBackClicked.INSTANCE;
        CreateAccountContract$Event.OnBackClicked onBackClicked2 = CreateAccountContract$Event.OnBackClicked.INSTANCE;
        DisplayOptionsContract$Event.OnBackClicked onBackClicked3 = DisplayOptionsContract$Event.OnBackClicked.INSTANCE;
        SyncOptionsContract$Event.OnBackClicked onBackClicked4 = SyncOptionsContract$Event.OnBackClicked.INSTANCE;
        SpecialFoldersContract$Event.OnBackClicked onBackClicked5 = SpecialFoldersContract$Event.OnBackClicked.INSTANCE;
        FetchingMailSettingsContract$Event.OnBackPressed onBackPressed = FetchingMailSettingsContract$Event.OnBackPressed.INSTANCE;
        PermissionsContract$Event.NextClicked nextClicked = PermissionsContract$Event.NextClicked.INSTANCE;
        Unit unit = Unit.INSTANCE;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                function1.invoke(AboutContract$Event.OnChangeLogClick.INSTANCE);
                break;
            case 1:
                function1.invoke(onBackClicked);
                break;
            case 2:
                function1.invoke(AccountAutoDiscoveryContract$Event.OnEditConfigurationClicked.INSTANCE);
                break;
            case 3:
                function1.invoke(onBackClicked);
                break;
            case 4:
                function1.invoke(onBackClicked2);
                break;
            case 5:
                function1.invoke(onBackClicked2);
                break;
            case 6:
                function1.invoke(onBackClicked3);
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                function1.invoke(DisplayOptionsContract$Event.OnNextClicked.INSTANCE);
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                function1.invoke(onBackClicked3);
                break;
            case 9:
                function1.invoke(onBackClicked4);
                break;
            case 10:
                function1.invoke(SyncOptionsContract$Event.OnNextClicked.INSTANCE);
                break;
            case 11:
                function1.invoke(onBackClicked4);
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                function1.invoke(SpecialFoldersContract$Event.OnRetryClicked.INSTANCE);
                break;
            case 13:
                function1.invoke(onBackClicked5);
                break;
            case 14:
                function1.invoke(SpecialFoldersContract$Event.OnNextClicked.INSTANCE);
                break;
            case OffsetKt.Horizontal /* 15 */:
                function1.invoke(onBackClicked5);
                break;
            case 16:
                function1.invoke(QrCodeScannerContract$Event.DoneClicked.INSTANCE);
                break;
            case 17:
                function1.invoke(QrCodeScannerContract$Event.GoToSettingsClicked.INSTANCE);
                break;
            case 18:
                function1.invoke(QrCodeScannerContract$Event.ReturnedFromAppInfoScreen.INSTANCE);
                break;
            case 19:
                function1.invoke(nextClicked);
                break;
            case 20:
                function1.invoke(nextClicked);
                break;
            case 21:
                function1.invoke(PermissionsContract$Event.AllowContactsPermissionClicked.INSTANCE);
                break;
            case 22:
                function1.invoke(PermissionsContract$Event.AllowNotificationsPermissionClicked.INSTANCE);
                break;
            case 23:
                function1.invoke(nextClicked);
                break;
            case 24:
                function1.invoke(AccountSetupCompositionContract$Event.SavePressed.INSTANCE);
                break;
            case 25:
                function1.invoke(AccountSetupCompositionContract$Event.BackPressed.INSTANCE);
                break;
            case 26:
                function1.invoke(FetchingMailSettingsContract$Event.OnAdvanceClick.INSTANCE);
                break;
            case 27:
                function1.invoke(FetchingMailSettingsContract$Event.OnInComingServerClick.INSTANCE);
                break;
            case 28:
                function1.invoke(onBackPressed);
                break;
            default:
                function1.invoke(onBackPressed);
                break;
        }
        return unit;
    }
}
