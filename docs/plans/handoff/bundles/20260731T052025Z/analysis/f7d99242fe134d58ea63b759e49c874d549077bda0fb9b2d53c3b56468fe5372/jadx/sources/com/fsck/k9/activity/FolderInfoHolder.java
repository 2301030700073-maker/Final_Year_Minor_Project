package com.fsck.k9.activity;

import android.content.res.Resources;
import app.k9mail.legacy.ui.folder.FolderNameFormatter;
import com.fsck.k9.R;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.feature.mail.folder.api.FolderType;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderInfoHolder {
    public final long databaseId;
    public final String displayName;
    public boolean loading;
    public boolean moreMessages;

    public FolderInfoHolder(FolderNameFormatter folderNameFormatter, DefaultOutboxFolderManager defaultOutboxFolderManager, LocalFolder localFolder, LegacyAccount legacyAccount) {
        FolderType folderType;
        folderNameFormatter.getClass();
        defaultOutboxFolderManager.getClass();
        legacyAccount.getClass();
        long j = localFolder.databaseId;
        this.databaseId = j;
        String str = localFolder.name;
        str.getClass();
        Long l = legacyAccount.inboxFolderId;
        if (l != null && j == l.longValue()) {
            folderType = FolderType.INBOX;
        } else if (j == Sink$CC.getOutboxFolderIdSync$default(defaultOutboxFolderManager, legacyAccount.id)) {
            folderType = FolderType.OUTBOX;
        } else {
            Long l2 = legacyAccount.archiveFolderId;
            if (l2 != null && j == l2.longValue()) {
                folderType = FolderType.ARCHIVE;
            } else {
                Long l3 = legacyAccount.draftsFolderId;
                if (l3 != null && j == l3.longValue()) {
                    folderType = FolderType.DRAFTS;
                } else {
                    Long l4 = legacyAccount.sentFolderId;
                    if (l4 != null && j == l4.longValue()) {
                        folderType = FolderType.SENT;
                    } else {
                        Long l5 = legacyAccount.spamFolderId;
                        if (l5 != null && j == l5.longValue()) {
                            folderType = FolderType.SPAM;
                        } else {
                            Long l6 = legacyAccount.trashFolderId;
                            folderType = (l6 != null && j == l6.longValue()) ? FolderType.TRASH : FolderType.REGULAR;
                        }
                    }
                }
            }
        }
        boolean z = localFolder.localOnly;
        Resources resources = folderNameFormatter.resources;
        if (z) {
            int ordinal = folderType.ordinal();
            if (ordinal == 2) {
                str = resources.getString(R.string.special_mailbox_name_outbox);
            } else if (ordinal == 3) {
                str = resources.getString(R.string.special_mailbox_name_sent);
            } else if (ordinal == 4) {
                str = resources.getString(R.string.special_mailbox_name_trash);
            } else if (ordinal == 5) {
                str = resources.getString(R.string.special_mailbox_name_drafts);
            }
            str.getClass();
        } else {
            str = FolderNameFormatter.WhenMappings.$EnumSwitchMapping$0[folderType.ordinal()] == 5 ? resources.getString(R.string.special_mailbox_name_inbox) : str;
            str.getClass();
        }
        this.displayName = str;
        this.moreMessages = localFolder.moreMessages != 2;
    }
}
