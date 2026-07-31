package androidx.sqlite.db.framework;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import android.util.Pair;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper;
import androidx.sqlite.driver.SupportSQLiteConnection;
import androidx.sqlite.util.ProcessLock;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.memory.MemoryCacheService;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.SynchronizedLazyImpl;
import okio.FileMetadata;
import okio.PriorityQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FrameworkSQLiteOpenHelper implements SupportSQLiteOpenHelper {
    public final boolean allowDataLossOnRecovery;
    public final PriorityQueue callback;
    public final Context context;
    public final SynchronizedLazyImpl lazyDelegate;
    public final String name;
    public final boolean useNoBackupDirectory;
    public boolean writeAheadLoggingEnabled;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class OpenHelper extends SQLiteOpenHelper {
        public static final /* synthetic */ int $r8$clinit = 0;
        public final boolean allowDataLossOnRecovery;
        public final PriorityQueue callback;
        public final Context context;
        public final MemoryCacheService dbRef;
        public final ProcessLock lock;
        public boolean migrated;
        public boolean opened;

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class CallbackException extends RuntimeException {
            private final CallbackName callbackName;
            private final Throwable cause;

            public CallbackException(CallbackName callbackName, Throwable th) {
                super(th);
                this.callbackName = callbackName;
                this.cause = th;
            }

            public final CallbackName getCallbackName() {
                return this.callbackName;
            }

            @Override // java.lang.Throwable
            public final Throwable getCause() {
                return this.cause;
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class CallbackName {
            public static final /* synthetic */ CallbackName[] $VALUES;
            public static final CallbackName ON_CONFIGURE;
            public static final CallbackName ON_CREATE;
            public static final CallbackName ON_DOWNGRADE;
            public static final CallbackName ON_OPEN;
            public static final CallbackName ON_UPGRADE;

            static {
                CallbackName callbackName = new CallbackName("ON_CONFIGURE", 0);
                ON_CONFIGURE = callbackName;
                CallbackName callbackName2 = new CallbackName("ON_CREATE", 1);
                ON_CREATE = callbackName2;
                CallbackName callbackName3 = new CallbackName("ON_UPGRADE", 2);
                ON_UPGRADE = callbackName3;
                CallbackName callbackName4 = new CallbackName("ON_DOWNGRADE", 3);
                ON_DOWNGRADE = callbackName4;
                CallbackName callbackName5 = new CallbackName("ON_OPEN", 4);
                ON_OPEN = callbackName5;
                $VALUES = new CallbackName[]{callbackName, callbackName2, callbackName3, callbackName4, callbackName5};
            }

            public static CallbackName valueOf(String str) {
                return (CallbackName) Enum.valueOf(CallbackName.class, str);
            }

            public static CallbackName[] values() {
                return (CallbackName[]) $VALUES.clone();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenHelper(Context context, String str, final MemoryCacheService memoryCacheService, final PriorityQueue priorityQueue, boolean z) {
            super(context, str, null, priorityQueue.size, new DatabaseErrorHandler() { // from class: androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper$OpenHelper$$ExternalSyntheticLambda0
                @Override // android.database.DatabaseErrorHandler
                public final void onCorruption(SQLiteDatabase sQLiteDatabase) {
                    int i = FrameworkSQLiteOpenHelper.OpenHelper.$r8$clinit;
                    sQLiteDatabase.getClass();
                    MemoryCacheService memoryCacheService2 = memoryCacheService;
                    FrameworkSQLiteDatabase frameworkSQLiteDatabase = (FrameworkSQLiteDatabase) memoryCacheService2.imageLoader;
                    if (frameworkSQLiteDatabase == null || !frameworkSQLiteDatabase.delegate.equals(sQLiteDatabase)) {
                        frameworkSQLiteDatabase = new FrameworkSQLiteDatabase(sQLiteDatabase);
                        memoryCacheService2.imageLoader = frameworkSQLiteDatabase;
                    }
                    SQLiteDatabase sQLiteDatabase2 = frameworkSQLiteDatabase.delegate;
                    PriorityQueue.this.getClass();
                    Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + frameworkSQLiteDatabase + ".path");
                    if (!sQLiteDatabase2.isOpen()) {
                        String path = sQLiteDatabase2.getPath();
                        if (path != null) {
                            PriorityQueue.deleteDatabaseFile(path);
                            return;
                        }
                        return;
                    }
                    List<Pair<String, String>> list = null;
                    try {
                        try {
                            list = sQLiteDatabase2.getAttachedDbs();
                        } finally {
                            if (list != null) {
                                Iterator<T> it = list.iterator();
                                while (it.hasNext()) {
                                    Object obj = ((Pair) it.next()).second;
                                    obj.getClass();
                                    PriorityQueue.deleteDatabaseFile((String) obj);
                                }
                            } else {
                                String path2 = sQLiteDatabase2.getPath();
                                if (path2 != null) {
                                    PriorityQueue.deleteDatabaseFile(path2);
                                }
                            }
                        }
                    } catch (SQLiteException unused) {
                    }
                    try {
                        frameworkSQLiteDatabase.close();
                    } catch (IOException unused2) {
                    }
                    if (list != null) {
                        return;
                    }
                }
            });
            String str2;
            context.getClass();
            priorityQueue.getClass();
            this.context = context;
            this.dbRef = memoryCacheService;
            this.callback = priorityQueue;
            this.allowDataLossOnRecovery = z;
            if (str == null) {
                str2 = UUID.randomUUID().toString();
                str2.getClass();
            } else {
                str2 = str;
            }
            this.lock = new ProcessLock(str2, context.getCacheDir(), false);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public final void close() {
            ProcessLock processLock = this.lock;
            try {
                processLock.lock(processLock.processLock);
                super.close();
                this.dbRef.imageLoader = null;
                this.opened = false;
            } finally {
                processLock.unlock();
            }
        }

        public final FrameworkSQLiteDatabase getSupportDatabase(boolean z) {
            ProcessLock processLock = this.lock;
            try {
                processLock.lock((this.opened || getDatabaseName() == null) ? false : true);
                this.migrated = false;
                SQLiteDatabase innerGetDatabase = innerGetDatabase(z);
                if (!this.migrated) {
                    FrameworkSQLiteDatabase wrappedDb = getWrappedDb(innerGetDatabase);
                    processLock.unlock();
                    return wrappedDb;
                }
                close();
                FrameworkSQLiteDatabase supportDatabase = getSupportDatabase(z);
                processLock.unlock();
                return supportDatabase;
            } catch (Throwable th) {
                processLock.unlock();
                throw th;
            }
        }

        public final FrameworkSQLiteDatabase getWrappedDb(SQLiteDatabase sQLiteDatabase) {
            MemoryCacheService memoryCacheService = this.dbRef;
            memoryCacheService.getClass();
            FrameworkSQLiteDatabase frameworkSQLiteDatabase = (FrameworkSQLiteDatabase) memoryCacheService.imageLoader;
            if (frameworkSQLiteDatabase != null && frameworkSQLiteDatabase.delegate.equals(sQLiteDatabase)) {
                return frameworkSQLiteDatabase;
            }
            FrameworkSQLiteDatabase frameworkSQLiteDatabase2 = new FrameworkSQLiteDatabase(sQLiteDatabase);
            memoryCacheService.imageLoader = frameworkSQLiteDatabase2;
            return frameworkSQLiteDatabase2;
        }

        public final SQLiteDatabase innerGetDatabase(boolean z) {
            SQLiteDatabase readableDatabase;
            SQLiteDatabase readableDatabase2;
            File parentFile;
            String databaseName = getDatabaseName();
            boolean z2 = this.opened;
            Context context = this.context;
            if (databaseName != null && !z2 && (parentFile = context.getDatabasePath(databaseName).getParentFile()) != null) {
                parentFile.mkdirs();
                if (!parentFile.isDirectory()) {
                    Log.w("SupportSQLite", "Invalid database parent file, not a directory: " + parentFile);
                }
            }
            try {
                if (z) {
                    SQLiteDatabase writableDatabase = getWritableDatabase();
                    writableDatabase.getClass();
                    return writableDatabase;
                }
                SQLiteDatabase readableDatabase3 = getReadableDatabase();
                readableDatabase3.getClass();
                return readableDatabase3;
            } catch (Throwable unused) {
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException unused2) {
                }
                try {
                    if (z) {
                        readableDatabase2 = getWritableDatabase();
                        readableDatabase2.getClass();
                    } else {
                        readableDatabase2 = getReadableDatabase();
                        readableDatabase2.getClass();
                    }
                    return readableDatabase2;
                } catch (Throwable th) {
                    th = th;
                    if (th instanceof CallbackException) {
                        CallbackException callbackException = (CallbackException) th;
                        Throwable cause = callbackException.getCause();
                        int ordinal = callbackException.getCallbackName().ordinal();
                        if (ordinal == 0) {
                            throw cause;
                        }
                        if (ordinal == 1) {
                            throw cause;
                        }
                        if (ordinal == 2) {
                            throw cause;
                        }
                        if (ordinal == 3) {
                            throw cause;
                        }
                        if (ordinal != 4) {
                            DecodeUtils$$ExternalSyntheticBUOutline0.m();
                            return null;
                        }
                        if (!(cause instanceof SQLiteException)) {
                            throw cause;
                        }
                        th = cause;
                    }
                    if (!(th instanceof SQLiteException) || databaseName == null || !this.allowDataLossOnRecovery) {
                        throw th;
                    }
                    context.deleteDatabase(databaseName);
                    try {
                        if (z) {
                            readableDatabase = getWritableDatabase();
                            readableDatabase.getClass();
                        } else {
                            readableDatabase = getReadableDatabase();
                            readableDatabase.getClass();
                        }
                        return readableDatabase;
                    } catch (CallbackException e) {
                        throw e.getCause();
                    }
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onConfigure(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.getClass();
            boolean z = this.migrated;
            PriorityQueue priorityQueue = this.callback;
            if (!z && priorityQueue.size != sQLiteDatabase.getVersion()) {
                sQLiteDatabase.setMaxSqlCacheSize(1);
            }
            try {
                getWrappedDb(sQLiteDatabase);
                priorityQueue.getClass();
            } catch (Throwable th) {
                throw new CallbackException(CallbackName.ON_CONFIGURE, th);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.getClass();
            try {
                ((FileMetadata) this.callback.array).onCreate(new SupportSQLiteConnection(getWrappedDb(sQLiteDatabase)));
            } catch (Throwable th) {
                throw new CallbackException(CallbackName.ON_CREATE, th);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            sQLiteDatabase.getClass();
            this.migrated = true;
            try {
                this.callback.onUpgrade(getWrappedDb(sQLiteDatabase), i, i2);
            } catch (Throwable th) {
                throw new CallbackException(CallbackName.ON_DOWNGRADE, th);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onOpen(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.getClass();
            if (!this.migrated) {
                try {
                    PriorityQueue priorityQueue = this.callback;
                    FrameworkSQLiteDatabase wrappedDb = getWrappedDb(sQLiteDatabase);
                    FileMetadata fileMetadata = (FileMetadata) priorityQueue.array;
                    fileMetadata.onOpen(new SupportSQLiteConnection(wrappedDb));
                    fileMetadata.extras = wrappedDb;
                } catch (Throwable th) {
                    throw new CallbackException(CallbackName.ON_OPEN, th);
                }
            }
            this.opened = true;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            sQLiteDatabase.getClass();
            this.migrated = true;
            try {
                this.callback.onUpgrade(getWrappedDb(sQLiteDatabase), i, i2);
            } catch (Throwable th) {
                throw new CallbackException(CallbackName.ON_UPGRADE, th);
            }
        }
    }

    public FrameworkSQLiteOpenHelper(Context context, String str, PriorityQueue priorityQueue, boolean z, boolean z2) {
        context.getClass();
        priorityQueue.getClass();
        this.context = context;
        this.name = str;
        this.callback = priorityQueue;
        this.useNoBackupDirectory = z;
        this.allowDataLossOnRecovery = z2;
        this.lazyDelegate = new SynchronizedLazyImpl(new Worker$$ExternalSyntheticLambda0(this, 19));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        SynchronizedLazyImpl synchronizedLazyImpl = this.lazyDelegate;
        if (synchronizedLazyImpl.isInitialized()) {
            ((OpenHelper) synchronizedLazyImpl.getValue()).close();
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public final String getDatabaseName() {
        return this.name;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public final FrameworkSQLiteDatabase getWritableDatabase() {
        return ((OpenHelper) this.lazyDelegate.getValue()).getSupportDatabase(true);
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public final void setWriteAheadLoggingEnabled(boolean z) {
        SynchronizedLazyImpl synchronizedLazyImpl = this.lazyDelegate;
        if (synchronizedLazyImpl.isInitialized()) {
            ((OpenHelper) synchronizedLazyImpl.getValue()).setWriteAheadLoggingEnabled(z);
        }
        this.writeAheadLoggingEnabled = z;
    }
}
