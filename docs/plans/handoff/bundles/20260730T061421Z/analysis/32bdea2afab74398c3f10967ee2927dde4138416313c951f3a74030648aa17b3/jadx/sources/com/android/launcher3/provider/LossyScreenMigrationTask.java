package com.android.launcher3.provider;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Point;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.model.GridSizeMigrationTask;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSparseArrayMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public class LossyScreenMigrationTask extends GridSizeMigrationTask {
    public final IntSparseArrayMap mOriginalItems;
    public final IntSparseArrayMap mUpdates;

    public LossyScreenMigrationTask(Context context, InvariantDeviceProfile invariantDeviceProfile, SQLiteDatabase sQLiteDatabase) {
        super(context, sQLiteDatabase, GridSizeMigrationTask.getValidPackages(context), false, new Point(invariantDeviceProfile.numColumns, invariantDeviceProfile.numRows + 1), new Point(invariantDeviceProfile.numColumns, invariantDeviceProfile.numRows));
        this.mOriginalItems = new IntSparseArrayMap();
        this.mUpdates = new IntSparseArrayMap();
    }

    @Override // com.android.launcher3.model.GridSizeMigrationTask
    public ArrayList loadWorkspaceEntries(int i) {
        ArrayList loadWorkspaceEntries = super.loadWorkspaceEntries(i);
        Iterator it = loadWorkspaceEntries.iterator();
        while (it.hasNext()) {
            GridSizeMigrationTask.DbEntry dbEntry = (GridSizeMigrationTask.DbEntry) it.next();
            this.mOriginalItems.put(dbEntry.id, dbEntry.copy());
            dbEntry.cellY++;
            this.mUpdates.put(dbEntry.id, dbEntry.copy());
        }
        return loadWorkspaceEntries;
    }

    public void migrateScreen0() {
        migrateScreen(0);
        ContentValues contentValues = new ContentValues();
        IntSparseArrayMap intSparseArrayMap = this.mUpdates;
        Objects.requireNonNull(intSparseArrayMap);
        int i = 0;
        while (true) {
            if (!(i < intSparseArrayMap.size())) {
                break;
            }
            int i2 = i + 1;
            GridSizeMigrationTask.DbEntry dbEntry = (GridSizeMigrationTask.DbEntry) intSparseArrayMap.valueAt(i);
            GridSizeMigrationTask.DbEntry dbEntry2 = (GridSizeMigrationTask.DbEntry) this.mOriginalItems.get(dbEntry.id);
            if (dbEntry2.cellX != dbEntry.cellX || dbEntry2.cellY != dbEntry.cellY || dbEntry2.spanX != dbEntry.spanX || dbEntry2.spanY != dbEntry.spanY) {
                contentValues.clear();
                dbEntry.addToContentValues(contentValues);
                this.mDb.update("favorites", contentValues, "_id = ?", new String[]{Integer.toString(dbEntry.id)});
            }
            i = i2;
        }
        Iterator it = this.mCarryOver.iterator();
        while (it.hasNext()) {
            GridSizeMigrationTask.DbEntry dbEntry3 = (GridSizeMigrationTask.DbEntry) it.next();
            IntArray intArray = this.mEntryToRemove;
            intArray.add(intArray.mSize, dbEntry3.id);
        }
        if (this.mEntryToRemove.isEmpty()) {
            return;
        }
        this.mDb.delete("favorites", Utilities.createDbSelectionQuery("_id", this.mEntryToRemove), null);
    }

    @Override // com.android.launcher3.model.GridSizeMigrationTask
    public void update(GridSizeMigrationTask.DbEntry dbEntry) {
        this.mUpdates.put(dbEntry.id, dbEntry.copy());
    }
}
