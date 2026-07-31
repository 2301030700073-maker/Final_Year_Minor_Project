package com.fsck.k9.ui.managefolders;

import androidx.compose.ui.unit.IntRectKt;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.InterruptibleKt$runInterruptible$2;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.SupervisorJobImpl;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.mail.folder.api.FolderDetails;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderSettingsDataStore extends IntRectKt {
    public final AccountId accountId;
    public FolderDetails folder;
    public final DefaultFolderRepository folderRepository;
    public final CoroutineScope saveScope;

    public FolderSettingsDataStore(DefaultFolderRepository defaultFolderRepository, AccountId accountId, FolderDetails folderDetails) {
        SupervisorJobImpl SupervisorJob$default = JobKt.SupervisorJob$default();
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        ContextScope CoroutineScope = JobKt.CoroutineScope(UuidKt.plus(SupervisorJob$default, DefaultIoScheduler.INSTANCE));
        defaultFolderRepository.getClass();
        accountId.getClass();
        this.folderRepository = defaultFolderRepository;
        this.accountId = accountId;
        this.folder = folderDetails;
        this.saveScope = CoroutineScope;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    @Override // androidx.compose.ui.unit.IntRectKt
    public final boolean getBoolean(String str, boolean z) {
        if (str != null) {
            switch (str.hashCode()) {
                case -1764925531:
                    if (str.equals("folder_settings_push")) {
                        return this.folder.isPushEnabled;
                    }
                    break;
                case -1764832474:
                    if (str.equals("folder_settings_sync")) {
                        return this.folder.isSyncEnabled;
                    }
                    break;
                case -1042001731:
                    if (str.equals("folder_settings_notifications")) {
                        return this.folder.isNotificationsEnabled;
                    }
                    break;
                case -607151610:
                    if (str.equals("folder_settings_in_top_group")) {
                        return this.folder.isInTopGroup;
                    }
                    break;
                case 779776007:
                    if (str.equals("folder_settings_visible")) {
                        return this.folder.isVisible;
                    }
                    break;
                case 1269613938:
                    if (str.equals("folder_settings_include_in_integrated_inbox")) {
                        return this.folder.isIntegrate;
                    }
                    break;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) str, "Unknown key: ");
        return false;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    @Override // androidx.compose.ui.unit.IntRectKt
    public final void putBoolean(String str, boolean z) {
        if (str != null) {
            switch (str.hashCode()) {
                case -1764925531:
                    if (str.equals("folder_settings_push")) {
                        updateFolder(FolderDetails.copy$default(this.folder, false, false, false, false, false, z, 63));
                        return;
                    }
                    break;
                case -1764832474:
                    if (str.equals("folder_settings_sync")) {
                        updateFolder(FolderDetails.copy$default(this.folder, false, false, z, false, false, false, 119));
                        return;
                    }
                    break;
                case -1042001731:
                    if (str.equals("folder_settings_notifications")) {
                        updateFolder(FolderDetails.copy$default(this.folder, false, false, false, false, z, false, 95));
                        return;
                    }
                    break;
                case -607151610:
                    if (str.equals("folder_settings_in_top_group")) {
                        updateFolder(FolderDetails.copy$default(this.folder, z, false, false, false, false, false, 125));
                        return;
                    }
                    break;
                case 779776007:
                    if (str.equals("folder_settings_visible")) {
                        updateFolder(FolderDetails.copy$default(this.folder, false, false, false, z, false, false, 111));
                        return;
                    }
                    break;
                case 1269613938:
                    if (str.equals("folder_settings_include_in_integrated_inbox")) {
                        updateFolder(FolderDetails.copy$default(this.folder, false, z, false, false, false, false, 123));
                        return;
                    }
                    break;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) str, "Unknown key: ");
    }

    public final void updateFolder(FolderDetails folderDetails) {
        this.folder = folderDetails;
        JobKt.launch$default(this.saveScope, null, null, new InterruptibleKt$runInterruptible$2(this, folderDetails, null, 3), 3);
    }
}
