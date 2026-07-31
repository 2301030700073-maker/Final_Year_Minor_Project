package com.fsck.k9;

import androidx.compose.ui.unit.IntOffsetKt;
import app.k9mail.feature.account.oauth.AccountOAuthModuleKt;
import app.k9mail.feature.launcher.di.FeatureLauncherModuleKt;
import java.util.List;
import org.koin.core.module.Module;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class UiKoinModulesKt {
    public static final List legacyUiModules = IntOffsetKt.listOf((Object[]) new Module[]{AccountOAuthModuleKt.featureAccountOAuthModule, com.fsck.k9.ui.base.KoinModuleKt.uiBaseModule, com.fsck.k9.activity.KoinModuleKt.activityModule, com.fsck.k9.ui.KoinModuleKt.uiModule, app.k9mail.legacy.ui.folder.KoinModuleKt.uiFolderModule, com.fsck.k9.ui.settings.KoinModuleKt.settingsUiModule, com.fsck.k9.ui.endtoend.KoinModuleKt.endToEndUiModule, com.fsck.k9.ui.folders.KoinModuleKt.foldersUiModule, com.fsck.k9.ui.messagelist.KoinModuleKt.messageListUiModule, com.fsck.k9.ui.managefolders.KoinModuleKt.manageFoldersUiModule, com.fsck.k9.ui.choosefolder.KoinModuleKt.chooseFolderUiModule, com.fsck.k9.contacts.KoinModuleKt.contactsModule, com.fsck.k9.account.KoinModuleKt.accountModule, com.fsck.k9.ui.compose.KoinModuleKt.composeModule, com.fsck.k9.view.KoinModuleKt.viewModule, net.thunderbird.feature.changelog.internal.KoinModuleKt.changelogUiModule, com.fsck.k9.ui.messagesource.KoinModuleKt.messageSourceModule, com.fsck.k9.ui.account.KoinModuleKt.accountUiModule, com.fsck.k9.ui.messagedetails.KoinModuleKt.messageDetailsUiModule, com.fsck.k9.ui.messageview.KoinModuleKt.messageViewUiModule, com.fsck.k9.ui.identity.KoinModuleKt.identityUiModule, FeatureLauncherModuleKt.featureLauncherModule, com.fsck.k9.activity.setup.KoinModuleKt.setUpModule});
}
