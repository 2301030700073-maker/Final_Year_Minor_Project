package com.fsck.k9.mailstore;

import androidx.camera.view.PreviewView$1$$ExternalSyntheticLambda2;
import androidx.compose.ui.Modifier;
import app.k9mail.legacy.mailstore.ListenableMessageStore;
import app.k9mail.legacy.mailstore.SaveMessageData;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.backend.api.BackendFolder$MoreMessages;
import com.fsck.k9.mail.MessageDownloadState;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.storage.messages.CheckFolderOperations;
import com.fsck.k9.storage.messages.CopyMessageOperations;
import com.fsck.k9.storage.messages.K9MessageStore;
import com.fsck.k9.storage.messages.SaveMessageOperations$$ExternalSyntheticLambda3;
import com.fsck.k9.storage.messages.UpdateFolderOperations$$ExternalSyntheticLambda0;
import com.google.zxing.BinaryBitmap;
import java.util.Set;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class K9BackendFolder {
    public final long folderId;
    public final ListenableMessageStore messageStore;
    public final SaveMessageDataCreator saveMessageDataCreator;
    public final int visibleLimit;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Init {
        public final long folderId;
        public final String name;
        public final int visibleLimit;

        public Init(int i, long j, String str) {
            this.folderId = j;
            this.name = str;
            this.visibleLimit = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Init)) {
                return false;
            }
            Init init = (Init) obj;
            return this.folderId == init.folderId && this.name.equals(init.name) && this.visibleLimit == init.visibleLimit;
        }

        public final int hashCode() {
            long j = this.folderId;
            return Modifier.CC.m(((int) (j ^ (j >>> 32))) * 31, this.name, 31) + this.visibleLimit;
        }

        public final String toString() {
            return "Init(folderId=" + this.folderId + ", name=" + this.name + ", visibleLimit=" + this.visibleLimit + ")";
        }
    }

    public K9BackendFolder(ListenableMessageStore listenableMessageStore, SaveMessageDataCreator saveMessageDataCreator, String str) {
        str.getClass();
        this.messageStore = listenableMessageStore;
        this.saveMessageDataCreator = saveMessageDataCreator;
        Regex$$ExternalSyntheticBUOutline0 regex$$ExternalSyntheticBUOutline0 = new Regex$$ExternalSyntheticBUOutline0(5);
        str.getClass();
        K9MessageStore k9MessageStore = (K9MessageStore) listenableMessageStore.messageStore.val$folders;
        str.getClass();
        CheckFolderOperations checkFolderOperations = k9MessageStore.retrieveFolderOperations;
        checkFolderOperations.getClass();
        String str2 = "server_id = ?";
        Init init = (Init) checkFolderOperations.lockableDatabase.execute(false, new PreviewView$1$$ExternalSyntheticLambda2(str2, new String[]{str}, regex$$ExternalSyntheticBUOutline0, 5));
        if (init == null) {
            Regex$$ExternalSyntheticBUOutline0.m((Object) "Couldn't find folder ".concat(str));
            throw null;
        }
        long j = init.folderId;
        String.valueOf(j);
        this.folderId = j;
        this.visibleLimit = init.visibleLimit;
    }

    public final void clearAllMessages() {
        ListenableMessageStore listenableMessageStore = this.messageStore;
        BinaryBitmap binaryBitmap = ((K9MessageStore) listenableMessageStore.messageStore.val$folders).retrieveMessageOperations;
        Object obj = binaryBitmap.matrix;
        LockableDatabase lockableDatabase = (LockableDatabase) binaryBitmap.binarizer;
        long j = this.folderId;
        Object execute = lockableDatabase.execute(false, new OutboxStateRepository$$ExternalSyntheticLambda0(10, j));
        execute.getClass();
        listenableMessageStore.messageStore.destroyMessages(j, (Set) execute);
    }

    public final void saveMessage(MimeMessage mimeMessage, MessageDownloadState messageDownloadState) {
        mimeMessage.getClass();
        String str = mimeMessage.mUid;
        if (str == null || str.length() == 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Message requires a server ID to be set");
            return;
        }
        SaveMessageData createSaveMessageData = this.saveMessageDataCreator.createSaveMessageData(mimeMessage, messageDownloadState, null);
        String str2 = mimeMessage.mUid;
        str2.getClass();
        LocalStore.AnonymousClass1 anonymousClass1 = this.messageStore.messageStore;
        str2.getClass();
        K9MessageStore k9MessageStore = (K9MessageStore) anonymousClass1.val$folders;
        str2.getClass();
        CopyMessageOperations copyMessageOperations = k9MessageStore.saveMessageOperations;
        copyMessageOperations.getClass();
        Object execute = copyMessageOperations.lockableDatabase.execute(true, new SaveMessageOperations$$ExternalSyntheticLambda3(createSaveMessageData, copyMessageOperations, this.folderId, str2));
        execute.getClass();
        ((Number) execute).longValue();
        anonymousClass1.notifyChange();
    }

    public final void setFolderExtraNumber(long j, String str) {
        CheckFolderOperations checkFolderOperations = ((K9MessageStore) this.messageStore.messageStore.val$folders).keyValueStoreOperations;
        checkFolderOperations.getClass();
        checkFolderOperations.lockableDatabase.execute(false, new OutboxStateRepository$$ExternalSyntheticLambda3(this.folderId, str, j));
    }

    public final void setMoreMessages(BackendFolder$MoreMessages backendFolder$MoreMessages) {
        int ordinal = backendFolder$MoreMessages.ordinal();
        int i = 1;
        if (ordinal != 0) {
            if (ordinal == 1) {
                i = 2;
            } else {
                if (ordinal != 2) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return;
                }
                i = 3;
            }
        }
        LocalStore.AnonymousClass1 anonymousClass1 = this.messageStore.messageStore;
        CheckFolderOperations checkFolderOperations = ((K9MessageStore) anonymousClass1.val$folders).updateFolderOperations;
        checkFolderOperations.getClass();
        checkFolderOperations.lockableDatabase.execute(false, new UpdateFolderOperations$$ExternalSyntheticLambda0(this.folderId, ViewSizeResolver.CC.getDatabaseName(i), "more_messages", 0));
        anonymousClass1.notifyChange();
    }
}
