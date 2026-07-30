package com.android.launcher3.model;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Point;
import android.util.ArrayMap;
import android.util.Log;
import c.a.c.a.a;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherSettings$Settings;
import com.android.launcher3.Utilities;
import com.android.launcher3.graphics.LauncherPreviewRenderer;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.GridOccupancy;
import com.android.launcher3.util.IntArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public class GridSizeMigrationTaskV2 {
    public final Context mContext;
    public final SQLiteDatabase mDb;
    public final int mDestHotseatSize;
    public final DbReader mDestReader;
    public final List mHotseatDiff;
    public final List mHotseatItems;
    public final DbReader mSrcReader;
    public final int mTrgX;
    public final int mTrgY;
    public final List mWorkspaceDiff;
    public final List mWorkspaceItems;

    public class DbEntry extends ItemInfo implements Comparable {
        public Map mFolderItems = new HashMap();
        public String mIntent;
        public String mProvider;

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            DbEntry dbEntry = (DbEntry) obj;
            int i = this.screenId;
            int i2 = dbEntry.screenId;
            if (i != i2) {
                return Integer.compare(i, i2);
            }
            int i3 = this.cellY;
            int i4 = dbEntry.cellY;
            return i3 != i4 ? -Integer.compare(i3, i4) : Integer.compare(this.cellX, dbEntry.cellX);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || DbEntry.class != obj.getClass()) {
                return false;
            }
            return Objects.equals(this.mIntent, ((DbEntry) obj).mIntent);
        }

        public int hashCode() {
            return Objects.hash(this.mIntent);
        }
    }

    public class DbReader {
        public final Context mContext;
        public final SQLiteDatabase mDb;
        public final int mHotseatSize;
        public final String mTableName;
        public final HashSet mValidPackages;
        public int mLastScreenId = -1;
        public final ArrayList mHotseatEntries = new ArrayList();
        public final ArrayList mWorkspaceEntries = new ArrayList();
        public final Map mWorkspaceEntriesByScreenId = new ArrayMap();

        public DbReader(SQLiteDatabase sQLiteDatabase, String str, Context context, HashSet hashSet, int i) {
            this.mDb = sQLiteDatabase;
            this.mTableName = str;
            this.mContext = context;
            this.mValidPackages = hashSet;
            this.mHotseatSize = i;
        }

        public final int getFolderItemsCount(DbEntry dbEntry) {
            StringBuilder f = a.f("container = ");
            f.append(dbEntry.id);
            Cursor queryWorkspace = queryWorkspace(new String[]{"_id", "intent"}, f.toString());
            int i = 0;
            while (queryWorkspace.moveToNext()) {
                try {
                    int i2 = queryWorkspace.getInt(0);
                    String string = queryWorkspace.getString(1);
                    verifyIntent(string);
                    i++;
                    if (!dbEntry.mFolderItems.containsKey(string)) {
                        dbEntry.mFolderItems.put(string, new HashSet());
                    }
                    ((Set) dbEntry.mFolderItems.get(string)).add(Integer.valueOf(i2));
                } catch (Exception unused) {
                    GridSizeMigrationTaskV2.access$900(this.mDb, this.mTableName, new IntArray(new int[]{queryWorkspace.getInt(0)}, 1));
                }
            }
            queryWorkspace.close();
            return i;
        }

        /* JADX WARN: Removed duplicated region for block: B:37:0x014b  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x015e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.util.ArrayList loadAllWorkspaceEntries() {
            /*
                Method dump skipped, instructions count: 425
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.model.GridSizeMigrationTaskV2.DbReader.loadAllWorkspaceEntries():java.util.ArrayList");
        }

        public ArrayList loadHotseatEntries() {
            Cursor queryWorkspace = queryWorkspace(new String[]{"_id", "itemType", "intent", "screen"}, "container = -101");
            int columnIndexOrThrow = queryWorkspace.getColumnIndexOrThrow("_id");
            int columnIndexOrThrow2 = queryWorkspace.getColumnIndexOrThrow("itemType");
            int columnIndexOrThrow3 = queryWorkspace.getColumnIndexOrThrow("intent");
            int columnIndexOrThrow4 = queryWorkspace.getColumnIndexOrThrow("screen");
            IntArray intArray = new IntArray(10);
            while (queryWorkspace.moveToNext()) {
                DbEntry dbEntry = new DbEntry();
                dbEntry.id = queryWorkspace.getInt(columnIndexOrThrow);
                dbEntry.itemType = queryWorkspace.getInt(columnIndexOrThrow2);
                int i = queryWorkspace.getInt(columnIndexOrThrow4);
                dbEntry.screenId = i;
                if (i >= this.mHotseatSize) {
                    intArray.add(intArray.mSize, dbEntry.id);
                } else {
                    try {
                        int i2 = dbEntry.itemType;
                        if (i2 != 0 && i2 != 1) {
                            if (i2 != 2) {
                                if (i2 != 6) {
                                    throw new Exception("Invalid item type");
                                }
                            } else {
                                if (getFolderItemsCount(dbEntry) == 0) {
                                    throw new Exception("Folder is empty");
                                }
                                this.mHotseatEntries.add(dbEntry);
                            }
                        }
                        dbEntry.mIntent = queryWorkspace.getString(columnIndexOrThrow3);
                        verifyIntent(queryWorkspace.getString(columnIndexOrThrow3));
                        this.mHotseatEntries.add(dbEntry);
                    } catch (Exception e) {
                        StringBuilder f = a.f("Removing item ");
                        f.append(dbEntry.id);
                        Log.d("GridSizeMigrationTaskV2", f.toString(), e);
                        intArray.add(intArray.mSize, dbEntry.id);
                    }
                }
            }
            GridSizeMigrationTaskV2.access$900(this.mDb, this.mTableName, intArray);
            queryWorkspace.close();
            return this.mHotseatEntries;
        }

        public final Cursor queryWorkspace(String[] strArr, String str) {
            return this.mDb.query(this.mTableName, strArr, str, null, null, null, null);
        }

        public final void verifyIntent(String str) {
            Intent parseUri = Intent.parseUri(str, 0);
            if (parseUri.getComponent() != null) {
                verifyPackage(parseUri.getComponent().getPackageName());
            } else if (parseUri.getPackage() != null) {
                verifyPackage(parseUri.getPackage());
            }
        }

        public final void verifyPackage(String str) {
            if (!this.mValidPackages.contains(str)) {
                throw new Exception("Package not available");
            }
        }
    }

    public class GridPlacementSolution {
        public final Context mContext;
        public final SQLiteDatabase mDb;
        public final DbReader mDestReader;
        public final List mItemsToPlace;
        public int mNextStartX = 0;
        public int mNextStartY;
        public final GridOccupancy mOccupied;
        public final int mScreenId;
        public final DbReader mSrcReader;
        public final int mTrgX;
        public final int mTrgY;

        public GridPlacementSolution(SQLiteDatabase sQLiteDatabase, DbReader dbReader, DbReader dbReader2, Context context, int i, int i2, int i3, List list) {
            this.mDb = sQLiteDatabase;
            this.mSrcReader = dbReader;
            this.mDestReader = dbReader2;
            this.mContext = context;
            this.mOccupied = new GridOccupancy(i2, i3);
            this.mScreenId = i;
            this.mTrgX = i2;
            this.mTrgY = i3;
            this.mNextStartY = i3 - 1;
            List list2 = (List) this.mDestReader.mWorkspaceEntriesByScreenId.get(Integer.valueOf(i));
            if (list2 != null) {
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    this.mOccupied.markCells((ItemInfo) it.next(), true);
                }
            }
            this.mItemsToPlace = list;
        }

        public void find() {
            boolean z;
            int i;
            Iterator it = this.mItemsToPlace.iterator();
            while (it.hasNext()) {
                DbEntry dbEntry = (DbEntry) it.next();
                if (dbEntry.minSpanX > this.mTrgX || dbEntry.minSpanY > this.mTrgY) {
                    it.remove();
                } else {
                    int i2 = this.mNextStartY;
                    while (true) {
                        z = false;
                        if (i2 <= 0) {
                            break;
                        }
                        i = this.mNextStartX;
                        while (i < this.mTrgX) {
                            boolean isRegionVacant = this.mOccupied.isRegionVacant(i, i2, dbEntry.spanX, dbEntry.spanY);
                            boolean isRegionVacant2 = this.mOccupied.isRegionVacant(i, i2, dbEntry.minSpanX, dbEntry.minSpanY);
                            if (isRegionVacant2) {
                                dbEntry.spanX = dbEntry.minSpanX;
                                dbEntry.spanY = dbEntry.minSpanY;
                            }
                            if (isRegionVacant || isRegionVacant2) {
                                break;
                            } else {
                                i++;
                            }
                        }
                        this.mNextStartX = 0;
                        i2--;
                    }
                    dbEntry.screenId = this.mScreenId;
                    dbEntry.cellX = i;
                    dbEntry.cellY = i2;
                    this.mOccupied.markCells((ItemInfo) dbEntry, true);
                    this.mNextStartX = i + dbEntry.spanX;
                    this.mNextStartY = i2;
                    z = true;
                    if (z) {
                        GridSizeMigrationTaskV2.access$500(this.mDb, this.mContext, dbEntry, this.mSrcReader.mTableName, this.mDestReader.mTableName);
                        it.remove();
                    }
                }
            }
        }
    }

    public class HotseatPlacementSolution {
        public final Context mContext;
        public final SQLiteDatabase mDb;
        public final DbReader mDestReader;
        public final List mItemsToPlace;
        public final HotseatOccupancy mOccupied;
        public final DbReader mSrcReader;

        public class HotseatOccupancy {
            public final boolean[] mCells;

            public HotseatOccupancy(HotseatPlacementSolution hotseatPlacementSolution, int i, AnonymousClass1 anonymousClass1) {
                this.mCells = new boolean[i];
            }
        }

        public HotseatPlacementSolution(SQLiteDatabase sQLiteDatabase, DbReader dbReader, DbReader dbReader2, Context context, int i, List list, List list2) {
            this.mDb = sQLiteDatabase;
            this.mSrcReader = dbReader;
            this.mDestReader = dbReader2;
            this.mContext = context;
            this.mOccupied = new HotseatOccupancy(this, i, null);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                this.mOccupied.mCells[((DbEntry) it.next()).screenId] = true;
            }
            this.mItemsToPlace = list2;
        }
    }

    public GridSizeMigrationTaskV2(Context context, SQLiteDatabase sQLiteDatabase, DbReader dbReader, DbReader dbReader2, int i, Point point) {
        this.mContext = context;
        this.mDb = sQLiteDatabase;
        this.mSrcReader = dbReader;
        this.mDestReader = dbReader2;
        this.mHotseatItems = dbReader2.loadHotseatEntries();
        this.mWorkspaceItems = dbReader2.loadAllWorkspaceEntries();
        this.mHotseatDiff = calcDiff(this.mSrcReader.loadHotseatEntries(), this.mHotseatItems);
        this.mWorkspaceDiff = calcDiff(this.mSrcReader.loadAllWorkspaceEntries(), this.mWorkspaceItems);
        this.mDestHotseatSize = i;
        this.mTrgX = point.x;
        this.mTrgY = point.y;
    }

    public static void access$500(SQLiteDatabase sQLiteDatabase, Context context, DbEntry dbEntry, String str, String str2) {
        int copyEntryAndUpdate = copyEntryAndUpdate(sQLiteDatabase, context, dbEntry, -1, -1, str, str2);
        if (dbEntry.itemType == 2) {
            Iterator it = dbEntry.mFolderItems.values().iterator();
            while (it.hasNext()) {
                Iterator it2 = ((Set) it.next()).iterator();
                while (it2.hasNext()) {
                    copyEntryAndUpdate(sQLiteDatabase, context, null, ((Integer) it2.next()).intValue(), copyEntryAndUpdate, str, str2);
                }
            }
        }
    }

    public static void access$900(SQLiteDatabase sQLiteDatabase, String str, IntArray intArray) {
        sQLiteDatabase.delete(str, Utilities.createDbSelectionQuery("_id", intArray), null);
    }

    public static List calcDiff(List list, List list2) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            DbEntry dbEntry = (DbEntry) it.next();
            if (dbEntry.itemType == 2) {
                hashSet2.add(getFolderIntents(dbEntry));
            } else {
                hashSet.add(dbEntry.mIntent);
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            DbEntry dbEntry2 = (DbEntry) it2.next();
            if (dbEntry2.itemType == 2) {
                if (!hashSet2.contains(getFolderIntents(dbEntry2))) {
                    arrayList.add(dbEntry2);
                }
            } else if (!hashSet.contains(dbEntry2.mIntent)) {
                arrayList.add(dbEntry2);
            }
        }
        return arrayList;
    }

    public static int copyEntryAndUpdate(SQLiteDatabase sQLiteDatabase, Context context, DbEntry dbEntry, int i, int i2, String str, String str2) {
        StringBuilder f = a.f("_id = '");
        if (dbEntry != null) {
            i = dbEntry.id;
        }
        f.append(i);
        f.append("'");
        Cursor query = sQLiteDatabase.query(str, null, f.toString(), null, null, null, null);
        int i3 = -1;
        while (query.moveToNext()) {
            ContentValues contentValues = new ContentValues();
            DatabaseUtils.cursorRowToContentValues(query, contentValues);
            if (dbEntry != null) {
                contentValues.put("screen", Integer.valueOf(dbEntry.screenId));
                contentValues.put("cellX", Integer.valueOf(dbEntry.cellX));
                contentValues.put("cellY", Integer.valueOf(dbEntry.cellY));
                contentValues.put("spanX", Integer.valueOf(dbEntry.spanX));
                contentValues.put("spanY", Integer.valueOf(dbEntry.spanY));
            } else {
                contentValues.put("container", Integer.valueOf(i2));
            }
            int i4 = LauncherSettings$Settings.call(context.getContentResolver(), "generate_new_item_id").getInt("value");
            contentValues.put("_id", Integer.valueOf(i4));
            sQLiteDatabase.insert(str2, null, contentValues);
            i3 = i4;
        }
        query.close();
        return i3;
    }

    public static Map getFolderIntents(DbEntry dbEntry) {
        HashMap hashMap = new HashMap();
        for (String str : dbEntry.mFolderItems.keySet()) {
            hashMap.put(str, Integer.valueOf(((Set) dbEntry.mFolderItems.get(str)).size()));
        }
        return hashMap;
    }

    public static boolean migrateGridIfNeeded(Context context) {
        if (context instanceof LauncherPreviewRenderer.PreviewContext) {
            return true;
        }
        return migrateGridIfNeeded(context, null);
    }

    public static boolean needsToMigrate(Context context, InvariantDeviceProfile invariantDeviceProfile) {
        SharedPreferences prefs = Utilities.getPrefs(context);
        return (Utilities.getPointString(invariantDeviceProfile.numColumns, invariantDeviceProfile.numRows).equals(prefs.getString("migration_src_workspace_size", "")) && invariantDeviceProfile.numHotseatIcons == prefs.getInt("migration_src_hotseat_count", -1)) ? false : true;
    }

    public boolean migrate() {
        if (this.mHotseatDiff.isEmpty() && this.mWorkspaceDiff.isEmpty()) {
            return false;
        }
        HotseatPlacementSolution hotseatPlacementSolution = new HotseatPlacementSolution(this.mDb, this.mSrcReader, this.mDestReader, this.mContext, this.mDestHotseatSize, this.mHotseatItems, this.mHotseatDiff);
        int i = 0;
        while (true) {
            boolean[] zArr = hotseatPlacementSolution.mOccupied.mCells;
            if (i >= zArr.length) {
                break;
            }
            if (!zArr[i] && !hotseatPlacementSolution.mItemsToPlace.isEmpty()) {
                DbEntry dbEntry = (DbEntry) hotseatPlacementSolution.mItemsToPlace.remove(0);
                dbEntry.screenId = i;
                dbEntry.cellX = i;
                dbEntry.cellY = 0;
                access$500(hotseatPlacementSolution.mDb, hotseatPlacementSolution.mContext, dbEntry, hotseatPlacementSolution.mSrcReader.mTableName, hotseatPlacementSolution.mDestReader.mTableName);
                hotseatPlacementSolution.mOccupied.mCells[dbEntry.screenId] = true;
            }
            i++;
        }
        Collections.sort(this.mWorkspaceDiff);
        for (int i2 = 0; i2 <= this.mDestReader.mLastScreenId; i2++) {
            Log.d("GridSizeMigrationTaskV2", "Migrating " + i2);
            new GridPlacementSolution(this.mDb, this.mSrcReader, this.mDestReader, this.mContext, i2, this.mTrgX, this.mTrgY, this.mWorkspaceDiff).find();
            if (this.mWorkspaceDiff.isEmpty()) {
                break;
            }
        }
        int i3 = this.mDestReader.mLastScreenId;
        while (true) {
            i3++;
            if (this.mWorkspaceDiff.isEmpty()) {
                return true;
            }
            new GridPlacementSolution(this.mDb, this.mSrcReader, this.mDestReader, this.mContext, i3, this.mTrgX, this.mTrgY, this.mWorkspaceDiff).find();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0164 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:? A[Catch: Exception -> 0x016f, all -> 0x01a6, SYNTHETIC, TRY_LEAVE, TryCatch #0 {Exception -> 0x016f, blocks: (B:75:0x016e, B:74:0x016b), top: B:73:0x016b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean migrateGridIfNeeded(android.content.Context r21, com.android.launcher3.InvariantDeviceProfile r22) {
        /*
            Method dump skipped, instructions count: 463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.model.GridSizeMigrationTaskV2.migrateGridIfNeeded(android.content.Context, com.android.launcher3.InvariantDeviceProfile):boolean");
    }
}
