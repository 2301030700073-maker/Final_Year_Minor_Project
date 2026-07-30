package com.android.launcher3.hybridhotseat;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.prediction.AppPredictionContext;
import android.app.prediction.AppPredictionManager;
import android.app.prediction.AppPredictor;
import android.app.prediction.AppTarget;
import android.app.prediction.AppTargetEvent;
import android.content.ComponentName;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.Process;
import android.view.View;
import b.l.W;
import c.a.a.Y0.g;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Hotseat;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherSettings$Settings;
import com.android.launcher3.ShortcutAndWidgetContainer;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.appprediction.ComponentKeyMapper;
import com.android.launcher3.appprediction.DynamicItemCache;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.hybridhotseat.HotseatEduController;
import com.android.launcher3.hybridhotseat.HotseatFileLog;
import com.android.launcher3.hybridhotseat.HotseatPredictionController;
import com.android.launcher3.hybridhotseat.HotseatPredictionModel;
import com.android.launcher3.hybridhotseat.HotseatRestoreHelper;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.AllAppsList;
import com.android.launcher3.model.BaseModelUpdateTask;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.GridBackupTable;
import com.android.launcher3.model.PredictionModel;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.provider.LauncherDbUtils$SQLiteTransaction;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.touch.ItemLongClickListener;
import com.android.launcher3.uioverrides.PredictedAppIcon;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.launcher3.views.Snackbar;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class HotseatPredictionController implements DragController.DragListener, View.OnAttachStateChangeListener, SystemShortcut.Factory, InvariantDeviceProfile.OnIDPChangeListener, AllAppsStore.OnUpdateListener, IconCache.ItemInfoUpdateReceiver, DragSource {
    public AllAppsStore mAllAppsStore;
    public AppPredictor mAppPredictor;
    public DropTarget.DragObject mDragObject;
    public DynamicItemCache mDynamicItemCache;
    public int mHotSeatItemsCount;
    public final Hotseat mHotseat;
    public AnimatorSet mIconRemoveAnimators;
    public Launcher mLauncher;
    public final HotseatPredictionModel mPredictionModel;
    public final HotseatRestoreHelper mRestoreHelper;
    public int mPredictedSpotsCount = 0;
    public List mComponentKeyMappers = new ArrayList();
    public boolean mUIUpdatePaused = false;
    public boolean mIsDestroyed = false;
    public List mOutlineDrawings = new ArrayList();
    public final View.OnLongClickListener mPredictionLongClickListener = new View.OnLongClickListener() { // from class: c.a.a.K0.p
        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            final HotseatPredictionController hotseatPredictionController = HotseatPredictionController.this;
            if (!ItemLongClickListener.canStartDrag(hotseatPredictionController.mLauncher)) {
                return false;
            }
            Launcher launcher = hotseatPredictionController.mLauncher;
            if (launcher.mWorkspace.mIsSwitchingState) {
                return false;
            }
            if (launcher.mOnboardingPrefs.getBoolean(OnboardingPrefs.HOTSEAT_LONGPRESS_TIP_SEEN)) {
                hotseatPredictionController.mLauncher.mWorkspace.beginDragShared(view, hotseatPredictionController, new DragOptions());
            } else {
                Snackbar.show(hotseatPredictionController.mLauncher, R.string.hotseat_tip_gaps_filled, R.string.hotseat_prediction_settings, null, new Runnable() { // from class: c.a.a.K0.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        HotseatPredictionController.this.mLauncher.startActivity(HotseatEduController.getSettingsIntent());
                    }
                });
                hotseatPredictionController.mLauncher.mOnboardingPrefs.markChecked(OnboardingPrefs.HOTSEAT_LONGPRESS_TIP_SEEN);
                hotseatPredictionController.mLauncher.mDragLayer.performHapticFeedback(0);
            }
            return true;
        }
    };

    public class PinPrediction extends SystemShortcut {
        public PinPrediction(QuickstepLauncher quickstepLauncher, ItemInfo itemInfo, AnonymousClass1 anonymousClass1) {
            super(R.drawable.ic_pin, R.string.pin_prediction, quickstepLauncher, itemInfo);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SystemShortcut.dismissTaskMenuView(this.mTarget);
            HotseatPredictionController.this.pinPrediction(this.mItemInfo);
        }
    }

    public HotseatPredictionController(Launcher launcher) {
        this.mLauncher = launcher;
        this.mHotseat = launcher.mHotseat;
        this.mAllAppsStore = launcher.mAppsView.mAllAppsStore;
        this.mPredictionModel = (HotseatPredictionModel) LauncherAppState.getInstance(launcher).mPredictionModel;
        this.mAllAppsStore.mUpdateListeners.add(this);
        this.mDynamicItemCache = new DynamicItemCache(this.mLauncher, new Runnable() { // from class: c.a.a.K0.r
            @Override // java.lang.Runnable
            public final void run() {
                HotseatPredictionController.this.fillGapsWithPrediction();
            }
        });
        this.mHotSeatItemsCount = this.mLauncher.getDeviceProfile().inv.numHotseatIcons;
        launcher.getDeviceProfile().inv.mChangeListeners.add(this);
        this.mHotseat.addOnAttachStateChangeListener(this);
        this.mRestoreHelper = new HotseatRestoreHelper(this.mLauncher);
        if (this.mHotseat.isAttachedToWindow()) {
            onViewAttachedToWindow(this.mHotseat);
        }
    }

    public static boolean isPredictedIcon(View view) {
        return (view instanceof PredictedAppIcon) && (view.getTag() instanceof WorkspaceItemInfo) && ((WorkspaceItemInfo) view.getTag()).container == -103;
    }

    public final void bindItems(List list, boolean z, Runnable runnable) {
        AnimatorSet animatorSet = new AnimatorSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) it.next();
            PredictedAppIcon createIcon = PredictedAppIcon.createIcon(this.mHotseat, workspaceItemInfo);
            this.mLauncher.mWorkspace.addInScreenFromBind(createIcon, workspaceItemInfo);
            createIcon.setOnLongClickListener(this.mPredictionLongClickListener);
            ((CellLayout.LayoutParams) createIcon.getLayoutParams()).canReorder = false;
            createIcon.setTextVisibility(false);
            createIcon.verifyHighRes();
            if (z) {
                animatorSet.play(ObjectAnimator.ofFloat(createIcon, LauncherAnimUtils.SCALE_PROPERTY, 0.2f, 1.0f));
            }
        }
        if (z) {
            if (runnable != null) {
                animatorSet.addListener(AnimationSuccessListener.forRunnable(runnable));
            }
            animatorSet.start();
        } else if (runnable != null) {
            runnable.run();
        }
    }

    public void createPredictor() {
        final AppPredictionManager appPredictionManager = (AppPredictionManager) this.mLauncher.getSystemService(AppPredictionManager.class);
        if (appPredictionManager == null) {
            return;
        }
        AppPredictor appPredictor = this.mAppPredictor;
        if (appPredictor != null) {
            appPredictor.destroy();
            this.mAppPredictor = null;
        }
        final WeakReference weakReference = new WeakReference(this);
        final HotseatPredictionModel hotseatPredictionModel = this.mPredictionModel;
        final Consumer consumer = new Consumer() { // from class: c.a.a.K0.i
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                HotseatPredictionController hotseatPredictionController = HotseatPredictionController.this;
                AppPredictionManager appPredictionManager2 = appPredictionManager;
                final WeakReference weakReference2 = weakReference;
                Bundle bundle = (Bundle) obj;
                if (hotseatPredictionController.mIsDestroyed) {
                    return;
                }
                AppPredictor createAppPredictionSession = appPredictionManager2.createAppPredictionSession(new AppPredictionContext.Builder(hotseatPredictionController.mLauncher).setUiSurface("hotseat").setPredictedTargetCount(hotseatPredictionController.mHotSeatItemsCount).setExtras(bundle).build());
                hotseatPredictionController.mAppPredictor = createAppPredictionSession;
                createAppPredictionSession.registerPredictionUpdates(hotseatPredictionController.mLauncher.getApplicationContext().getMainExecutor(), new AppPredictor.Callback() { // from class: c.a.a.K0.k
                    public final void onTargetsAvailable(List list) {
                        WeakReference weakReference3 = weakReference2;
                        if (weakReference3.get() != null) {
                            HotseatPredictionController hotseatPredictionController2 = (HotseatPredictionController) weakReference3.get();
                            hotseatPredictionController2.mComponentKeyMappers.clear();
                            if (list.isEmpty()) {
                                final HotseatRestoreHelper hotseatRestoreHelper = hotseatPredictionController2.mRestoreHelper;
                                if (!hotseatRestoreHelper.mBackupRestored) {
                                    Executors.MODEL_EXECUTOR.execute(new Runnable() { // from class: c.a.a.K0.u
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            HotseatRestoreHelper hotseatRestoreHelper2 = HotseatRestoreHelper.this;
                                            LauncherDbUtils$SQLiteTransaction launcherDbUtils$SQLiteTransaction = (LauncherDbUtils$SQLiteTransaction) LauncherSettings$Settings.call(hotseatRestoreHelper2.mLauncher.getContentResolver(), "new_db_transaction").getBinder("value");
                                            try {
                                                if (W.tableExists(launcherDbUtils$SQLiteTransaction.mDb, "hotseat_restore_backup")) {
                                                    InvariantDeviceProfile invariantDeviceProfile = hotseatRestoreHelper2.mLauncher.getDeviceProfile().inv;
                                                    Launcher launcher = hotseatRestoreHelper2.mLauncher;
                                                    SQLiteDatabase sQLiteDatabase = launcherDbUtils$SQLiteTransaction.mDb;
                                                    int i = invariantDeviceProfile.numHotseatIcons;
                                                    if (W.tableExists(sQLiteDatabase, "hotseat_restore_backup")) {
                                                        GridBackupTable.copyTable(sQLiteDatabase, "hotseat_restore_backup", "favorites", ((UserCache) UserCache.INSTANCE.b(launcher)).getSerialNumberForUser(Process.myUserHandle()));
                                                        W.dropTable(sQLiteDatabase, "hotseat_restore_backup");
                                                    }
                                                    launcherDbUtils$SQLiteTransaction.mDb.setTransactionSuccessful();
                                                    hotseatRestoreHelper2.mBackupRestored = true;
                                                    hotseatRestoreHelper2.mLauncher.mModel.forceReload();
                                                }
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
                            }
                            StringBuilder sb = new StringBuilder("predictedApps: [\n");
                            final ArrayList arrayList = new ArrayList();
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                AppTarget appTarget = (AppTarget) it.next();
                                ComponentKey fromInfo = appTarget.getShortcutInfo() != null ? ShortcutKey.fromInfo(appTarget.getShortcutInfo()) : new ComponentKey(new ComponentName(appTarget.getPackageName(), appTarget.getClassName()), appTarget.getUser());
                                arrayList.add(fromInfo);
                                sb.append(fromInfo.toString());
                                sb.append(",rank:");
                                sb.append(appTarget.getRank());
                                sb.append("\n");
                                hotseatPredictionController2.mComponentKeyMappers.add(new ComponentKeyMapper(fromInfo, hotseatPredictionController2.mDynamicItemCache));
                            }
                            sb.append("]");
                            if (Utilities.IS_DEBUG_DEVICE) {
                                ((HotseatFileLog) HotseatFileLog.INSTANCE.b(hotseatPredictionController2.mLauncher)).log("PredictiveHotseat", sb.toString());
                            }
                            hotseatPredictionController2.mDynamicItemCache.updateDependencies(hotseatPredictionController2.mComponentKeyMappers, hotseatPredictionController2.mAllAppsStore, hotseatPredictionController2, hotseatPredictionController2.mHotSeatItemsCount);
                            hotseatPredictionController2.fillGapsWithPrediction();
                            final HotseatPredictionModel hotseatPredictionModel2 = hotseatPredictionController2.mPredictionModel;
                            Objects.requireNonNull(hotseatPredictionModel2);
                            Executors.MODEL_EXECUTOR.execute(new Runnable() { // from class: c.a.a.N0.V
                                @Override // java.lang.Runnable
                                public final void run() {
                                    PredictionModel.this.a(arrayList);
                                }
                            });
                        }
                    }
                });
                hotseatPredictionController.mAppPredictor.requestPredictionUpdate();
            }
        };
        LauncherAppState.getInstance(hotseatPredictionModel.mContext).mModel.enqueueModelUpdateTask(new BaseModelUpdateTask() { // from class: com.android.launcher3.hybridhotseat.HotseatPredictionModel.1
            public final /* synthetic */ Consumer val$cb;

            public AnonymousClass1(final Consumer consumer2) {
                r2 = consumer2;
            }

            @Override // com.android.launcher3.model.BaseModelUpdateTask
            public void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
                final Bundle bundle = new Bundle();
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                ArrayList arrayList2 = new ArrayList(bgDataModel.workspaceItems);
                arrayList2.addAll(bgDataModel.appWidgets);
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ItemInfo itemInfo = (ItemInfo) it.next();
                    AppTarget appTargetFromInfo = HotseatPredictionModel.this.getAppTargetFromInfo(itemInfo);
                    if (appTargetFromInfo == null || HotseatPredictionModel.isTrackedForPrediction(itemInfo)) {
                        arrayList.add(HotseatPredictionModel.this.wrapAppTargetWithLocation(appTargetFromInfo, 3, itemInfo));
                    }
                }
                ArrayList<? extends Parcelable> arrayList3 = new ArrayList<>();
                Iterator it2 = bgDataModel.cachedPredictedItems.iterator();
                while (it2.hasNext()) {
                    AppTarget appTargetFromInfo2 = HotseatPredictionModel.this.getAppTargetFromInfo((ItemInfo) it2.next());
                    if (appTargetFromInfo2 != null) {
                        arrayList3.add(appTargetFromInfo2);
                    }
                }
                bundle.putParcelableArrayList("pin_events", arrayList);
                bundle.putParcelableArrayList("current_items", arrayList3);
                LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
                final Consumer consumer2 = r2;
                looperExecutor.execute(new Runnable() { // from class: c.a.a.K0.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        consumer2.accept(bundle);
                    }
                });
            }
        });
        setPauseUIUpdate(false);
    }

    public final void fillGapsWithPrediction() {
        fillGapsWithPrediction(false, null);
    }

    @Override // com.android.launcher3.logging.StatsLogUtils$LogContainerProvider
    public void fillInLogContainerData(ItemInfo itemInfo, LauncherLogProto$Target launcherLogProto$Target, ArrayList arrayList) {
        this.mHotseat.fillInLogContainerData(itemInfo, launcherLogProto$Target, arrayList);
    }

    public final List getPredictedIcons() {
        ArrayList arrayList = new ArrayList();
        ShortcutAndWidgetContainer shortcutAndWidgetContainer = this.mHotseat.mShortcutsAndWidgets;
        for (int i = 0; i < shortcutAndWidgetContainer.getChildCount(); i++) {
            View childAt = shortcutAndWidgetContainer.getChildAt(i);
            if (isPredictedIcon(childAt)) {
                arrayList.add((PredictedAppIcon) childAt);
            }
        }
        return arrayList;
    }

    @Override // com.android.launcher3.popup.SystemShortcut.Factory
    public SystemShortcut getShortcut(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo) {
        QuickstepLauncher quickstepLauncher = (QuickstepLauncher) baseDraggingActivity;
        if (itemInfo.container != -103) {
            return null;
        }
        return new PinPrediction(quickstepLauncher, itemInfo, null);
    }

    public final List mapToWorkspaceItemInfo(List list) {
        AllAppsStore allAppsStore = this.mLauncher.mAppsView.mAllAppsStore;
        if (allAppsStore.mApps.length == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ItemInfoWithIcon app = ((ComponentKeyMapper) it.next()).getApp(allAppsStore);
            if (app instanceof AppInfo) {
                WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo((AppInfo) app);
                workspaceItemInfo.container = -103;
                arrayList.add(workspaceItemInfo);
            } else if (app instanceof WorkspaceItemInfo) {
                WorkspaceItemInfo workspaceItemInfo2 = new WorkspaceItemInfo((WorkspaceItemInfo) app);
                workspaceItemInfo2.container = -103;
                arrayList.add(workspaceItemInfo2);
            }
            if (arrayList.size() == this.mHotSeatItemsCount) {
                break;
            }
        }
        return arrayList;
    }

    public final void notifyItemAction(AppTargetEvent appTargetEvent) {
        AppPredictor appPredictor = this.mAppPredictor;
        if (appPredictor != null) {
            appPredictor.notifyAppTargetEvent(appTargetEvent);
        }
    }

    @Override // com.android.launcher3.allapps.AllAppsStore.OnUpdateListener
    public void onAppsUpdated() {
        fillGapsWithPrediction();
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragEnd() {
        DropTarget.DragObject dragObject = this.mDragObject;
        if (dragObject == null) {
            return;
        }
        ItemInfo itemInfo = dragObject.dragInfo;
        int i = itemInfo.cellX;
        ItemInfo itemInfo2 = dragObject.originalDragInfo;
        if ((i == itemInfo2.cellX && itemInfo.cellY == itemInfo2.cellY && itemInfo.screenId == itemInfo2.screenId && itemInfo.container == itemInfo2.container) ? false : true) {
            AppTarget appTargetFromInfo = this.mPredictionModel.getAppTargetFromInfo(itemInfo);
            if (appTargetFromInfo != null && HotseatPredictionModel.isTrackedForPrediction(itemInfo)) {
                notifyItemAction(this.mPredictionModel.wrapAppTargetWithLocation(appTargetFromInfo, 3, itemInfo));
            }
            if (appTargetFromInfo != null && HotseatPredictionModel.isTrackedForPrediction(this.mDragObject.originalDragInfo)) {
                notifyItemAction(this.mPredictionModel.wrapAppTargetWithLocation(appTargetFromInfo, 4, this.mDragObject.originalDragInfo));
            }
        }
        this.mDragObject = null;
        fillGapsWithPrediction(true, new Runnable() { // from class: c.a.a.K0.q
            @Override // java.lang.Runnable
            public final void run() {
                HotseatPredictionController.this.removeOutlineDrawings();
            }
        });
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        List list = this.mOutlineDrawings;
        ItemInfo itemInfo = dragObject.dragInfo;
        AnimatorSet animatorSet = this.mIconRemoveAnimators;
        if (animatorSet != null) {
            animatorSet.end();
        }
        this.mIconRemoveAnimators = new AnimatorSet();
        removeOutlineDrawings();
        Iterator it = ((ArrayList) getPredictedIcons()).iterator();
        while (it.hasNext()) {
            final PredictedAppIcon predictedAppIcon = (PredictedAppIcon) it.next();
            if (predictedAppIcon.isEnabled()) {
                if (predictedAppIcon.getTag().equals(itemInfo)) {
                    this.mHotseat.removeView(predictedAppIcon);
                } else {
                    int i = ((WorkspaceItemInfo) predictedAppIcon.getTag()).rank;
                    list.add(new PredictedAppIcon.PredictedIconOutlineDrawing(this.mHotseat.getCellXFromOrder(i), this.mHotseat.getCellYFromOrder(i), predictedAppIcon));
                    predictedAppIcon.setEnabled(false);
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(predictedAppIcon, LauncherAnimUtils.SCALE_PROPERTY, RecentsState.NO_OFFSET);
                    ofFloat.addListener(new AnimationSuccessListener() { // from class: com.android.launcher3.hybridhotseat.HotseatPredictionController.2
                        @Override // com.android.launcher3.anim.AnimationSuccessListener
                        public void onAnimationSuccess(Animator animator) {
                            if (predictedAppIcon.getParent() != null) {
                                HotseatPredictionController.this.mHotseat.removeView(predictedAppIcon);
                            }
                        }
                    });
                    this.mIconRemoveAnimators.play(ofFloat);
                }
            }
        }
        this.mIconRemoveAnimators.start();
        this.mDragObject = dragObject;
        if (this.mOutlineDrawings.isEmpty()) {
            return;
        }
        Iterator it2 = this.mOutlineDrawings.iterator();
        while (it2.hasNext()) {
            this.mHotseat.mDelegatedCellDrawings.add((PredictedAppIcon.PredictedIconOutlineDrawing) it2.next());
        }
        this.mHotseat.invalidate();
    }

    @Override // com.android.launcher3.DragSource
    public void onDropCompleted(View view, DropTarget.DragObject dragObject, boolean z) {
    }

    @Override // com.android.launcher3.InvariantDeviceProfile.OnIDPChangeListener
    public void onIdpChanged(int i, InvariantDeviceProfile invariantDeviceProfile) {
        if ((i & 1) != 0) {
            this.mHotSeatItemsCount = invariantDeviceProfile.numHotseatIcons;
            createPredictor();
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.mLauncher.mDragController.mListeners.add(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.mLauncher.mDragController.mListeners.remove(this);
    }

    public void pinPrediction(ItemInfo itemInfo) {
        Hotseat hotseat = this.mHotseat;
        PredictedAppIcon predictedAppIcon = (PredictedAppIcon) hotseat.getChildAt(hotseat.getCellXFromOrder(itemInfo.rank), this.mHotseat.getCellYFromOrder(itemInfo.rank));
        if (predictedAppIcon == null) {
            return;
        }
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo((WorkspaceItemInfo) itemInfo);
        this.mLauncher.mModelWriter.addItemToDatabase(workspaceItemInfo, -101, workspaceItemInfo.screenId, workspaceItemInfo.cellX, workspaceItemInfo.cellY);
        ObjectAnimator.ofFloat(predictedAppIcon, LauncherAnimUtils.SCALE_PROPERTY, 1.0f, 0.8f, 1.0f).start();
        if (!predictedAppIcon.mIsPinned) {
            predictedAppIcon.mIsPinned = true;
            predictedAppIcon.applyFromWorkspaceItem(workspaceItemInfo);
            View.OnLongClickListener onLongClickListener = ItemLongClickListener.INSTANCE_WORKSPACE;
            predictedAppIcon.setOnLongClickListener(g.f1711a);
            ((CellLayout.LayoutParams) predictedAppIcon.getLayoutParams()).canReorder = true;
            predictedAppIcon.invalidate();
        }
        AppTarget appTargetFromInfo = this.mPredictionModel.getAppTargetFromInfo(workspaceItemInfo);
        if (appTargetFromInfo != null) {
            notifyItemAction(this.mPredictionModel.wrapAppTargetWithLocation(appTargetFromInfo, 3, workspaceItemInfo));
        }
    }

    public final void preparePredictionInfo(WorkspaceItemInfo workspaceItemInfo, int i) {
        workspaceItemInfo.container = -103;
        workspaceItemInfo.rank = i;
        workspaceItemInfo.cellX = this.mHotseat.mHasVerticalHotseat ? 0 : i;
        workspaceItemInfo.cellY = this.mHotseat.getCellYFromOrder(i);
        workspaceItemInfo.screenId = i;
    }

    @Override // com.android.launcher3.icons.IconCache.ItemInfoUpdateReceiver
    public void reapplyItemInfo(ItemInfoWithIcon itemInfoWithIcon) {
    }

    public final void removeOutlineDrawings() {
        if (this.mOutlineDrawings.isEmpty()) {
            return;
        }
        Iterator it = this.mOutlineDrawings.iterator();
        while (it.hasNext()) {
            this.mHotseat.mDelegatedCellDrawings.remove((PredictedAppIcon.PredictedIconOutlineDrawing) it.next());
        }
        this.mHotseat.invalidate();
        this.mOutlineDrawings.clear();
    }

    public void setPauseUIUpdate(boolean z) {
        this.mUIUpdatePaused = z;
        if (z) {
            return;
        }
        fillGapsWithPrediction();
    }

    public final void fillGapsWithPrediction(final boolean z, final Runnable runnable) {
        if (this.mUIUpdatePaused || this.mDragObject != null) {
            return;
        }
        List mapToWorkspaceItemInfo = mapToWorkspaceItemInfo(this.mComponentKeyMappers);
        if (this.mComponentKeyMappers.isEmpty() != mapToWorkspaceItemInfo.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        AnimatorSet animatorSet = this.mIconRemoveAnimators;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.mIconRemoveAnimators.addListener(new AnimationSuccessListener() { // from class: com.android.launcher3.hybridhotseat.HotseatPredictionController.1
                @Override // com.android.launcher3.anim.AnimationSuccessListener
                public void onAnimationSuccess(Animator animator) {
                    HotseatPredictionController.this.fillGapsWithPrediction(z, runnable);
                    HotseatPredictionController.this.mIconRemoveAnimators.removeListener(this);
                }
            });
            return;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.mHotSeatItemsCount; i2++) {
            Hotseat hotseat = this.mHotseat;
            View childAt = hotseat.getChildAt(hotseat.getCellXFromOrder(i2), this.mHotseat.getCellYFromOrder(i2));
            if (childAt == null || isPredictedIcon(childAt)) {
                if (mapToWorkspaceItemInfo.size() > i) {
                    int i3 = i + 1;
                    WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) mapToWorkspaceItemInfo.get(i);
                    if (isPredictedIcon(childAt) && childAt.isEnabled()) {
                        PredictedAppIcon predictedAppIcon = (PredictedAppIcon) childAt;
                        predictedAppIcon.applyFromWorkspaceItem(workspaceItemInfo);
                        predictedAppIcon.setOnLongClickListener(this.mPredictionLongClickListener);
                        ((CellLayout.LayoutParams) predictedAppIcon.getLayoutParams()).canReorder = false;
                        predictedAppIcon.setTextVisibility(false);
                        predictedAppIcon.verifyHighRes();
                    } else {
                        arrayList.add(workspaceItemInfo);
                    }
                    preparePredictionInfo(workspaceItemInfo, i2);
                    i = i3;
                } else if (isPredictedIcon(childAt)) {
                    this.mHotseat.removeView(childAt);
                }
            }
        }
        this.mPredictedSpotsCount = i;
        bindItems(arrayList, z, runnable);
    }
}
