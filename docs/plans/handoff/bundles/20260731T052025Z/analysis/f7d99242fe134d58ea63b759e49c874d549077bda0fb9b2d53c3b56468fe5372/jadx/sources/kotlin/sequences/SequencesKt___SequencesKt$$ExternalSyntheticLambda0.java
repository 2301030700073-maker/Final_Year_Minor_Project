package kotlin.sequences;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.feature.account.common.domain.entity.SpecialFolderOption;
import app.k9mail.feature.account.oauth.domain.entity.OAuthResult;
import app.k9mail.feature.account.server.validation.ui.ServerValidationContract$Event;
import app.k9mail.feature.account.setup.domain.entity.EmailCheckFrequency;
import app.k9mail.feature.account.setup.domain.entity.EmailDisplayCount;
import app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryContract$Event;
import app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsContract$Event;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsContract$Event;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$Event;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$FormEvent;
import com.fsck.k9.activity.setup.AccountSetupComposition;
import com.fsck.k9.activity.setup.AccountSetupCompositionContract$Event;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SequencesKt___SequencesKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;

    public /* synthetic */ SequencesKt___SequencesKt$$ExternalSyntheticLambda0(int i, Function1 function1) {
        this.$r8$classId = i;
        this.f$0 = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                function1.invoke(obj);
                break;
            case 1:
                ServerValidationContract$Event serverValidationContract$Event = (ServerValidationContract$Event) obj;
                serverValidationContract$Event.getClass();
                function1.invoke(serverValidationContract$Event);
                break;
            case 2:
                ServerValidationContract$Event serverValidationContract$Event2 = (ServerValidationContract$Event) obj;
                serverValidationContract$Event2.getClass();
                function1.invoke(serverValidationContract$Event2);
                break;
            case 3:
                String str = (String) obj;
                str.getClass();
                function1.invoke(new AccountAutoDiscoveryContract$Event.EmailAddressChanged(str));
                break;
            case 4:
                String str2 = (String) obj;
                str2.getClass();
                function1.invoke(new AccountAutoDiscoveryContract$Event.PasswordChanged(str2));
                break;
            case 5:
                OAuthResult oAuthResult = (OAuthResult) obj;
                oAuthResult.getClass();
                function1.invoke(new AccountAutoDiscoveryContract$Event.OnOAuthResult(oAuthResult));
                break;
            case 6:
                function1.invoke(new AccountAutoDiscoveryContract$Event.ResultApprovalChanged(((Boolean) obj).booleanValue()));
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                AccountAutoDiscoveryContract$Event accountAutoDiscoveryContract$Event = (AccountAutoDiscoveryContract$Event) obj;
                accountAutoDiscoveryContract$Event.getClass();
                function1.invoke(accountAutoDiscoveryContract$Event);
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                String str3 = (String) obj;
                str3.getClass();
                function1.invoke(new DisplayOptionsContract$Event.OnEmailSignatureChanged(str3));
                break;
            case 9:
                String str4 = (String) obj;
                str4.getClass();
                function1.invoke(new DisplayOptionsContract$Event.OnAccountNameChanged(str4));
                break;
            case 10:
                String str5 = (String) obj;
                str5.getClass();
                function1.invoke(new DisplayOptionsContract$Event.OnDisplayNameChanged(str5));
                break;
            case 11:
                DisplayOptionsContract$Event displayOptionsContract$Event = (DisplayOptionsContract$Event) obj;
                displayOptionsContract$Event.getClass();
                function1.invoke(displayOptionsContract$Event);
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                EmailCheckFrequency emailCheckFrequency = (EmailCheckFrequency) obj;
                emailCheckFrequency.getClass();
                function1.invoke(new SyncOptionsContract$Event.OnCheckFrequencyChanged(emailCheckFrequency));
                break;
            case 13:
                EmailDisplayCount emailDisplayCount = (EmailDisplayCount) obj;
                emailDisplayCount.getClass();
                function1.invoke(new SyncOptionsContract$Event.OnMessageDisplayCountChanged(emailDisplayCount));
                break;
            case 14:
                function1.invoke(new SyncOptionsContract$Event.OnShowNotificationChanged(((Boolean) obj).booleanValue()));
                break;
            case OffsetKt.Horizontal /* 15 */:
                SyncOptionsContract$Event syncOptionsContract$Event = (SyncOptionsContract$Event) obj;
                syncOptionsContract$Event.getClass();
                function1.invoke(syncOptionsContract$Event);
                break;
            case 16:
                SpecialFolderOption specialFolderOption = (SpecialFolderOption) obj;
                specialFolderOption.getClass();
                function1.invoke(new SpecialFoldersContract$FormEvent.TrashFolderChanged(specialFolderOption));
                break;
            case 17:
                SpecialFolderOption specialFolderOption2 = (SpecialFolderOption) obj;
                specialFolderOption2.getClass();
                function1.invoke(new SpecialFoldersContract$FormEvent.SentFolderChanged(specialFolderOption2));
                break;
            case 18:
                SpecialFolderOption specialFolderOption3 = (SpecialFolderOption) obj;
                specialFolderOption3.getClass();
                function1.invoke(new SpecialFoldersContract$FormEvent.ArchiveFolderChanged(specialFolderOption3));
                break;
            case 19:
                SpecialFolderOption specialFolderOption4 = (SpecialFolderOption) obj;
                specialFolderOption4.getClass();
                function1.invoke(new SpecialFoldersContract$FormEvent.SpamFolderChanged(specialFolderOption4));
                break;
            case 20:
                SpecialFolderOption specialFolderOption5 = (SpecialFolderOption) obj;
                specialFolderOption5.getClass();
                function1.invoke(new SpecialFoldersContract$FormEvent.DraftsFolderChanged(specialFolderOption5));
                break;
            case 21:
                SpecialFoldersContract$Event specialFoldersContract$Event = (SpecialFoldersContract$Event) obj;
                specialFoldersContract$Event.getClass();
                function1.invoke(specialFoldersContract$Event);
                break;
            case 22:
                AccountSetupCompositionContract$Event accountSetupCompositionContract$Event = (AccountSetupCompositionContract$Event) obj;
                int i2 = AccountSetupComposition.$r8$clinit;
                accountSetupCompositionContract$Event.getClass();
                function1.invoke(accountSetupCompositionContract$Event);
                break;
            case 23:
                function1.invoke(new AccountSetupCompositionContract$Event.UseSignatureChange(((Boolean) obj).booleanValue()));
                break;
            case 24:
                String str6 = (String) obj;
                str6.getClass();
                function1.invoke(new AccountSetupCompositionContract$Event.SignatureChange(str6));
                break;
            case 25:
                Pair pair = (Pair) obj;
                pair.getClass();
                function1.invoke(new AccountSetupCompositionContract$Event.SignatureLocationChange(pair));
                break;
            case 26:
                String str7 = (String) obj;
                str7.getClass();
                function1.invoke(new AccountSetupCompositionContract$Event.SenderNameChange(str7));
                break;
            case 27:
                String str8 = (String) obj;
                str8.getClass();
                function1.invoke(new AccountSetupCompositionContract$Event.SenderEmailChange(str8));
                break;
            case 28:
                String str9 = (String) obj;
                str9.getClass();
                function1.invoke(new AccountSetupCompositionContract$Event.BccEmailChange(str9));
                break;
            default:
                obj.getClass();
                function1.invoke(obj);
                break;
        }
        return unit;
    }
}
