package com.android.launcher3.model;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import android.util.LongSparseArray;
import c.a.c.a.a;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.ContentWriter;
import com.android.launcher3.util.GridOccupancy;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSparseArrayMap;
import java.net.URISyntaxException;
import java.security.InvalidParameterException;

/* loaded from: classes.dex */
public class LoaderCursor extends CursorWrapper {
    public final LongSparseArray allUsers;
    public final int cellXIndex;
    public final int cellYIndex;
    public int container;
    public final int containerIndex;
    public final int iconIndex;
    public final int iconPackageIndex;
    public final int iconResourceIndex;
    public int id;
    public final int idIndex;
    public final int intentIndex;
    public int itemType;
    public final int itemTypeIndex;
    public final IntArray itemsToRemove;
    public final Uri mContentUri;
    public final Context mContext;
    public final InvariantDeviceProfile mIDP;
    public final IconCache mIconCache;
    public final PackageManager mPM;
    public final IntSparseArrayMap occupied;
    public final int profileIdIndex;
    public int restoreFlag;
    public final int restoredIndex;
    public final IntArray restoredRows;
    public final int screenIndex;
    public long serialNumber;
    public final int titleIndex;
    public UserHandle user;

    public LoaderCursor(Cursor cursor, Uri uri, LauncherAppState launcherAppState, UserManagerState userManagerState) {
        super(cursor);
        this.itemsToRemove = new IntArray(10);
        this.restoredRows = new IntArray(10);
        this.occupied = new IntSparseArrayMap();
        this.allUsers = userManagerState.allUsers;
        this.mContentUri = uri;
        Context context = launcherAppState.mContext;
        this.mContext = context;
        this.mIconCache = launcherAppState.mIconCache;
        this.mIDP = launcherAppState.mInvariantDeviceProfile;
        this.mPM = context.getPackageManager();
        this.iconIndex = getColumnIndexOrThrow("icon");
        this.iconPackageIndex = getColumnIndexOrThrow("iconPackage");
        this.iconResourceIndex = getColumnIndexOrThrow("iconResource");
        this.titleIndex = getColumnIndexOrThrow("title");
        this.idIndex = getColumnIndexOrThrow("_id");
        this.containerIndex = getColumnIndexOrThrow("container");
        this.itemTypeIndex = getColumnIndexOrThrow("itemType");
        this.screenIndex = getColumnIndexOrThrow("screen");
        this.cellXIndex = getColumnIndexOrThrow("cellX");
        this.cellYIndex = getColumnIndexOrThrow("cellY");
        this.profileIdIndex = getColumnIndexOrThrow("profileId");
        this.restoredIndex = getColumnIndexOrThrow("restored");
        this.intentIndex = getColumnIndexOrThrow("intent");
    }

    public void applyCommonProperties(ItemInfo itemInfo) {
        itemInfo.id = this.id;
        itemInfo.container = this.container;
        itemInfo.screenId = getInt(this.screenIndex);
        itemInfo.cellX = getInt(this.cellXIndex);
        itemInfo.cellY = getInt(this.cellYIndex);
    }

    public void checkAndAddItem(ItemInfo itemInfo, BgDataModel bgDataModel) {
        int i;
        int i2 = itemInfo.screenId;
        int i3 = itemInfo.container;
        boolean z = true;
        if (i3 == -101) {
            GridOccupancy gridOccupancy = (GridOccupancy) this.occupied.get(-101);
            int i4 = itemInfo.screenId;
            int i5 = this.mIDP.numHotseatIcons;
            if (i4 >= i5) {
                Log.e("LoaderCursor", "Error loading shortcut " + itemInfo + " into hotseat position " + itemInfo.screenId + ", position out of bounds: (0 to " + (this.mIDP.numHotseatIcons - 1) + ")");
            } else if (gridOccupancy != null) {
                boolean[][] zArr = gridOccupancy.cells;
                if (zArr[i4][0]) {
                    Log.e("LoaderCursor", "Error loading shortcut into hotseat " + itemInfo + " into position (" + itemInfo.screenId + ":" + itemInfo.cellX + "," + itemInfo.cellY + ") already occupied");
                } else {
                    zArr[i4][0] = true;
                }
            } else {
                GridOccupancy gridOccupancy2 = new GridOccupancy(i5, 1);
                gridOccupancy2.cells[itemInfo.screenId][0] = true;
                this.occupied.put(-101, gridOccupancy2);
            }
            z = false;
        } else if (i3 == -100) {
            InvariantDeviceProfile invariantDeviceProfile = this.mIDP;
            int i6 = invariantDeviceProfile.numColumns;
            int i7 = invariantDeviceProfile.numRows;
            if ((i3 != -100 || itemInfo.cellX >= 0) && (i = itemInfo.cellY) >= 0 && itemInfo.cellX + itemInfo.spanX <= i6 && i + itemInfo.spanY <= i7) {
                if (!this.occupied.containsKey(itemInfo.screenId)) {
                    int i8 = i6 + 1;
                    GridOccupancy gridOccupancy3 = new GridOccupancy(i8, i7 + 1);
                    if (itemInfo.screenId == 0) {
                        gridOccupancy3.markCells(0, 0, i8, 1, true);
                    }
                    this.occupied.put(itemInfo.screenId, gridOccupancy3);
                }
                GridOccupancy gridOccupancy4 = (GridOccupancy) this.occupied.get(itemInfo.screenId);
                if (gridOccupancy4.isRegionVacant(itemInfo.cellX, itemInfo.cellY, itemInfo.spanX, itemInfo.spanY)) {
                    gridOccupancy4.markCells(itemInfo, true);
                    z = true;
                } else {
                    Log.e("LoaderCursor", "Error loading shortcut " + itemInfo + " into cell (" + i2 + "-" + itemInfo.screenId + ":" + itemInfo.cellX + "," + itemInfo.cellX + "," + itemInfo.spanX + "," + itemInfo.spanY + ") already occupied");
                }
            } else {
                Log.e("LoaderCursor", "Error loading shortcut " + itemInfo + " into cell (" + i2 + "-" + itemInfo.screenId + ":" + itemInfo.cellX + "," + itemInfo.cellY + ") out of screen bounds ( " + i6 + "x" + i7 + ")");
            }
            z = false;
        }
        if (z) {
            bgDataModel.addItem(this.mContext, itemInfo, false);
        } else {
            markDeleted("Item position overlap");
        }
    }

    public boolean commitDeleted() {
        if (this.itemsToRemove.mSize <= 0) {
            return false;
        }
        this.mContext.getContentResolver().delete(this.mContentUri, Utilities.createDbSelectionQuery("_id", this.itemsToRemove), null);
        return true;
    }

    public void commitRestoredItems() {
        if (this.restoredRows.mSize > 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("restored", (Integer) 0);
            this.mContext.getContentResolver().update(this.mContentUri, contentValues, Utilities.createDbSelectionQuery("_id", this.restoredRows), null);
        }
    }

    public WorkspaceItemInfo getAppShortcutInfo(Intent intent, boolean z, boolean z2) {
        if (this.user == null) {
            Log.d("LoaderCursor", "Null user found in getShortcutInfo");
            return null;
        }
        ComponentName component = intent.getComponent();
        if (component == null) {
            Log.d("LoaderCursor", "Missing component found in getShortcutInfo");
            return null;
        }
        Intent intent2 = new Intent("android.intent.action.MAIN", (Uri) null);
        intent2.addCategory("android.intent.category.LAUNCHER");
        intent2.setComponent(component);
        LauncherActivityInfo resolveActivity = ((LauncherApps) this.mContext.getSystemService(LauncherApps.class)).resolveActivity(intent2, this.user);
        if (resolveActivity == null && !z) {
            Log.d("LoaderCursor", "Missing activity found in getShortcutInfo: " + component);
            return null;
        }
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo();
        workspaceItemInfo.itemType = 0;
        workspaceItemInfo.user = this.user;
        workspaceItemInfo.intent = intent2;
        this.mIconCache.getTitleAndIcon(workspaceItemInfo, resolveActivity, z2);
        if (this.mIconCache.isDefaultIcon(workspaceItemInfo.bitmap, this.user)) {
            loadIcon(workspaceItemInfo);
        }
        if (resolveActivity != null) {
            AppInfo.updateRuntimeFlagsForActivityTarget(workspaceItemInfo, resolveActivity);
        }
        if (TextUtils.isEmpty(workspaceItemInfo.title)) {
            workspaceItemInfo.title = getTitle();
        }
        if (workspaceItemInfo.title == null) {
            workspaceItemInfo.title = component.getClassName();
        }
        workspaceItemInfo.contentDescription = this.mPM.getUserBadgedLabel(workspaceItemInfo.title, workspaceItemInfo.user);
        return workspaceItemInfo;
    }

    public WorkspaceItemInfo getRestoredItemInfo(Intent intent) {
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo();
        workspaceItemInfo.user = this.user;
        workspaceItemInfo.intent = intent;
        if (!loadIcon(workspaceItemInfo)) {
            this.mIconCache.getTitleAndIcon(workspaceItemInfo, false);
        }
        if (hasRestoreFlag(1)) {
            String title = getTitle();
            if (!TextUtils.isEmpty(title)) {
                workspaceItemInfo.title = Utilities.trim(title);
            }
        } else {
            if (!hasRestoreFlag(2)) {
                StringBuilder f = a.f("Invalid restoreType ");
                f.append(this.restoreFlag);
                throw new InvalidParameterException(f.toString());
            }
            if (TextUtils.isEmpty(workspaceItemInfo.title)) {
                workspaceItemInfo.title = getTitle();
            }
        }
        workspaceItemInfo.contentDescription = this.mPM.getUserBadgedLabel(workspaceItemInfo.title, workspaceItemInfo.user);
        workspaceItemInfo.itemType = this.itemType;
        workspaceItemInfo.status = this.restoreFlag;
        return workspaceItemInfo;
    }

    public final String getTitle() {
        String string = getString(this.titleIndex);
        return TextUtils.isEmpty(string) ? "" : Utilities.trim(string);
    }

    public boolean hasRestoreFlag(int i) {
        return (this.restoreFlag & i) != 0;
    }

    public boolean isOnWorkspaceOrHotseat() {
        int i = this.container;
        return i == -100 || i == -101;
    }

    public boolean loadIcon(WorkspaceItemInfo workspaceItemInfo) {
        LauncherIcons obtain = LauncherIcons.obtain(this.mContext);
        try {
            if (this.itemType == 1) {
                String string = getString(this.iconPackageIndex);
                String string2 = getString(this.iconResourceIndex);
                if (!TextUtils.isEmpty(string) || !TextUtils.isEmpty(string2)) {
                    Intent.ShortcutIconResource shortcutIconResource = new Intent.ShortcutIconResource();
                    workspaceItemInfo.iconResource = shortcutIconResource;
                    shortcutIconResource.packageName = string;
                    shortcutIconResource.resourceName = string2;
                    BitmapInfo createIconBitmap = obtain.createIconBitmap(shortcutIconResource);
                    if (createIconBitmap != null) {
                        workspaceItemInfo.bitmap = createIconBitmap;
                        obtain.recycle();
                        return true;
                    }
                }
            }
            byte[] blob = getBlob(this.iconIndex);
            try {
                workspaceItemInfo.bitmap = obtain.createIconBitmap(BitmapFactory.decodeByteArray(blob, 0, blob.length));
                obtain.recycle();
                return true;
            } catch (Exception e) {
                Log.e("LoaderCursor", "Failed to decode byte array for info " + workspaceItemInfo, e);
                obtain.recycle();
                return false;
            }
        } catch (Throwable th) {
            try {
                obtain.recycle();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public WorkspaceItemInfo loadSimpleWorkspaceItem() {
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo();
        workspaceItemInfo.intent = new Intent();
        workspaceItemInfo.user = this.user;
        workspaceItemInfo.itemType = this.itemType;
        workspaceItemInfo.title = getTitle();
        if (!loadIcon(workspaceItemInfo)) {
            workspaceItemInfo.bitmap = this.mIconCache.getDefaultIcon(workspaceItemInfo.user);
        }
        return workspaceItemInfo;
    }

    public void markDeleted(String str) {
        FileLog.e("LoaderCursor", str);
        IntArray intArray = this.itemsToRemove;
        intArray.add(intArray.mSize, this.id);
    }

    public void markRestored() {
        if (this.restoreFlag != 0) {
            IntArray intArray = this.restoredRows;
            intArray.add(intArray.mSize, this.id);
            this.restoreFlag = 0;
        }
    }

    @Override // android.database.CursorWrapper, android.database.Cursor
    public boolean moveToNext() {
        boolean moveToNext = super.moveToNext();
        if (moveToNext) {
            this.itemType = getInt(this.itemTypeIndex);
            this.container = getInt(this.containerIndex);
            this.id = getInt(this.idIndex);
            long j = getInt(this.profileIdIndex);
            this.serialNumber = j;
            this.user = (UserHandle) this.allUsers.get(j);
            this.restoreFlag = getInt(this.restoredIndex);
        }
        return moveToNext;
    }

    public Intent parseIntent() {
        String string = getString(this.intentIndex);
        try {
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            return Intent.parseUri(string, 0);
        } catch (URISyntaxException unused) {
            Log.e("LoaderCursor", "Error parsing Intent");
            return null;
        }
    }

    public ContentWriter updater() {
        Context context = this.mContext;
        ContentWriter.CommitParams commitParams = new ContentWriter.CommitParams("_id= ?", new String[]{Integer.toString(this.id)});
        ContentWriter contentWriter = new ContentWriter(context);
        contentWriter.mCommitParams = commitParams;
        return contentWriter;
    }
}
