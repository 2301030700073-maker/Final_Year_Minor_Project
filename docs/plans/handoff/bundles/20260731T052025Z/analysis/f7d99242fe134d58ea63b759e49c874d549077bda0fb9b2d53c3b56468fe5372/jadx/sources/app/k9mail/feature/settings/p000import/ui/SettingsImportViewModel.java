package app.k9mail.feature.settings.p000import.ui;

import android.content.ContentResolver;
import android.net.Uri;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import app.k9mail.feature.migration.launcher.k9.K9MigrationManager;
import app.k9mail.feature.settings.p000import.ui.Action;
import app.k9mail.feature.settings.p000import.ui.SettingsListItem;
import com.fsck.k9.account.AccountActivator;
import com.fsck.k9.helper.SingleLiveEvent;
import com.fsck.k9.preferences.SettingsImporter;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import net.thunderbird.core.logging.Logger;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsImportViewModel extends ViewModel {
    public final AccountActivator accountActivator;
    public final LinkedHashMap accountStateMap;
    public LinkedHashMap accountsMap;
    public SettingsImportAction action;
    public final SingleLiveEvent actionLiveData;
    public final CoroutineDispatcher backgroundDispatcher;
    public final ContentResolver contentResolver;
    public Uri contentUri;
    public String currentlyAuthorizingAccountUuid;
    public boolean isInitialized;
    public final Logger logger;
    public final K9MigrationManager migrationManager;
    public final SettingsImporter settingsImporter;
    public final SettingsImportUiModel uiModel;
    public final MutableLiveData uiModelLiveData;
    public boolean wasActionHandled;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SettingsImportViewModel(android.content.ContentResolver r3, com.fsck.k9.preferences.SettingsImporter r4, com.fsck.k9.account.AccountActivator r5, app.k9mail.feature.migration.launcher.k9.K9MigrationManager r6, app.k9mail.feature.settings.p000import.ui.ImportAppFetcher r7, net.thunderbird.core.logging.Logger r8) {
        /*
            r2 = this;
            kotlinx.coroutines.scheduling.DefaultScheduler r7 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.scheduling.DefaultIoScheduler r7 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE
            kotlinx.coroutines.android.HandlerContext r0 = kotlinx.coroutines.internal.MainDispatcherLoader.dispatcher
            kotlinx.coroutines.android.HandlerContext r0 = r0.immediate
            kotlinx.coroutines.SupervisorJobImpl r1 = kotlinx.coroutines.JobKt.SupervisorJob$default()
            kotlin.coroutines.CoroutineContext r0 = r0.plus(r1)
            kotlinx.coroutines.internal.ContextScope r0 = kotlinx.coroutines.JobKt.CoroutineScope(r0)
            r7.getClass()
            r2.<init>(r0)
            r2.contentResolver = r3
            r2.settingsImporter = r4
            r2.accountActivator = r5
            r2.migrationManager = r6
            r2.backgroundDispatcher = r7
            r2.logger = r8
            androidx.lifecycle.MutableLiveData r3 = new androidx.lifecycle.MutableLiveData
            r3.<init>()
            r2.uiModelLiveData = r3
            com.fsck.k9.helper.SingleLiveEvent r3 = new com.fsck.k9.helper.SingleLiveEvent
            r4 = 0
            r3.<init>(r4)
            r2.actionLiveData = r3
            app.k9mail.feature.settings.import.ui.SettingsImportAction r3 = app.k9mail.feature.settings.p000import.ui.SettingsImportAction.Overview
            r2.action = r3
            app.k9mail.feature.settings.import.ui.SettingsImportUiModel r3 = new app.k9mail.feature.settings.import.ui.SettingsImportUiModel
            r3.<init>()
            kotlin.collections.EmptyList r5 = kotlin.collections.EmptyList.INSTANCE
            r3.settingsList = r5
            r5 = 1
            r3.isSettingsListEnabled = r5
            app.k9mail.feature.settings.import.ui.ButtonState r6 = app.k9mail.feature.settings.p000import.ui.ButtonState.DISABLED
            r3.importButton = r6
            app.k9mail.feature.settings.import.ui.ButtonState r6 = app.k9mail.feature.settings.p000import.ui.ButtonState.GONE
            r3.closeButton = r6
            app.k9mail.feature.settings.import.ui.CloseButtonLabel r6 = app.k9mail.feature.settings.p000import.ui.CloseButtonLabel.OK
            r3.closeButtonLabel = r6
            r3.isPickDocumentButtonVisible = r5
            r3.isPickDocumentButtonEnabled = r5
            r3.isScanQrCodeButtonVisible = r4
            r3.isScanQrCodeButtonEnabled = r5
            r3.isPickAppButtonVisible = r4
            r3.isPickAppButtonPermanentlyDisabled = r5
            app.k9mail.feature.settings.import.ui.StatusText r4 = app.k9mail.feature.settings.p000import.ui.StatusText.HIDDEN
            r3.statusText = r4
            r2.uiModel = r3
            java.util.LinkedHashMap r3 = new java.util.LinkedHashMap
            r3.<init>()
            r2.accountsMap = r3
            java.util.LinkedHashMap r3 = new java.util.LinkedHashMap
            r3.<init>()
            r2.accountStateMap = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.settings.p000import.ui.SettingsImportViewModel.<init>(android.content.ContentResolver, com.fsck.k9.preferences.SettingsImporter, com.fsck.k9.account.AccountActivator, app.k9mail.feature.migration.launcher.k9.K9MigrationManager, app.k9mail.feature.settings.import.ui.ImportAppFetcher, net.thunderbird.core.logging.Logger):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$importSettings(app.k9mail.feature.settings.p000import.ui.SettingsImportViewModel r5, android.net.Uri r6, boolean r7, java.util.List r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            boolean r0 = r9 instanceof app.k9mail.feature.settings.p000import.ui.SettingsImportViewModel$importSettings$1
            if (r0 == 0) goto L13
            r0 = r9
            app.k9mail.feature.settings.import.ui.SettingsImportViewModel$importSettings$1 r0 = (app.k9mail.feature.settings.p000import.ui.SettingsImportViewModel$importSettings$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            app.k9mail.feature.settings.import.ui.SettingsImportViewModel$importSettings$1 r0 = new app.k9mail.feature.settings.import.ui.SettingsImportViewModel$importSettings$1
            r0.<init>(r5, r9)
        L18:
            java.lang.Object r9 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L30
            if (r1 != r2) goto L2a
            java.io.InputStream r5 = r0.L$3
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L28
            goto L4d
        L28:
            r6 = move-exception
            goto L55
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            return r3
        L30:
            kotlin.ResultKt.throwOnFailure(r9)
            android.content.ContentResolver r9 = r5.contentResolver
            java.io.InputStream r9 = r9.openInputStream(r6)
            if (r9 == 0) goto L5b
            com.fsck.k9.preferences.SettingsImporter r5 = r5.settingsImporter     // Catch: java.lang.Throwable -> L53
            r0.L$3 = r9     // Catch: java.lang.Throwable -> L53
            r0.label = r2     // Catch: java.lang.Throwable -> L53
            java.lang.Object r5 = r5.importSettings(r9, r7, r8, r0)     // Catch: java.lang.Throwable -> L53
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r5 != r6) goto L4a
            return r6
        L4a:
            r4 = r9
            r9 = r5
            r5 = r4
        L4d:
            com.fsck.k9.preferences.ImportResults r9 = (com.fsck.k9.preferences.ImportResults) r9     // Catch: java.lang.Throwable -> L28
            kotlin.io.CloseableKt.closeFinally(r5, r3)
            return r9
        L53:
            r6 = move-exception
            r5 = r9
        L55:
            throw r6     // Catch: java.lang.Throwable -> L56
        L56:
            r7 = move-exception
            kotlin.io.CloseableKt.closeFinally(r5, r6)
            throw r7
        L5b:
            java.lang.String r5 = "Failed to open settings file for reading: "
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r6, r5)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.settings.p000import.ui.SettingsImportViewModel.access$importSettings(app.k9mail.feature.settings.import.ui.SettingsImportViewModel, android.net.Uri, boolean, java.util.List, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final boolean getContainsGeneralSettings() {
        List list = this.uiModel.settingsList;
        if (list != null && list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((SettingsListItem) it.next()) instanceof SettingsListItem.GeneralSettings) {
                return true;
            }
        }
        return false;
    }

    public final boolean getIncludeGeneralSettings() {
        for (SettingsListItem settingsListItem : this.uiModel.settingsList) {
            if (settingsListItem instanceof SettingsListItem.GeneralSettings) {
                return settingsListItem.selected;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Collection contains no element matching the predicate.");
        return false;
    }

    public final int getListIndexOfAccount(String str) {
        int i = 0;
        for (SettingsListItem settingsListItem : this.uiModel.settingsList) {
            if ((settingsListItem instanceof SettingsListItem.Account) && Intrinsics.areEqual(this.accountsMap.get(Integer.valueOf(((SettingsListItem.Account) settingsListItem).accountIndex)), str)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public final void onSettingsListItemClicked(int i) {
        SettingsImportUiModel settingsImportUiModel = this.uiModel;
        SettingsListItem settingsListItem = (SettingsListItem) settingsImportUiModel.settingsList.get(i);
        int ordinal = settingsListItem.importStatus.ordinal();
        if (ordinal == 0) {
            ((SettingsListItem) settingsImportUiModel.settingsList.get(i)).selected = !r10.selected;
            settingsImportUiModel.statusText = StatusText.HIDDEN;
            settingsImportUiModel.updateImportButtonFromSelection();
            this.uiModelLiveData.setValue(settingsImportUiModel);
            return;
        }
        if (ordinal != 3) {
            if (ordinal != 4) {
                return;
            }
            Object obj = this.accountsMap.get(Integer.valueOf(((SettingsListItem.Account) settingsListItem).accountIndex));
            obj.getClass();
            String str = (String) obj;
            this.currentlyAuthorizingAccountUuid = str;
            sendActionEvent(new Action.StartAuthorization(str));
            return;
        }
        SettingsListItem.Account account = (SettingsListItem.Account) settingsListItem;
        int i2 = account.accountIndex;
        Object obj2 = this.accountsMap.get(Integer.valueOf(i2));
        obj2.getClass();
        Object obj3 = this.accountStateMap.get(Integer.valueOf(i2));
        obj3.getClass();
        AccountState accountState = (AccountState) obj3;
        sendActionEvent(new Action.PasswordPrompt((String) obj2, account.displayName, accountState.incomingServerPasswordNeeded, accountState.incomingServerName, accountState.outgoingServerPasswordNeeded, accountState.outgoingServerName));
    }

    public final void sendActionEvent(Action action) {
        this.actionLiveData.setValue(action);
    }
}
