package com.fsck.k9.storage.messages;

import android.database.sqlite.SQLiteDatabase;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.camera.view.PreviewView$1$$ExternalSyntheticLambda2;
import app.k9mail.legacy.mailstore.FolderMapper;
import app.k9mail.legacy.mailstore.SaveMessageData;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.mailstore.OutboxStateRepository$$ExternalSyntheticLambda0;
import com.fsck.k9.mailstore.OutboxStateRepository$$ExternalSyntheticLambda1;
import com.fsck.k9.message.extractors.BasicPartInfoExtractor;
import com.google.zxing.BinaryBitmap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.mail.message.list.internal.DefaultLocalMessageUidPrefixProvider;
import okio.Path;
import org.slf4j.event.EventRecodingLogger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class K9MessageStore {
    public final CheckFolderOperations checkFolderOperations;
    public final CopyMessageOperations copyMessageOperations;
    public final BinaryBitmap createFolderOperations;
    public final BinaryBitmap databaseOperations;
    public final DeleteFolderOperations deleteFolderOperations;
    public final DeleteFolderOperations deleteMessageOperations;
    public final CheckFolderOperations flagMessageOperations;
    public final CheckFolderOperations keyValueStoreOperations;
    public final EventRecodingLogger moveMessageOperations;
    public final CheckFolderOperations retrieveFolderOperations;
    public final CheckFolderOperations retrieveMessageListOperations;
    public final BinaryBitmap retrieveMessageOperations;
    public final CopyMessageOperations saveMessageOperations;
    public final CheckFolderOperations updateFolderOperations;
    public final CheckFolderOperations updateMessageOperations;

    public K9MessageStore(LockableDatabase lockableDatabase, LocalStore.AnonymousClass1 anonymousClass1, BasicPartInfoExtractor basicPartInfoExtractor, GeneralSettingsManager generalSettingsManager, AccountId accountId, DefaultLocalMessageUidPrefixProvider defaultLocalMessageUidPrefixProvider) {
        lockableDatabase.getClass();
        accountId.getClass();
        BinaryBitmap binaryBitmap = new BinaryBitmap(11, anonymousClass1, generalSettingsManager);
        Path.Companion companion = new Path.Companion();
        this.saveMessageOperations = new CopyMessageOperations(lockableDatabase, binaryBitmap, basicPartInfoExtractor, companion, accountId, defaultLocalMessageUidPrefixProvider);
        this.copyMessageOperations = new CopyMessageOperations(lockableDatabase, binaryBitmap, companion, accountId, defaultLocalMessageUidPrefixProvider);
        lockableDatabase.getClass();
        accountId.getClass();
        EventRecodingLogger eventRecodingLogger = new EventRecodingLogger();
        eventRecodingLogger.name = lockableDatabase;
        eventRecodingLogger.logger = companion;
        eventRecodingLogger.eventQueue = accountId;
        this.moveMessageOperations = eventRecodingLogger;
        this.flagMessageOperations = new CheckFolderOperations(lockableDatabase, 1);
        this.updateMessageOperations = new CheckFolderOperations(lockableDatabase, 6);
        this.retrieveMessageOperations = new BinaryBitmap(lockableDatabase, defaultLocalMessageUidPrefixProvider);
        this.retrieveMessageListOperations = new CheckFolderOperations(lockableDatabase, 4);
        this.deleteMessageOperations = new DeleteFolderOperations(lockableDatabase, binaryBitmap, 1);
        this.createFolderOperations = new BinaryBitmap(lockableDatabase, accountId);
        this.retrieveFolderOperations = new CheckFolderOperations(lockableDatabase, 3);
        this.checkFolderOperations = new CheckFolderOperations(lockableDatabase, 0);
        this.updateFolderOperations = new CheckFolderOperations(lockableDatabase, 5);
        this.deleteFolderOperations = new DeleteFolderOperations(lockableDatabase, binaryBitmap, 0);
        this.keyValueStoreOperations = new CheckFolderOperations(lockableDatabase, 2);
        this.databaseOperations = new BinaryBitmap(lockableDatabase, anonymousClass1);
    }

    public final boolean areAllIncludedInUnifiedInbox(Collection collection) {
        CheckFolderOperations checkFolderOperations = this.checkFolderOperations;
        checkFolderOperations.getClass();
        Object execute = checkFolderOperations.lockableDatabase.execute(false, new CheckFolderOperations$$ExternalSyntheticLambda1(0, collection));
        execute.getClass();
        return ((Boolean) execute).booleanValue();
    }

    public final Map copyMessages(ArrayList arrayList, long j) {
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            long longValue = ((Number) it.next()).longValue();
            Long valueOf = Long.valueOf(longValue);
            CopyMessageOperations copyMessageOperations = this.copyMessageOperations;
            long j2 = j;
            Object execute = copyMessageOperations.lockableDatabase.execute(true, new CopyMessageOperations$$ExternalSyntheticLambda0(copyMessageOperations, longValue, j2, 0));
            execute.getClass();
            arrayList2.add(new Pair(valueOf, Long.valueOf(((Number) execute).longValue())));
            j = j2;
        }
        return MapsKt__MapsKt.toMap(arrayList2);
    }

    public final Object getFolder(long j, FolderMapper folderMapper) {
        CheckFolderOperations checkFolderOperations = this.retrieveFolderOperations;
        checkFolderOperations.getClass();
        return checkFolderOperations.lockableDatabase.execute(false, new PreviewView$1$$ExternalSyntheticLambda2("id = ?", new String[]{String.valueOf(j)}, folderMapper, 5));
    }

    public final Long getFolderExtraNumber(long j, String str) {
        CheckFolderOperations checkFolderOperations = this.keyValueStoreOperations;
        checkFolderOperations.getClass();
        return (Long) checkFolderOperations.lockableDatabase.execute(false, new SaveMessageOperations$$ExternalSyntheticLambda0(j, str));
    }

    public final Long getFolderId(String str) {
        str.getClass();
        CheckFolderOperations checkFolderOperations = this.retrieveFolderOperations;
        checkFolderOperations.getClass();
        return (Long) checkFolderOperations.lockableDatabase.execute(false, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(27, str));
    }

    public final String getFolderServerId(long j) {
        return (String) this.retrieveFolderOperations.lockableDatabase.execute(false, new OutboxStateRepository$$ExternalSyntheticLambda0(7, j));
    }

    public final List getFolders(FolderMapper folderMapper) {
        CheckFolderOperations checkFolderOperations = this.retrieveFolderOperations;
        checkFolderOperations.getClass();
        Object execute = checkFolderOperations.lockableDatabase.execute(false, new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(13, "local_only = 0", folderMapper));
        execute.getClass();
        return (List) execute;
    }

    public final String getMessageServerId(long j) {
        return (String) ((LockableDatabase) this.retrieveMessageOperations.binarizer).execute(false, new OutboxStateRepository$$ExternalSyntheticLambda0(11, j));
    }

    public final boolean hasPushEnabledFolder() {
        Object execute = this.checkFolderOperations.lockableDatabase.execute(false, new Regex$$ExternalSyntheticBUOutline0(8));
        execute.getClass();
        return ((Boolean) execute).booleanValue();
    }

    public final long moveMessage(long j, long j2) {
        EventRecodingLogger eventRecodingLogger = this.moveMessageOperations;
        eventRecodingLogger.getClass();
        Log.d("Moving message [ID: " + j + "] to folder [ID: " + j2 + "]", new Object[0]);
        Object execute = ((LockableDatabase) eventRecodingLogger.name).execute(true, new CopyMessageOperations$$ExternalSyntheticLambda0(eventRecodingLogger, j, j2, 1));
        execute.getClass();
        return ((Number) execute).longValue();
    }

    public final Map moveMessages(ArrayList arrayList, long j) {
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            long longValue = ((Number) it.next()).longValue();
            arrayList2.add(new Pair(Long.valueOf(longValue), Long.valueOf(moveMessage(longValue, j))));
        }
        return MapsKt__MapsKt.toMap(arrayList2);
    }

    public final long saveLocalMessage(final long j, final SaveMessageData saveMessageData, Long l) {
        final CopyMessageOperations copyMessageOperations = this.saveMessageOperations;
        copyMessageOperations.getClass();
        LockableDatabase lockableDatabase = copyMessageOperations.lockableDatabase;
        if (l != null) {
            final long longValue = l.longValue();
            Object execute = lockableDatabase.execute(true, new LockableDatabase.DbCallback() { // from class: com.fsck.k9.storage.messages.SaveMessageOperations$$ExternalSyntheticLambda1
                @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
                public final Object doDbWork(SQLiteDatabase sQLiteDatabase) {
                    CopyMessageOperations copyMessageOperations2 = CopyMessageOperations.this;
                    LockableDatabase lockableDatabase2 = copyMessageOperations2.lockableDatabase;
                    long j2 = j;
                    long j3 = longValue;
                    Object execute2 = lockableDatabase2.execute(false, new OutboxStateRepository$$ExternalSyntheticLambda1(1, j2, j3));
                    execute2.getClass();
                    Pair pair = (Pair) execute2;
                    String str = (String) pair.first;
                    Long l2 = (Long) pair.second;
                    sQLiteDatabase.getClass();
                    copyMessageOperations2.replaceMessage(j2, j3, sQLiteDatabase, saveMessageData, l2, str);
                    return Long.valueOf(j3);
                }
            });
            execute.getClass();
            return ((Number) execute).longValue();
        }
        Object execute2 = lockableDatabase.execute(true, new SaveMessageOperations$$ExternalSyntheticLambda3(saveMessageData, copyMessageOperations, j, "K9LOCAL:" + UUID.randomUUID()));
        execute2.getClass();
        return ((Number) execute2).longValue();
    }
}
