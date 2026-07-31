package app.k9mail.feature.account.edit.ui.server.settings.modify;

import androidx.lifecycle.BlockRunner$cancel$1;
import androidx.lifecycle.ViewModelKt;
import app.k9mail.feature.account.edit.domain.usecase.LoadAccountState;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsViewModel;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ModifyIncomingServerSettingsViewModel extends IncomingServerSettingsViewModel {
    public final LoadAccountState accountStateLoader;
    public final String accountUuid;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ModifyIncomingServerSettingsViewModel(java.lang.String r4, app.k9mail.feature.account.edit.domain.usecase.LoadAccountState r5, app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsValidator r6, app.k9mail.feature.account.common.domain.AccountDomainContract$AccountStateRepository r7) {
        /*
            r3 = this;
            app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsContract$State r0 = new app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsContract$State
            r1 = 0
            r2 = 4095(0xfff, float:5.738E-42)
            r0.<init>(r1, r1, r2)
            r4.getClass()
            app.k9mail.feature.account.common.domain.entity.InteractionMode r1 = app.k9mail.feature.account.common.domain.entity.InteractionMode.Edit
            r3.<init>(r0, r1, r6, r7)
            r3.accountUuid = r4
            r3.accountStateLoader = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.account.edit.ui.server.settings.modify.ModifyIncomingServerSettingsViewModel.<init>(java.lang.String, app.k9mail.feature.account.edit.domain.usecase.LoadAccountState, app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsValidator, app.k9mail.feature.account.common.domain.AccountDomainContract$AccountStateRepository):void");
    }

    @Override // app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsViewModel
    public final void loadAccountState() {
        JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new BlockRunner$cancel$1(this, null, 5), 3);
    }
}
