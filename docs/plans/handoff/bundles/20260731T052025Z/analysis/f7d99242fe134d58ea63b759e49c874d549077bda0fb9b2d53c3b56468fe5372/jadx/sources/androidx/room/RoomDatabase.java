package androidx.room;

import android.content.Context;
import android.os.Looper;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.lifecycle.BlockRunner$cancel$1;
import androidx.room.coroutines.ConnectionPool;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import androidx.work.Data;
import androidx.work.impl.WorkDatabase;
import com.beetstra.jutf7.Base64Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import kotlin.NotImplementedError;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.coroutines.internal.ContextScope;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class RoomDatabase {
    public boolean allowMainThreadQueries;
    public RoomConnectionManager connectionManager;
    public ContextScope coroutineScope;
    public Executor internalQueryExecutor;
    public InvalidationTracker internalTracker;
    public TransactionExecutor internalTransactionExecutor;
    public CoroutineContext transactionContext;
    public final Base64Util closeBarrier = new Base64Util(new RoomDatabase$closeBarrier$1(0, this, RoomDatabase.class, "onClosed", "onClosed()V", 0, 0));
    public final ThreadLocal suspendingTransactionId = new ThreadLocal();
    public final LinkedHashMap typeConverters = new LinkedHashMap();
    public boolean useTempTrackingTable = true;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder {
        public boolean allowDestructiveMigrationForAllTables;
        public boolean allowDestructiveMigrationOnDowngrade;
        public boolean allowMainThreadQueries;
        public final Context context;
        public final String name;
        public Executor queryExecutor;
        public OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 supportOpenHelperFactory;
        public Executor transactionExecutor;
        public final ArrayList callbacks = new ArrayList();
        public final ArrayList typeConverters = new ArrayList();
        public final JournalMode journalMode = JournalMode.AUTOMATIC;
        public final long autoCloseTimeout = -1;
        public final Data.Builder migrationContainer = new Data.Builder(4);
        public final LinkedHashSet migrationsNotRequiredFrom = new LinkedHashSet();
        public final LinkedHashSet migrationStartAndEndVersions = new LinkedHashSet();
        public final ArrayList autoMigrationSpecs = new ArrayList();
        public boolean requireMigration = true;
        public final boolean inMemoryTrackingTableMode = true;
        public final ClassReference klass = Reflection.getOrCreateKotlinClass(WorkDatabase.class);

        public Builder(Context context, String str) {
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
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public final void beginTransaction() {
        assertNotMainThread();
        assertNotMainThread();
        FrameworkSQLiteDatabase writableDatabase = getOpenHelper().getWritableDatabase();
        if (!writableDatabase.inTransaction()) {
            Util.runBlockingUninterruptible(new BlockRunner$cancel$1(getInvalidationTracker(), null, 1));
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
            linkedHashMap2.put(Handshake.Companion.getJavaClass((KClass) entry.getKey()), entry.getValue());
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
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
            throw null;
        }
        SupportSQLiteOpenHelper supportOpenHelper$room_runtime_release = roomConnectionManager.getSupportOpenHelper$room_runtime_release();
        if (supportOpenHelper$room_runtime_release != null) {
            return supportOpenHelper$room_runtime_release;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Cannot return a SupportSQLiteOpenHelper since no SupportSQLiteOpenHelper.Factory was configured with Room.");
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

    public final boolean inCompatibilityMode$room_runtime_release() {
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager != null) {
            return roomConnectionManager.getSupportOpenHelper$room_runtime_release() != null;
        }
        Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
        throw null;
    }

    public final boolean inTransaction() {
        return isOpenInternal() && getOpenHelper().getWritableDatabase().inTransaction();
    }

    public final void internalEndTransaction() {
        getOpenHelper().getWritableDatabase().endTransaction();
        if (inTransaction()) {
            return;
        }
        InvalidationTracker invalidationTracker = getInvalidationTracker();
        invalidationTracker.implementation.refreshInvalidationAsync$room_runtime_release(invalidationTracker.onRefreshScheduled, invalidationTracker.onRefreshCompleted);
    }

    public final boolean isOpenInternal() {
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
            throw null;
        }
        FrameworkSQLiteDatabase frameworkSQLiteDatabase = (FrameworkSQLiteDatabase) roomConnectionManager.supportDatabase;
        if (frameworkSQLiteDatabase != null) {
            return frameworkSQLiteDatabase.delegate.isOpen();
        }
        return false;
    }

    public final Object runInTransaction(Callable callable) {
        beginTransaction();
        try {
            Object call = callable.call();
            setTransactionSuccessful();
            return call;
        } finally {
            internalEndTransaction();
        }
    }

    public final void setTransactionSuccessful() {
        getOpenHelper().getWritableDatabase().setTransactionSuccessful();
    }

    public final Object useConnection$room_runtime_release(boolean z, Function2 function2, ContinuationImpl continuationImpl) {
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager != null) {
            return ((ConnectionPool) roomConnectionManager.connectionPool).useConnection(z, function2, continuationImpl);
        }
        Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
        throw null;
    }

    public final void runInTransaction(Runnable runnable) {
        beginTransaction();
        try {
            runnable.run();
            setTransactionSuccessful();
        } finally {
            internalEndTransaction();
        }
    }
}
