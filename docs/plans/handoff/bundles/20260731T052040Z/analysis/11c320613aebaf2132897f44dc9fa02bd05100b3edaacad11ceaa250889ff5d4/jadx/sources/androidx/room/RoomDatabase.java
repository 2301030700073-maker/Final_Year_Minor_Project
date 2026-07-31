package androidx.room;

import android.content.Context;
import android.os.Looper;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.core.os.BundleKt;
import androidx.room.concurrent.CloseBarrier;
import androidx.room.coroutines.ConnectionPool;
import androidx.room.migration.Migration;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import androidx.work.Data;
import androidx.work.OperationKt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.NotImplementedError;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.internal.ContextScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.FileMetadata;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class RoomDatabase {
    public static final Companion Companion = new Companion();
    public boolean allowMainThreadQueries;
    public FileMetadata connectionManager;
    public ContextScope coroutineScope;
    public Executor internalQueryExecutor;
    public InvalidationTracker internalTracker;
    public TransactionExecutor internalTransactionExecutor;
    public CoroutineContext transactionContext;
    public final CloseBarrier closeBarrier = new CloseBarrier(new RoomDatabase$closeBarrier$1(0, this, RoomDatabase.class, "onClosed", "onClosed()V", 0, 0));
    public final ThreadLocal suspendingTransactionContext = new ThreadLocal();
    public final LinkedHashMap typeConverters = new LinkedHashMap();
    public boolean useTempTrackingTable = true;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Builder {
        public boolean allowDestructiveMigrationForAllTables;
        public boolean allowDestructiveMigrationOnDowngrade;
        public boolean allowMainThreadQueries;
        public final Context context;
        public final ClassReference klass;
        public final String name;
        public Executor queryExecutor;
        public OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 supportOpenHelperFactory;
        public Executor transactionExecutor;
        public final ArrayList callbacks = new ArrayList();
        public final ArrayList typeConverters = new ArrayList();
        public final JournalMode journalMode = JournalMode.AUTOMATIC;
        public final long autoCloseTimeout = -1;
        public final Data.Builder migrationContainer = new Data.Builder(3);
        public final LinkedHashSet migrationsNotRequiredFrom = new LinkedHashSet();
        public final LinkedHashSet migrationStartAndEndVersions = new LinkedHashSet();
        public final ArrayList autoMigrationSpecs = new ArrayList();
        public boolean requireMigration = true;
        public final boolean inMemoryTrackingTableMode = true;

        public Builder(Context context, Class cls, String str) {
            this.klass = Reflection.getOrCreateKotlinClass(cls);
            this.context = context;
            this.name = str;
        }

        public final void addMigrations(Migration... migrationArr) {
            for (Migration migration : migrationArr) {
                Integer valueOf = Integer.valueOf(migration.startVersion);
                LinkedHashSet linkedHashSet = this.migrationStartAndEndVersions;
                linkedHashSet.add(valueOf);
                linkedHashSet.add(Integer.valueOf(migration.endVersion));
            }
            Migration[] migrationArr2 = (Migration[]) Arrays.copyOf(migrationArr, migrationArr.length);
            Data.Builder builder = this.migrationContainer;
            builder.getClass();
            for (Migration migration2 : migrationArr2) {
                builder.addMigration(migration2);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:93:0x01fb, code lost:
        
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$1("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.");
         */
        /* JADX WARN: Code restructure failed: missing block: B:94:0x0202, code lost:
        
            return null;
         */
        /* JADX WARN: Removed duplicated region for block: B:157:0x0343  */
        /* JADX WARN: Removed duplicated region for block: B:170:0x0360  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final androidx.room.RoomDatabase build() {
            /*
                Method dump skipped, instructions count: 1024
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabase.Builder.build():androidx.room.RoomDatabase");
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class JournalMode {
        public static final /* synthetic */ JournalMode[] $VALUES;
        public static final JournalMode AUTOMATIC;
        public static final JournalMode TRUNCATE;
        public static final JournalMode WRITE_AHEAD_LOGGING;

        static {
            JournalMode journalMode = new JournalMode("AUTOMATIC", 0);
            AUTOMATIC = journalMode;
            JournalMode journalMode2 = new JournalMode("TRUNCATE", 1);
            TRUNCATE = journalMode2;
            JournalMode journalMode3 = new JournalMode("WRITE_AHEAD_LOGGING", 2);
            WRITE_AHEAD_LOGGING = journalMode3;
            $VALUES = new JournalMode[]{journalMode, journalMode2, journalMode3};
        }

        public static JournalMode valueOf(String str) {
            return (JournalMode) Enum.valueOf(JournalMode.class, str);
        }

        public static JournalMode[] values() {
            return (JournalMode[]) $VALUES.clone();
        }
    }

    public final void assertNotMainThread() {
        if (this.allowMainThreadQueries) {
            return;
        }
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public final void assertNotSuspendingTransaction() {
        if (!inCompatibilityMode() || inTransaction()) {
            return;
        }
        CoroutineContext coroutineContext = (CoroutineContext) this.suspendingTransactionContext.get();
        if ((coroutineContext != null ? (TransactionElement) coroutineContext.get(TransactionElement.Key) : null) == null) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Cannot access database on a different coroutine context inherited from a suspending transaction.");
    }

    public final void beginTransaction() {
        assertNotMainThread();
        assertNotMainThread();
        FrameworkSQLiteDatabase writableDatabase = getOpenHelper().getWritableDatabase();
        if (!writableDatabase.inTransaction()) {
            CloseableKt.runBlockingUninterruptible(new InvalidationTracker$syncBlocking$1(getInvalidationTracker(), null));
        }
        if (writableDatabase.delegate.isWriteAheadLoggingEnabled()) {
            writableDatabase.beginTransactionNonExclusive();
        } else {
            writableDatabase.beginTransaction();
        }
    }

    public final void close() {
        CloseBarrier closeBarrier = this.closeBarrier;
        synchronized (closeBarrier) {
            if (closeBarrier.closeInitiated.compareAndSet(false, true)) {
                while (closeBarrier.blockers.get() != 0) {
                }
                closeBarrier.closeAction.invoke();
            }
        }
    }

    public List createAutoMigrations(LinkedHashMap linkedHashMap) {
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(linkedHashMap.size()));
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            linkedHashMap2.put(OperationKt.getJavaClass((ClassReference) entry.getKey()), entry.getValue());
        }
        return EmptyList.INSTANCE;
    }

    public abstract InvalidationTracker createInvalidationTracker();

    public RoomOpenDelegate createOpenDelegate() {
        throw new NotImplementedError(0);
    }

    public final void endTransaction() {
        getOpenHelper().getWritableDatabase().endTransaction();
        if (inTransaction()) {
            return;
        }
        InvalidationTracker invalidationTracker = getInvalidationTracker();
        invalidationTracker.implementation.refreshInvalidationAsync$room_runtime(invalidationTracker.onRefreshScheduled, invalidationTracker.onRefreshCompleted);
    }

    public final InvalidationTracker getInvalidationTracker() {
        InvalidationTracker invalidationTracker = this.internalTracker;
        if (invalidationTracker != null) {
            return invalidationTracker;
        }
        Intrinsics.throwUninitializedPropertyAccessException("internalTracker");
        throw null;
    }

    public final SupportSQLiteOpenHelper getOpenHelper() {
        FileMetadata fileMetadata = this.connectionManager;
        if (fileMetadata == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
            throw null;
        }
        SupportSQLiteOpenHelper supportSQLiteOpenHelper = (SupportSQLiteOpenHelper) fileMetadata.lastAccessedAtMillis;
        if (supportSQLiteOpenHelper != null) {
            return supportSQLiteOpenHelper;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Cannot return a SupportSQLiteOpenHelper since no SupportSQLiteOpenHelper.Factory was configured with Room.");
        return null;
    }

    public final CoroutineContext getQueryContext() {
        ContextScope contextScope = this.coroutineScope;
        if (contextScope != null) {
            return contextScope.coroutineContext;
        }
        Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
        throw null;
    }

    public Set getRequiredAutoMigrationSpecClasses() {
        return CollectionsKt.toSet(new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(EmptySet.INSTANCE, 10)));
    }

    public LinkedHashMap getRequiredTypeConverterClasses() {
        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(EmptySet.INSTANCE, 10));
        if (mapCapacity < 16) {
            mapCapacity = 16;
        }
        return new LinkedHashMap(mapCapacity);
    }

    public final boolean inCompatibilityMode() {
        FileMetadata fileMetadata = this.connectionManager;
        if (fileMetadata != null) {
            return ((SupportSQLiteOpenHelper) fileMetadata.lastAccessedAtMillis) != null;
        }
        Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
        throw null;
    }

    public final boolean inTransaction() {
        return isOpenInternal$room_runtime() && getOpenHelper().getWritableDatabase().inTransaction();
    }

    public final void internalInitInvalidationTracker(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        InvalidationTracker invalidationTracker = getInvalidationTracker();
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = invalidationTracker.implementation;
        triggerBasedInvalidationTracker.getClass();
        SQLiteStatement prepare = sQLiteConnection.prepare("PRAGMA query_only");
        try {
            prepare.step();
            boolean z = prepare.getBoolean();
            BundleKt.closeFinally(prepare, null);
            if (!z) {
                SQLite.execSQL(sQLiteConnection, "PRAGMA temp_store = MEMORY");
                SQLite.execSQL(sQLiteConnection, "PRAGMA recursive_triggers = 1");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS room_table_modification_log");
                if (triggerBasedInvalidationTracker.useTempTable) {
                    SQLite.execSQL(sQLiteConnection, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
                } else {
                    SQLite.execSQL(sQLiteConnection, StringsKt__StringsJVMKt.replace$default("CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)", "TEMP", ""));
                }
                ObservedTableStates observedTableStates = triggerBasedInvalidationTracker.observedTableStates;
                ReentrantLock reentrantLock = observedTableStates.lock;
                reentrantLock.lock();
                try {
                    observedTableStates.needsSync = true;
                } finally {
                    reentrantLock.unlock();
                }
            }
            synchronized (invalidationTracker.trackerLock) {
            }
        } finally {
        }
    }

    public final boolean isOpenInternal$room_runtime() {
        FileMetadata fileMetadata = this.connectionManager;
        if (fileMetadata == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
            throw null;
        }
        FrameworkSQLiteDatabase frameworkSQLiteDatabase = (FrameworkSQLiteDatabase) fileMetadata.extras;
        if (frameworkSQLiteDatabase != null) {
            return frameworkSQLiteDatabase.isOpen();
        }
        return false;
    }

    public final Object runInTransaction(Function0 function0) {
        if (!inCompatibilityMode()) {
            return DBUtil.performBlocking(this, false, true, new RoomDatabase$$ExternalSyntheticLambda3(0, function0));
        }
        beginTransaction();
        try {
            Object invoke = function0.invoke();
            setTransactionSuccessful();
            return invoke;
        } finally {
            endTransaction();
        }
    }

    public final void setTransactionSuccessful() {
        getOpenHelper().getWritableDatabase().setTransactionSuccessful();
    }

    public final Object useConnection(boolean z, Function2 function2, ContinuationImpl continuationImpl) {
        FileMetadata fileMetadata = this.connectionManager;
        if (fileMetadata != null) {
            return ((ConnectionPool) fileMetadata.lastModifiedAtMillis).useConnection(z, function2, continuationImpl);
        }
        Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
        throw null;
    }
}
