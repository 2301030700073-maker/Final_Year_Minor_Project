package com.android.launcher3.uioverrides;

import android.app.prediction.AppPredictor;
import android.app.prediction.AppTarget;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.view.View;
import b.l.W;
import c.a.a.Z0.f;
import com.android.launcher3.BaseQuickstepLauncher;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.Workspace;
import com.android.launcher3.allapps.DiscoveryBounce;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.appprediction.ComponentKeyMapper;
import com.android.launcher3.appprediction.PredictionUiStateManager;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.hybridhotseat.HotseatFileLog;
import com.android.launcher3.hybridhotseat.HotseatPredictionController;
import com.android.launcher3.hybridhotseat.HotseatPredictionModel;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$PredictedHotseatContainer;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.logging.UserEventDispatcher;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.uioverrides.states.QuickstepAtomicAnimationFactory;
import com.android.launcher3.uioverrides.touchcontrollers.FlingAndHoldTouchController;
import com.android.launcher3.uioverrides.touchcontrollers.LandscapeEdgeSwipeController;
import com.android.launcher3.uioverrides.touchcontrollers.NavBarToHomeTouchController;
import com.android.launcher3.uioverrides.touchcontrollers.NoButtonNavbarToOverviewTouchController;
import com.android.launcher3.uioverrides.touchcontrollers.NoButtonQuickSwitchTouchController;
import com.android.launcher3.uioverrides.touchcontrollers.OverviewToAllAppsTouchController;
import com.android.launcher3.uioverrides.touchcontrollers.PortraitStatesTouchController;
import com.android.launcher3.uioverrides.touchcontrollers.QuickSwitchTouchController;
import com.android.launcher3.uioverrides.touchcontrollers.StatusBarTouchController;
import com.android.launcher3.uioverrides.touchcontrollers.TaskViewTouchController;
import com.android.launcher3.uioverrides.touchcontrollers.TransposedQuickSwitchTouchController;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.util.UiThreadHelper;
import com.android.launcher3.views.ScrimView;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.plugins.OverscrollPlugin;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.OptionalInt;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntPredicate;
import java.util.stream.IntStream;
import java.util.stream.Stream;

/* loaded from: classes.dex */
public class QuickstepLauncher extends BaseQuickstepLauncher {
    public static final UiThreadHelper.AsyncCommand SET_SHELF_HEIGHT = f.f1725a;

    public final class LauncherTaskViewController extends TaskViewTouchController {
        public LauncherTaskViewController(Launcher launcher) {
            super(launcher);
        }

        @Override // com.android.launcher3.uioverrides.touchcontrollers.TaskViewTouchController
        public boolean isRecentsInteractive() {
            return ((Launcher) this.mActivity).isInState(LauncherState.OVERVIEW) || ((Launcher) this.mActivity).isInState(LauncherState.OVERVIEW_MODAL_TASK);
        }

        @Override // com.android.launcher3.uioverrides.touchcontrollers.TaskViewTouchController
        public boolean isRecentsModal() {
            return ((Launcher) this.mActivity).isInState(LauncherState.OVERVIEW_MODAL_TASK);
        }

        @Override // com.android.launcher3.uioverrides.touchcontrollers.TaskViewTouchController
        public void onUserControlledAnimationCreated(AnimatorPlaybackController animatorPlaybackController) {
            ((Launcher) this.mActivity).getStateManager().setCurrentUserControlledAnimation(animatorPlaybackController);
        }
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.model.BgDataModel.Callbacks
    public void bindPredictedItems(List list, IntArray intArray) {
        AppPredictor appPredictor;
        HotseatPredictionController hotseatPredictionController = this.mHotseatPredictionController;
        if (hotseatPredictionController != null) {
            if ((!hotseatPredictionController.mComponentKeyMappers.isEmpty()) && (appPredictor = hotseatPredictionController.mAppPredictor) != null) {
                appPredictor.requestPredictionUpdate();
                hotseatPredictionController.fillGapsWithPrediction();
                return;
            }
            int min = Math.min(intArray.mSize, list.size());
            ArrayList arrayList = new ArrayList(min);
            for (int i = 0; i < min; i++) {
                WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo((AppInfo) list.get(i));
                ComponentKey componentKey = new ComponentKey(workspaceItemInfo.getTargetComponent(), workspaceItemInfo.user);
                hotseatPredictionController.preparePredictionInfo(workspaceItemInfo, intArray.get(i));
                arrayList.add(workspaceItemInfo);
                hotseatPredictionController.mComponentKeyMappers.add(new ComponentKeyMapper(componentKey, hotseatPredictionController.mDynamicItemCache));
            }
            hotseatPredictionController.mDynamicItemCache.updateDependencies(hotseatPredictionController.mComponentKeyMappers, hotseatPredictionController.mAllAppsStore, hotseatPredictionController, hotseatPredictionController.mHotSeatItemsCount);
            hotseatPredictionController.bindItems(arrayList, false, null);
        }
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public StateManager.AtomicAnimationFactory createAtomicAnimationFactory() {
        return new QuickstepAtomicAnimationFactory(this);
    }

    @Override // com.android.launcher3.Launcher
    public TouchController[] createTouchControllers() {
        SysUINavigationMode.Mode mode = SysUINavigationMode.getMode(this);
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.mDragController);
        if (mode == SysUINavigationMode.Mode.NO_BUTTON) {
            arrayList.add(new NoButtonQuickSwitchTouchController(this));
            arrayList.add(new NavBarToHomeTouchController(this));
            if (FeatureFlags.ENABLE_OVERVIEW_ACTIONS.get()) {
                arrayList.add(new NoButtonNavbarToOverviewTouchController(this));
            } else {
                arrayList.add(new FlingAndHoldTouchController(this));
            }
        } else if (getDeviceProfile().isVerticalBarLayout()) {
            arrayList.add(new OverviewToAllAppsTouchController(this));
            arrayList.add(new LandscapeEdgeSwipeController(this));
            if (mode.hasGestures) {
                arrayList.add(new TransposedQuickSwitchTouchController(this));
            }
        } else {
            arrayList.add(new PortraitStatesTouchController(this, mode.hasGestures));
            if (mode.hasGestures) {
                arrayList.add(new QuickSwitchTouchController(this));
            }
        }
        if (!getDeviceProfile().isMultiWindowMode) {
            arrayList.add(new StatusBarTouchController(this));
        }
        arrayList.add(new LauncherTaskViewController(this));
        return (TouchController[]) arrayList.toArray(new TouchController[arrayList.size()]);
    }

    @Override // com.android.launcher3.Launcher, android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        RecentsView recentsView = (RecentsView) getOverviewPanel();
        printWriter.println("\nQuickstepLauncher:");
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("\tmOrientationState: ");
        sb.append(recentsView == null ? "recentsNull" : recentsView.getPagedViewOrientedState());
        printWriter.println(sb.toString());
    }

    @Override // com.android.launcher3.Launcher
    public void folderConvertedToItem(Folder folder, WorkspaceItemInfo workspaceItemInfo) {
        HotseatPredictionController hotseatPredictionController = this.mHotseatPredictionController;
        if (hotseatPredictionController != null) {
            FolderInfo folderInfo = folder.mInfo;
            AppTarget appTargetFromInfo = hotseatPredictionController.mPredictionModel.getAppTargetFromInfo(folderInfo);
            AppTarget appTargetFromInfo2 = hotseatPredictionController.mPredictionModel.getAppTargetFromInfo(workspaceItemInfo);
            if (appTargetFromInfo != null && HotseatPredictionModel.isTrackedForPrediction(folderInfo)) {
                hotseatPredictionController.notifyItemAction(hotseatPredictionController.mPredictionModel.wrapAppTargetWithLocation(appTargetFromInfo, 4, folderInfo));
            }
            if (appTargetFromInfo2 == null || !HotseatPredictionModel.isTrackedForPrediction(workspaceItemInfo)) {
                return;
            }
            hotseatPredictionController.notifyItemAction(hotseatPredictionController.mPredictionModel.wrapAppTargetWithLocation(appTargetFromInfo2, 3, workspaceItemInfo));
        }
    }

    @Override // com.android.launcher3.Launcher
    public void folderCreatedFromItem(Folder folder, WorkspaceItemInfo workspaceItemInfo) {
        HotseatPredictionController hotseatPredictionController = this.mHotseatPredictionController;
        if (hotseatPredictionController != null) {
            FolderInfo folderInfo = folder.mInfo;
            AppTarget appTargetFromInfo = hotseatPredictionController.mPredictionModel.getAppTargetFromInfo(folderInfo);
            AppTarget appTargetFromInfo2 = hotseatPredictionController.mPredictionModel.getAppTargetFromInfo(workspaceItemInfo);
            if (appTargetFromInfo != null && HotseatPredictionModel.isTrackedForPrediction(folderInfo)) {
                hotseatPredictionController.notifyItemAction(hotseatPredictionController.mPredictionModel.wrapAppTargetWithLocation(appTargetFromInfo, 3, folderInfo));
            }
            if (appTargetFromInfo2 == null || !HotseatPredictionModel.isTrackedForPrediction(folderInfo)) {
                return;
            }
            hotseatPredictionController.notifyItemAction(hotseatPredictionController.mPredictionModel.wrapAppTargetWithLocation(appTargetFromInfo2, 4, folderInfo));
        }
    }

    @Override // com.android.launcher3.BaseQuickstepLauncher, com.android.launcher3.Launcher
    public Stream getSupportedShortcuts() {
        return this.mHotseatPredictionController != null ? Stream.concat(super.getSupportedShortcuts(), Stream.of(this.mHotseatPredictionController)) : super.getSupportedShortcuts();
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public void logAppLaunch(ItemInfo itemInfo, InstanceId instanceId) {
        OptionalInt empty;
        final StatsLogManager.StatsLogger withInstanceId = getStatsLogManager().logger().withItemInfo(itemInfo).withInstanceId(instanceId);
        PredictionUiStateManager predictionUiStateManager = (PredictionUiStateManager) PredictionUiStateManager.INSTANCE.b(this);
        Objects.requireNonNull(predictionUiStateManager);
        int i = 0;
        if (itemInfo.getTargetComponent() == null || itemInfo.user == null) {
            empty = OptionalInt.empty();
        } else {
            int i2 = itemInfo.itemType;
            if (i2 == 0 || i2 == 1 || i2 == 6) {
                final ComponentKey componentKey = new ComponentKey(itemInfo.getTargetComponent(), itemInfo.user);
                final List list = predictionUiStateManager.mCurrentState.apps;
                empty = IntStream.range(0, list.size()).filter(new IntPredicate() { // from class: c.a.a.F0.m
                    @Override // java.util.function.IntPredicate
                    public final boolean test(int i3) {
                        return PredictionUiStateManager.c(ComponentKey.this, list, i3);
                    }
                }).findFirst();
            } else {
                empty = OptionalInt.empty();
            }
        }
        Objects.requireNonNull(withInstanceId);
        empty.ifPresent(new IntConsumer() { // from class: c.a.a.Z0.a
            @Override // java.util.function.IntConsumer
            public final void accept(int i3) {
                StatsLogManager.StatsLogger.this.withRank(i3);
            }
        });
        withInstanceId.log(StatsLogManager.LauncherEvent.LAUNCHER_APP_LAUNCH_TAP);
        HotseatPredictionController hotseatPredictionController = this.mHotseatPredictionController;
        if (hotseatPredictionController != null) {
            if (Utilities.IS_DEBUG_DEVICE) {
                String packageName = itemInfo.getTargetComponent() != null ? itemInfo.getTargetComponent().getPackageName() : "unknown";
                HotseatFileLog hotseatFileLog = (HotseatFileLog) HotseatFileLog.INSTANCE.b(hotseatPredictionController.mLauncher);
                StringBuilder sb = new StringBuilder();
                sb.append("appLaunch: packageName:");
                sb.append(packageName);
                sb.append(",isWorkApp:");
                sb.append((itemInfo.user == null || Process.myUserHandle().equals(itemInfo.user)) ? false : true);
                sb.append(",launchLocation:");
                sb.append(itemInfo.container);
                hotseatFileLog.log(UserEventDispatcher.TAG, sb.toString());
            }
            if (itemInfo.getTargetComponent() == null || itemInfo.user == null) {
                return;
            }
            final ComponentKey componentKey2 = new ComponentKey(itemInfo.getTargetComponent(), itemInfo.user);
            final ArrayList arrayList = new ArrayList(hotseatPredictionController.mComponentKeyMappers);
            OptionalInt findFirst = IntStream.range(0, arrayList.size()).filter(new IntPredicate() { // from class: c.a.a.K0.l
                @Override // java.util.function.IntPredicate
                public final boolean test(int i3) {
                    return ComponentKey.this.equals(((ComponentKeyMapper) arrayList.get(i3)).componentKey);
                }
            }).findFirst();
            if (findFirst.isPresent()) {
                Iterator it = ((ArrayList) hotseatPredictionController.getPredictedIcons()).iterator();
                while (it.hasNext()) {
                    i |= 1 << ((ItemInfo) ((PredictedAppIcon) it.next()).getTag()).screenId;
                }
                LauncherAtom$PredictedHotseatContainer.Builder builder = (LauncherAtom$PredictedHotseatContainer.Builder) LauncherAtom$PredictedHotseatContainer.DEFAULT_INSTANCE.createBuilder();
                builder.copyOnWrite();
                LauncherAtom$PredictedHotseatContainer launcherAtom$PredictedHotseatContainer = (LauncherAtom$PredictedHotseatContainer) builder.instance;
                launcherAtom$PredictedHotseatContainer.bitField0_ |= 2;
                launcherAtom$PredictedHotseatContainer.cardinality_ = i;
                if (itemInfo.container == -103) {
                    int asInt = findFirst.getAsInt();
                    builder.copyOnWrite();
                    LauncherAtom$PredictedHotseatContainer launcherAtom$PredictedHotseatContainer2 = (LauncherAtom$PredictedHotseatContainer) builder.instance;
                    launcherAtom$PredictedHotseatContainer2.bitField0_ = 1 | launcherAtom$PredictedHotseatContainer2.bitField0_;
                    launcherAtom$PredictedHotseatContainer2.index_ = asInt;
                }
                StatsLogManager.StatsLogger withRank = hotseatPredictionController.mLauncher.getStatsLogManager().logger().withInstanceId(instanceId).withRank(findFirst.getAsInt());
                LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
                newBuilder.copyOnWrite();
                LauncherAtom$ContainerInfo.access$7200((LauncherAtom$ContainerInfo) newBuilder.instance, builder);
                withRank.withContainerInfo((LauncherAtom$ContainerInfo) newBuilder.build()).log(StatsLogManager.LauncherEvent.LAUNCHER_HOTSEAT_RANKED);
            }
        }
    }

    public /* synthetic */ void m(TaskView taskView, Boolean bool) {
        if (bool.booleanValue()) {
            getStateManager().moveToRestState();
        } else {
            getStateManager().goToState(LauncherState.OVERVIEW);
            taskView.notifyTaskLaunchFailed(OverscrollPlugin.DEVICE_STATE_LAUNCHER);
        }
    }

    @Override // com.android.launcher3.BaseQuickstepLauncher, com.android.launcher3.BaseActivity
    public void onActivityFlagsChanged(int i) {
        super.onActivityFlagsChanged(i);
        if ((i & 85) != 0) {
            onStateOrResumeChanging((getActivityFlags() & 64) == 0);
        }
        if (this.mHotseatPredictionController != null) {
            if ((i & 1) == 0 && (i & getActivityFlags() & 4) == 0) {
                return;
            }
            this.mHotseatPredictionController.setPauseUIUpdate(false);
        }
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.BaseDraggingActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        onStateOrResumeChanging(false);
    }

    @Override // com.android.launcher3.BaseQuickstepLauncher, com.android.launcher3.Launcher, com.android.launcher3.BaseDraggingActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        HotseatPredictionController hotseatPredictionController = this.mHotseatPredictionController;
        if (hotseatPredictionController != null) {
            hotseatPredictionController.createPredictor();
        }
    }

    @Override // com.android.launcher3.BaseQuickstepLauncher, com.android.launcher3.Launcher, com.android.launcher3.BaseDraggingActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        HotseatPredictionController hotseatPredictionController = this.mHotseatPredictionController;
        if (hotseatPredictionController != null) {
            hotseatPredictionController.mIsDestroyed = true;
            hotseatPredictionController.mAllAppsStore.mUpdateListeners.remove(hotseatPredictionController);
            hotseatPredictionController.mLauncher.getDeviceProfile().inv.mChangeListeners.remove(hotseatPredictionController);
            hotseatPredictionController.mHotseat.removeOnAttachStateChangeListener(hotseatPredictionController);
            AppPredictor appPredictor = hotseatPredictionController.mAppPredictor;
            if (appPredictor != null) {
                appPredictor.destroy();
            }
            this.mHotseatPredictionController = null;
        }
    }

    public final void onStateOrResumeChanging(boolean z) {
        LauncherState launcherState = (LauncherState) getStateManager().mState;
        DeviceProfile deviceProfile = getDeviceProfile();
        int i = (!(launcherState == LauncherState.NORMAL || launcherState == LauncherState.OVERVIEW) || !(((getActivityFlags() & 32) != 0) || isUserActive()) || deviceProfile.isVerticalBarLayout() || !deviceProfile.isPhone || deviceProfile.isLandscape) ? 0 : 1;
        Message.obtain((Handler) UiThreadHelper.HANDLER.b(this), 3, i, deviceProfile.hotseatBarSizePx, f.f1725a).sendToTarget();
        if (launcherState != LauncherState.NORMAL || z) {
            return;
        }
        ((RecentsView) getOverviewPanel()).setSwipeDownShouldLaunchApp(false);
    }

    @Override // com.android.launcher3.BaseQuickstepLauncher, com.android.launcher3.Launcher
    public void setupViews() {
        super.setupViews();
        if (FeatureFlags.ENABLE_HYBRID_HOTSEAT.get()) {
            this.mHotseatPredictionController = new HotseatPredictionController(this);
        }
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.BaseDraggingActivity
    /* renamed from: startActivitySafely */
    public boolean k(View view, Intent intent, ItemInfo itemInfo, String str) {
        HotseatPredictionController hotseatPredictionController = this.mHotseatPredictionController;
        if (hotseatPredictionController != null) {
            hotseatPredictionController.setPauseUIUpdate(true);
        }
        return super.k(view, intent, itemInfo, str);
    }

    @Override // com.android.launcher3.Launcher, com.android.launcher3.statemanager.StatefulActivity
    public void onStateSetEnd(LauncherState launcherState) {
        super.onStateSetEnd(launcherState);
        int i = launcherState.ordinal;
        Runnable runnable = null;
        if (i == 2) {
            DiscoveryBounce.showForOverviewIfNeeded(this, true, ((RecentsView) getOverviewPanel()).getPagedOrientationHandler());
            RecentsView recentsView = (RecentsView) getOverviewPanel();
            W.sendCustomAccessibilityEvent(recentsView.getPageAt(recentsView.getCurrentPage()), 8, null);
            return;
        }
        if (i == 5) {
            final TaskView taskViewAt = ((RecentsView) getOverviewPanel()).getTaskViewAt(0);
            if (taskViewAt != null) {
                taskViewAt.launchTask(false, new Consumer() { // from class: c.a.a.Z0.e
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        QuickstepLauncher.this.m(taskViewAt, (Boolean) obj);
                    }
                }, Executors.MAIN_EXECUTOR.mHandler);
                return;
            } else {
                getStateManager().goToState(LauncherState.NORMAL);
                return;
            }
        }
        if (i != 8) {
            return;
        }
        final Workspace workspace = this.mWorkspace;
        boolean z = workspace.getNextPage() != 0;
        StateManager stateManager = getStateManager();
        LauncherState launcherState2 = LauncherState.NORMAL;
        if (!z) {
            final ScrimView scrimView = this.mScrimView;
            Objects.requireNonNull(scrimView);
            runnable = new Runnable() { // from class: c.a.a.Z0.i
                @Override // java.lang.Runnable
                public final void run() {
                    ScrimView.this.startDragHandleEducationAnim();
                }
            };
        }
        stateManager.goToState(launcherState2, true, runnable);
        if (z) {
            workspace.post(new Runnable() { // from class: c.a.a.Z0.j
                @Override // java.lang.Runnable
                public final void run() {
                    Workspace.this.moveToDefaultScreen();
                }
            });
        }
    }
}
