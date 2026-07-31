package androidx.room;

import android.content.Context;
import androidx.compose.ui.platform.WeakCache;
import androidx.fragment.app.Fragment;
import androidx.room.RoomDatabase;
import androidx.room.coroutines.ConnectionPool;
import androidx.room.coroutines.ConnectionPoolImpl;
import androidx.room.driver.SupportSQLiteConnection;
import androidx.room.driver.SupportSQLiteConnectionPool;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.SQLiteStatement;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.work.Data;
import androidx.work.impl.CleanupCallback;
import app.k9mail.legacy.message.controller.MessageReference;
import app.k9mail.legacy.message.controller.SimpleMessagingListener;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.backend.api.SyncListener;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.helper.MutableBoolean;
import com.fsck.k9.mail.AuthenticationFailedException;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LocalMessage;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.MessageListCache;
import com.fsck.k9.notification.AuthenticationErrorNotificationController;
import com.fsck.k9.notification.NewMailNotificationController;
import com.fsck.k9.notification.NewMailNotificationData;
import com.fsck.k9.notification.NotificationController;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.NotImplementedError;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.Cookie;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RoomConnectionManager implements SyncListener {
    public final Object callbacks;
    public final Object configuration;
    public final Object connectionPool;
    public boolean isConfigured;
    public boolean isInitializing;
    public final Object openDelegate;
    public Object supportDatabase;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NoOpOpenDelegate extends RoomOpenDelegate {
        @Override // androidx.room.RoomOpenDelegate
        public final void createAllTables(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public final void dropAllTables(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public final void onCreate(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public final void onOpen(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public final void onPostMigrate(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public final void onPreMigrate(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public final LocalFolder.AnonymousClass8 onValidateSchema(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }
    }

    public RoomConnectionManager(DatabaseConfiguration databaseConfiguration, RoomOpenDelegate roomOpenDelegate) {
        int i;
        ConnectionPoolImpl connectionPoolImpl;
        RoomDatabase.JournalMode journalMode = databaseConfiguration.journalMode;
        SupportSQLiteOpenHelper.Factory factory = databaseConfiguration.sqliteOpenHelperFactory;
        String str = databaseConfiguration.name;
        this.configuration = databaseConfiguration;
        this.openDelegate = roomOpenDelegate;
        Object obj = databaseConfiguration.callbacks;
        this.callbacks = obj == null ? EmptyList.INSTANCE : obj;
        SQLiteDriver sQLiteDriver = databaseConfiguration.sqliteDriver;
        if (sQLiteDriver != null) {
            if (str == null) {
                connectionPoolImpl = new ConnectionPoolImpl(new WeakCache(this, sQLiteDriver));
            } else {
                WeakCache weakCache = new WeakCache(this, sQLiteDriver);
                int ordinal = journalMode.ordinal();
                if (ordinal == 1) {
                    i = 1;
                } else {
                    if (ordinal != 2) {
                        throw new IllegalStateException(("Can't get max number of reader for journal mode '" + journalMode + '\'').toString());
                    }
                    i = 4;
                }
                int ordinal2 = journalMode.ordinal();
                if (ordinal2 != 1 && ordinal2 != 2) {
                    throw new IllegalStateException(("Can't get max number of writers for journal mode '" + journalMode + '\'').toString());
                }
                connectionPoolImpl = new ConnectionPoolImpl(weakCache, str, i);
            }
            this.connectionPool = connectionPoolImpl;
        } else {
            if (factory == null) {
                UriKt$$ExternalSyntheticBUOutline0.m("SQLiteManager was constructed with both null driver and open helper factory!");
                throw null;
            }
            Context context = databaseConfiguration.context;
            context.getClass();
            SupportSQLiteOpenHelper create = factory.create(new MessageHomeActivity.LaunchData(context, str, new PriorityQueue(this, roomOpenDelegate.version), false, false));
            create.getClass();
            Fragment.AnonymousClass7 anonymousClass7 = new Fragment.AnonymousClass7();
            anonymousClass7.this$0 = create;
            this.connectionPool = new SupportSQLiteConnectionPool(anonymousClass7);
        }
        boolean z = journalMode == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING;
        SupportSQLiteOpenHelper supportOpenHelper$room_runtime_release = getSupportOpenHelper$room_runtime_release();
        if (supportOpenHelper$room_runtime_release != null) {
            supportOpenHelper$room_runtime_release.setWriteAheadLoggingEnabled(z);
        }
    }

    public static final void access$configureDatabase(RoomConnectionManager roomConnectionManager, SQLiteConnection sQLiteConnection) {
        Object failure;
        RoomOpenDelegate roomOpenDelegate = (RoomOpenDelegate) roomConnectionManager.openDelegate;
        DatabaseConfiguration databaseConfiguration = (DatabaseConfiguration) roomConnectionManager.configuration;
        RoomDatabase.JournalMode journalMode = databaseConfiguration.journalMode;
        RoomDatabase.JournalMode journalMode2 = RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING;
        if (journalMode == journalMode2) {
            SQLite.execSQL(sQLiteConnection, "PRAGMA journal_mode = WAL");
        } else {
            SQLite.execSQL(sQLiteConnection, "PRAGMA journal_mode = TRUNCATE");
        }
        if (databaseConfiguration.journalMode == journalMode2) {
            SQLite.execSQL(sQLiteConnection, "PRAGMA synchronous = NORMAL");
        } else {
            SQLite.execSQL(sQLiteConnection, "PRAGMA synchronous = FULL");
        }
        configureBusyTimeout(sQLiteConnection);
        SQLiteStatement prepare = sQLiteConnection.prepare("PRAGMA user_version");
        try {
            prepare.step();
            int i = (int) prepare.getLong(0);
            Cookie.Companion.closeFinally(prepare, null);
            int i2 = roomOpenDelegate.version;
            if (i != i2) {
                SQLite.execSQL(sQLiteConnection, "BEGIN EXCLUSIVE TRANSACTION");
                try {
                    if (i == 0) {
                        roomConnectionManager.onCreate(sQLiteConnection);
                    } else {
                        roomConnectionManager.onMigrate(sQLiteConnection, i, i2);
                    }
                    SQLite.execSQL(sQLiteConnection, "PRAGMA user_version = " + i2);
                    failure = Unit.INSTANCE;
                } catch (Throwable th) {
                    failure = new Result.Failure(th);
                }
                if (!(failure instanceof Result.Failure)) {
                    SQLite.execSQL(sQLiteConnection, "END TRANSACTION");
                }
                Throwable m979exceptionOrNullimpl = Result.m979exceptionOrNullimpl(failure);
                if (m979exceptionOrNullimpl != null) {
                    SQLite.execSQL(sQLiteConnection, "ROLLBACK TRANSACTION");
                    throw m979exceptionOrNullimpl;
                }
            }
            roomConnectionManager.onOpen(sQLiteConnection);
        } finally {
        }
    }

    public static void configureBusyTimeout(SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare("PRAGMA busy_timeout");
        try {
            prepare.step();
            long j = prepare.getLong(0);
            Cookie.Companion.closeFinally(prepare, null);
            if (j < 3000) {
                SQLite.execSQL(sQLiteConnection, "PRAGMA busy_timeout = 3000");
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                Cookie.Companion.closeFinally(prepare, th);
                throw th2;
            }
        }
    }

    public void folderStatusChanged(String str) {
        MessagingController messagingController = (MessagingController) this.supportDatabase;
        LegacyAccountDto legacyAccountDto = (LegacyAccountDto) this.configuration;
        messagingController.getFolderId(legacyAccountDto, str);
        Iterator it = messagingController.getListeners((SimpleMessagingListener) this.openDelegate).iterator();
        while (it.hasNext()) {
            ((SimpleMessagingListener) it.next()).folderStatusChanged(legacyAccountDto);
        }
    }

    public SupportSQLiteOpenHelper getSupportOpenHelper$room_runtime_release() {
        ConnectionPool connectionPool = (ConnectionPool) this.connectionPool;
        SupportSQLiteConnectionPool supportSQLiteConnectionPool = connectionPool instanceof SupportSQLiteConnectionPool ? (SupportSQLiteConnectionPool) connectionPool : null;
        if (supportSQLiteConnectionPool != null) {
            return (SupportSQLiteOpenHelper) supportSQLiteConnectionPool.supportDriver.this$0;
        }
        return null;
    }

    public LocalMessage loadMessage(String str, String str2) {
        try {
            LocalStore localStore = (LocalStore) this.callbacks;
            LocalFolder localFolder = new LocalFolder(localStore, str, localStore.generalSettingsManager, localStore.localMessageUidPrefixProvider);
            localFolder.open();
            return localFolder.getMessage(str2);
        } catch (MessagingException e) {
            DBUtil$$ExternalSyntheticBUOutline0.m(ViewSizeResolver.CC.m("Couldn't load message (", str, ":", str2, ")"), (Throwable) e);
            return null;
        }
    }

    public void onCreate(SQLiteConnection sQLiteConnection) {
        RoomOpenDelegate roomOpenDelegate = (RoomOpenDelegate) this.openDelegate;
        sQLiteConnection.getClass();
        SQLiteStatement prepare = sQLiteConnection.prepare("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z = false;
            if (prepare.step()) {
                if (prepare.getLong(0) == 0) {
                    z = true;
                }
            }
            Cookie.Companion.closeFinally(prepare, null);
            roomOpenDelegate.createAllTables(sQLiteConnection);
            if (!z) {
                if (!roomOpenDelegate.onValidateSchema(sQLiteConnection).val$includeDeleted) {
                    DBUtil$$ExternalSyntheticBUOutline0.m(r1.this$0, "Pre-packaged database has an invalid schema: ");
                    return;
                }
            }
            updateIdentity(sQLiteConnection);
            roomOpenDelegate.onCreate(sQLiteConnection);
            Iterator it = ((List) this.callbacks).iterator();
            while (it.hasNext()) {
                ((CleanupCallback) it.next()).getClass();
                if (sQLiteConnection instanceof SupportSQLiteConnection) {
                    ((SupportSQLiteConnection) sQLiteConnection).db.getClass();
                }
            }
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x00a4 A[EDGE_INSN: B:130:0x00a4->B:114:0x00a4 BREAK  A[LOOP:4: B:92:0x002b->B:115:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMigrate(androidx.sqlite.SQLiteConnection r17, int r18, int r19) {
        /*
            Method dump skipped, instructions count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomConnectionManager.onMigrate(androidx.sqlite.SQLiteConnection, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onOpen(androidx.sqlite.SQLiteConnection r11) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomConnectionManager.onOpen(androidx.sqlite.SQLiteConnection):void");
    }

    public void syncAuthenticationSuccess() {
        MessagingController messagingController = (MessagingController) this.supportDatabase;
        LegacyAccountDto legacyAccountDto = (LegacyAccountDto) this.configuration;
        messagingController.clearAuthenticationErrorNotification(legacyAccountDto, true, false);
        NotificationController notificationController = messagingController.notificationController;
        notificationController.getClass();
        legacyAccountDto.getClass();
        AuthenticationErrorNotificationController authenticationErrorNotificationController = notificationController.authenticationErrorNotificationController;
        authenticationErrorNotificationController.notificationHelper.notificationManager.cancel((legacyAccountDto.getAccountNumber() * 16) + 6);
    }

    public void syncFailed(String str, String str2, Exception exc) {
        LegacyAccountDto legacyAccountDto = (LegacyAccountDto) this.configuration;
        this.isInitializing = true;
        boolean z = exc instanceof AuthenticationFailedException;
        MessagingController messagingController = (MessagingController) this.supportDatabase;
        if (z) {
            messagingController.handleAuthenticationFailure(legacyAccountDto, true);
        } else {
            messagingController.notifyUserIfCertificateProblem(legacyAccountDto, exc, true);
        }
        long folderId = messagingController.getFolderId(legacyAccountDto, str);
        Iterator it = messagingController.getListeners((SimpleMessagingListener) this.openDelegate).iterator();
        while (it.hasNext()) {
            ((SimpleMessagingListener) it.next()).synchronizeMailboxFailed(legacyAccountDto, folderId, str2);
        }
    }

    public void syncFinished(String str) {
        MessagingController messagingController = (MessagingController) this.supportDatabase;
        LegacyAccountDto legacyAccountDto = (LegacyAccountDto) this.configuration;
        long folderId = messagingController.getFolderId(legacyAccountDto, str);
        Iterator it = messagingController.getListeners((SimpleMessagingListener) this.openDelegate).iterator();
        while (it.hasNext()) {
            ((SimpleMessagingListener) it.next()).synchronizeMailboxFinished(legacyAccountDto, folderId);
        }
    }

    @Override // com.fsck.k9.backend.api.SyncListener
    public void syncFlagChanged(String str, String str2) {
        LegacyAccountDto legacyAccountDto = (LegacyAccountDto) this.configuration;
        MessagingController messagingController = (MessagingController) this.supportDatabase;
        LocalMessage loadMessage = loadMessage(str, str2);
        if (!loadMessage.mFlags.contains(Flag.DELETED)) {
            long j = loadMessage.databaseId;
            LocalFolder localFolder = loadMessage.mFolder;
            if (!MessageListCache.getCache(localFolder.localStore.account.uuid).isMessageHidden(j, localFolder.databaseId)) {
                if (messagingController.notificationStrategy.shouldNotifyForMessage(legacyAccountDto, loadMessage.mFolder, loadMessage, false)) {
                    return;
                }
                messagingController.notificationController.removeNewMailNotification(legacyAccountDto, loadMessage.makeMessageReference());
            }
        }
        syncRemovedMessage(str, loadMessage.mUid);
        messagingController.notificationController.removeNewMailNotification(legacyAccountDto, loadMessage.makeMessageReference());
    }

    public void syncHeadersFinished(int i, String str, int i2) {
        Iterator it = ((MessagingController) this.supportDatabase).getListeners((SimpleMessagingListener) this.openDelegate).iterator();
        while (it.hasNext()) {
            ((SimpleMessagingListener) it.next()).synchronizeMailboxHeadersFinished((LegacyAccountDto) this.configuration, str);
        }
    }

    public void syncHeadersProgress(int i, String str, int i2) {
        Iterator it = ((MessagingController) this.supportDatabase).getListeners((SimpleMessagingListener) this.openDelegate).iterator();
        while (it.hasNext()) {
            ((SimpleMessagingListener) it.next()).synchronizeMailboxHeadersProgress((LegacyAccountDto) this.configuration, str, i, i2);
        }
    }

    public void syncHeadersStarted(String str) {
        Iterator it = ((MessagingController) this.supportDatabase).getListeners((SimpleMessagingListener) this.openDelegate).iterator();
        while (it.hasNext()) {
            ((SimpleMessagingListener) it.next()).getClass();
        }
    }

    @Override // com.fsck.k9.backend.api.SyncListener
    public void syncNewMessage(String str, String str2, boolean z) {
        LocalMessage loadMessage = loadMessage(str, str2);
        LocalFolder localFolder = loadMessage.mFolder;
        if (!this.isConfigured && ((MessagingController) this.supportDatabase).notificationStrategy.shouldNotifyForMessage((LegacyAccountDto) this.configuration, localFolder, loadMessage, z)) {
            boolean z2 = ((MutableBoolean) this.connectionPool).value;
            NotificationController notificationController = ((MessagingController) this.supportDatabase).notificationController;
            LegacyAccountDto legacyAccountDto = (LegacyAccountDto) this.configuration;
            notificationController.getClass();
            legacyAccountDto.getClass();
            Log.v("Creating notification for message %s:%s:%s", loadMessage.localStore.account.uuid, Long.valueOf(loadMessage.mFolder.databaseId), loadMessage.mUid);
            NewMailNotificationController newMailNotificationController = notificationController.newMailNotificationController;
            synchronized (newMailNotificationController) {
                NewMailNotificationData addNewMailNotification = newMailNotificationController.newMailNotificationManager.addNewMailNotification(legacyAccountDto, loadMessage, z2);
                if (addNewMailNotification != null) {
                    newMailNotificationController.processNewMailNotificationData(addNewMailNotification);
                }
            }
            ((MutableBoolean) this.connectionPool).value = true;
        }
        if (loadMessage.mFlags.contains(Flag.SEEN)) {
            return;
        }
        Iterator it = ((MessagingController) this.supportDatabase).getListeners((SimpleMessagingListener) this.openDelegate).iterator();
        while (it.hasNext()) {
            ((SimpleMessagingListener) it.next()).synchronizeMailboxNewMessage((LegacyAccountDto) this.configuration, str, loadMessage);
        }
    }

    @Override // com.fsck.k9.backend.api.SyncListener
    public void syncProgress(int i, String str, int i2) {
        MessagingController messagingController = (MessagingController) this.supportDatabase;
        Object obj = this.configuration;
        long folderId = messagingController.getFolderId((LegacyAccountDto) obj, str);
        Iterator it = messagingController.getListeners((SimpleMessagingListener) this.openDelegate).iterator();
        while (it.hasNext()) {
            ((SimpleMessagingListener) it.next()).synchronizeMailboxProgress((LegacyAccountDto) obj, folderId, i, i2);
        }
    }

    public void syncRemovedMessage(String str, String str2) {
        LegacyAccountDto legacyAccountDto = (LegacyAccountDto) this.configuration;
        MessagingController messagingController = (MessagingController) this.supportDatabase;
        Iterator it = messagingController.getListeners((SimpleMessagingListener) this.openDelegate).iterator();
        while (it.hasNext()) {
            ((SimpleMessagingListener) it.next()).synchronizeMailboxRemovedMessage(legacyAccountDto, str, str2);
        }
        messagingController.notificationController.removeNewMailNotification(legacyAccountDto, new MessageReference(messagingController.getFolderId(legacyAccountDto, str), legacyAccountDto.uuid, str2));
    }

    public void syncStarted(String str) {
        MessagingController messagingController = (MessagingController) this.supportDatabase;
        LegacyAccountDto legacyAccountDto = (LegacyAccountDto) this.configuration;
        long folderId = messagingController.getFolderId(legacyAccountDto, str);
        Iterator it = messagingController.getListeners((SimpleMessagingListener) this.openDelegate).iterator();
        while (it.hasNext()) {
            ((SimpleMessagingListener) it.next()).synchronizeMailboxStarted(legacyAccountDto, folderId);
        }
    }

    public void updateIdentity(SQLiteConnection sQLiteConnection) {
        SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        SQLite.execSQL(sQLiteConnection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '" + ((String) ((RoomOpenDelegate) this.openDelegate).identityHash) + "')");
    }

    public RoomConnectionManager(DatabaseConfiguration databaseConfiguration, RoomDatabase$$ExternalSyntheticLambda0 roomDatabase$$ExternalSyntheticLambda0) {
        this.configuration = databaseConfiguration;
        this.openDelegate = new NoOpOpenDelegate(-1, "", "");
        List list = databaseConfiguration.callbacks;
        EmptyList emptyList = EmptyList.INSTANCE;
        this.callbacks = list == null ? emptyList : list;
        CollectionsKt.plus(list == null ? emptyList : list, new CleanupCallback(new DiskLruCache$$ExternalSyntheticLambda0(19, this)));
        Context context = databaseConfiguration.context;
        Data.Builder builder = databaseConfiguration.migrationContainer;
        Executor executor = databaseConfiguration.queryExecutor;
        Executor executor2 = databaseConfiguration.transactionExecutor;
        List list2 = databaseConfiguration.typeConverters;
        List list3 = databaseConfiguration.autoMigrationSpecs;
        context.getClass();
        builder.getClass();
        executor.getClass();
        executor2.getClass();
        list2.getClass();
        list3.getClass();
        throw new NotImplementedError(0);
    }

    public RoomConnectionManager(MessagingController messagingController, LegacyAccountDto legacyAccountDto, SimpleMessagingListener simpleMessagingListener, boolean z, MutableBoolean mutableBoolean) {
        this.supportDatabase = messagingController;
        this.isInitializing = false;
        this.configuration = legacyAccountDto;
        this.openDelegate = simpleMessagingListener;
        this.isConfigured = z;
        this.connectionPool = mutableBoolean;
        this.callbacks = messagingController.getLocalStoreOrThrow(legacyAccountDto);
    }
}
