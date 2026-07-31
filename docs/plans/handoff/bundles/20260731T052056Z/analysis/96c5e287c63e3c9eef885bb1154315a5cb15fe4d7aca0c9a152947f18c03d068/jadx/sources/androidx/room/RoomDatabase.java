package androidx.room;

import android.content.Context;
import android.os.Looper;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.room.coroutines.ConnectionPool;
import androidx.room.migration.Migration;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import androidx.work.Operation$State;
import coil3.network.NetworkHeaders;
import coil3.svg.internal.AndroidSvg;
import coil3.util.ContextsKt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.ExceptionsKt;
import kotlin.NotImplementedError;
import kotlin.TuplesKt;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.internal.ContextScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.FileMetadata;
import org.wikipedia.commons.FilePageView$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class RoomDatabase {
    public boolean allowMainThreadQueries;
    public final AndroidSvg closeBarrier;
    public FileMetadata connectionManager;
    public ContextScope coroutineScope;
    public Executor internalQueryExecutor;
    public InvalidationTracker internalTracker;
    public TransactionExecutor internalTransactionExecutor;
    public final ThreadLocal suspendingTransactionContext;
    public CoroutineContext transactionContext;
    public final LinkedHashMap typeConverters;
    public boolean useTempTrackingTable;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder {
        public boolean allowDestructiveMigrationForAllTables;
        public boolean allowDestructiveMigrationOnDowngrade;
        public boolean allowMainThreadQueries;
        public final Context context;
        public final KClass klass;
        public final String name;
        public Executor queryExecutor;
        public FilePageView$$ExternalSyntheticLambda1 supportOpenHelperFactory;
        public Executor transactionExecutor;
        public final ArrayList callbacks = new ArrayList();
        public final ArrayList typeConverters = new ArrayList();
        public final JournalMode journalMode = JournalMode.AUTOMATIC;
        public final NetworkHeaders.Builder migrationContainer = new NetworkHeaders.Builder(4);
        public final LinkedHashSet migrationsNotRequiredFrom = new LinkedHashSet();
        public final LinkedHashSet migrationStartAndEndVersions = new LinkedHashSet();
        public final ArrayList autoMigrationSpecs = new ArrayList();
        public boolean requireMigration = true;

        public Builder(Context context, Class cls, String str) {
            this.klass = Reflection.factory.getOrCreateKotlinClass(cls);
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
            for (Migration migration2 : (Migration[]) Arrays.copyOf(migrationArr, migrationArr.length)) {
                this.migrationContainer.addMigration(migration2);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:74:0x01c0, code lost:
        
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.");
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x01c5, code lost:
        
            return null;
         */
        /* JADX WARN: Removed duplicated region for block: B:138:0x0301  */
        /* JADX WARN: Removed duplicated region for block: B:151:0x031e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final androidx.room.RoomDatabase build() {
            /*
                Method dump skipped, instructions count: 944
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabase.Builder.build():androidx.room.RoomDatabase");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Callback {
        public abstract void onOpen(FrameworkSQLiteDatabase frameworkSQLiteDatabase);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class JournalMode {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ JournalMode[] $VALUES;
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
            JournalMode[] journalModeArr = {journalMode, journalMode2, journalMode3};
            $VALUES = journalModeArr;
            $ENTRIES = new EnumEntriesList(journalModeArr);
        }

        public static JournalMode valueOf(String str) {
            return (JournalMode) Enum.valueOf(JournalMode.class, str);
        }

        public static JournalMode[] values() {
            return (JournalMode[]) $VALUES.clone();
        }
    }

    public RoomDatabase() {
        new RoomDatabase$closeBarrier$1(0, this, RoomDatabase.class, "onClosed", "onClosed()V", 0, 0);
        AndroidSvg androidSvg = new AndroidSvg();
        androidSvg.svg = new AtomicInteger(0);
        androidSvg.renderOptions = new AtomicBoolean(false);
        this.closeBarrier = androidSvg;
        this.suspendingTransactionContext = new ThreadLocal();
        this.typeConverters = new LinkedHashMap();
        this.useTempTrackingTable = true;
    }

    public final void assertNotMainThread() {
        if (this.allowMainThreadQueries) {
            return;
        }
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public final void beginTransaction() {
        assertNotMainThread();
        assertNotMainThread();
        FrameworkSQLiteDatabase writableDatabase = getOpenHelper().getWritableDatabase();
        if (!writableDatabase.inTransaction()) {
            Operation$State.runBlockingUninterruptible(new ThumbNode$onAttach$1(18, getInvalidationTracker(), null));
        }
        if (writableDatabase.delegate.isWriteAheadLoggingEnabled()) {
            writableDatabase.beginTransactionNonExclusive();
        } else {
            writableDatabase.beginTransaction();
        }
    }

    public List createAutoMigrations(LinkedHashMap linkedHashMap) {
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(linkedHashMap.size()));
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            linkedHashMap2.put(UnsignedKt.getJavaClass((KClass) entry.getKey()), entry.getValue());
        }
        return EmptyList.INSTANCE;
    }

    public abstract InvalidationTracker createInvalidationTracker();

    public RoomOpenDelegate createOpenDelegate() {
        throw new NotImplementedError(0);
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
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Cannot return a SupportSQLiteOpenHelper since no SupportSQLiteOpenHelper.Factory was configured with Room.");
        return null;
    }

    public Set getRequiredAutoMigrationSpecClasses() {
        return CollectionsKt.toSet(new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(EmptySet.INSTANCE, 10)));
    }

    public LinkedHashMap getRequiredTypeConverterClasses() {
        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(EmptySet.INSTANCE, 10));
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

    public final void internalEndTransaction() {
        getOpenHelper().getWritableDatabase().endTransaction();
        if (inTransaction()) {
            return;
        }
        InvalidationTracker invalidationTracker = getInvalidationTracker();
        invalidationTracker.implementation.refreshInvalidationAsync$room_runtime(invalidationTracker.onRefreshScheduled, invalidationTracker.onRefreshCompleted);
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
            TuplesKt.closeFinally(prepare, null);
            if (!z) {
                ContextsKt.execSQL(sQLiteConnection, "PRAGMA temp_store = MEMORY");
                ContextsKt.execSQL(sQLiteConnection, "PRAGMA recursive_triggers = 1");
                ContextsKt.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS room_table_modification_log");
                if (triggerBasedInvalidationTracker.useTempTable) {
                    ContextsKt.execSQL(sQLiteConnection, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
                } else {
                    ContextsKt.execSQL(sQLiteConnection, StringsKt__StringsJVMKt.replace$default("CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)", "TEMP", ""));
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
            return ExceptionsKt.performBlocking(this, false, true, new RoomDatabase$$ExternalSyntheticLambda3(0, function0));
        }
        beginTransaction();
        try {
            Object invoke = function0.invoke();
            setTransactionSuccessful();
            return invoke;
        } finally {
            internalEndTransaction();
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
