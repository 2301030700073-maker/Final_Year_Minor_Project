package com.fsck.k9.backend.imap;

import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.viewpager.widget.ViewPager;
import androidx.work.OperationKt;
import app.k9mail.legacy.mailstore.ListenableMessageStore;
import com.beetstra.jutf7.Base64Util;
import com.bumptech.glide.load.Option;
import com.fsck.k9.backend.api.Backend;
import com.fsck.k9.backend.api.FolderInfo;
import com.fsck.k9.backend.api.SyncConfig;
import com.fsck.k9.backends.DefaultImapBackendFactory$createImapStoreConfig$1;
import com.fsck.k9.controller.ProgressBodyFactory;
import com.fsck.k9.job.SyncDebugWorker$$ExternalSyntheticLambda0;
import com.fsck.k9.mail.FetchProfile;
import com.fsck.k9.mail.FolderType;
import com.fsck.k9.mail.MessageDownloadState;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mail.store.imap.FolderListItem;
import com.fsck.k9.mail.store.imap.IdleRefreshManager;
import com.fsck.k9.mail.store.imap.ImapMessage;
import com.fsck.k9.mail.store.imap.OpenMode;
import com.fsck.k9.mail.store.imap.RealImapFolder;
import com.fsck.k9.mail.store.imap.RealImapStore;
import com.fsck.k9.mail.transport.smtp.SmtpTransport;
import com.fsck.k9.mailstore.K9BackendFolder;
import com.fsck.k9.mailstore.K9BackendStorage$K9BackendFolderUpdater;
import com.fsck.k9.mailstore.LocalMessage;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.power.AndroidPowerManager;
import com.fsck.k9.storage.messages.DeleteFolderOperations;
import com.fsck.k9.storage.messages.K9MessageStore;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.Dispatcher;
import okhttp3.Handshake$Companion$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImapBackend implements Backend {
    public final String accountName;
    public final CommandDelete commandDelete;
    public final CommandDelete commandDeleteAll;
    public final Base64Util commandDownloadMessage;
    public final CommandDelete commandExpunge;
    public final CommandDelete commandFetchMessage;
    public final CommandDelete commandFindByMessageId;
    public final CommandDelete commandMarkAllAsRead;
    public final CommandDelete commandMoveOrCopyMessages;
    public final ImapSync commandRefreshFolderList;
    public final CommandDelete commandSearch;
    public final CommandDelete commandSetFlag;
    public final CommandDelete commandUploadMessage;
    public final IdleRefreshManager idleRefreshManager;
    public final RealImapStore imapStore;
    public final ImapSync imapSync;
    public final AndroidPowerManager powerManager;
    public final DefaultImapBackendFactory$createImapStoreConfig$1 pushConfigProvider;
    public final SmtpTransport smtpTransport;
    public final boolean supportsFlags = true;
    public final boolean supportsExpunge = true;
    public final boolean supportsMove = true;
    public final boolean supportsCopy = true;
    public final boolean supportsUpload = true;
    public final boolean supportsTrashFolder = true;
    public final boolean supportsSearchByDate = true;
    public final boolean supportsFolderSubscriptions = true;
    public final boolean isPushCapable = true;

    public ImapBackend(String str, Dispatcher dispatcher, RealImapStore realImapStore, AndroidPowerManager androidPowerManager, IdleRefreshManager idleRefreshManager, DefaultImapBackendFactory$createImapStoreConfig$1 defaultImapBackendFactory$createImapStoreConfig$1, SmtpTransport smtpTransport) {
        this.accountName = str;
        this.imapStore = realImapStore;
        this.powerManager = androidPowerManager;
        this.idleRefreshManager = idleRefreshManager;
        this.pushConfigProvider = defaultImapBackendFactory$createImapStoreConfig$1;
        this.smtpTransport = smtpTransport;
        this.imapSync = new ImapSync(str, dispatcher, realImapStore, 0);
        this.commandRefreshFolderList = new ImapSync(dispatcher, realImapStore);
        this.commandSetFlag = new CommandDelete(realImapStore);
        this.commandMarkAllAsRead = new CommandDelete(realImapStore);
        this.commandExpunge = new CommandDelete(realImapStore);
        this.commandMoveOrCopyMessages = new CommandDelete(realImapStore);
        this.commandDelete = new CommandDelete(realImapStore);
        this.commandDeleteAll = new CommandDelete(realImapStore);
        this.commandSearch = new CommandDelete(realImapStore);
        this.commandDownloadMessage = new Base64Util(27, dispatcher, realImapStore);
        this.commandFetchMessage = new CommandDelete(realImapStore);
        this.commandFindByMessageId = new CommandDelete(realImapStore);
        this.commandUploadMessage = new CommandDelete(realImapStore);
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final Map copyMessages(String str, String str2, List list) {
        str.getClass();
        str2.getClass();
        list.getClass();
        CommandDelete commandDelete = this.commandMoveOrCopyMessages;
        commandDelete.getClass();
        return commandDelete.moveOrCopyMessages(str, str2, list, true);
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final ImapBackendPusher createPusher(LocalStore.AnonymousClass7 anonymousClass7) {
        anonymousClass7.getClass();
        return new ImapBackendPusher(this.imapStore, this.powerManager, this.idleRefreshManager, this.pushConfigProvider, anonymousClass7, this.accountName);
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final void deleteAllMessages(String str) {
        str.getClass();
        CommandDelete commandDelete = this.commandDeleteAll;
        commandDelete.getClass();
        RealImapFolder folder = commandDelete.imapStore.getFolder(str);
        try {
            folder.open(OpenMode.READ_WRITE);
            folder.checkOpenWithWriteAccess();
            folder.setFlagsForAllMessages(Validate.setOf(Flag.DELETED));
            if (folder.internalImapStore.config.isExpungeImmediately()) {
                folder.expunge();
            }
        } finally {
            folder.close();
        }
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final void deleteMessages(String str, List list) {
        str.getClass();
        list.getClass();
        CommandDelete commandDelete = this.commandDelete;
        commandDelete.getClass();
        RealImapFolder folder = commandDelete.imapStore.getFolder(str);
        try {
            folder.open(OpenMode.READ_WRITE);
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                str2.getClass();
                arrayList.add(new ImapMessage(str2));
            }
            folder.deleteMessages(arrayList);
            folder.close();
        } catch (Throwable th) {
            folder.close();
            throw th;
        }
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final void downloadCompleteMessage(String str, String str2) {
        str2.getClass();
        Base64Util base64Util = this.commandDownloadMessage;
        base64Util.getClass();
        RealImapFolder folder = ((RealImapStore) base64Util.inverseAlphabet).getFolder(str);
        try {
            folder.open(OpenMode.READ_ONLY);
            ImapMessage imapMessage = new ImapMessage(str2);
            folder.fetch(IntOffsetKt.listOf(imapMessage), OperationKt.fetchProfileOf(FetchProfile.Item.FLAGS, FetchProfile.Item.BODY), null, 0);
            ((Dispatcher) base64Util.alphabet).getFolder(str).saveMessage(imapMessage, MessageDownloadState.FULL);
        } finally {
            folder.close();
        }
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final void downloadMessage(SyncConfig syncConfig, String str, String str2) {
        str2.getClass();
        ImapSync imapSync = this.imapSync;
        imapSync.getClass();
        K9BackendFolder folder = ((Dispatcher) imapSync.backendStorage).getFolder(str);
        RealImapFolder folder2 = ((RealImapStore) imapSync.imapStore).getFolder(str);
        try {
            folder2.open(OpenMode.READ_ONLY);
            imapSync.downloadMessages(syncConfig, folder2, folder, IntOffsetKt.listOf(new ImapMessage(str2)), null, new Option.AnonymousClass1());
        } finally {
            folder2.close();
        }
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final void downloadMessageStructure(String str, String str2) {
        str.getClass();
        str2.getClass();
        Base64Util base64Util = this.commandDownloadMessage;
        base64Util.getClass();
        RealImapFolder folder = ((RealImapStore) base64Util.inverseAlphabet).getFolder(str);
        try {
            folder.open(OpenMode.READ_ONLY);
            ImapMessage imapMessage = new ImapMessage(str2);
            folder.fetch(IntOffsetKt.listOf(imapMessage), OperationKt.fetchProfileOf(FetchProfile.Item.FLAGS, FetchProfile.Item.ENVELOPE), null, 0);
            folder.fetch(IntOffsetKt.listOf(imapMessage), OperationKt.fetchProfileOf(FetchProfile.Item.STRUCTURE), null, 0);
            ((Dispatcher) base64Util.alphabet).getFolder(str).saveMessage(imapMessage, MessageDownloadState.ENVELOPE);
        } finally {
            folder.close();
        }
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final void expunge(String str) {
        CommandDelete commandDelete = this.commandExpunge;
        commandDelete.getClass();
        Log.d("processPendingExpunge: folder = %s", str);
        RealImapFolder folder = commandDelete.imapStore.getFolder(str);
        try {
            folder.open(OpenMode.READ_WRITE);
            folder.expunge();
            Log.d("processPendingExpunge: complete for folder = %s", str);
        } finally {
            folder.close();
        }
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final void fetchPart(String str, String str2, Part part, ProgressBodyFactory progressBodyFactory) {
        str.getClass();
        str2.getClass();
        part.getClass();
        CommandDelete commandDelete = this.commandFetchMessage;
        commandDelete.getClass();
        RealImapFolder folder = commandDelete.imapStore.getFolder(str);
        try {
            folder.open(OpenMode.READ_WRITE);
            folder.fetchPart(new ImapMessage(str2), part, progressBodyFactory, -1);
        } finally {
            folder.close();
        }
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final String findByMessageId(String str, String str2) {
        str.getClass();
        str2.getClass();
        CommandDelete commandDelete = this.commandFindByMessageId;
        commandDelete.getClass();
        RealImapFolder folder = commandDelete.imapStore.getFolder(str);
        try {
            folder.open(OpenMode.READ_WRITE);
            return folder.getUidFromMessageId(str2);
        } finally {
            folder.close();
        }
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final boolean getSupportsCopy() {
        return this.supportsCopy;
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final boolean getSupportsExpunge() {
        return this.supportsExpunge;
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final boolean getSupportsFlags() {
        return this.supportsFlags;
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final boolean getSupportsFolderSubscriptions() {
        return this.supportsFolderSubscriptions;
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final boolean getSupportsMove() {
        return this.supportsMove;
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final boolean getSupportsSearchByDate() {
        return this.supportsSearchByDate;
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final boolean getSupportsTrashFolder() {
        return this.supportsTrashFolder;
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final boolean getSupportsUpload() {
        return this.supportsUpload;
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final boolean isPushCapable() {
        return this.isPushCapable;
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final void markAllAsRead(String str) {
        str.getClass();
        CommandDelete commandDelete = this.commandMarkAllAsRead;
        commandDelete.getClass();
        RealImapFolder folder = commandDelete.imapStore.getFolder(str);
        try {
            folder.open(OpenMode.READ_WRITE);
            folder.setFlagsForAllMessages(Validate.setOf(Flag.SEEN));
        } finally {
            folder.close();
        }
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final Map moveMessages(String str, String str2, List list) {
        str.getClass();
        str2.getClass();
        list.getClass();
        CommandDelete commandDelete = this.commandMoveOrCopyMessages;
        commandDelete.getClass();
        return commandDelete.moveOrCopyMessages(str, str2, list, false);
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final Map moveMessagesAndMarkAsRead(String str, String str2, List list) {
        str.getClass();
        str2.getClass();
        list.getClass();
        CommandDelete commandDelete = this.commandMoveOrCopyMessages;
        commandDelete.getClass();
        Map moveOrCopyMessages = commandDelete.moveOrCopyMessages(str, str2, list, false);
        if (moveOrCopyMessages != null) {
            setFlag(str2, CollectionsKt.toList(moveOrCopyMessages.values()), Flag.SEEN, true);
        }
        return moveOrCopyMessages;
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final String refreshFolderList() {
        Object obj;
        Dispatcher dispatcher;
        ImapSync imapSync = this.commandRefreshFolderList;
        Dispatcher dispatcher2 = (Dispatcher) imapSync.backendStorage;
        Logger logger = (Logger) imapSync.accountName;
        Sink$CC.verbose$default(logger, "CommandRefreshFolderList", null, new SyncDebugWorker$$ExternalSyntheticLambda0(11), 2);
        AbstractList<FolderListItem> folders = ((RealImapStore) imapSync.imapStore).getFolders();
        Iterator it = folders.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((FolderListItem) obj).folderPathDelimiter != null) {
                break;
            }
        }
        FolderListItem folderListItem = (FolderListItem) obj;
        String str = folderListItem != null ? folderListItem.folderPathDelimiter : null;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(folders, 10));
        for (FolderListItem folderListItem2 : folders) {
            arrayList.add(new LegacyFolderListItem(folderListItem2.serverId, folderListItem2.name, folderListItem2.type));
        }
        List folders2 = ((K9MessageStore) ((ListenableMessageStore) dispatcher2.executorServiceOrNull).messageStore.val$folders).getFolders(new Regex$$ExternalSyntheticBUOutline0(6));
        K9BackendStorage$K9BackendFolderUpdater k9BackendStorage$K9BackendFolderUpdater = new K9BackendStorage$K9BackendFolderUpdater(dispatcher2);
        try {
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = arrayList.iterator();
            while (true) {
                boolean hasNext = it2.hasNext();
                dispatcher = k9BackendStorage$K9BackendFolderUpdater.this$0;
                if (!hasNext) {
                    break;
                }
                LegacyFolderListItem legacyFolderListItem = (LegacyFolderListItem) it2.next();
                String normalizedServerId = imapSync.getNormalizedServerId(legacyFolderListItem);
                FolderType folderType = legacyFolderListItem.type;
                String str2 = legacyFolderListItem.name;
                if (folders2.contains(normalizedServerId)) {
                    String normalizedServerId2 = imapSync.getNormalizedServerId(legacyFolderListItem);
                    normalizedServerId2.getClass();
                    ((ListenableMessageStore) dispatcher.executorServiceOrNull).changeFolder(normalizedServerId2, str2, folderType);
                } else {
                    arrayList2.add(new FolderInfo(imapSync.getNormalizedServerId(legacyFolderListItem), str2, folderType));
                }
            }
            Sink$CC.verbose$default(logger, "CommandRefreshFolderList", null, new CommandRefreshFolderList$$ExternalSyntheticLambda1(0, arrayList2), 2);
            k9BackendStorage$K9BackendFolderUpdater.createFolders(arrayList2);
            ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                arrayList3.add(imapSync.getNormalizedServerId((LegacyFolderListItem) it3.next()));
            }
            List minus = CollectionsKt.minus((Iterable) folders2, (Iterable) arrayList3);
            Sink$CC.verbose$default(logger, "CommandRefreshFolderList", null, new Handshake$Companion$$ExternalSyntheticLambda0(1, minus), 2);
            if (!minus.isEmpty()) {
                ListenableMessageStore listenableMessageStore = (ListenableMessageStore) dispatcher.executorServiceOrNull;
                DeleteFolderOperations deleteFolderOperations = ((K9MessageStore) listenableMessageStore.messageStore.val$folders).deleteFolderOperations;
                deleteFolderOperations.getClass();
                deleteFolderOperations.lockableDatabase.execute(true, new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(11, minus, deleteFolderOperations));
                listenableMessageStore.notifyFolderSettingsChanged();
            }
            k9BackendStorage$K9BackendFolderUpdater.close();
            return str;
        } finally {
        }
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final List search(String str, String str2) {
        str.getClass();
        CommandDelete commandDelete = this.commandSearch;
        commandDelete.getClass();
        RealImapFolder folder = commandDelete.imapStore.getFolder(str);
        try {
            folder.open(OpenMode.READ_ONLY);
            List sortedWith = CollectionsKt.sortedWith(folder.search(str2), new ViewPager.AnonymousClass1(16));
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(sortedWith, 10));
            Iterator it = sortedWith.iterator();
            while (it.hasNext()) {
                arrayList.add(((ImapMessage) it.next()).mUid);
            }
            return arrayList;
        } finally {
            folder.close();
        }
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final void sendMessage(MimeMessage mimeMessage) {
        this.smtpTransport.sendMessage(mimeMessage);
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final void setFlag(String str, List list, Flag flag, boolean z) {
        str.getClass();
        list.getClass();
        flag.getClass();
        CommandDelete commandDelete = this.commandSetFlag;
        commandDelete.getClass();
        if (list.isEmpty()) {
            return;
        }
        RealImapFolder folder = commandDelete.imapStore.getFolder(str);
        try {
            folder.open(OpenMode.READ_WRITE);
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                str2.getClass();
                arrayList.add(new ImapMessage(str2));
            }
            folder.setFlags(arrayList, Validate.setOf(flag), z);
            folder.close();
        } catch (Throwable th) {
            folder.close();
            throw th;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:(25:(2:310|(43:312|313|(1:321)(1:315)|316|317|318|319|34|35|(1:37)(1:301)|105|106|107|(1:109)|110|111|112|113|114|115|116|117|118|(2:267|268)(1:120)|(10:(2:123|124)(1:249)|125|126|127|128|129|130|(9:134|(1:138)|139|(2:144|145)|146|147|145|131|132)|148|149)(2:250|(1:252)(4:253|254|255|256))|150|151|152|(1:154)|155|156|157|(5:159|(4:162|(2:164|165)(1:167)|166|160)|168|169|(13:171|(2:174|172)|175|176|(1:178)|180|181|182|183|184|(1:186)|187|188))(1:201)|200|(0)|180|181|182|183|184|(0)|187|188))(1:32)|115|116|117|118|(0)(0)|(0)(0)|150|151|152|(0)|155|156|157|(0)(0)|200|(0)|180|181|182|183|184|(0)|187|188)|105|106|107|(0)|110|111|112|113|114) */
    /* JADX WARN: Can't wrap try/catch for region: R(12:(14:(2:310|(43:312|313|(1:321)(1:315)|316|317|318|319|34|35|(1:37)(1:301)|105|106|107|(1:109)|110|111|112|113|114|115|116|117|118|(2:267|268)(1:120)|(10:(2:123|124)(1:249)|125|126|127|128|129|130|(9:134|(1:138)|139|(2:144|145)|146|147|145|131|132)|148|149)(2:250|(1:252)(4:253|254|255|256))|150|151|152|(1:154)|155|156|157|(5:159|(4:162|(2:164|165)(1:167)|166|160)|168|169|(13:171|(2:174|172)|175|176|(1:178)|180|181|182|183|184|(1:186)|187|188))(1:201)|200|(0)|180|181|182|183|184|(0)|187|188))(1:32)|156|157|(0)(0)|200|(0)|180|181|182|183|184|(0)|187|188)|115|116|117|118|(0)(0)|(0)(0)|150|151|152|(0)|155) */
    /* JADX WARN: Can't wrap try/catch for region: R(9:0|1|(15:2|3|4|5|6|7|8|9|10|11|(9:13|14|15|16|(1:18)(1:332)|19|(3:21|(1:23)|24)|331|24)(1:339)|25|26|(1:28)(1:330)|29)|(34:(2:310|(43:312|313|(1:321)(1:315)|316|317|318|319|34|35|(1:37)(1:301)|105|106|107|(1:109)|110|111|112|113|114|115|116|117|118|(2:267|268)(1:120)|(10:(2:123|124)(1:249)|125|126|127|128|129|130|(9:134|(1:138)|139|(2:144|145)|146|147|145|131|132)|148|149)(2:250|(1:252)(4:253|254|255|256))|150|151|152|(1:154)|155|156|157|(5:159|(4:162|(2:164|165)(1:167)|166|160)|168|169|(13:171|(2:174|172)|175|176|(1:178)|180|181|182|183|184|(1:186)|187|188))(1:201)|200|(0)|180|181|182|183|184|(0)|187|188))(1:32)|105|106|107|(0)|110|111|112|113|114|115|116|117|118|(0)(0)|(0)(0)|150|151|152|(0)|155|156|157|(0)(0)|200|(0)|180|181|182|183|184|(0)|187|188)|33|34|35|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x03bd, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x03be, code lost:
    
        r4 = r12;
        r13 = r25;
        r6 = "imapHighestKnownUid";
        r3 = r31;
        r16 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x03b2, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x03b3, code lost:
    
        r4 = r12;
        r13 = r25;
        r6 = "imapHighestKnownUid";
        r3 = r31;
        r16 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x03a7, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x03a8, code lost:
    
        r4 = r12;
        r13 = r25;
        r6 = "imapHighestKnownUid";
        r3 = r31;
        r16 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x040f, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x0410, code lost:
    
        r3 = "Saving new highest known UID: %d";
        r6 = "imapHighestKnownUid";
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x0414, code lost:
    
        r16 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x0406, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x0407, code lost:
    
        r3 = "Saving new highest known UID: %d";
        r6 = "imapHighestKnownUid";
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x040b, code lost:
    
        r16 = 0;
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x03fe, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x03ff, code lost:
    
        r3 = "Saving new highest known UID: %d";
        r6 = "imapHighestKnownUid";
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x0403, code lost:
    
        r16 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x0434, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x0435, code lost:
    
        r3 = "Saving new highest known UID: %d";
        r6 = "imapHighestKnownUid";
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x046a, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x046b, code lost:
    
        r3 = "Saving new highest known UID: %d";
        r6 = "imapHighestKnownUid";
        r4 = r12;
        r16 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:305:0x0461, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:306:0x0462, code lost:
    
        r3 = "Saving new highest known UID: %d";
        r6 = "imapHighestKnownUid";
        r24 = r11;
        r4 = r12;
        r16 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:307:0x045a, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x045b, code lost:
    
        r3 = "Saving new highest known UID: %d";
        r6 = "imapHighestKnownUid";
        r4 = r12;
        r16 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x0105, code lost:
    
        if (r13 != r22.longValue()) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x04cf, code lost:
    
        r0 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0511, code lost:
    
        r34 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0537, code lost:
    
        net.thunderbird.core.logging.legacy.Log.v(r3, java.lang.Long.valueOf(r13));
        r5.setFolderExtraNumber(r13, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0549, code lost:
    
        r34.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x050f, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x04f2, code lost:
    
        r12 = r34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x04d8, code lost:
    
        r5.messageStore.setStatus(r5.folderId, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x04e5, code lost:
    
        r34 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x04e7, code lost:
    
        r5.messageStore.setLastChecked(r5.folderId, java.lang.System.currentTimeMillis());
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x04ed, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x04fe, code lost:
    
        net.thunderbird.core.logging.legacy.Log.e(r0, "Could not set last checked on folder %s:%s", r24, r35);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x04fb, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x04fc, code lost:
    
        r34 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x04ef, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x04f0, code lost:
    
        r34 = r12;
     */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x02be A[Catch: all -> 0x022c, Exception -> 0x0235, AuthenticationFailedException -> 0x023f, TRY_ENTER, TryCatch #34 {AuthenticationFailedException -> 0x023f, Exception -> 0x0235, all -> 0x022c, blocks: (B:132:0x01ee, B:134:0x01f4, B:139:0x0219, B:141:0x0223, B:146:0x0248, B:149:0x0253, B:159:0x02be, B:160:0x02cb, B:162:0x02d1, B:164:0x02e1, B:169:0x02e7, B:171:0x02ef, B:172:0x02f8, B:174:0x02fe, B:178:0x0310), top: B:131:0x01ee }] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0310 A[Catch: all -> 0x022c, Exception -> 0x0235, AuthenticationFailedException -> 0x023f, TRY_LEAVE, TryCatch #34 {AuthenticationFailedException -> 0x023f, Exception -> 0x0235, all -> 0x022c, blocks: (B:132:0x01ee, B:134:0x01f4, B:139:0x0219, B:141:0x0223, B:146:0x0248, B:149:0x0253, B:159:0x02be, B:160:0x02cb, B:162:0x02d1, B:164:0x02e1, B:169:0x02e7, B:171:0x02ef, B:172:0x02f8, B:174:0x02fe, B:178:0x0310), top: B:131:0x01ee }] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x018f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:301:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0154 A[Catch: all -> 0x0124, Exception -> 0x012b, AuthenticationFailedException -> 0x0135, TRY_ENTER, TRY_LEAVE, TryCatch #38 {AuthenticationFailedException -> 0x0135, Exception -> 0x012b, all -> 0x0124, blocks: (B:37:0x0154, B:319:0x0120), top: B:318:0x0120 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0556 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x056b  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0573 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0588  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x04cf  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0511  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0535 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0549  */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x04d8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    @Override // com.fsck.k9.backend.api.Backend
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void sync(java.lang.String r35, com.fsck.k9.backend.api.SyncConfig r36, androidx.room.RoomConnectionManager r37) {
        /*
            Method dump skipped, instructions count: 1420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.backend.imap.ImapBackend.sync(java.lang.String, com.fsck.k9.backend.api.SyncConfig, androidx.room.RoomConnectionManager):void");
    }

    @Override // com.fsck.k9.backend.api.Backend
    public final String uploadMessage(String str, LocalMessage localMessage) {
        str.getClass();
        CommandDelete commandDelete = this.commandUploadMessage;
        commandDelete.getClass();
        RealImapFolder folder = commandDelete.imapStore.getFolder(str);
        try {
            folder.open(OpenMode.READ_WRITE);
            String str2 = localMessage.mUid;
            HashMap appendMessages = folder.appendMessages(IntOffsetKt.listOf(localMessage));
            return appendMessages != null ? (String) appendMessages.get(str2) : null;
        } finally {
            folder.close();
        }
    }
}
