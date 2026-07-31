package app.k9mail.legacy.ui.folder;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import androidx.viewpager.widget.ViewPager;
import app.k9mail.legacy.mailstore.ListenableMessageStore;
import app.k9mail.legacy.mailstore.MessageStoreManager;
import app.k9mail.legacy.message.controller.MessagingControllerRegistry;
import coil3.size.ViewSizeResolver;
import com.bytehamster.lib.preferencesearch.PreferenceParser;
import com.fsck.k9.mailstore.LocalFolder$$ExternalSyntheticLambda1;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import com.fsck.k9.storage.messages.CheckFolderOperations;
import com.fsck.k9.storage.messages.K9MessageStore;
import java.text.Collator;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultDisplayFolderRepository {
    public final LegacyAccountDtoManager accountManager;
    public final CoroutineContext coroutineContext;
    public final MessageStoreManager messageStoreManager;
    public final MessagingControllerRegistry messagingController;
    public final DefaultOutboxFolderManager outboxFolderManager;
    public final DefaultDisplayFolderRepository$special$$inlined$thenBy$1 sortForDisplay;

    public DefaultDisplayFolderRepository(MessageStoreManager messageStoreManager, MessagingControllerRegistry messagingControllerRegistry, DefaultOutboxFolderManager defaultOutboxFolderManager, LegacyAccountDtoManager legacyAccountDtoManager) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.accountManager = legacyAccountDtoManager;
        this.messagingController = messagingControllerRegistry;
        this.messageStoreManager = messageStoreManager;
        this.outboxFolderManager = defaultOutboxFolderManager;
        this.coroutineContext = defaultIoScheduler;
        PreferenceParser.AnonymousClass1 anonymousClass1 = new PreferenceParser.AnonymousClass1(8, new PreferenceParser.AnonymousClass1(7, new PreferenceParser.AnonymousClass1(6, new ViewPager.AnonymousClass1(14))));
        Collator collator = Collator.getInstance();
        collator.setDecomposition(1);
        this.sortForDisplay = new DefaultDisplayFolderRepository$special$$inlined$thenBy$1(anonymousClass1, collator);
    }

    public static final List access$getDisplayFolders(DefaultDisplayFolderRepository defaultDisplayFolderRepository, LegacyAccountDto legacyAccountDto, long j, final boolean z) {
        ListenableMessageStore messageStore = defaultDisplayFolderRepository.messageStoreManager.getMessageStore(legacyAccountDto.uuid);
        final Long valueOf = Long.valueOf(j);
        final LocalFolder$$ExternalSyntheticLambda1 localFolder$$ExternalSyntheticLambda1 = new LocalFolder$$ExternalSyntheticLambda1(defaultDisplayFolderRepository, legacyAccountDto, j);
        final CheckFolderOperations checkFolderOperations = ((K9MessageStore) messageStore.messageStore.val$folders).retrieveFolderOperations;
        checkFolderOperations.getClass();
        Object execute = checkFolderOperations.lockableDatabase.execute(false, new LockableDatabase.DbCallback() { // from class: com.fsck.k9.storage.messages.RetrieveFolderOperations$$ExternalSyntheticLambda6
            @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
            public final Object doDbWork(SQLiteDatabase sQLiteDatabase) {
                LocalFolder$$ExternalSyntheticLambda1 localFolder$$ExternalSyntheticLambda12 = localFolder$$ExternalSyntheticLambda1;
                CheckFolderOperations.this.getClass();
                Cursor rawQuery = sQLiteDatabase.rawQuery(ViewSizeResolver.CC.m("\nSELECT ", ArraysKt___ArraysKt.joinToString$default(K9MessageStoreFactoryKt.FOLDER_COLUMNS, null, null, null, null, 63), ", (\n  SELECT COUNT(messages.id)\n  FROM messages\n  WHERE messages.folder_id = folders.id\n    AND messages.empty = 0 AND messages.deleted = 0\n    AND (messages.read = 0 OR folders.id = ?)\n), (\n  SELECT COUNT(messages.id)\n  FROM messages\n  WHERE messages.folder_id = folders.id\n    AND messages.empty = 0 AND messages.deleted = 0\n    AND messages.flagged = 1\n)\nFROM folders\n", z ? "" : "WHERE visible = 1", "\n                "), new String[]{String.valueOf(valueOf.longValue())});
                try {
                    rawQuery.getClass();
                    ConnectionPool connectionPool = new ConnectionPool(5, rawQuery);
                    int count = rawQuery.getCount();
                    ArrayList arrayList = new ArrayList(count);
                    for (int i = 0; i < count; i++) {
                        rawQuery.moveToPosition(i);
                        arrayList.add(localFolder$$ExternalSyntheticLambda12.map(connectionPool));
                    }
                    rawQuery.close();
                    return arrayList;
                } finally {
                }
            }
        });
        execute.getClass();
        return CollectionsKt.sortedWith((List) execute, defaultDisplayFolderRepository.sortForDisplay);
    }

    public final Flow getDisplayFoldersFlow(LegacyAccountDto legacyAccountDto, boolean z) {
        legacyAccountDto.getClass();
        return FlowKt.flowOn(FlowKt.distinctUntilChanged(FlowKt.buffer$default(FlowKt.callbackFlow(new DefaultDisplayFolderRepository$getDisplayFoldersFlow$1(this, legacyAccountDto, z, this.messageStoreManager.getMessageStore(legacyAccountDto.uuid), null)), -1)), this.coroutineContext);
    }
}
