package com.android.launcher3.hybridhotseat;

import android.content.ContentValues;
import android.content.Context;
import android.content.res.Configuration;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Rect;
import android.os.Process;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import c.a.a.N0.J;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Insettable;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherSettings$Settings;
import com.android.launcher3.Workspace;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.hybridhotseat.HotseatEduController;
import com.android.launcher3.hybridhotseat.HotseatEduDialog;
import com.android.launcher3.hybridhotseat.HotseatRestoreHelper;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.GridBackupTable;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.model.ModelWriter.UpdateItemRunnable;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.provider.LauncherDbUtils$SQLiteTransaction;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.GridOccupancy;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.views.AbstractSlideInView;
import com.android.launcher3.views.ArrowTipView;
import com.android.launcher3.views.Snackbar;
import com.android.systemui.shared.R;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class HotseatEduDialog extends AbstractSlideInView implements Insettable {
    public Button mDismissBtn;
    public HotseatEduController mHotseatEduController;
    public View mHotseatWrapper;
    public final Rect mInsets;
    public CellLayout mSampleHotseat;

    public HotseatEduDialog(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public static HotseatEduDialog getDialog(Launcher launcher) {
        return (HotseatEduDialog) LayoutInflater.from(launcher).inflate(R.layout.predicted_hotseat_edu, (ViewGroup) launcher.mDragLayer, false);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public int getLogContainerType() {
        return 14;
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    public int getScrimColor(Context context) {
        return -2013265920;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void handleClose(boolean z) {
        handleClose(true, 200L);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public boolean isOfType(int i) {
        return (i & 32) != 0;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void logActionCommand(int i) {
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        handleClose(false);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mHotseatWrapper = findViewById(R.id.hotseat_wrapper);
        this.mSampleHotseat = (CellLayout) findViewById(R.id.sample_prediction);
        DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        Rect hotseatLayoutPadding = deviceProfile.getHotseatLayoutPadding();
        this.mSampleHotseat.getLayoutParams().height = deviceProfile.cellHeightPx;
        this.mSampleHotseat.setGridSize(deviceProfile.inv.numHotseatIcons, 1);
        this.mSampleHotseat.setPadding(hotseatLayoutPadding.left, 0, hotseatLayoutPadding.right, 0);
        ((Button) findViewById(R.id.turn_predictions_on)).setOnClickListener(new View.OnClickListener() { // from class: c.a.a.K0.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i;
                int i2;
                int i3;
                HotseatEduDialog hotseatEduDialog = HotseatEduDialog.this;
                final HotseatEduController hotseatEduController = hotseatEduDialog.mHotseatEduController;
                final HotseatRestoreHelper hotseatRestoreHelper = hotseatEduController.mRestoreHelper;
                if (hotseatRestoreHelper != null) {
                    Executors.MODEL_EXECUTOR.execute(new Runnable() { // from class: c.a.a.K0.v
                        @Override // java.lang.Runnable
                        public final void run() {
                            HotseatRestoreHelper hotseatRestoreHelper2 = HotseatRestoreHelper.this;
                            LauncherDbUtils$SQLiteTransaction launcherDbUtils$SQLiteTransaction = (LauncherDbUtils$SQLiteTransaction) LauncherSettings$Settings.call(hotseatRestoreHelper2.mLauncher.getContentResolver(), "new_db_transaction").getBinder("value");
                            try {
                                InvariantDeviceProfile invariantDeviceProfile = hotseatRestoreHelper2.mLauncher.getDeviceProfile().inv;
                                Launcher launcher = hotseatRestoreHelper2.mLauncher;
                                SQLiteDatabase sQLiteDatabase = launcherDbUtils$SQLiteTransaction.mDb;
                                int i4 = invariantDeviceProfile.numHotseatIcons;
                                int i5 = invariantDeviceProfile.numColumns;
                                int i6 = invariantDeviceProfile.numRows;
                                GridBackupTable.copyTable(sQLiteDatabase, "favorites", "hotseat_restore_backup", ((UserCache) UserCache.INSTANCE.b(launcher)).getSerialNumberForUser(Process.myUserHandle()));
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("_id", (Integer) (-1));
                                contentValues.put("rank", Integer.valueOf(sQLiteDatabase.getVersion()));
                                contentValues.put("spanX", Integer.valueOf(i5));
                                contentValues.put("spanY", Integer.valueOf(i6));
                                contentValues.put("screen", Integer.valueOf(i4));
                                contentValues.put("options", (Integer) 0);
                                sQLiteDatabase.insert("favorites_bakup", null, contentValues);
                                launcherDbUtils$SQLiteTransaction.mDb.setTransactionSuccessful();
                                LauncherSettings$Settings.call(hotseatRestoreHelper2.mLauncher.getContentResolver(), "restore_hotseat_table");
                                launcherDbUtils$SQLiteTransaction.mDb.endTransaction();
                            } catch (Throwable th) {
                                if (launcherDbUtils$SQLiteTransaction != null) {
                                    try {
                                        launcherDbUtils$SQLiteTransaction.mDb.endTransaction();
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                    }
                                }
                                throw th;
                            }
                        }
                    });
                }
                if (FeatureFlags.HOTSEAT_MIGRATE_TO_FOLDER.get()) {
                    ArrayDeque arrayDeque = new ArrayDeque();
                    ArrayList arrayList = new ArrayList();
                    for (int i4 = 0; i4 < hotseatEduController.mLauncher.getDeviceProfile().inv.numHotseatIcons; i4++) {
                        View childAt = hotseatEduController.mHotseat.getChildAt(i4, 0);
                        if (childAt != null) {
                            ItemInfo itemInfo = (ItemInfo) childAt.getTag();
                            if (itemInfo.itemType == 2) {
                                arrayDeque.add((FolderInfo) itemInfo);
                            } else if ((itemInfo instanceof WorkspaceItemInfo) && itemInfo.container == -101) {
                                arrayList.add((WorkspaceItemInfo) itemInfo);
                            }
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        ItemInfo itemInfo2 = (ItemInfo) arrayList.get(0);
                        FolderInfo folderInfo = new FolderInfo();
                        hotseatEduController.mLauncher.mModelWriter.addItemToDatabase(folderInfo, itemInfo2.container, itemInfo2.screenId, itemInfo2.cellX, itemInfo2.cellY);
                        folderInfo.setTitle("", hotseatEduController.mLauncher.mModelWriter);
                        folderInfo.contents.addAll(arrayList);
                        for (int i5 = 0; i5 < folderInfo.contents.size(); i5++) {
                            ItemInfo itemInfo3 = (ItemInfo) folderInfo.contents.get(i5);
                            itemInfo3.rank = i5;
                            ModelWriter modelWriter = hotseatEduController.mLauncher.mModelWriter;
                            modelWriter.updateItemInfoProps(itemInfo3, folderInfo.id, 0, itemInfo3.cellX, itemInfo3.cellY);
                            modelWriter.enqueueDeleteRunnable(modelWriter.new UpdateItemRunnable(itemInfo3, new J(modelWriter, itemInfo3)));
                        }
                        arrayDeque.add(folderInfo);
                    }
                    hotseatEduController.mNewItems.addAll(arrayDeque);
                    if (!arrayDeque.isEmpty()) {
                        Launcher launcher = hotseatEduController.mLauncher;
                        Workspace workspace = launcher.mWorkspace;
                        InvariantDeviceProfile invariantDeviceProfile = launcher.getDeviceProfile().inv;
                        int childCount = workspace.getChildCount();
                        GridOccupancy[] gridOccupancyArr = new GridOccupancy[childCount];
                        for (int i6 = 0; i6 < childCount; i6++) {
                            CellLayout cellLayout = (CellLayout) workspace.getChildAt(i6);
                            GridOccupancy gridOccupancy = new GridOccupancy(cellLayout.mCountX, cellLayout.mCountY);
                            cellLayout.mOccupied.copyTo(gridOccupancy);
                            gridOccupancyArr[i6] = gridOccupancy;
                        }
                        int[] iArr = new int[2];
                        int i7 = 0;
                        while (i7 < childCount && !arrayDeque.isEmpty()) {
                            GridOccupancy gridOccupancy2 = gridOccupancyArr[i7];
                            if (gridOccupancy2.findVacantCell(iArr, 1, 1)) {
                                FolderInfo folderInfo2 = (FolderInfo) arrayDeque.poll();
                                hotseatEduController.mLauncher.mModelWriter.moveItemInDatabase(folderInfo2, -100, workspace.getScreenIdForPageIndex(i7), iArr[0], iArr[1]);
                                gridOccupancy2.markCells((ItemInfo) folderInfo2, true);
                            } else {
                                i7++;
                            }
                        }
                        if (arrayDeque.isEmpty()) {
                            workspace.getScreenIdForPageIndex(i7);
                        } else {
                            int i8 = LauncherSettings$Settings.call(hotseatEduController.mLauncher.getContentResolver(), "generate_new_screen_id").getInt("value");
                            int i9 = 0;
                            while (true) {
                                FolderInfo folderInfo3 = (FolderInfo) arrayDeque.poll();
                                if (folderInfo3 == null) {
                                    break;
                                }
                                ModelWriter modelWriter2 = hotseatEduController.mLauncher.mModelWriter;
                                modelWriter2.updateItemInfoProps(folderInfo3, -100, i8, i9, invariantDeviceProfile.numRows - 1);
                                modelWriter2.enqueueDeleteRunnable(modelWriter2.new UpdateItemRunnable(folderInfo3, new J(modelWriter2, folderInfo3)));
                                i9++;
                            }
                            hotseatEduController.mNewScreens = new IntArray(new int[]{i8}, 1);
                            workspace.getPageCount();
                        }
                    }
                } else {
                    Workspace workspace2 = hotseatEduController.mLauncher.mWorkspace;
                    int i10 = 0;
                    while (true) {
                        if (i10 >= workspace2.getPageCount()) {
                            i = 0;
                            i2 = -1;
                            i3 = -1;
                            break;
                        } else {
                            if (workspace2.getScreenWithId(workspace2.getScreenIdForPageIndex(i10)).makeSpaceForHotseatMigration(true)) {
                                i = hotseatEduController.mLauncher.getDeviceProfile().inv.numRows - 1;
                                i3 = i10;
                                i2 = -1;
                                break;
                            }
                            i10++;
                        }
                    }
                    if (i3 == i2) {
                        i3 = LauncherSettings$Settings.call(hotseatEduController.mLauncher.getContentResolver(), "generate_new_screen_id").getInt("value");
                        hotseatEduController.mNewScreens = new IntArray(new int[]{i3}, 1);
                    }
                    for (int i11 = 0; i11 < hotseatEduController.mLauncher.getDeviceProfile().inv.numHotseatIcons; i11++) {
                        View childAt2 = hotseatEduController.mHotseat.getChildAt(i11, 0);
                        if (childAt2 != null && childAt2.getTag() != null) {
                            ItemInfo itemInfo4 = (ItemInfo) childAt2.getTag();
                            if (itemInfo4.container != -103) {
                                ModelWriter modelWriter3 = hotseatEduController.mLauncher.mModelWriter;
                                modelWriter3.updateItemInfoProps(itemInfo4, -100, i3, i11, i);
                                modelWriter3.enqueueDeleteRunnable(modelWriter3.new UpdateItemRunnable(itemInfo4, new J(modelWriter3, itemInfo4)));
                                hotseatEduController.mNewItems.add(itemInfo4);
                            }
                        }
                    }
                }
                Snackbar.show(hotseatEduController.mLauncher, R.string.hotsaet_tip_prediction_enabled, R.string.hotseat_prediction_settings, null, new Runnable() { // from class: c.a.a.K0.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        HotseatEduController.this.mLauncher.startActivity(HotseatEduController.getSettingsIntent());
                    }
                });
                hotseatEduDialog.handleClose(true);
                HotseatEduController hotseatEduController2 = hotseatEduDialog.mHotseatEduController;
                hotseatEduController2.mHotseat.removeAllViewsInLayout();
                if (!hotseatEduController2.mNewItems.isEmpty()) {
                    int i12 = ((ItemInfo) hotseatEduController2.mNewItems.get(r2.size() - 1)).screenId;
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    Iterator it = hotseatEduController2.mNewItems.iterator();
                    while (it.hasNext()) {
                        ItemInfo itemInfo5 = (ItemInfo) it.next();
                        if (itemInfo5.screenId == i12) {
                            arrayList2.add(itemInfo5);
                        } else {
                            arrayList3.add(itemInfo5);
                        }
                    }
                    hotseatEduController2.mLauncher.bindAppsAdded(hotseatEduController2.mNewScreens, arrayList3, arrayList2);
                }
                hotseatEduDialog.mHotseatEduController.mOnOnboardingComplete.run();
                hotseatEduDialog.mLauncher.getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_HOTSEAT_EDU_ACCEPT);
            }
        });
        Button button = (Button) findViewById(R.id.no_thanks);
        this.mDismissBtn = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: c.a.a.K0.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HotseatEduDialog hotseatEduDialog = HotseatEduDialog.this;
                final HotseatEduController hotseatEduController = hotseatEduDialog.mHotseatEduController;
                if (hotseatEduController.mHotseat.mShortcutsAndWidgets.getChildCount() < hotseatEduController.mLauncher.getDeviceProfile().inv.numHotseatIcons) {
                    Snackbar.show(hotseatEduController.mLauncher, R.string.hotseat_tip_gaps_filled, R.string.hotseat_prediction_settings, null, new Runnable() { // from class: c.a.a.K0.d
                        @Override // java.lang.Runnable
                        public final void run() {
                            HotseatEduController.this.mLauncher.startActivity(HotseatEduController.getSettingsIntent());
                        }
                    });
                } else {
                    new ArrowTipView(hotseatEduController.mLauncher).show(hotseatEduController.mLauncher.getString(R.string.hotseat_tip_no_empty_slots), hotseatEduController.mHotseat.getTop());
                }
                hotseatEduDialog.mHotseatEduController.mOnOnboardingComplete.run();
                hotseatEduDialog.mLauncher.getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_HOTSEAT_EDU_DENY);
                hotseatEduDialog.handleClose(true);
            }
        });
        if (FeatureFlags.HOTSEAT_MIGRATE_TO_FOLDER.get()) {
            ((TextView) findViewById(R.id.hotseat_edu_content)).setText(R.string.hotseat_edu_message_migrate_alt);
        }
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        int i = rect.left;
        Rect rect2 = this.mInsets;
        int i2 = i - rect2.left;
        int i3 = rect.right - rect2.right;
        int i4 = rect.bottom - rect2.bottom;
        rect2.set(rect);
        if (this.mLauncher.mOldConfig.orientation == 1) {
            setPadding(i2, getPaddingTop(), i3, 0);
            View view = this.mHotseatWrapper;
            view.setPadding(view.getPaddingLeft(), getPaddingTop(), this.mHotseatWrapper.getPaddingRight(), i4);
            this.mHotseatWrapper.getLayoutParams().height = this.mLauncher.getDeviceProfile().hotseatBarSizePx + rect.bottom;
            return;
        }
        setPadding(0, getPaddingTop(), 0, 0);
        View view2 = this.mHotseatWrapper;
        view2.setPadding(view2.getPaddingLeft(), getPaddingTop(), this.mHotseatWrapper.getPaddingRight(), (int) getResources().getDimension(R.dimen.bottom_sheet_edu_padding));
        ((TextView) findViewById(R.id.hotseat_edu_heading)).setText(R.string.hotseat_edu_title_migrate_landscape);
        ((TextView) findViewById(R.id.hotseat_edu_content)).setText(R.string.hotseat_edu_message_migrate_landscape);
    }

    public HotseatEduDialog(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mInsets = new Rect();
        this.mContent = this;
    }
}
