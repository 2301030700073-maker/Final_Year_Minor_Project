package com.fsck.k9.controller.push;

import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import com.fsck.k9.backend.BackendManager;
import com.fsck.k9.controller.MessagingController;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.logging.Logger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountPushControllerFactory {
    public final LegacyAccountDtoManager accountManager;
    public final BackendManager backendManager;
    public final DefaultFolderRepository folderRepository;
    public final Logger logger;
    public final MessagingController messagingController;

    public AccountPushControllerFactory(LegacyAccountDtoManager legacyAccountDtoManager, BackendManager backendManager, MessagingController messagingController, DefaultFolderRepository defaultFolderRepository, Logger logger) {
        this.accountManager = legacyAccountDtoManager;
        this.backendManager = backendManager;
        this.messagingController = messagingController;
        this.folderRepository = defaultFolderRepository;
        this.logger = logger;
    }
}
