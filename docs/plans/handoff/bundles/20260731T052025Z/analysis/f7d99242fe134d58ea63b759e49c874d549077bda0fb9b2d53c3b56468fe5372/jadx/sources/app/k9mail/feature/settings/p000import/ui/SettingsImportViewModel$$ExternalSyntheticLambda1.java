package app.k9mail.feature.settings.p000import.ui;

import app.k9mail.feature.settings.p000import.ui.SettingsListItem;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SettingsImportViewModel$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SettingsImportViewModel f$0;

    public /* synthetic */ SettingsImportViewModel$$ExternalSyntheticLambda1(SettingsImportViewModel settingsImportViewModel, int i) {
        this.$r8$classId = i;
        this.f$0 = settingsImportViewModel;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        SettingsImportViewModel settingsImportViewModel = this.f$0;
        SettingsListItem.Account account = (SettingsListItem.Account) obj;
        switch (i) {
            case 0:
                account.getClass();
                LinkedHashMap linkedHashMap = settingsImportViewModel.accountsMap;
                int i2 = account.accountIndex;
                String str = (String) linkedHashMap.get(Integer.valueOf(i2));
                if (str != null) {
                    return str;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Unknown account index: ", i2);
                return null;
            default:
                account.getClass();
                int i3 = account.accountIndex;
                AccountState accountState = (AccountState) settingsImportViewModel.accountStateMap.get(Integer.valueOf(i3));
                String str2 = account.displayName;
                Object obj2 = settingsImportViewModel.accountsMap.get(Integer.valueOf(i3));
                obj2.getClass();
                return new SavedAccountState(i3, str2, (String) obj2, account.selected, account.importStatus, accountState != null ? accountState.incomingServerName : null, accountState != null ? accountState.outgoingServerName : null, accountState != null ? accountState.incomingServerPasswordNeeded : false, accountState != null ? accountState.outgoingServerPasswordNeeded : false);
        }
    }
}
