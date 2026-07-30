package com.android.launcher3;

import android.annotation.TargetApi;
import android.app.backup.BackupManager;
import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.os.Binder;
import android.os.Process;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import b.l.W;
import c.a.c.a.a;
import com.android.launcher3.AutoInstallsLayout;
import com.android.launcher3.LauncherProvider;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.model.DbDowngradeHelper;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.provider.LauncherDbUtils$SQLiteTransaction;
import com.android.launcher3.provider.RestoreDbTask;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.NoLocaleSQLiteHelper;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.ISystemUiProxy;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.function.Supplier;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public class LauncherProvider extends ContentProvider {
    public static final long RESTORE_BACKUP_TABLE_DELAY = TimeUnit.SECONDS.toMillis(30);
    public long mLastRestoreTimestamp = 0;
    public DatabaseHelper mOpenHelper;

    public class DatabaseHelper extends NoLocaleSQLiteHelper implements AutoInstallsLayout.LayoutParserCallback {
        public boolean mBackupTableExists;
        public final Context mContext;
        public final boolean mForMigration;
        public boolean mHotseatRestoreTableExists;
        public int mMaxItemId;
        public int mMaxScreenId;

        public DatabaseHelper(Context context, String str, boolean z) {
            super(context, str, 28);
            this.mMaxItemId = -1;
            this.mMaxScreenId = -1;
            this.mContext = context;
            this.mForMigration = z;
        }

        public static DatabaseHelper createDatabaseHelper(Context context, String str, boolean z) {
            if (str == null) {
                str = FeatureFlags.MULTI_DB_GRID_MIRATION_ALGO.get() ? ((InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.b(context)).dbFile : "launcher.db";
            }
            DatabaseHelper databaseHelper = new DatabaseHelper(context, str, z);
            if (!W.tableExists(databaseHelper.getReadableDatabase(), "favorites")) {
                Log.e("LauncherProvider", "Tables are missing after onCreate has been called. Trying to recreate");
                LauncherSettings$Favorites.addTableToDb(databaseHelper.getWritableDatabase(), databaseHelper.getDefaultUserSerial(), true, "favorites");
            }
            if (!FeatureFlags.MULTI_DB_GRID_MIRATION_ALGO.get()) {
                databaseHelper.mBackupTableExists = W.tableExists(databaseHelper.getReadableDatabase(), "favorites_bakup");
            }
            databaseHelper.mHotseatRestoreTableExists = W.tableExists(databaseHelper.getReadableDatabase(), "hotseat_restore_backup");
            if (databaseHelper.mMaxItemId == -1) {
                databaseHelper.mMaxItemId = databaseHelper.initializeMaxItemId(databaseHelper.getWritableDatabase());
            }
            if (databaseHelper.mMaxScreenId == -1) {
                databaseHelper.mMaxScreenId = databaseHelper.initializeMaxScreenId(databaseHelper.getWritableDatabase());
            }
            return databaseHelper;
        }

        public final boolean addIntegerColumn(SQLiteDatabase sQLiteDatabase, String str, long j) {
            try {
                LauncherDbUtils$SQLiteTransaction launcherDbUtils$SQLiteTransaction = new LauncherDbUtils$SQLiteTransaction(sQLiteDatabase);
                try {
                    sQLiteDatabase.execSQL("ALTER TABLE favorites ADD COLUMN " + str + " INTEGER NOT NULL DEFAULT " + j + ";");
                    launcherDbUtils$SQLiteTransaction.mDb.setTransactionSuccessful();
                    launcherDbUtils$SQLiteTransaction.mDb.endTransaction();
                    return true;
                } finally {
                }
            } catch (SQLException e) {
                Log.e("LauncherProvider", e.getMessage(), e);
                return false;
            }
        }

        public void createEmptyDB(SQLiteDatabase sQLiteDatabase) {
            LauncherDbUtils$SQLiteTransaction launcherDbUtils$SQLiteTransaction = new LauncherDbUtils$SQLiteTransaction(sQLiteDatabase);
            try {
                W.dropTable(sQLiteDatabase, "favorites");
                W.dropTable(sQLiteDatabase, "workspaceScreens");
                onCreate(sQLiteDatabase);
                launcherDbUtils$SQLiteTransaction.mDb.setTransactionSuccessful();
                launcherDbUtils$SQLiteTransaction.mDb.endTransaction();
            } catch (Throwable th) {
                try {
                    launcherDbUtils$SQLiteTransaction.mDb.endTransaction();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        @Override // com.android.launcher3.AutoInstallsLayout.LayoutParserCallback
        public int generateNewItemId() {
            int i = this.mMaxItemId;
            if (i < 0) {
                throw new RuntimeException("Error: max item id was not initialized");
            }
            int i2 = i + 1;
            this.mMaxItemId = i2;
            return i2;
        }

        public long getDefaultUserSerial() {
            return ((UserCache) UserCache.INSTANCE.b(this.mContext)).getSerialNumberForUser(Process.myUserHandle());
        }

        public final int initializeMaxItemId(SQLiteDatabase sQLiteDatabase) {
            return LauncherProvider.getMaxId(sQLiteDatabase, "SELECT MAX(%1$s) FROM %2$s", "_id", "favorites");
        }

        public final int initializeMaxScreenId(SQLiteDatabase sQLiteDatabase) {
            return LauncherProvider.getMaxId(sQLiteDatabase, "SELECT MAX(%1$s) FROM %2$s WHERE %3$s = %4$d", "screen", "favorites", "container", -100);
        }

        @Override // com.android.launcher3.AutoInstallsLayout.LayoutParserCallback
        public int insertAndCheck(SQLiteDatabase sQLiteDatabase, ContentValues contentValues) {
            return LauncherProvider.dbInsertAndCheck(this, sQLiteDatabase, "favorites", null, contentValues);
        }

        public int loadFavorites(SQLiteDatabase sQLiteDatabase, AutoInstallsLayout autoInstallsLayout) {
            int loadLayout = autoInstallsLayout.loadLayout(sQLiteDatabase, new IntArray(10));
            this.mMaxItemId = initializeMaxItemId(sQLiteDatabase);
            this.mMaxScreenId = initializeMaxScreenId(sQLiteDatabase);
            return loadLayout;
        }

        public AppWidgetHost newLauncherWidgetHost() {
            return new LauncherAppWidgetHost(this.mContext, null);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.mMaxItemId = 1;
            this.mMaxScreenId = 0;
            LauncherSettings$Favorites.addTableToDb(sQLiteDatabase, getDefaultUserSerial(), false, "favorites");
            this.mMaxItemId = initializeMaxItemId(sQLiteDatabase);
            if (this.mForMigration) {
                return;
            }
            Utilities.getPrefs(this.mContext).edit().putBoolean("EMPTY_DATABASE_CREATED", true).commit();
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            try {
                DbDowngradeHelper.parse(this.mContext.getFileStreamPath("downgrade_schema.json")).onDowngrade(sQLiteDatabase, i, i2);
            } catch (Exception e) {
                Log.d("LauncherProvider", "Unable to downgrade from: " + i + " to " + i2 + ". Wiping databse.", e);
                createEmptyDB(sQLiteDatabase);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            super.onOpen(sQLiteDatabase);
            File fileStreamPath = this.mContext.getFileStreamPath("downgrade_schema.json");
            if (!fileStreamPath.exists()) {
                UserCache userCache = (UserCache) UserCache.INSTANCE.b(this.mContext);
                Iterator it = userCache.getUserProfiles().iterator();
                while (it.hasNext()) {
                    sQLiteDatabase.execSQL("update favorites set intent = replace(intent, ';l.profile=" + userCache.getSerialNumberForUser((UserHandle) it.next()) + ";', ';') where itemType = 0;");
                }
            }
            Context context = this.mContext;
            try {
                if (DbDowngradeHelper.parse(fileStreamPath).version >= 28) {
                    return;
                }
            } catch (Exception unused) {
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(fileStreamPath);
                try {
                    InputStream openRawResource = context.getResources().openRawResource(R.raw.downgrade_schema);
                    try {
                        W.copy(openRawResource, fileOutputStream);
                        if (openRawResource != null) {
                            openRawResource.close();
                        }
                        fileOutputStream.close();
                    } finally {
                    }
                } finally {
                }
            } catch (IOException e) {
                Log.e("DbDowngradeHelper", "Error writing schema file", e);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:207:0x00be, code lost:
        
            if (r0 != false) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x0043, code lost:
        
            if (addIntegerColumn(r23, "modified", 0) == false) goto L4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x004c, code lost:
        
            if (addIntegerColumn(r23, "restored", 0) == false) goto L4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x0059, code lost:
        
            if (addIntegerColumn(r23, "profileId", getDefaultUserSerial()) == false) goto L4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x00c8, code lost:
        
            if (addIntegerColumn(r23, "options", 0) == false) goto L4;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:11:0x0293  */
        /* JADX WARN: Removed duplicated region for block: B:125:0x0177 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:133:? A[Catch: all -> 0x0181, SYNTHETIC, TRY_LEAVE, TryCatch #12 {all -> 0x0181, blocks: (B:132:0x0180, B:131:0x017d, B:144:0x0160, B:126:0x0177), top: B:92:0x0111, inners: #10 }] */
        /* JADX WARN: Removed duplicated region for block: B:157:0x018a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:165:? A[Catch: all -> 0x0194, SYNTHETIC, TRY_LEAVE, TryCatch #24 {all -> 0x0194, blocks: (B:145:0x0163, B:164:0x0193, B:163:0x0190, B:158:0x018a), top: B:90:0x010d, inners: #18 }] */
        /* JADX WARN: Removed duplicated region for block: B:20:0x02d0  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x01f7 A[Catch: all -> 0x0250, TRY_LEAVE, TryCatch #22 {all -> 0x0250, blocks: (B:30:0x01f1, B:32:0x01f7, B:39:0x0207), top: B:29:0x01f1, outer: #29 }] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0277  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0207 A[Catch: all -> 0x0250, TRY_ENTER, TRY_LEAVE, TryCatch #22 {all -> 0x0250, blocks: (B:30:0x01f1, B:32:0x01f7, B:39:0x0207), top: B:29:0x01f1, outer: #29 }] */
        /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.Integer] */
        /* JADX WARN: Type inference failed for: r11v10 */
        /* JADX WARN: Type inference failed for: r11v11, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r11v6 */
        /* JADX WARN: Type inference failed for: r11v7 */
        /* JADX WARN: Type inference failed for: r11v8 */
        /* JADX WARN: Type inference failed for: r11v9 */
        /* JADX WARN: Type inference failed for: r16v12 */
        /* JADX WARN: Type inference failed for: r16v15 */
        /* JADX WARN: Type inference failed for: r16v16 */
        /* JADX WARN: Type inference failed for: r16v18 */
        /* JADX WARN: Type inference failed for: r16v19 */
        /* JADX WARN: Type inference failed for: r16v23 */
        /* JADX WARN: Type inference failed for: r16v26 */
        /* JADX WARN: Type inference failed for: r16v8, types: [java.lang.Long] */
        /* JADX WARN: Type inference failed for: r23v0, types: [android.database.sqlite.SQLiteDatabase] */
        /* JADX WARN: Type inference failed for: r4v10, types: [com.android.launcher3.provider.LauncherDbUtils$SQLiteTransaction] */
        /* JADX WARN: Type inference failed for: r4v11, types: [java.lang.String[]] */
        /* JADX WARN: Type inference failed for: r4v13 */
        /* JADX WARN: Type inference failed for: r4v14 */
        /* JADX WARN: Type inference failed for: r4v15 */
        /* JADX WARN: Type inference failed for: r4v16 */
        /* JADX WARN: Type inference failed for: r4v17 */
        /* JADX WARN: Type inference failed for: r4v18 */
        /* JADX WARN: Type inference failed for: r4v20 */
        /* JADX WARN: Type inference failed for: r4v25 */
        /* JADX WARN: Type inference failed for: r4v43 */
        /* JADX WARN: Type inference failed for: r4v44 */
        /* JADX WARN: Type inference failed for: r4v9 */
        /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object[]] */
        /* JADX WARN: Type inference failed for: r6v10 */
        /* JADX WARN: Type inference failed for: r6v11 */
        /* JADX WARN: Type inference failed for: r6v13 */
        /* JADX WARN: Type inference failed for: r6v18 */
        /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r6v28 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r6v4 */
        /* JADX WARN: Type inference failed for: r6v5 */
        /* JADX WARN: Type inference failed for: r6v6 */
        /* JADX WARN: Type inference failed for: r6v7 */
        /* JADX WARN: Type inference failed for: r6v8 */
        /* JADX WARN: Type inference failed for: r6v9 */
        @Override // android.database.sqlite.SQLiteOpenHelper
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onUpgrade(android.database.sqlite.SQLiteDatabase r23, int r24, int r25) {
            /*
                Method dump skipped, instructions count: 826
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.LauncherProvider.DatabaseHelper.onUpgrade(android.database.sqlite.SQLiteDatabase, int, int):void");
        }

        @TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
        public void removeGhostWidgets(SQLiteDatabase sQLiteDatabase) {
            AppWidgetHost newLauncherWidgetHost = newLauncherWidgetHost();
            try {
                int[] appWidgetIds = newLauncherWidgetHost.getAppWidgetIds();
                IntArray queryIntArray = W.queryIntArray(sQLiteDatabase, "favorites", "appWidgetId", "itemType=4", null, null);
                int[] iArr = new int[10];
                int i = queryIntArray.mSize;
                int i2 = i + 0;
                if (i2 >= iArr.length) {
                    int i3 = 12 + 0;
                    if (i3 > i2) {
                        i2 = i3;
                    }
                    int[] iArr2 = new int[i2];
                    System.arraycopy(iArr, 0, iArr2, 0, 0);
                    iArr = iArr2;
                }
                System.arraycopy(queryIntArray.mValues, 0, iArr, 0, i);
                int i4 = i + 0;
                Arrays.sort(iArr, 0, i4);
                for (int i5 : appWidgetIds) {
                    if (!(Arrays.binarySearch(iArr, 0, i4, i5) >= 0)) {
                        try {
                            FileLog.d("LauncherProvider", "Deleting invalid widget " + i5);
                            newLauncherWidgetHost.deleteAppWidgetId(i5);
                        } catch (RuntimeException unused) {
                        }
                    }
                }
            } catch (IncompatibleClassChangeError e) {
                Log.e("LauncherProvider", "getAppWidgetIds not supported", e);
            }
        }
    }

    public static void addModifiedTime(ContentValues contentValues) {
        contentValues.put("modified", Long.valueOf(System.currentTimeMillis()));
    }

    public static int dbInsertAndCheck(DatabaseHelper databaseHelper, SQLiteDatabase sQLiteDatabase, String str, String str2, ContentValues contentValues) {
        if (contentValues == null) {
            throw new RuntimeException("Error: attempting to insert null values");
        }
        if (!contentValues.containsKey("_id")) {
            throw new RuntimeException("Error: attempting to add item without specifying an id");
        }
        Objects.requireNonNull(databaseHelper);
        databaseHelper.mMaxItemId = Math.max(contentValues.getAsInteger("_id").intValue(), databaseHelper.mMaxItemId);
        Integer asInteger = contentValues.getAsInteger("screen");
        Integer asInteger2 = contentValues.getAsInteger("container");
        if (asInteger != null && asInteger2 != null && asInteger2.intValue() == -100) {
            databaseHelper.mMaxScreenId = Math.max(asInteger.intValue(), databaseHelper.mMaxScreenId);
        }
        return (int) sQLiteDatabase.insert(str, null, contentValues);
    }

    public static /* synthetic */ XmlPullParser e(XmlPullParser xmlPullParser) {
        return xmlPullParser;
    }

    public static int getMaxId(SQLiteDatabase sQLiteDatabase, String str, Object... objArr) {
        int longForQuery = (int) DatabaseUtils.longForQuery(sQLiteDatabase, String.format(Locale.ENGLISH, str, objArr), null);
        if (longForQuery >= 0) {
            return longForQuery;
        }
        throw new RuntimeException("Error: could not query max id");
    }

    public /* synthetic */ DatabaseHelper a() {
        return this.mOpenHelper;
    }

    @Override // android.content.ContentProvider
    @TargetApi(23)
    public ContentProviderResult[] applyBatch(ArrayList arrayList) {
        createDbIfNotExists();
        LauncherDbUtils$SQLiteTransaction launcherDbUtils$SQLiteTransaction = new LauncherDbUtils$SQLiteTransaction(this.mOpenHelper.getWritableDatabase());
        try {
            int size = arrayList.size();
            ContentProviderResult[] contentProviderResultArr = new ContentProviderResult[size];
            boolean z = false;
            for (int i = 0; i < size; i++) {
                ContentProviderOperation contentProviderOperation = (ContentProviderOperation) arrayList.get(i);
                contentProviderResultArr[i] = contentProviderOperation.apply(this, contentProviderResultArr, i);
                z |= (contentProviderOperation.isInsert() || contentProviderOperation.isDelete()) && contentProviderResultArr[i].count != null && contentProviderResultArr[i].count.intValue() > 0;
            }
            if (z) {
                onAddOrDeleteOp(launcherDbUtils$SQLiteTransaction.mDb);
            }
            launcherDbUtils$SQLiteTransaction.mDb.setTransactionSuccessful();
            reloadLauncherIfExternal();
            launcherDbUtils$SQLiteTransaction.mDb.endTransaction();
            return contentProviderResultArr;
        } catch (Throwable th) {
            try {
                launcherDbUtils$SQLiteTransaction.mDb.endTransaction();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public DatabaseHelper b() {
        return DatabaseHelper.createDatabaseHelper(getContext(), null, true);
    }

    @Override // android.content.ContentProvider
    public int bulkInsert(Uri uri, ContentValues[] contentValuesArr) {
        createDbIfNotExists();
        if (uri.getPathSegments().size() != 1) {
            throw new IllegalArgumentException("Invalid URI: " + uri);
        }
        String str = uri.getPathSegments().get(0);
        SQLiteDatabase writableDatabase = this.mOpenHelper.getWritableDatabase();
        LauncherDbUtils$SQLiteTransaction launcherDbUtils$SQLiteTransaction = new LauncherDbUtils$SQLiteTransaction(writableDatabase);
        try {
            int length = contentValuesArr.length;
            for (int i = 0; i < length; i++) {
                addModifiedTime(contentValuesArr[i]);
                if (dbInsertAndCheck(this.mOpenHelper, writableDatabase, str, null, contentValuesArr[i]) < 0) {
                    launcherDbUtils$SQLiteTransaction.mDb.endTransaction();
                    return 0;
                }
            }
            onAddOrDeleteOp(writableDatabase);
            launcherDbUtils$SQLiteTransaction.mDb.setTransactionSuccessful();
            launcherDbUtils$SQLiteTransaction.mDb.endTransaction();
            reloadLauncherIfExternal();
            return contentValuesArr.length;
        } catch (Throwable th) {
            try {
                launcherDbUtils$SQLiteTransaction.mDb.endTransaction();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public /* synthetic */ DatabaseHelper c(String str) {
        return DatabaseHelper.createDatabaseHelper(getContext(), str, true);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ef  */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.os.Bundle call(java.lang.String r12, final java.lang.String r13, android.os.Bundle r14) {
        /*
            Method dump skipped, instructions count: 856
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.LauncherProvider.call(java.lang.String, java.lang.String, android.os.Bundle):android.os.Bundle");
    }

    public final void clearFlagEmptyDbCreated() {
        Utilities.getPrefs(getContext()).edit().remove("EMPTY_DATABASE_CREATED").commit();
    }

    public synchronized void createDbIfNotExists() {
        if (this.mOpenHelper == null) {
            this.mOpenHelper = DatabaseHelper.createDatabaseHelper(getContext(), null, false);
            if (RestoreDbTask.isPending(getContext())) {
                if (!RestoreDbTask.performRestore(getContext(), this.mOpenHelper, new BackupManager(getContext()))) {
                    this.mOpenHelper.createEmptyDB(this.mOpenHelper.getWritableDatabase());
                }
                RestoreDbTask.setPending(getContext(), false);
            }
        }
    }

    public final AutoInstallsLayout createWorkspaceLoaderFromAppRestriction(AppWidgetHost appWidgetHost) {
        Context context = getContext();
        String string = Settings.Secure.getString(context.getContentResolver(), "launcher3.layout.provider");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider(string, 0);
        if (resolveContentProvider == null) {
            Log.e("LauncherProvider", "No provider found for authority " + string);
            return null;
        }
        InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
        try {
            InputStream openInputStream = context.getContentResolver().openInputStream(new Uri.Builder().scheme("content").authority(string).path("launcher_layout").appendQueryParameter("version", "1").appendQueryParameter("gridWidth", Integer.toString(idp.numColumns)).appendQueryParameter("gridHeight", Integer.toString(idp.numRows)).appendQueryParameter("hotseatSize", Integer.toString(idp.numHotseatIcons)).build());
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                W.copy(openInputStream, byteArrayOutputStream);
                String str = new String(byteArrayOutputStream.toByteArray());
                final XmlPullParser newPullParser = Xml.newPullParser();
                newPullParser.setInput(new StringReader(str));
                Log.d("LauncherProvider", "Loading layout from " + string);
                AutoInstallsLayout autoInstallsLayout = new AutoInstallsLayout(context, appWidgetHost, this.mOpenHelper, context.getPackageManager().getResourcesForApplication(resolveContentProvider.applicationInfo), new Supplier() { // from class: c.a.a.Y
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        XmlPullParser xmlPullParser = newPullParser;
                        LauncherProvider.e(xmlPullParser);
                        return xmlPullParser;
                    }
                }, "workspace");
                if (openInputStream != null) {
                    openInputStream.close();
                }
                return autoInstallsLayout;
            } finally {
            }
        } catch (Exception e) {
            Log.e("LauncherProvider", "Error getting layout stream from: " + string, e);
            return null;
        }
    }

    public /* synthetic */ DatabaseHelper d() {
        return this.mOpenHelper;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        String str2;
        createDbIfNotExists();
        if (uri.getPathSegments().size() == 1) {
            str2 = uri.getPathSegments().get(0);
        } else {
            if (uri.getPathSegments().size() != 2) {
                throw new IllegalArgumentException("Invalid URI: " + uri);
            }
            if (!TextUtils.isEmpty(str)) {
                throw new UnsupportedOperationException("WHERE clause not supported: " + uri);
            }
            String str3 = uri.getPathSegments().get(0);
            StringBuilder f = a.f("_id=");
            f.append(ContentUris.parseId(uri));
            String sb = f.toString();
            strArr = null;
            str = sb;
            str2 = str3;
        }
        SQLiteDatabase writableDatabase = this.mOpenHelper.getWritableDatabase();
        if (Binder.getCallingPid() != Process.myPid() && "favorites".equalsIgnoreCase(str2)) {
            DatabaseHelper databaseHelper = this.mOpenHelper;
            databaseHelper.removeGhostWidgets(databaseHelper.getWritableDatabase());
        }
        int delete = writableDatabase.delete(str2, str, strArr);
        if (delete > 0) {
            onAddOrDeleteOp(writableDatabase);
            reloadLauncherIfExternal();
        }
        return delete;
    }

    @Override // android.content.ContentProvider
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        LauncherAppState instanceNoCreate = LauncherAppState.getInstanceNoCreate();
        if (instanceNoCreate == null || !instanceNoCreate.mModel.isModelLoaded()) {
            return;
        }
        instanceNoCreate.mModel.dumpState("", fileDescriptor, printWriter, strArr);
    }

    public final DefaultLayoutParser getDefaultLayoutParser(AppWidgetHost appWidgetHost) {
        int i;
        InvariantDeviceProfile idp = LauncherAppState.getIDP(getContext());
        return new DefaultLayoutParser(getContext(), appWidgetHost, this.mOpenHelper, getContext().getResources(), (!((UserManager) getContext().getSystemService(UserManager.class)).isDemoUser() || (i = idp.demoModeLayoutId) == 0) ? idp.defaultLayoutId : i);
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        String str;
        String str2 = null;
        if (uri.getPathSegments().size() == 1) {
            str = uri.getPathSegments().get(0);
        } else {
            if (uri.getPathSegments().size() != 2) {
                throw new IllegalArgumentException("Invalid URI: " + uri);
            }
            if (!TextUtils.isEmpty(null)) {
                throw new UnsupportedOperationException("WHERE clause not supported: " + uri);
            }
            str = uri.getPathSegments().get(0);
            StringBuilder f = a.f("_id=");
            f.append(ContentUris.parseId(uri));
            str2 = f.toString();
        }
        return TextUtils.isEmpty(str2) ? a.e("vnd.android.cursor.dir/", str) : a.e("vnd.android.cursor.item/", str);
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        createDbIfNotExists();
        boolean z = true;
        if (uri.getPathSegments().size() != 1) {
            throw new IllegalArgumentException("Invalid URI: " + uri);
        }
        String str = uri.getPathSegments().get(0);
        if (Binder.getCallingPid() != Process.myPid()) {
            contentValues.put("_id", Integer.valueOf(this.mOpenHelper.generateNewItemId()));
            Integer asInteger = contentValues.getAsInteger("itemType");
            if (asInteger != null && asInteger.intValue() == 4 && !contentValues.containsKey("appWidgetId")) {
                AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(getContext());
                ComponentName unflattenFromString = ComponentName.unflattenFromString(contentValues.getAsString("appWidgetProvider"));
                if (unflattenFromString != null) {
                    try {
                        AppWidgetHost newLauncherWidgetHost = this.mOpenHelper.newLauncherWidgetHost();
                        int allocateAppWidgetId = newLauncherWidgetHost.allocateAppWidgetId();
                        contentValues.put("appWidgetId", Integer.valueOf(allocateAppWidgetId));
                        if (!appWidgetManager.bindAppWidgetIdIfAllowed(allocateAppWidgetId, unflattenFromString)) {
                            newLauncherWidgetHost.deleteAppWidgetId(allocateAppWidgetId);
                        }
                    } catch (RuntimeException e) {
                        Log.e("LauncherProvider", "Failed to initialize external widget", e);
                    }
                }
                z = false;
            }
            if (!z) {
                return null;
            }
        }
        SQLiteDatabase writableDatabase = this.mOpenHelper.getWritableDatabase();
        addModifiedTime(contentValues);
        int dbInsertAndCheck = dbInsertAndCheck(this.mOpenHelper, writableDatabase, str, null, contentValues);
        if (dbInsertAndCheck < 0) {
            return null;
        }
        onAddOrDeleteOp(writableDatabase);
        Uri withAppendedId = ContentUris.withAppendedId(uri, dbInsertAndCheck);
        reloadLauncherIfExternal();
        return withAppendedId;
    }

    public final void onAddOrDeleteOp(SQLiteDatabase sQLiteDatabase) {
        DatabaseHelper databaseHelper = this.mOpenHelper;
        if (databaseHelper.mBackupTableExists) {
            W.dropTable(sQLiteDatabase, "favorites_bakup");
            databaseHelper.mBackupTableExists = false;
        }
        if (databaseHelper.mHotseatRestoreTableExists) {
            W.dropTable(sQLiteDatabase, "hotseat_restore_backup");
            databaseHelper.mHotseatRestoreTableExists = false;
        }
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        MainProcessInitializer.initialize(getContext().getApplicationContext());
        return true;
    }

    public final synchronized boolean prepForMigration(String str, String str2, Supplier supplier, Supplier supplier2) {
        if (TextUtils.equals(str, this.mOpenHelper.getDatabaseName())) {
            return false;
        }
        DatabaseHelper databaseHelper = (DatabaseHelper) supplier.get();
        this.mOpenHelper = (DatabaseHelper) supplier2.get();
        W.copyTable(databaseHelper.getReadableDatabase(), "favorites", this.mOpenHelper.getWritableDatabase(), str2, getContext());
        databaseHelper.close();
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        String str3;
        createDbIfNotExists();
        if (uri.getPathSegments().size() == 1) {
            str3 = uri.getPathSegments().get(0);
        } else {
            if (uri.getPathSegments().size() != 2) {
                throw new IllegalArgumentException("Invalid URI: " + uri);
            }
            if (!TextUtils.isEmpty(str)) {
                throw new UnsupportedOperationException("WHERE clause not supported: " + uri);
            }
            str3 = uri.getPathSegments().get(0);
            StringBuilder f = a.f("_id=");
            f.append(ContentUris.parseId(uri));
            str = f.toString();
            strArr2 = null;
        }
        String str4 = str;
        String[] strArr3 = strArr2;
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables(str3);
        Cursor query = sQLiteQueryBuilder.query(this.mOpenHelper.getWritableDatabase(), strArr, str4, strArr3, null, null, str2);
        query.setNotificationUri(getContext().getContentResolver(), uri);
        return query;
    }

    public final void reloadLauncherIfExternal() {
        LauncherAppState instanceNoCreate;
        if (Binder.getCallingPid() == Process.myPid() || (instanceNoCreate = LauncherAppState.getInstanceNoCreate()) == null) {
            return;
        }
        instanceNoCreate.mModel.forceReload();
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        String str2;
        createDbIfNotExists();
        if (uri.getPathSegments().size() == 1) {
            str2 = uri.getPathSegments().get(0);
        } else {
            if (uri.getPathSegments().size() != 2) {
                throw new IllegalArgumentException("Invalid URI: " + uri);
            }
            if (!TextUtils.isEmpty(str)) {
                throw new UnsupportedOperationException("WHERE clause not supported: " + uri);
            }
            String str3 = uri.getPathSegments().get(0);
            StringBuilder f = a.f("_id=");
            f.append(ContentUris.parseId(uri));
            String sb = f.toString();
            strArr = null;
            str = sb;
            str2 = str3;
        }
        addModifiedTime(contentValues);
        int update = this.mOpenHelper.getWritableDatabase().update(str2, contentValues, str, strArr);
        reloadLauncherIfExternal();
        return update;
    }
}
