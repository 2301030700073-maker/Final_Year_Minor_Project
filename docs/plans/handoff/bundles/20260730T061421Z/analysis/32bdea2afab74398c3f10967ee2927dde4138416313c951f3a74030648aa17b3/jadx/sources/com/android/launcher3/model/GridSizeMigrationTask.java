package com.android.launcher3.model;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Point;
import android.util.Log;
import android.util.SparseArray;
import b.l.W;
import c.a.c.a.a;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.LauncherSettings$Settings;
import com.android.launcher3.Utilities;
import com.android.launcher3.graphics.LauncherPreviewRenderer;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.pm.InstallSessionHelper;
import com.android.launcher3.util.GridOccupancy;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSparseArrayMap;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.widget.custom.CustomWidgetManager;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class GridSizeMigrationTask {
    public final Context mContext;
    public final SQLiteDatabase mDb;
    public final int mDestHotseatSize;
    public final boolean mShouldRemoveX;
    public final boolean mShouldRemoveY;
    public final int mSrcHotseatSize;
    public final int mSrcX;
    public final int mSrcY;
    public final String mTableName;
    public final int mTrgX;
    public final int mTrgY;
    public final HashSet mValidPackages;
    public final IntArray mEntryToRemove = new IntArray(10);
    public final ArrayList mCarryOver = new ArrayList();
    public final SparseArray mUpdateOperations = new SparseArray();

    public class DbEntry extends ItemInfo implements Comparable {
        public float weight;

        public void addToContentValues(ContentValues contentValues) {
            contentValues.put("screen", Integer.valueOf(this.screenId));
            contentValues.put("cellX", Integer.valueOf(this.cellX));
            contentValues.put("cellY", Integer.valueOf(this.cellY));
            contentValues.put("spanX", Integer.valueOf(this.spanX));
            contentValues.put("spanY", Integer.valueOf(this.spanY));
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            DbEntry dbEntry = (DbEntry) obj;
            if (this.itemType == 4) {
                if (dbEntry.itemType == 4) {
                    return (dbEntry.spanY * dbEntry.spanX) - (this.spanX * this.spanY);
                }
                return -1;
            }
            if (dbEntry.itemType == 4) {
                return 1;
            }
            return Float.compare(dbEntry.weight, this.weight);
        }

        public DbEntry copy() {
            DbEntry dbEntry = new DbEntry();
            dbEntry.copyFrom(this);
            dbEntry.weight = this.weight;
            dbEntry.minSpanX = this.minSpanX;
            dbEntry.minSpanY = this.minSpanY;
            return dbEntry;
        }
    }

    public class MultiStepMigrationTask {
        public final Context mContext;
        public final SQLiteDatabase mDb;
        public final boolean mUsePreviewTable;
        public final HashSet mValidPackages;

        public MultiStepMigrationTask(HashSet hashSet, Context context, SQLiteDatabase sQLiteDatabase, boolean z) {
            this.mValidPackages = hashSet;
            this.mContext = context;
            this.mDb = sQLiteDatabase;
            this.mUsePreviewTable = z;
        }

        public boolean migrate(Point point, Point point2) {
            if (point2.equals(point)) {
                return false;
            }
            int i = point.x;
            int i2 = point2.x;
            if (i < i2) {
                point.x = i2;
            }
            int i3 = point.y;
            int i4 = point2.y;
            if (i3 < i4) {
                point.y = i4;
            }
            boolean z = false;
            while (!point2.equals(point)) {
                Point point3 = new Point(point);
                int i5 = point2.x;
                int i6 = point3.x;
                if (i5 < i6) {
                    point3.x = i6 - 1;
                }
                int i7 = point2.y;
                int i8 = point3.y;
                if (i7 < i8) {
                    point3.y = i8 - 1;
                }
                GridSizeMigrationTask gridSizeMigrationTask = new GridSizeMigrationTask(this.mContext, this.mDb, this.mValidPackages, this.mUsePreviewTable, point, point3);
                IntArray workspaceScreenIds = GridSizeMigrationTask.getWorkspaceScreenIds(gridSizeMigrationTask.mDb, gridSizeMigrationTask.mTableName);
                if (workspaceScreenIds.isEmpty()) {
                    throw new Exception("Unable to get workspace screens");
                }
                for (int i9 = 0; i9 < workspaceScreenIds.mSize; i9++) {
                    int i10 = workspaceScreenIds.get(i9);
                    Log.d("GridSizeMigrationTask", "Migrating " + i10);
                    gridSizeMigrationTask.migrateScreen(i10);
                }
                if (!gridSizeMigrationTask.mCarryOver.isEmpty()) {
                    IntSparseArrayMap intSparseArrayMap = new IntSparseArrayMap();
                    Iterator it = gridSizeMigrationTask.mCarryOver.iterator();
                    while (it.hasNext()) {
                        DbEntry dbEntry = (DbEntry) it.next();
                        intSparseArrayMap.put(dbEntry.id, dbEntry);
                    }
                    do {
                        OptimalPlacementSolution optimalPlacementSolution = gridSizeMigrationTask.new OptimalPlacementSolution(new GridOccupancy(gridSizeMigrationTask.mTrgX, gridSizeMigrationTask.mTrgY), GridSizeMigrationTask.deepCopy(gridSizeMigrationTask.mCarryOver), 0, true);
                        optimalPlacementSolution.find();
                        if (optimalPlacementSolution.finalPlacedItems.size() <= 0) {
                            throw new Exception("None of the items can be placed on an empty screen");
                        }
                        int i11 = LauncherSettings$Settings.call(gridSizeMigrationTask.mContext.getContentResolver(), "generate_new_screen_id").getInt("value");
                        Iterator it2 = optimalPlacementSolution.finalPlacedItems.iterator();
                        while (it2.hasNext()) {
                            DbEntry dbEntry2 = (DbEntry) it2.next();
                            if (!gridSizeMigrationTask.mCarryOver.remove(intSparseArrayMap.get(dbEntry2.id))) {
                                throw new Exception("Unable to find matching items");
                            }
                            dbEntry2.screenId = i11;
                            gridSizeMigrationTask.update(dbEntry2);
                        }
                    } while (!gridSizeMigrationTask.mCarryOver.isEmpty());
                }
                if (gridSizeMigrationTask.applyOperations()) {
                    z = true;
                }
                point.set(point3.x, point3.y);
            }
            return z;
        }
    }

    public class OptimalPlacementSolution {
        public ArrayList finalPlacedItems;
        public final boolean ignoreMove;
        public final ArrayList itemsToPlace;
        public final GridOccupancy occupied;
        public final int startY;
        public float lowestWeightLoss = Float.MAX_VALUE;
        public float lowestMoveCost = Float.MAX_VALUE;

        public OptimalPlacementSolution(GridOccupancy gridOccupancy, ArrayList arrayList, int i, boolean z) {
            this.occupied = gridOccupancy;
            this.itemsToPlace = arrayList;
            this.ignoreMove = z;
            this.startY = i;
            Collections.sort(arrayList);
        }

        public void find() {
            find(0, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, new ArrayList());
        }

        public void find(int i, float f, float f2, ArrayList arrayList) {
            float f3;
            float f4;
            int i2;
            GridSizeMigrationTask gridSizeMigrationTask;
            int i3;
            float f5;
            float f6;
            int i4;
            float f7 = f;
            float f8 = this.lowestWeightLoss;
            if (f7 < f8) {
                if (f7 != f8 || f2 < this.lowestMoveCost) {
                    if (i >= this.itemsToPlace.size()) {
                        this.lowestWeightLoss = f7;
                        this.lowestMoveCost = f2;
                        this.finalPlacedItems = GridSizeMigrationTask.deepCopy(arrayList);
                        return;
                    }
                    DbEntry dbEntry = (DbEntry) this.itemsToPlace.get(i);
                    int i5 = dbEntry.cellX;
                    int i6 = dbEntry.cellY;
                    ArrayList arrayList2 = new ArrayList(arrayList.size() + 1);
                    arrayList2.addAll(arrayList);
                    arrayList2.add(dbEntry);
                    if (dbEntry.spanX <= 1 && dbEntry.spanY <= 1) {
                        int i7 = this.startY;
                        int i8 = Integer.MAX_VALUE;
                        int i9 = Integer.MAX_VALUE;
                        int i10 = Integer.MAX_VALUE;
                        while (true) {
                            gridSizeMigrationTask = GridSizeMigrationTask.this;
                            i3 = gridSizeMigrationTask.mTrgY;
                            if (i7 >= i3) {
                                break;
                            }
                            for (int i11 = 0; i11 < GridSizeMigrationTask.this.mTrgX; i11++) {
                                if (!this.occupied.cells[i11][i7]) {
                                    if (this.ignoreMove) {
                                        i4 = 0;
                                    } else {
                                        int i12 = dbEntry.cellX - i11;
                                        int i13 = dbEntry.cellY - i7;
                                        i4 = (i13 * i13) + (i12 * i12);
                                    }
                                    if (i4 < i10) {
                                        i9 = i7;
                                        i8 = i11;
                                        i10 = i4;
                                    }
                                }
                            }
                            i7++;
                        }
                        if (i8 >= gridSizeMigrationTask.mTrgX || i9 >= i3) {
                            for (int i14 = i + 1; i14 < this.itemsToPlace.size(); i14++) {
                                f7 += ((DbEntry) this.itemsToPlace.get(i14)).weight;
                            }
                            find(this.itemsToPlace.size(), f7 + dbEntry.weight, f2, arrayList);
                            return;
                        }
                        if (i8 != i5) {
                            dbEntry.cellX = i8;
                            f5 = 1.0f;
                            f6 = f2 + 1.0f;
                        } else {
                            f5 = 1.0f;
                            f6 = f2;
                        }
                        if (i9 != i6) {
                            dbEntry.cellY = i9;
                            f6 += f5;
                        }
                        if (this.ignoreMove) {
                            f6 = f2;
                        }
                        this.occupied.markCells((ItemInfo) dbEntry, true);
                        int i15 = i + 1;
                        find(i15, f7, f6, arrayList2);
                        this.occupied.markCells((ItemInfo) dbEntry, false);
                        dbEntry.cellX = i5;
                        dbEntry.cellY = i6;
                        if (i15 < this.itemsToPlace.size()) {
                            float f9 = ((DbEntry) this.itemsToPlace.get(i15)).weight;
                            float f10 = dbEntry.weight;
                            if (f9 < f10 || this.ignoreMove) {
                                return;
                            }
                            find(i15, f7 + f10, f2, arrayList);
                            return;
                        }
                        return;
                    }
                    int i16 = dbEntry.spanX;
                    int i17 = dbEntry.spanY;
                    for (int i18 = this.startY; i18 < GridSizeMigrationTask.this.mTrgY; i18++) {
                        int i19 = 0;
                        while (i19 < GridSizeMigrationTask.this.mTrgX) {
                            if (i19 != i5) {
                                dbEntry.cellX = i19;
                                f3 = 1.0f;
                                f4 = f2 + 1.0f;
                            } else {
                                f3 = 1.0f;
                                f4 = f2;
                            }
                            if (i18 != i6) {
                                dbEntry.cellY = i18;
                                f4 += f3;
                            }
                            if (this.ignoreMove) {
                                f4 = f2;
                            }
                            if (this.occupied.isRegionVacant(i19, i18, i16, i17)) {
                                this.occupied.markCells((ItemInfo) dbEntry, true);
                                find(i + 1, f7, f4, arrayList2);
                                this.occupied.markCells((ItemInfo) dbEntry, false);
                            }
                            if (i16 > dbEntry.minSpanX && this.occupied.isRegionVacant(i19, i18, i16 - 1, i17)) {
                                dbEntry.spanX--;
                                this.occupied.markCells((ItemInfo) dbEntry, true);
                                find(i + 1, f7, f4 + 1.0f, arrayList2);
                                this.occupied.markCells((ItemInfo) dbEntry, false);
                                dbEntry.spanX++;
                            }
                            if (i17 > dbEntry.minSpanY && this.occupied.isRegionVacant(i19, i18, i16, i17 - 1)) {
                                dbEntry.spanY--;
                                this.occupied.markCells((ItemInfo) dbEntry, true);
                                find(i + 1, f7, f4 + 1.0f, arrayList2);
                                this.occupied.markCells((ItemInfo) dbEntry, false);
                                dbEntry.spanY++;
                            }
                            if (i17 <= dbEntry.minSpanY || i16 <= dbEntry.minSpanX) {
                                i2 = i16;
                            } else {
                                i2 = i16;
                                if (this.occupied.isRegionVacant(i19, i18, i16 - 1, i17 - 1)) {
                                    dbEntry.spanX--;
                                    dbEntry.spanY--;
                                    this.occupied.markCells((ItemInfo) dbEntry, true);
                                    find(i + 1, f7, f4 + 2.0f, arrayList2);
                                    this.occupied.markCells((ItemInfo) dbEntry, false);
                                    dbEntry.spanX++;
                                    dbEntry.spanY++;
                                    dbEntry.cellX = i5;
                                    dbEntry.cellY = i6;
                                    i19++;
                                    i16 = i2;
                                }
                            }
                            dbEntry.cellX = i5;
                            dbEntry.cellY = i6;
                            i19++;
                            i16 = i2;
                        }
                    }
                    find(i + 1, f7 + dbEntry.weight, f2, arrayList);
                }
            }
        }
    }

    public GridSizeMigrationTask(Context context, SQLiteDatabase sQLiteDatabase, HashSet hashSet, boolean z, Point point, Point point2) {
        this.mContext = context;
        this.mDb = sQLiteDatabase;
        this.mValidPackages = hashSet;
        this.mTableName = z ? "favorites_preview" : "favorites";
        int i = point.x;
        this.mSrcX = i;
        this.mSrcY = point.y;
        int i2 = point2.x;
        this.mTrgX = i2;
        this.mTrgY = point2.y;
        this.mShouldRemoveX = i2 < i;
        this.mShouldRemoveY = this.mTrgY < this.mSrcY;
        this.mDestHotseatSize = -1;
        this.mSrcHotseatSize = -1;
    }

    public static ArrayList deepCopy(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((DbEntry) it.next()).copy());
        }
        return arrayList2;
    }

    public static HashSet getValidPackages(Context context) {
        final HashSet hashSet = new HashSet();
        Iterator<PackageInfo> it = context.getPackageManager().getInstalledPackages(QuickStepContract.SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED).iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().packageName);
        }
        ((InstallSessionHelper) InstallSessionHelper.INSTANCE.b(context)).getActiveSessions().keySet().forEach(new Consumer() { // from class: c.a.a.N0.v
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                hashSet.add(((PackageUserKey) obj).mPackageName);
            }
        });
        return hashSet;
    }

    public static IntArray getWorkspaceScreenIds(SQLiteDatabase sQLiteDatabase, String str) {
        return W.queryIntArray(sQLiteDatabase, str, "screen", "container = -100", "screen", "screen");
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

    public final boolean applyOperations() {
        int size = this.mUpdateOperations.size();
        for (int i = 0; i < size; i++) {
            SQLiteDatabase sQLiteDatabase = this.mDb;
            String str = this.mTableName;
            ContentValues contentValues = (ContentValues) this.mUpdateOperations.valueAt(i);
            StringBuilder f = a.f("_id=");
            f.append(this.mUpdateOperations.keyAt(i));
            sQLiteDatabase.update(str, contentValues, f.toString(), null);
        }
        if (!this.mEntryToRemove.isEmpty()) {
            StringBuilder f2 = a.f("Removing items: ");
            f2.append(this.mEntryToRemove.toConcatString());
            Log.d("GridSizeMigrationTask", f2.toString());
            this.mDb.delete(this.mTableName, Utilities.createDbSelectionQuery("_id", this.mEntryToRemove), null);
        }
        return size > 0 || !this.mEntryToRemove.isEmpty();
    }

    public final int getFolderItemsCount(int i) {
        Cursor queryWorkspace = queryWorkspace(new String[]{"_id", "intent"}, a.c("container = ", i));
        int i2 = 0;
        while (queryWorkspace.moveToNext()) {
            try {
                verifyIntent(queryWorkspace.getString(1));
                i2++;
            } catch (Exception unused) {
                IntArray intArray = this.mEntryToRemove;
                intArray.add(intArray.mSize, queryWorkspace.getInt(0));
            }
        }
        queryWorkspace.close();
        return i2;
    }

    public final ArrayList loadHotseatEntries() {
        Cursor queryWorkspace = queryWorkspace(new String[]{"_id", "itemType", "intent", "screen"}, "container = -101");
        int columnIndexOrThrow = queryWorkspace.getColumnIndexOrThrow("_id");
        int columnIndexOrThrow2 = queryWorkspace.getColumnIndexOrThrow("itemType");
        int columnIndexOrThrow3 = queryWorkspace.getColumnIndexOrThrow("intent");
        int columnIndexOrThrow4 = queryWorkspace.getColumnIndexOrThrow("screen");
        ArrayList arrayList = new ArrayList();
        while (queryWorkspace.moveToNext()) {
            DbEntry dbEntry = new DbEntry();
            dbEntry.id = queryWorkspace.getInt(columnIndexOrThrow);
            dbEntry.itemType = queryWorkspace.getInt(columnIndexOrThrow2);
            int i = queryWorkspace.getInt(columnIndexOrThrow4);
            dbEntry.screenId = i;
            if (i >= this.mSrcHotseatSize) {
                IntArray intArray = this.mEntryToRemove;
                intArray.add(intArray.mSize, dbEntry.id);
            } else {
                try {
                    int i2 = dbEntry.itemType;
                    if (i2 != 0 && i2 != 1) {
                        if (i2 == 2) {
                            int folderItemsCount = getFolderItemsCount(dbEntry.id);
                            if (folderItemsCount == 0) {
                                throw new Exception("Folder is empty");
                            }
                            dbEntry.weight = folderItemsCount * 0.5f;
                            arrayList.add(dbEntry);
                        } else if (i2 != 6) {
                            throw new Exception("Invalid item type");
                        }
                    }
                    verifyIntent(queryWorkspace.getString(columnIndexOrThrow3));
                    dbEntry.weight = dbEntry.itemType == 0 ? 0.8f : 1.0f;
                    arrayList.add(dbEntry);
                } catch (Exception e) {
                    StringBuilder f = a.f("Removing item ");
                    f.append(dbEntry.id);
                    Log.d("GridSizeMigrationTask", f.toString(), e);
                    IntArray intArray2 = this.mEntryToRemove;
                    intArray2.add(intArray2.mSize, dbEntry.id);
                }
            }
        }
        queryWorkspace.close();
        return arrayList;
    }

    public ArrayList loadWorkspaceEntries(int i) {
        ArrayList arrayList;
        int i2;
        int i3;
        int i4;
        LauncherAppWidgetProviderInfo fromProviderInfo;
        int i5 = i;
        Cursor queryWorkspace = queryWorkspace(new String[]{"_id", "itemType", "cellX", "cellY", "spanX", "spanY", "intent", "appWidgetProvider", "appWidgetId"}, a.c("container = -100 AND screen = ", i5));
        int columnIndexOrThrow = queryWorkspace.getColumnIndexOrThrow("_id");
        int columnIndexOrThrow2 = queryWorkspace.getColumnIndexOrThrow("itemType");
        int columnIndexOrThrow3 = queryWorkspace.getColumnIndexOrThrow("cellX");
        int columnIndexOrThrow4 = queryWorkspace.getColumnIndexOrThrow("cellY");
        int columnIndexOrThrow5 = queryWorkspace.getColumnIndexOrThrow("spanX");
        int columnIndexOrThrow6 = queryWorkspace.getColumnIndexOrThrow("spanY");
        int columnIndexOrThrow7 = queryWorkspace.getColumnIndexOrThrow("intent");
        int columnIndexOrThrow8 = queryWorkspace.getColumnIndexOrThrow("appWidgetProvider");
        int columnIndexOrThrow9 = queryWorkspace.getColumnIndexOrThrow("appWidgetId");
        ArrayList arrayList2 = new ArrayList();
        Context context = this.mContext;
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
        while (queryWorkspace.moveToNext()) {
            ArrayList arrayList3 = arrayList2;
            DbEntry dbEntry = new DbEntry();
            dbEntry.id = queryWorkspace.getInt(columnIndexOrThrow);
            dbEntry.itemType = queryWorkspace.getInt(columnIndexOrThrow2);
            dbEntry.cellX = queryWorkspace.getInt(columnIndexOrThrow3);
            dbEntry.cellY = queryWorkspace.getInt(columnIndexOrThrow4);
            dbEntry.spanX = queryWorkspace.getInt(columnIndexOrThrow5);
            dbEntry.spanY = queryWorkspace.getInt(columnIndexOrThrow6);
            dbEntry.screenId = i5;
            try {
                i4 = dbEntry.itemType;
            } catch (Exception e) {
                arrayList = arrayList3;
                i2 = columnIndexOrThrow;
                StringBuilder f = a.f("Removing item ");
                i3 = columnIndexOrThrow2;
                f.append(dbEntry.id);
                Log.d("GridSizeMigrationTask", f.toString(), e);
                IntArray intArray = this.mEntryToRemove;
                intArray.add(intArray.mSize, dbEntry.id);
            }
            if (i4 != 0 && i4 != 1) {
                if (i4 == 2) {
                    int folderItemsCount = getFolderItemsCount(dbEntry.id);
                    if (folderItemsCount == 0) {
                        throw new Exception("Folder is empty");
                    }
                    dbEntry.weight = folderItemsCount * 0.5f;
                } else if (i4 == 4) {
                    verifyPackage(ComponentName.unflattenFromString(queryWorkspace.getString(columnIndexOrThrow8)).getPackageName());
                    dbEntry.weight = Math.max(2.0f, dbEntry.spanX * 0.6f * dbEntry.spanY);
                    int i6 = queryWorkspace.getInt(columnIndexOrThrow9);
                    if (i6 <= -100) {
                        fromProviderInfo = ((CustomWidgetManager) CustomWidgetManager.INSTANCE.b(context)).getWidgetProvider(i6);
                    } else {
                        AppWidgetProviderInfo appWidgetInfo = appWidgetManager.getAppWidgetInfo(i6);
                        fromProviderInfo = appWidgetInfo == null ? null : LauncherAppWidgetProviderInfo.fromProviderInfo(context, appWidgetInfo);
                    }
                    Point minSpans = fromProviderInfo != null ? fromProviderInfo.getMinSpans() : null;
                    if (minSpans != null) {
                        dbEntry.minSpanX = minSpans.x > 0 ? minSpans.x : dbEntry.spanX;
                        dbEntry.minSpanY = minSpans.y > 0 ? minSpans.y : dbEntry.spanY;
                    } else {
                        dbEntry.minSpanY = 2;
                        dbEntry.minSpanX = 2;
                    }
                    if (dbEntry.minSpanX > this.mTrgX || dbEntry.minSpanY > this.mTrgY) {
                        throw new Exception("Widget can't be resized down to fit the grid");
                    }
                } else if (i4 != 6) {
                    throw new Exception("Invalid item type");
                }
                arrayList = arrayList3;
                arrayList.add(dbEntry);
                i2 = columnIndexOrThrow;
                i3 = columnIndexOrThrow2;
                arrayList2 = arrayList;
                columnIndexOrThrow2 = i3;
                columnIndexOrThrow = i2;
                i5 = i;
            }
            verifyIntent(queryWorkspace.getString(columnIndexOrThrow7));
            dbEntry.weight = dbEntry.itemType == 0 ? 0.8f : 1.0f;
            arrayList = arrayList3;
            arrayList.add(dbEntry);
            i2 = columnIndexOrThrow;
            i3 = columnIndexOrThrow2;
            arrayList2 = arrayList;
            columnIndexOrThrow2 = i3;
            columnIndexOrThrow = i2;
            i5 = i;
        }
        ArrayList arrayList4 = arrayList2;
        queryWorkspace.close();
        return arrayList4;
    }

    public boolean migrateHotseat() {
        ArrayList loadHotseatEntries = loadHotseatEntries();
        while (loadHotseatEntries.size() > this.mDestHotseatSize) {
            DbEntry dbEntry = (DbEntry) loadHotseatEntries.get(loadHotseatEntries.size() / 2);
            Iterator it = loadHotseatEntries.iterator();
            while (it.hasNext()) {
                DbEntry dbEntry2 = (DbEntry) it.next();
                if (dbEntry2.weight < dbEntry.weight) {
                    dbEntry = dbEntry2;
                }
            }
            IntArray intArray = this.mEntryToRemove;
            intArray.add(intArray.mSize, dbEntry.id);
            loadHotseatEntries.remove(dbEntry);
        }
        Iterator it2 = loadHotseatEntries.iterator();
        int i = 0;
        while (it2.hasNext()) {
            DbEntry dbEntry3 = (DbEntry) it2.next();
            if (dbEntry3.screenId != i) {
                dbEntry3.screenId = i;
                dbEntry3.cellX = i;
                dbEntry3.cellY = 0;
                update(dbEntry3);
            }
            i++;
        }
        return applyOperations();
    }

    public void migrateScreen(int i) {
        int i2;
        int i3 = i == 0 ? 1 : 0;
        ArrayList loadWorkspaceEntries = loadWorkspaceEntries(i);
        float[] fArr = new float[2];
        ArrayList arrayList = null;
        float f = Float.MAX_VALUE;
        float f2 = Float.MAX_VALUE;
        int i4 = Integer.MAX_VALUE;
        int i5 = Integer.MAX_VALUE;
        for (int i6 = 0; i6 < this.mSrcX; i6++) {
            int i7 = this.mSrcY - 1;
            ArrayList arrayList2 = arrayList;
            float f3 = f;
            float f4 = f2;
            int i8 = i4;
            int i9 = i5;
            while (i7 >= i3) {
                ArrayList deepCopy = deepCopy(loadWorkspaceEntries);
                GridOccupancy gridOccupancy = new GridOccupancy(this.mTrgX, this.mTrgY);
                int i10 = i7;
                gridOccupancy.markCells(0, 0, this.mTrgX, i3, true);
                int i11 = this.mShouldRemoveX ? i6 : Integer.MAX_VALUE;
                int i12 = this.mShouldRemoveY ? i10 : Integer.MAX_VALUE;
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                Iterator it = deepCopy.iterator();
                while (it.hasNext()) {
                    DbEntry dbEntry = (DbEntry) it.next();
                    int i13 = dbEntry.cellX;
                    if ((i13 > i11 || dbEntry.spanX + i13 <= i11) && ((i2 = dbEntry.cellY) > i12 || dbEntry.spanY + i2 <= i12)) {
                        int i14 = dbEntry.cellX;
                        if (i14 > i11) {
                            dbEntry.cellX = i14 - 1;
                        }
                        int i15 = dbEntry.cellY;
                        if (i15 > i12) {
                            dbEntry.cellY = i15 - 1;
                        }
                        arrayList3.add(dbEntry);
                        gridOccupancy.markCells((ItemInfo) dbEntry, true);
                    } else {
                        arrayList4.add(dbEntry);
                        int i16 = dbEntry.cellX;
                        if (i16 >= i11) {
                            dbEntry.cellX = i16 - 1;
                        }
                        int i17 = dbEntry.cellY;
                        if (i17 >= i12) {
                            dbEntry.cellY = i17 - 1;
                        }
                    }
                }
                OptimalPlacementSolution optimalPlacementSolution = new OptimalPlacementSolution(gridOccupancy, arrayList4, i3, false);
                optimalPlacementSolution.find();
                arrayList3.addAll(optimalPlacementSolution.finalPlacedItems);
                fArr[0] = optimalPlacementSolution.lowestWeightLoss;
                fArr[1] = optimalPlacementSolution.lowestMoveCost;
                if (fArr[0] < f3 || (fArr[0] == f3 && fArr[1] < f4)) {
                    float f5 = fArr[0];
                    float f6 = fArr[1];
                    if (this.mShouldRemoveX) {
                        i8 = i6;
                    }
                    if (this.mShouldRemoveY) {
                        i9 = i10;
                    }
                    f3 = f5;
                    f4 = f6;
                    arrayList2 = arrayList3;
                }
                if (!this.mShouldRemoveY) {
                    break;
                } else {
                    i7 = i10 - 1;
                }
            }
            arrayList = arrayList2;
            f = f3;
            f2 = f4;
            i4 = i8;
            i5 = i9;
            if (!this.mShouldRemoveX) {
                break;
            }
        }
        ArrayList arrayList5 = arrayList;
        Log.d("GridSizeMigrationTask", String.format("Removing row %d, column %d on screen %d", Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(i)));
        IntSparseArrayMap intSparseArrayMap = new IntSparseArrayMap();
        Iterator it2 = deepCopy(loadWorkspaceEntries).iterator();
        while (it2.hasNext()) {
            DbEntry dbEntry2 = (DbEntry) it2.next();
            intSparseArrayMap.put(dbEntry2.id, dbEntry2);
        }
        Iterator it3 = arrayList5.iterator();
        while (it3.hasNext()) {
            DbEntry dbEntry3 = (DbEntry) it3.next();
            DbEntry dbEntry4 = (DbEntry) intSparseArrayMap.get(dbEntry3.id);
            intSparseArrayMap.remove(dbEntry3.id);
            if (!(dbEntry4.cellX == dbEntry3.cellX && dbEntry4.cellY == dbEntry3.cellY && dbEntry4.spanX == dbEntry3.spanX && dbEntry4.spanY == dbEntry3.spanY && dbEntry4.screenId == dbEntry3.screenId)) {
                update(dbEntry3);
            }
        }
        int i18 = 0;
        while (true) {
            if (!(i18 < intSparseArrayMap.size())) {
                break;
            }
            this.mCarryOver.add((DbEntry) intSparseArrayMap.valueAt(i18));
            i18++;
        }
        if (this.mCarryOver.isEmpty() || f != RecentsState.NO_OFFSET) {
            return;
        }
        GridOccupancy gridOccupancy2 = new GridOccupancy(this.mTrgX, this.mTrgY);
        gridOccupancy2.markCells(0, 0, this.mTrgX, i3, true);
        Iterator it4 = arrayList5.iterator();
        while (it4.hasNext()) {
            gridOccupancy2.markCells((ItemInfo) it4.next(), true);
        }
        OptimalPlacementSolution optimalPlacementSolution2 = new OptimalPlacementSolution(gridOccupancy2, deepCopy(this.mCarryOver), i3, true);
        optimalPlacementSolution2.find();
        if (optimalPlacementSolution2.lowestWeightLoss == RecentsState.NO_OFFSET) {
            Iterator it5 = optimalPlacementSolution2.finalPlacedItems.iterator();
            while (it5.hasNext()) {
                DbEntry dbEntry5 = (DbEntry) it5.next();
                dbEntry5.screenId = i;
                update(dbEntry5);
            }
            this.mCarryOver.clear();
        }
    }

    public Cursor queryWorkspace(String[] strArr, String str) {
        return this.mDb.query(this.mTableName, strArr, str, null, null, null, null);
    }

    public void update(DbEntry dbEntry) {
        ContentValues contentValues = new ContentValues();
        dbEntry.addToContentValues(contentValues);
        this.mUpdateOperations.put(dbEntry.id, contentValues);
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

    /* JADX WARN: Code restructure failed: missing block: B:100:0x00cb, code lost:
    
        r9 = false;
        r6 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x00b5, code lost:
    
        if ((!b.l.W.tableExists(r4.mDb, "favorites_bakup") ? false : r4.restoreIfBackupExists("favorites_preview")) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00bc, code lost:
    
        if (r4.backupOrRestoreAsNeeded() != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00be, code lost:
    
        r6.set(r4.mRestoredGridX, r4.mRestoredGridY);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c7, code lost:
    
        r6 = r4.mRestoredHotseatSize;
        r9 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0118 A[Catch: all -> 0x00f5, TRY_ENTER, TryCatch #6 {all -> 0x00f5, blocks: (B:31:0x00ea, B:39:0x0118, B:41:0x011e, B:42:0x0123, B:45:0x0136, B:46:0x013d, B:47:0x0121, B:50:0x0145), top: B:30:0x00ea }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0145 A[Catch: all -> 0x00f5, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x00f5, blocks: (B:31:0x00ea, B:39:0x0118, B:41:0x011e, B:42:0x0123, B:45:0x0136, B:46:0x013d, B:47:0x0121, B:50:0x0145), top: B:30:0x00ea }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01b1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:? A[Catch: Exception -> 0x01bc, all -> 0x01f5, SYNTHETIC, TRY_LEAVE, TryCatch #4 {Exception -> 0x01bc, blocks: (B:88:0x01bb, B:87:0x01b8), top: B:86:0x01b8 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean migrateGridIfNeeded(android.content.Context r23, com.android.launcher3.InvariantDeviceProfile r24) {
        /*
            Method dump skipped, instructions count: 542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.model.GridSizeMigrationTask.migrateGridIfNeeded(android.content.Context, com.android.launcher3.InvariantDeviceProfile):boolean");
    }

    public GridSizeMigrationTask(Context context, SQLiteDatabase sQLiteDatabase, HashSet hashSet, boolean z, int i, int i2) {
        this.mContext = context;
        this.mDb = sQLiteDatabase;
        this.mValidPackages = hashSet;
        this.mTableName = z ? "favorites_preview" : "favorites";
        this.mSrcHotseatSize = i;
        this.mDestHotseatSize = i2;
        this.mTrgY = -1;
        this.mTrgX = -1;
        this.mSrcY = -1;
        this.mSrcX = -1;
        this.mShouldRemoveY = false;
        this.mShouldRemoveX = false;
    }
}
