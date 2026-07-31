package com.fsck.k9.ui.messagelist;

import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.android.account.LegacyAccountDto;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultFolderProvider {
    public final DefaultOutboxFolderManager outboxFolderManager;

    public DefaultFolderProvider(DefaultOutboxFolderManager defaultOutboxFolderManager) {
        this.outboxFolderManager = defaultOutboxFolderManager;
    }

    public final long getDefaultFolder(LegacyAccountDto legacyAccountDto) {
        legacyAccountDto.getClass();
        Long autoExpandFolderId = legacyAccountDto.getAutoExpandFolderId();
        if (autoExpandFolderId != null) {
            return autoExpandFolderId.longValue();
        }
        Long inboxFolderId = legacyAccountDto.getInboxFolderId();
        if (inboxFolderId != null) {
            return inboxFolderId.longValue();
        }
        long outboxFolderIdSync$default = Sink$CC.getOutboxFolderIdSync$default(this.outboxFolderManager, legacyAccountDto.id);
        Long valueOf = Long.valueOf(outboxFolderIdSync$default);
        if (outboxFolderIdSync$default == -1) {
            valueOf = null;
        }
        if (valueOf != null) {
            return valueOf.longValue();
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Outbox missing");
        return 0L;
    }
}
