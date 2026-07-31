package com.fsck.k9.backend.api;

import androidx.room.RoomConnectionManager;
import com.fsck.k9.backend.imap.ImapBackendPusher;
import com.fsck.k9.controller.ProgressBodyFactory;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mailstore.LocalMessage;
import com.fsck.k9.mailstore.LocalStore;
import java.util.List;
import java.util.Map;
import net.thunderbird.core.common.mail.Flag;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface Backend {
    Map copyMessages(String str, String str2, List list);

    ImapBackendPusher createPusher(LocalStore.AnonymousClass7 anonymousClass7);

    void deleteAllMessages(String str);

    void deleteMessages(String str, List list);

    void downloadCompleteMessage(String str, String str2);

    void downloadMessage(SyncConfig syncConfig, String str, String str2);

    void downloadMessageStructure(String str, String str2);

    void expunge(String str);

    void fetchPart(String str, String str2, Part part, ProgressBodyFactory progressBodyFactory);

    String findByMessageId(String str, String str2);

    boolean getSupportsCopy();

    boolean getSupportsExpunge();

    boolean getSupportsFlags();

    boolean getSupportsFolderSubscriptions();

    boolean getSupportsMove();

    boolean getSupportsSearchByDate();

    boolean getSupportsTrashFolder();

    boolean getSupportsUpload();

    boolean isPushCapable();

    void markAllAsRead(String str);

    Map moveMessages(String str, String str2, List list);

    Map moveMessagesAndMarkAsRead(String str, String str2, List list);

    String refreshFolderList();

    List search(String str, String str2);

    void sendMessage(MimeMessage mimeMessage);

    void setFlag(String str, List list, Flag flag, boolean z);

    void sync(String str, SyncConfig syncConfig, RoomConnectionManager roomConnectionManager);

    String uploadMessage(String str, LocalMessage localMessage);
}
