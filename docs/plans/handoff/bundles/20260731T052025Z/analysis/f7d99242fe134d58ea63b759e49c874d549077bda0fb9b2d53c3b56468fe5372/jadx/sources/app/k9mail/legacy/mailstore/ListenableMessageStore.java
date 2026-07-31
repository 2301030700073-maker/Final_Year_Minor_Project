package app.k9mail.legacy.mailstore;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.camera.view.PreviewView$1$$ExternalSyntheticLambda2;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mail.FolderType;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.mailstore.OutboxStateRepository$$ExternalSyntheticLambda0;
import com.fsck.k9.mailstore.OutboxStateRepository$$ExternalSyntheticLambda1;
import com.fsck.k9.storage.messages.CheckFolderOperations;
import com.fsck.k9.storage.messages.CheckFolderOperations$$ExternalSyntheticLambda1;
import com.fsck.k9.storage.messages.FlagMessageOperations$WhenMappings;
import com.fsck.k9.storage.messages.FlagMessageOperationsKt;
import com.fsck.k9.storage.messages.K9MessageStore;
import com.fsck.k9.storage.messages.SaveMessageOperations$$ExternalSyntheticLambda0;
import com.fsck.k9.storage.messages.UpdateFolderOperations$$ExternalSyntheticLambda0;
import com.fsck.k9.storage.messages.UpdateFolderOperations$$ExternalSyntheticLambda6;
import com.google.zxing.BinaryBitmap;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyMap;
import kotlin.collections.EmptySet;
import kotlin.io.CloseableKt;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlin.text.StringsKt;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ListenableMessageStore {
    public final CopyOnWriteArraySet folderSettingsListener = new CopyOnWriteArraySet();
    public final LocalStore.AnonymousClass1 messageStore;

    public ListenableMessageStore(LocalStore.AnonymousClass1 anonymousClass1) {
        this.messageStore = anonymousClass1;
    }

    public final void changeFolder(String str, String str2, FolderType folderType) {
        str.getClass();
        K9MessageStore k9MessageStore = (K9MessageStore) this.messageStore.val$folders;
        str.getClass();
        CheckFolderOperations checkFolderOperations = k9MessageStore.updateFolderOperations;
        checkFolderOperations.getClass();
        checkFolderOperations.lockableDatabase.execute(false, new PreviewView$1$$ExternalSyntheticLambda2(str, str2, folderType, 6));
    }

    public final void clearNewMessageState() {
        LocalStore.AnonymousClass1 anonymousClass1 = this.messageStore;
        ((K9MessageStore) anonymousClass1.val$folders).updateMessageOperations.lockableDatabase.execute(false, new Regex$$ExternalSyntheticBUOutline0(12));
        anonymousClass1.notifyChange();
    }

    public final void compact() {
        BinaryBitmap binaryBitmap = ((K9MessageStore) this.messageStore.val$folders).databaseOperations;
        File attachmentDirectory = ((LocalStore.AnonymousClass1) binaryBitmap.matrix).getAttachmentDirectory();
        LockableDatabase lockableDatabase = (LockableDatabase) binaryBitmap.binarizer;
        int i = 10;
        Object execute = lockableDatabase.execute(false, new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(i, attachmentDirectory, binaryBitmap));
        execute.getClass();
        Log.i("Before compaction size = %d", Long.valueOf(((Number) execute).longValue()));
        lockableDatabase.execute(false, new Regex$$ExternalSyntheticBUOutline0(9));
        Object execute2 = lockableDatabase.execute(false, new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(i, ((LocalStore.AnonymousClass1) binaryBitmap.matrix).getAttachmentDirectory(), binaryBitmap));
        execute2.getClass();
        Log.i("After compaction size = %d", Long.valueOf(((Number) execute2).longValue()));
    }

    public final Map getAllMessagesAndEffectiveDates(long j) {
        BinaryBitmap binaryBitmap = ((K9MessageStore) this.messageStore.val$folders).retrieveMessageOperations;
        Object obj = binaryBitmap.matrix;
        Object execute = ((LockableDatabase) binaryBitmap.binarizer).execute(false, new OutboxStateRepository$$ExternalSyntheticLambda0(9, j));
        execute.getClass();
        return (Map) execute;
    }

    public final Set getMessageFlags(long j, String str) {
        str.getClass();
        K9MessageStore k9MessageStore = (K9MessageStore) this.messageStore.val$folders;
        str.getClass();
        BinaryBitmap binaryBitmap = k9MessageStore.retrieveMessageOperations;
        binaryBitmap.getClass();
        Object execute = ((LockableDatabase) binaryBitmap.binarizer).execute(false, new SaveMessageOperations$$ExternalSyntheticLambda0(3, j, str));
        execute.getClass();
        return (Set) execute;
    }

    public final Map getMessageServerIds(Collection collection) {
        collection.getClass();
        K9MessageStore k9MessageStore = (K9MessageStore) this.messageStore.val$folders;
        collection.getClass();
        BinaryBitmap binaryBitmap = k9MessageStore.retrieveMessageOperations;
        binaryBitmap.getClass();
        if (collection.isEmpty()) {
            return EmptyMap.INSTANCE;
        }
        Object execute = ((LockableDatabase) binaryBitmap.binarizer).execute(false, new CheckFolderOperations$$ExternalSyntheticLambda1(1, collection));
        execute.getClass();
        return (Map) execute;
    }

    public final boolean isMessagePresent(long j, String str) {
        str.getClass();
        K9MessageStore k9MessageStore = (K9MessageStore) this.messageStore.val$folders;
        str.getClass();
        BinaryBitmap binaryBitmap = k9MessageStore.retrieveMessageOperations;
        binaryBitmap.getClass();
        Object execute = ((LockableDatabase) binaryBitmap.binarizer).execute(false, new SaveMessageOperations$$ExternalSyntheticLambda0(4, j, str));
        execute.getClass();
        return ((Boolean) execute).booleanValue();
    }

    public final void notifyFolderSettingsChanged() {
        Iterator it = this.folderSettingsListener.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((FolderSettingsChangedListener) it.next()).onFolderSettingsChanged();
        }
    }

    public final void setFlag(Collection collection, Flag flag) {
        String str;
        collection.getClass();
        flag.getClass();
        collection.getClass();
        flag.getClass();
        LocalStore.AnonymousClass1 anonymousClass1 = this.messageStore;
        K9MessageStore k9MessageStore = (K9MessageStore) anonymousClass1.val$folders;
        collection.getClass();
        flag.getClass();
        CheckFolderOperations checkFolderOperations = k9MessageStore.flagMessageOperations;
        checkFolderOperations.getClass();
        if (collection.isEmpty()) {
            UriKt$$ExternalSyntheticBUOutline0.m("'messageIds' must not be empty");
        } else if (FlagMessageOperationsKt.SPECIAL_FLAGS.contains(flag)) {
            int i = FlagMessageOperations$WhenMappings.$EnumSwitchMapping$0[flag.ordinal()];
            if (i == 2) {
                str = "read";
            } else if (i == 3) {
                str = "flagged";
            } else if (i == 4) {
                str = "answered";
            } else if (i == 5) {
                str = "forwarded";
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) flag, "Unsupported flag: ");
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put(str, (Integer) 1);
            checkFolderOperations.lockableDatabase.execute(true, new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(12, collection, contentValues));
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("not implemented");
        }
        anonymousClass1.notifyChange();
    }

    public final void setIncludeInUnifiedInbox(long j, boolean z) {
        ((K9MessageStore) this.messageStore.val$folders).updateFolderOperations.lockableDatabase.execute(false, new UpdateFolderOperations$$ExternalSyntheticLambda6(j, "integrate", z, 0));
        notifyFolderSettingsChanged();
    }

    public final void setLastChecked(long j, long j2) {
        ((K9MessageStore) this.messageStore.val$folders).updateFolderOperations.lockableDatabase.execute(false, new OutboxStateRepository$$ExternalSyntheticLambda1(2, j, j2));
    }

    public final void setMessageFlag(final long j, final String str, final Flag flag, final boolean z) {
        str.getClass();
        flag.getClass();
        str.getClass();
        flag.getClass();
        LocalStore.AnonymousClass1 anonymousClass1 = this.messageStore;
        K9MessageStore k9MessageStore = (K9MessageStore) anonymousClass1.val$folders;
        str.getClass();
        flag.getClass();
        final CheckFolderOperations checkFolderOperations = k9MessageStore.flagMessageOperations;
        checkFolderOperations.getClass();
        int i = FlagMessageOperations$WhenMappings.$EnumSwitchMapping$0[flag.ordinal()];
        if (i == 1) {
            checkFolderOperations.setBoolean(j, str, "deleted", z);
        } else if (i == 2) {
            checkFolderOperations.setBoolean(j, str, "read", z);
        } else if (i == 3) {
            checkFolderOperations.setBoolean(j, str, "flagged", z);
        } else if (i == 4) {
            checkFolderOperations.setBoolean(j, str, "answered", z);
        } else if (i != 5) {
            checkFolderOperations.lockableDatabase.execute(true, new LockableDatabase.DbCallback() { // from class: com.fsck.k9.storage.messages.FlagMessageOperations$$ExternalSyntheticLambda1
                @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
                public final Object doDbWork(SQLiteDatabase sQLiteDatabase) {
                    Set set;
                    sQLiteDatabase.getClass();
                    CheckFolderOperations.this.getClass();
                    long j2 = j;
                    String valueOf = String.valueOf(j2);
                    String str2 = str;
                    Cursor query = sQLiteDatabase.query("messages", new String[]{"flags"}, "folder_id = ? AND uid = ?", new String[]{valueOf, str2}, null, null, null);
                    try {
                        if (!query.moveToFirst()) {
                            throw new IllegalStateException(("Message not found " + j2 + ":" + str2).toString());
                        }
                        if (query.isNull(0)) {
                            set = EmptySet.INSTANCE;
                        } else {
                            String string = query.getString(0);
                            string.getClass();
                            List split$default = StringsKt.split$default(string, new char[]{','});
                            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(split$default, 10));
                            Iterator it = split$default.iterator();
                            while (it.hasNext()) {
                                arrayList.add(Flag.valueOf((String) it.next()));
                            }
                            set = CollectionsKt.toSet(arrayList);
                        }
                        query.close();
                        boolean z2 = z;
                        Flag flag2 = flag;
                        String joinToString$default = CollectionsKt.joinToString$default(z2 ? Validate.plus(set, flag2) : Validate.minus(set, flag2), ",", null, null, null, 62);
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("flags", joinToString$default);
                        return Integer.valueOf(sQLiteDatabase.update("messages", contentValues, "folder_id = ? AND uid = ?", new String[]{String.valueOf(j2), str2}));
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.closeFinally(query, th);
                            throw th2;
                        }
                    }
                }
            });
        } else {
            checkFolderOperations.setBoolean(j, str, "forwarded", z);
        }
        anonymousClass1.notifyChange();
    }

    public final void setNewMessageState(long j, String str, boolean z) {
        str.getClass();
        str.getClass();
        LocalStore.AnonymousClass1 anonymousClass1 = this.messageStore;
        K9MessageStore k9MessageStore = (K9MessageStore) anonymousClass1.val$folders;
        str.getClass();
        CheckFolderOperations checkFolderOperations = k9MessageStore.updateMessageOperations;
        checkFolderOperations.getClass();
        checkFolderOperations.lockableDatabase.execute(false, new UpdateFolderOperations$$ExternalSyntheticLambda6(j, str, z, 1));
        anonymousClass1.notifyChange();
    }

    public final void setPushDisabled() {
        ((K9MessageStore) this.messageStore.val$folders).updateFolderOperations.lockableDatabase.execute(false, new Regex$$ExternalSyntheticBUOutline0(11));
        notifyFolderSettingsChanged();
    }

    public final void setStatus(long j, String str) {
        ((K9MessageStore) this.messageStore.val$folders).updateFolderOperations.lockableDatabase.execute(false, new UpdateFolderOperations$$ExternalSyntheticLambda0(j, str, "status", 0));
    }

    public final void setVisible(long j) {
        ((K9MessageStore) this.messageStore.val$folders).updateFolderOperations.lockableDatabase.execute(false, new UpdateFolderOperations$$ExternalSyntheticLambda6(j, "visible", true, 0));
        notifyFolderSettingsChanged();
    }
}
