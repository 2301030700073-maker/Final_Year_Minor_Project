package com.fsck.k9.ui.managefolders;

import androidx.lifecycle.CoroutineLiveData;
import androidx.lifecycle.ViewModel;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import com.fsck.k9.Preferences;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.helper.SingleLiveEvent;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderSettingsViewModel extends ViewModel {
    public LegacyAccountDto account;
    public final SingleLiveEvent actionLiveData = new SingleLiveEvent(0);
    public long folderId;
    public final DefaultFolderRepository folderRepository;
    public CoroutineLiveData folderSettingsLiveData;
    public final MessagingController messagingController;
    public final Preferences preferences;

    public FolderSettingsViewModel(Preferences preferences, DefaultFolderRepository defaultFolderRepository, MessagingController messagingController) {
        this.preferences = preferences;
        this.folderRepository = defaultFolderRepository;
        this.messagingController = messagingController;
    }
}
