package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.app.ActivityOptions;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.os.Trace;
import android.provider.Settings;
import android.text.TextUtils;
import android.text.method.TextKeyListener;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.KeyboardShortcutInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Toast;
import b.l.W;
import c.a.a.D0.k;
import c.a.c.a.a;
import c.b.a.b.b.d;
import c.b.a.b.b.l.K;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DropTarget;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherSettings$Favorites;
import com.android.launcher3.Workspace;
import com.android.launcher3.Workspace.DeferredWidgetRefresh;
import com.android.launcher3.accessibility.LauncherAccessibilityDelegate;
import com.android.launcher3.allapps.AllAppsContainerView;
import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.allapps.AllAppsTransitionController;
import com.android.launcher3.allapps.DiscoveryBounce;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.dragndrop.SpringLoadedDragController;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.folder.FolderGridOrganizer;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.keyboard.CustomActionsPopup;
import com.android.launcher3.keyboard.ViewGroupFocusHelper;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.logging.UserEventDispatcher;
import com.android.launcher3.model.AppLaunchTracker;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.model.ModelWriter.ModelVerifier;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.PromiseAppInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.notification.NotificationListener;
import com.android.launcher3.pageindicators.WorkspacePageIndicator;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.qsb.QsbContainerView;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.states.RotationHelper;
import com.android.launcher3.touch.AllAppsSwipeController;
import com.android.launcher3.touch.ItemClickHandler;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.util.ActivityResultInfo;
import com.android.launcher3.util.ActivityTracker;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.MultiValueAlpha;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.util.PendingRequestArgs;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.util.UiThreadHelper;
import com.android.launcher3.util.ViewCache;
import com.android.launcher3.util.ViewOnDrawExecutor;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.views.OptionsPopupView;
import com.android.launcher3.views.ScrimView;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.launcher3.widget.PendingAddWidgetInfo;
import com.android.launcher3.widget.PendingAppWidgetHostView;
import com.android.launcher3.widget.WidgetAddFlowHandler;
import com.android.launcher3.widget.WidgetHostViewLoader;
import com.android.launcher3.widget.WidgetManagerHelper;
import com.android.launcher3.widget.WidgetsFullSheet;
import com.android.launcher3.widget.custom.CustomWidgetManager;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.plugins.AllAppsSearchPlugin;
import com.android.systemui.plugins.OverlayPlugin;
import com.android.systemui.plugins.OverscrollPlugin;
import com.android.systemui.plugins.Plugin;
import com.android.systemui.plugins.PluginListener;
import com.android.systemui.plugins.shared.LauncherExterns;
import com.android.systemui.plugins.shared.LauncherOverlayManager;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Stream;

/* loaded from: classes.dex */
public class Launcher extends StatefulActivity implements LauncherExterns, BgDataModel.Callbacks, InvariantDeviceProfile.OnIDPChangeListener, PluginListener {
    public static final ActivityTracker ACTIVITY_TRACKER = new ActivityTracker();
    public static final int NEW_APPS_ANIMATION_DELAY = 500;
    public static final int NEW_APPS_PAGE_MOVE_DELAY = 500;
    public LauncherAccessibilityDelegate mAccessibilityDelegate;
    public AllAppsTransitionController mAllAppsController;
    public LauncherAppTransitionManager mAppTransitionManager;
    public LauncherAppWidgetHost mAppWidgetHost;
    public WidgetManagerHelper mAppWidgetManager;
    public AllAppsContainerView mAppsView;
    public boolean mDeferOverlayCallbacks;
    public DragController mDragController;
    public DragLayer mDragLayer;
    public DropTargetBar mDropTargetBar;
    public ViewGroupFocusHelper mFocusHandler;
    public Hotseat mHotseat;
    public IconCache mIconCache;
    public d mLauncherCallbacks;
    public LauncherModel mModel;
    public ModelWriter mModelWriter;
    public Configuration mOldConfig;
    public Runnable mOnDeferredActivityLaunchCallback;
    public OnboardingPrefs mOnboardingPrefs;
    public LauncherOverlayManager mOverlayManager;
    public View mOverviewPanel;
    public ActivityResultInfo mPendingActivityResult;
    public ViewOnDrawExecutor mPendingExecutor;
    public PendingRequestArgs mPendingRequestArgs;
    public PopupDataProvider mPopupDataProvider;
    public RotationHelper mRotationHelper;
    public ScrimView mScrimView;
    public SharedPreferences mSharedPrefs;
    public StateManager mStateManager;
    public boolean mTouchInProgress;
    public SafeCloseable mUserChangedCallbackCloseable;
    public Workspace mWorkspace;
    public final int[] mTmpAddItemCellCoordinates = new int[2];
    public boolean mWorkspaceLoading = true;
    public ArrayList mOnResumeCallbacks = new ArrayList();
    public int mSynchronouslyBoundPage = -1;
    public int mPageToBindSynchronously = -1;
    public int mPendingActivityRequestCode = -1;
    public float mCurrentAssistantVisibility = RecentsState.NO_OFFSET;
    public final Runnable mDeferredOverlayCallbacks = new Runnable() { // from class: c.a.a.I
        @Override // java.lang.Runnable
        public final void run() {
            Launcher.this.checkIfOverlayStillDeferred();
        }
    };
    public long mLastTouchUpTime = -1;
    public final BroadcastReceiver mScreenOffReceiver = new BroadcastReceiver() { // from class: com.android.launcher3.Launcher.6
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Launcher launcher = Launcher.this;
            if (launcher.mPendingRequestArgs == null) {
                if (!launcher.isInState(LauncherState.NORMAL)) {
                    Launcher.this.onUiChangedWhileSleeping();
                }
                Launcher.this.mStateManager.goToState(LauncherState.NORMAL);
            }
        }
    };

    public class LauncherOverlayCallbacksImpl implements LauncherOverlayManager.LauncherOverlayCallbacks {
        public LauncherOverlayCallbacksImpl() {
        }

        @Override // com.android.systemui.plugins.shared.LauncherOverlayManager.LauncherOverlayCallbacks
        public void onScrollChanged(float f) {
            Workspace workspace = Launcher.this.mWorkspace;
            if (workspace != null) {
                workspace.onOverlayScrollChanged(f);
            }
        }
    }

    public interface OnResumeCallback {
        void onLauncherResume();
    }

    public static Launcher cast(ActivityContext activityContext) {
        return (Launcher) activityContext;
    }

    public static Launcher getLauncher(Context context) {
        return (Launcher) BaseActivity.fromContext(context);
    }

    public void addAppWidgetImpl(int i, ItemInfo itemInfo, AppWidgetHostView appWidgetHostView, WidgetAddFlowHandler widgetAddFlowHandler, int i2) {
        if (widgetAddFlowHandler.startConfigActivity(this, i, itemInfo, 5)) {
            return;
        }
        Runnable runnable = new Runnable() { // from class: com.android.launcher3.Launcher.7
            @Override // java.lang.Runnable
            public void run() {
                Launcher.this.mStateManager.goToState(LauncherState.NORMAL, 500L);
            }
        };
        completeAddAppWidget(i, itemInfo, appWidgetHostView, LauncherAppWidgetProviderInfo.fromProviderInfo(this, widgetAddFlowHandler.mProviderInfo));
        this.mWorkspace.removeExtraEmptyScreenDelayed(i2, false, runnable);
    }

    public void addPendingItem(PendingAddItemInfo pendingAddItemInfo, int i, int i2, int[] iArr, int i3, int i4) {
        pendingAddItemInfo.container = i;
        pendingAddItemInfo.screenId = i2;
        int i5 = 0;
        if (iArr != null) {
            pendingAddItemInfo.cellX = iArr[0];
            pendingAddItemInfo.cellY = iArr[1];
        }
        pendingAddItemInfo.spanX = i3;
        pendingAddItemInfo.spanY = i4;
        int i6 = pendingAddItemInfo.itemType;
        if (i6 == 1) {
            PendingAddShortcutInfo pendingAddShortcutInfo = (PendingAddShortcutInfo) pendingAddItemInfo;
            PendingRequestArgs pendingRequestArgs = new PendingRequestArgs(1, 1, new Intent("android.intent.action.CREATE_SHORTCUT").setComponent(pendingAddShortcutInfo.componentName));
            pendingRequestArgs.copyFrom(pendingAddShortcutInfo);
            this.mPendingRequestArgs = pendingRequestArgs;
            W.recordEvent("Main", "start: processShortcutFromDrop");
            if (pendingAddShortcutInfo.activityInfo.startConfigActivity(this, 1)) {
                return;
            }
            handleActivityResult(1, 0, null);
            return;
        }
        if (i6 != 4 && i6 != 5) {
            StringBuilder f = a.f("Unknown item type: ");
            f.append(pendingAddItemInfo.itemType);
            throw new IllegalStateException(f.toString());
        }
        PendingAddWidgetInfo pendingAddWidgetInfo = (PendingAddWidgetInfo) pendingAddItemInfo;
        AppWidgetHostView appWidgetHostView = pendingAddWidgetInfo.boundWidget;
        WidgetAddFlowHandler handler = pendingAddWidgetInfo.getHandler();
        if (appWidgetHostView != null) {
            this.mDragLayer.removeView(appWidgetHostView);
            addAppWidgetImpl(appWidgetHostView.getAppWidgetId(), pendingAddWidgetInfo, appWidgetHostView, handler, 0);
            pendingAddWidgetInfo.boundWidget = null;
            return;
        }
        if (pendingAddWidgetInfo.itemType == 5) {
            CustomWidgetManager customWidgetManager = (CustomWidgetManager) CustomWidgetManager.INSTANCE.b(this);
            int indexOfValue = customWidgetManager.mWidgetsIdMap.indexOfValue(pendingAddWidgetInfo.componentName);
            if (indexOfValue >= 0) {
                i5 = (-100) - customWidgetManager.mWidgetsIdMap.keyAt(indexOfValue);
            }
        } else {
            i5 = this.mAppWidgetHost.allocateAppWidgetId();
        }
        int i7 = i5;
        if (this.mAppWidgetManager.bindAppWidgetIdIfAllowed(i7, pendingAddWidgetInfo.info, pendingAddWidgetInfo.bindOptions)) {
            addAppWidgetImpl(i7, pendingAddWidgetInfo, null, handler, 0);
            return;
        }
        Objects.requireNonNull(handler);
        PendingRequestArgs pendingRequestArgs2 = new PendingRequestArgs(i7, 2, handler);
        pendingRequestArgs2.copyFrom(pendingAddWidgetInfo);
        this.mPendingRequestArgs = pendingRequestArgs2;
        this.mAppWidgetHost.startBindFlow(this, i7, handler.mProviderInfo, 11);
    }

    public final void bindAddScreens(IntArray intArray) {
        int i = intArray.mSize;
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = intArray.get(i2);
            if (i3 != 0) {
                Workspace workspace = this.mWorkspace;
                int indexOf = workspace.mScreenOrder.indexOf(-201);
                if (indexOf < 0) {
                    indexOf = workspace.mScreenOrder.mSize;
                }
                workspace.insertNewWorkspaceScreen(i3, indexOf);
            }
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindAllApplications(AppInfo[] appInfoArr, int i) {
        AllAppsStore allAppsStore = this.mAppsView.mAllAppsStore;
        allAppsStore.mApps = appInfoArr;
        allAppsStore.mModelFlags = i;
        allAppsStore.notifyUpdate();
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindAllWidgets(ArrayList arrayList) {
        PopupDataProvider popupDataProvider = this.mPopupDataProvider;
        popupDataProvider.mAllWidgets = arrayList;
        popupDataProvider.mChangeListener.onWidgetsBound();
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindAppsAdded(IntArray intArray, ArrayList arrayList, ArrayList arrayList2) {
        if (intArray != null) {
            bindAddScreens(intArray);
        }
        if (!arrayList.isEmpty()) {
            bindItems(arrayList, false);
        }
        if (!arrayList2.isEmpty()) {
            bindItems(arrayList2, true);
        }
        this.mWorkspace.removeExtraEmptyScreenDelayed(0, false, null);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindDeepShortcutMap(HashMap hashMap) {
        this.mPopupDataProvider.mDeepShortcutMap = hashMap;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0145 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0179  */
    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void bindItems(java.util.List r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.Launcher.bindItems(java.util.List, boolean):void");
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindPredictedItems(List list, IntArray intArray) {
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindPromiseAppProgressUpdated(PromiseAppInfo promiseAppInfo) {
        this.mAppsView.mAllAppsStore.updateAllIcons(new k(promiseAppInfo));
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindRestoreItemsChange(final HashSet hashSet) {
        Workspace workspace = this.mWorkspace;
        Workspace.ItemOperator itemOperator = new Workspace.ItemOperator() { // from class: c.a.a.p0
            @Override // com.android.launcher3.Workspace.ItemOperator
            public final boolean evaluate(ItemInfo itemInfo, View view) {
                Workspace.n(hashSet, itemInfo, view);
                return false;
            }
        };
        workspace.mapOverItems(itemOperator);
        Folder open = Folder.getOpen(workspace.mLauncher);
        if (open != null) {
            open.mContent.iterateOverItems(itemOperator);
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindScreens(IntArray intArray) {
        if (intArray.indexOf(0) != 0) {
            intArray.removeValue(0);
            intArray.add(0, 0);
        }
        bindAddScreens(intArray);
        Workspace workspace = this.mWorkspace;
        if (workspace.mWallpaperOffset.mLockedToDefaultPage) {
            workspace.mUnlockWallpaperFromDefaultPageOnLayout = true;
            workspace.requestLayout();
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindWidgetsRestored(final ArrayList arrayList) {
        final Workspace workspace = this.mWorkspace;
        Objects.requireNonNull(workspace);
        if (arrayList.isEmpty()) {
            return;
        }
        Workspace.DeferredWidgetRefresh deferredWidgetRefresh = workspace.new DeferredWidgetRefresh(arrayList, workspace.mLauncher.mAppWidgetHost);
        LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) arrayList.get(0);
        WidgetManagerHelper widgetManagerHelper = new WidgetManagerHelper(workspace.getContext());
        if ((launcherAppWidgetInfo.hasRestoreFlag(1) ? widgetManagerHelper.findProvider(launcherAppWidgetInfo.providerName, launcherAppWidgetInfo.user) : widgetManagerHelper.getLauncherAppWidgetInfo(launcherAppWidgetInfo.appWidgetId)) != null) {
            deferredWidgetRefresh.run();
        } else {
            workspace.mapOverItems(new Workspace.ItemOperator(workspace, arrayList) { // from class: com.android.launcher3.Workspace.9
                public final /* synthetic */ ArrayList val$changedInfo;

                {
                    this.val$changedInfo = arrayList;
                }

                @Override // com.android.launcher3.Workspace.ItemOperator
                public boolean evaluate(ItemInfo itemInfo, View view) {
                    if (!(view instanceof PendingAppWidgetHostView) || !this.val$changedInfo.contains(itemInfo)) {
                        return false;
                    }
                    ((LauncherAppWidgetInfo) itemInfo).installProgress = 100;
                    ((PendingAppWidgetHostView) view).applyState();
                    return false;
                }
            });
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindWorkspaceComponentsRemoved(ItemInfoMatcher itemInfoMatcher) {
        ComponentName targetComponent;
        this.mWorkspace.removeItemsByMatcher(itemInfoMatcher);
        DragController dragController = this.mDragController;
        DropTarget.DragObject dragObject = dragController.mDragObject;
        if (dragObject != null) {
            ItemInfo itemInfo = dragObject.dragInfo;
            if ((itemInfo instanceof WorkspaceItemInfo) && (targetComponent = itemInfo.getTargetComponent()) != null && itemInfoMatcher.matches(itemInfo, targetComponent)) {
                dragController.cancelDrag();
            }
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindWorkspaceItemsChanged(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        Workspace workspace = this.mWorkspace;
        Objects.requireNonNull(workspace);
        final HashSet hashSet = new HashSet(arrayList);
        Workspace.ItemOperator itemOperator = new Workspace.ItemOperator() { // from class: c.a.a.i0
            @Override // com.android.launcher3.Workspace.ItemOperator
            public final boolean evaluate(ItemInfo itemInfo, View view) {
                Workspace.o(hashSet, itemInfo, view);
                return false;
            }
        };
        workspace.mapOverItems(itemOperator);
        Folder open = Folder.getOpen(workspace.mLauncher);
        if (open != null) {
            open.mContent.iterateOverItems(itemOperator);
        }
    }

    public final void checkIfOverlayStillDeferred() {
        if (this.mDeferOverlayCallbacks) {
            if (!isStarted() || (hasBeenResumed() && !((LauncherState) this.mStateManager.mState).hasFlag(1))) {
                this.mDeferOverlayCallbacks = false;
                if (isStarted()) {
                    this.mOverlayManager.onActivityStarted(this);
                }
                if (hasBeenResumed()) {
                    this.mOverlayManager.onActivityResumed(this);
                } else {
                    this.mOverlayManager.onActivityPaused(this);
                }
                if (isStarted()) {
                    return;
                }
                this.mOverlayManager.onActivityStopped(this);
            }
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void clearPendingBinds() {
        ViewOnDrawExecutor viewOnDrawExecutor = this.mPendingExecutor;
        if (viewOnDrawExecutor != null) {
            viewOnDrawExecutor.markCompleted();
            this.mPendingExecutor = null;
            this.mAppsView.mAllAppsStore.mDeferUpdatesFlags &= -2;
        }
    }

    public void closeOpenViews(boolean z) {
        AbstractFloatingView.closeAllOpenViews(this, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0107, code lost:
    
        if (r2.getApplicationInfo(r12, 0).targetSdkVersion >= 23) goto L64;
     */
    /* JADX WARN: Removed duplicated region for block: B:59:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0126  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int completeAdd(int r18, android.content.Intent r19, int r20, com.android.launcher3.util.PendingRequestArgs r21) {
        /*
            Method dump skipped, instructions count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.Launcher.completeAdd(int, android.content.Intent, int, com.android.launcher3.util.PendingRequestArgs):int");
    }

    public void completeAddAppWidget(int i, ItemInfo itemInfo, AppWidgetHostView appWidgetHostView, LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo) {
        if (launcherAppWidgetProviderInfo == null) {
            launcherAppWidgetProviderInfo = this.mAppWidgetManager.getLauncherAppWidgetInfo(i);
        }
        LauncherAppWidgetInfo launcherAppWidgetInfo = new LauncherAppWidgetInfo(i, ((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).provider);
        launcherAppWidgetInfo.spanX = itemInfo.spanX;
        launcherAppWidgetInfo.spanY = itemInfo.spanY;
        launcherAppWidgetInfo.minSpanX = itemInfo.minSpanX;
        launcherAppWidgetInfo.minSpanY = itemInfo.minSpanY;
        launcherAppWidgetInfo.user = launcherAppWidgetProviderInfo.getProfile();
        this.mModelWriter.addItemToDatabase(launcherAppWidgetInfo, itemInfo.container, itemInfo.screenId, itemInfo.cellX, itemInfo.cellY);
        if (appWidgetHostView == null) {
            appWidgetHostView = this.mAppWidgetHost.createView((Context) this, i, launcherAppWidgetProviderInfo);
        }
        appWidgetHostView.setVisibility(0);
        prepareAppWidget(appWidgetHostView, launcherAppWidgetInfo);
        this.mWorkspace.addInScreen(appWidgetHostView, launcherAppWidgetInfo);
        this.mDragLayer.announceForAccessibility(getString(R.string.item_added_to_workspace));
    }

    public final LauncherAppWidgetInfo completeRestoreAppWidget(final int i, int i2) {
        Workspace workspace = this.mWorkspace;
        View[] viewArr = new View[1];
        workspace.mapOverItems(new Workspace.AnonymousClass7(workspace, new Workspace.ItemOperator() { // from class: c.a.a.u0
            @Override // com.android.launcher3.Workspace.ItemOperator
            public final boolean evaluate(ItemInfo itemInfo, View view) {
                return Workspace.g(i, itemInfo, view);
            }
        }, viewArr));
        LauncherAppWidgetHostView launcherAppWidgetHostView = (LauncherAppWidgetHostView) viewArr[0];
        if (launcherAppWidgetHostView == null || !(launcherAppWidgetHostView instanceof PendingAppWidgetHostView)) {
            Log.e(OverscrollPlugin.DEVICE_STATE_LAUNCHER, "Widget update called, when the widget no longer exists.");
            return null;
        }
        LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) launcherAppWidgetHostView.getTag();
        launcherAppWidgetInfo.restoreStatus = i2;
        if (i2 == 0) {
            launcherAppWidgetInfo.pendingItemInfo = null;
        }
        PendingAppWidgetHostView pendingAppWidgetHostView = (PendingAppWidgetHostView) launcherAppWidgetHostView;
        if (pendingAppWidgetHostView.mStartState != pendingAppWidgetHostView.mInfo.restoreStatus) {
            launcherAppWidgetHostView.reInflate();
        }
        this.mModelWriter.updateItemInDatabase(launcherAppWidgetInfo);
        return launcherAppWidgetInfo;
    }

    public void completeTwoStageWidgetDrop(int i, final int i2, final PendingRequestArgs pendingRequestArgs) {
        int i3;
        int i4;
        Runnable runnable;
        AppWidgetHostView appWidgetHostView;
        CellLayout screenWithId = this.mWorkspace.getScreenWithId(pendingRequestArgs.screenId);
        if (i == -1) {
            final AppWidgetHostView createView = this.mAppWidgetHost.createView((Context) this, i2, LauncherAppWidgetProviderInfo.fromProviderInfo(this, (pendingRequestArgs.mObjectType == 2 ? (WidgetAddFlowHandler) pendingRequestArgs.mObject : null).mProviderInfo));
            i4 = 3;
            appWidgetHostView = createView;
            runnable = new Runnable() { // from class: com.android.launcher3.Launcher.5
                @Override // java.lang.Runnable
                public void run() {
                    Launcher.this.completeAddAppWidget(i2, pendingRequestArgs, createView, null);
                    Launcher.this.mStateManager.goToState(LauncherState.NORMAL, 500L);
                }
            };
        } else {
            if (i == 0) {
                this.mAppWidgetHost.deleteAppWidgetId(i2);
                i3 = 4;
            } else {
                i3 = 0;
            }
            i4 = i3;
            runnable = null;
            appWidgetHostView = null;
        }
        DragView dragView = this.mDragLayer.mDropView;
        if (dragView != null) {
            this.mWorkspace.animateWidgetDrop(pendingRequestArgs, screenWithId, dragView, runnable, i4, appWidgetHostView, true);
        } else if (runnable != null) {
            runnable.run();
        }
    }

    public OnboardingPrefs createOnboardingPrefs(SharedPreferences sharedPreferences) {
        return new OnboardingPrefs(this, sharedPreferences);
    }

    public View createShortcut(ViewGroup viewGroup, WorkspaceItemInfo workspaceItemInfo) {
        BubbleTextView bubbleTextView = (BubbleTextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.app_icon, viewGroup, false);
        bubbleTextView.applyFromWorkspaceItem(workspaceItemInfo);
        bubbleTextView.setOnClickListener(ItemClickHandler.INSTANCE);
        bubbleTextView.setOnFocusChangeListener(this.mFocusHandler);
        return bubbleTextView;
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public StateManager.StateHandler[] createStateHandlers() {
        return new StateManager.StateHandler[]{this.mAllAppsController, this.mWorkspace};
    }

    public TouchController[] createTouchControllers() {
        return new TouchController[]{this.mDragController, new AllAppsSwipeController(this)};
    }

    @Override // com.android.launcher3.BaseActivity
    public void dispatchDeviceProfileChanged() {
        super.dispatchDeviceProfileChanged();
        this.mOverlayManager.onDeviceProvideChanged();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        W.recordEvent("Main", "Key event", keyEvent);
        return keyEvent.getKeyCode() == 3 || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        boolean dispatchPopulateAccessibilityEvent = super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        List<CharSequence> text = accessibilityEvent.getText();
        text.clear();
        text.add(this.mWorkspace == null ? getString(R.string.all_apps_home_button_label) : ((LauncherState) this.mStateManager.mState).getDescription(this));
        return dispatchPopulateAccessibilityEvent;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000a, code lost:
    
        if (r0 != 3) goto L11;
     */
    @Override // android.app.Activity, android.view.Window.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r3) {
        /*
            r2 = this;
            int r0 = r3.getAction()
            r1 = 1
            if (r0 == 0) goto L17
            if (r0 == r1) goto Ld
            r1 = 3
            if (r0 == r1) goto L13
            goto L19
        Ld:
            long r0 = java.lang.System.currentTimeMillis()
            r2.mLastTouchUpTime = r0
        L13:
            r0 = 0
            r2.mTouchInProgress = r0
            goto L19
        L17:
            r2.mTouchInProgress = r1
        L19:
            java.lang.String r0 = "Main"
            java.lang.String r1 = "Touch event"
            b.l.W.recordMotionEvent(r0, r1, r3)
            boolean r2 = super.dispatchTouchEvent(r3)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.Launcher.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (strArr.length > 0 && TextUtils.equals(strArr[0], "--all")) {
            printWriter.println(str + "Workspace Items");
            for (int i = 0; i < this.mWorkspace.getPageCount(); i++) {
                printWriter.println(str + "  Homescreen " + i);
                ShortcutAndWidgetContainer shortcutAndWidgetContainer = ((CellLayout) this.mWorkspace.getPageAt(i)).mShortcutsAndWidgets;
                for (int i2 = 0; i2 < shortcutAndWidgetContainer.getChildCount(); i2++) {
                    Object tag = shortcutAndWidgetContainer.getChildAt(i2).getTag();
                    if (tag != null) {
                        StringBuilder g = a.g(str, "    ");
                        g.append(tag.toString());
                        printWriter.println(g.toString());
                    }
                }
            }
            printWriter.println(str + "  Hotseat");
            ShortcutAndWidgetContainer shortcutAndWidgetContainer2 = this.mHotseat.mShortcutsAndWidgets;
            for (int i3 = 0; i3 < shortcutAndWidgetContainer2.getChildCount(); i3++) {
                Object tag2 = shortcutAndWidgetContainer2.getChildAt(i3).getTag();
                if (tag2 != null) {
                    StringBuilder g2 = a.g(str, "    ");
                    g2.append(tag2.toString());
                    printWriter.println(g2.toString());
                }
            }
        }
        printWriter.println(str + "Misc:");
        dumpMisc(str + "\t", printWriter);
        printWriter.println(str + "\tmWorkspaceLoading=" + this.mWorkspaceLoading);
        printWriter.println(str + "\tmPendingRequestArgs=" + this.mPendingRequestArgs + " mPendingActivityResult=" + this.mPendingActivityResult);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("\tmRotationHelper: ");
        sb.append(this.mRotationHelper);
        printWriter.println(sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append("\tmAppWidgetHost.isListening: ");
        sb2.append((this.mAppWidgetHost.mFlags & 1) != 0);
        printWriter.println(sb2.toString());
        this.mDragLayer.dump(str, printWriter);
        StateManager stateManager = this.mStateManager;
        Objects.requireNonNull(stateManager);
        printWriter.println(str + "StateManager:");
        printWriter.println(str + "\tmLastStableState:" + stateManager.mLastStableState);
        printWriter.println(str + "\tmCurrentStableState:" + stateManager.mCurrentStableState);
        printWriter.println(str + "\tmState:" + stateManager.mState);
        printWriter.println(str + "\tmRestState:" + stateManager.mRestState);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(str);
        sb3.append("\tisInTransition:");
        sb3.append(stateManager.mConfig.currentAnimation != null);
        printWriter.println(sb3.toString());
        PopupDataProvider popupDataProvider = this.mPopupDataProvider;
        Objects.requireNonNull(popupDataProvider);
        printWriter.println(str + "PopupDataProvider:");
        printWriter.println(str + "\tmPackageUserToDotInfos:" + popupDataProvider.mPackageUserToDotInfos);
        try {
            FileLog.flushAll(printWriter);
        } catch (Exception unused) {
        }
        this.mModel.dumpState(str, fileDescriptor, printWriter, strArr);
        d dVar = this.mLauncherCallbacks;
        if (dVar != null) {
            Objects.requireNonNull(dVar);
            c.b.a.b.b.p.k kVar = (c.b.a.b.b.p.k) c.b.a.b.b.p.k.j.b(dVar.f2533a);
            Objects.requireNonNull(kVar);
            printWriter.println();
            printWriter.println(str + "SmartspaceController");
            printWriter.println(str + "  weather " + kVar.f.f2815a);
            printWriter.println(str + "  current " + kVar.f.f2816b);
        }
        this.mOverlayManager.dump(str, printWriter);
    }

    public void e() {
        this.mAppsView.mAllAppsStore.disableDeferUpdates(1);
    }

    public final int ensurePendingDropLayoutExists(int i) {
        if (((CellLayout) this.mWorkspace.mWorkspaceScreens.get(i)) != null) {
            return i;
        }
        this.mWorkspace.addExtraEmptyScreen();
        return this.mWorkspace.commitExtraEmptyScreen();
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void executeOnNextDraw(ViewOnDrawExecutor viewOnDrawExecutor) {
        clearPendingBinds();
        this.mPendingExecutor = viewOnDrawExecutor;
        if (!isInState(LauncherState.ALL_APPS)) {
            this.mAppsView.mAllAppsStore.mDeferUpdatesFlags |= 1;
            this.mPendingExecutor.execute(new Runnable() { // from class: c.a.a.H
                @Override // java.lang.Runnable
                public final void run() {
                    Launcher.this.e();
                }
            });
        }
        Objects.requireNonNull(viewOnDrawExecutor);
        viewOnDrawExecutor.attachTo(this.mWorkspace, true, new Consumer() { // from class: c.a.a.a1.y
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Launcher launcher = Launcher.this;
                if (launcher.mPendingExecutor == ((ViewOnDrawExecutor) obj)) {
                    launcher.mPendingExecutor = null;
                }
            }
        });
    }

    public /* synthetic */ void f() {
        getStateManager().goToState(LauncherState.NORMAL);
    }

    public void finishBindingItems(int i) {
        Trace.beginSection("finishBindingItems");
        Workspace workspace = this.mWorkspace;
        int childCount = workspace.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (!workspace.mRestoredPages.contains(i2)) {
                workspace.restoreInstanceStateForChild(i2);
            }
        }
        workspace.mRestoredPages.mSize = 0;
        workspace.mSavedStates = null;
        this.mWorkspaceLoading = false;
        ActivityResultInfo activityResultInfo = this.mPendingActivityResult;
        if (activityResultInfo != null) {
            handleActivityResult(activityResultInfo.requestCode, activityResultInfo.resultCode, activityResultInfo.data);
            this.mPendingActivityResult = null;
        }
        InstallShortcutReceiver.disableAndFlushInstallQueue(2, this);
        this.mWorkspace.setCurrentPage(i, i);
        this.mPageToBindSynchronously = -1;
        ViewCache viewCache = getViewCache();
        InvariantDeviceProfile invariantDeviceProfile = this.mDeviceProfile.inv;
        viewCache.setCacheSize(R.layout.folder_application, invariantDeviceProfile.numFolderColumns * invariantDeviceProfile.numFolderRows);
        getViewCache().setCacheSize(R.layout.folder_page, 2);
        Trace.endSection();
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void finishFirstPageBind(final ViewOnDrawExecutor viewOnDrawExecutor) {
        MultiValueAlpha.AlphaProperty alphaProperty = this.mDragLayer.getAlphaProperty(1);
        if (alphaProperty.mValue >= 1.0f) {
            if (viewOnDrawExecutor != null) {
                viewOnDrawExecutor.onLoadAnimationCompleted();
            }
        } else {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(alphaProperty, MultiValueAlpha.VALUE, 1.0f);
            if (viewOnDrawExecutor != null) {
                ofFloat.addListener(new AnimatorListenerAdapter(this) { // from class: com.android.launcher3.Launcher.9
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        viewOnDrawExecutor.onLoadAnimationCompleted();
                    }
                });
            }
            ofFloat.start();
        }
    }

    public void folderConvertedToItem(Folder folder, WorkspaceItemInfo workspaceItemInfo) {
    }

    public void folderCreatedFromItem(Folder folder, WorkspaceItemInfo workspaceItemInfo) {
    }

    public void g(final int i) {
        final Workspace workspace = this.mWorkspace;
        workspace.mapOverItems(new Workspace.ItemOperator() { // from class: c.a.a.v0
            @Override // com.android.launcher3.Workspace.ItemOperator
            public final boolean evaluate(ItemInfo itemInfo, View view) {
                return Workspace.this.j(i, itemInfo, view);
            }
        });
    }

    @Override // com.android.launcher3.views.ActivityContext
    public View.AccessibilityDelegate getAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    @TargetApi(23)
    public ActivityOptions getActivityLaunchOptions(View view) {
        return this.mAppTransitionManager.getActivityLaunchOptions(this, view);
    }

    public CellLayout getCellLayout(int i, int i2) {
        return i == -101 ? this.mHotseat : (CellLayout) this.mWorkspace.mWorkspaceScreens.get(i2);
    }

    public LauncherOverlayManager getDefaultOverlay() {
        return new LauncherOverlayManager(this) { // from class: com.android.launcher3.Launcher.2
        };
    }

    @Override // com.android.systemui.plugins.shared.LauncherExterns
    public SharedPreferences getDevicePrefs() {
        return Utilities.getDevicePrefs(this);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public DotInfo getDotInfoForItem(ItemInfo itemInfo) {
        return this.mPopupDataProvider.getDotInfoForItem(itemInfo);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public BaseDragLayer getDragLayer() {
        return this.mDragLayer;
    }

    public float[] getNormalOverviewScaleAndOffset() {
        return new float[]{1.0f, RecentsState.NO_OFFSET};
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public View getOverviewPanel() {
        return this.mOverviewPanel;
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public int getPageToBindSynchronously() {
        int i = this.mPageToBindSynchronously;
        if (i != -1) {
            return i;
        }
        Workspace workspace = this.mWorkspace;
        if (workspace != null) {
            return workspace.getCurrentPage();
        }
        return 0;
    }

    @Override // com.android.systemui.plugins.shared.LauncherExterns
    public SharedPreferences getSharedPrefs() {
        return this.mSharedPrefs;
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public StateManager getStateManager() {
        return this.mStateManager;
    }

    public Stream getSupportedShortcuts() {
        return Stream.of((Object[]) new SystemShortcut.Factory[]{SystemShortcut.APP_INFO, SystemShortcut.WIDGETS, SystemShortcut.INSTALL});
    }

    public /* synthetic */ void h() {
        getStateManager().goToState(LauncherState.NORMAL);
    }

    public final void handleActivityResult(int i, final int i2, Intent intent) {
        if (this.mWorkspaceLoading) {
            this.mPendingActivityResult = new ActivityResultInfo(i, i2, intent);
            return;
        }
        this.mPendingActivityResult = null;
        final PendingRequestArgs pendingRequestArgs = this.mPendingRequestArgs;
        this.mPendingRequestArgs = null;
        if (pendingRequestArgs == null) {
            return;
        }
        int i3 = pendingRequestArgs.mObjectType == 2 ? pendingRequestArgs.mArg1 : 0;
        Runnable runnable = new Runnable() { // from class: com.android.launcher3.Launcher.3
            @Override // java.lang.Runnable
            public void run() {
                Launcher.this.mStateManager.goToState(LauncherState.NORMAL, 500L);
            }
        };
        if (i == 11) {
            int intExtra = intent != null ? intent.getIntExtra("appWidgetId", -1) : -1;
            if (i2 == 0) {
                completeTwoStageWidgetDrop(0, intExtra, pendingRequestArgs);
                this.mWorkspace.removeExtraEmptyScreenDelayed(500, false, runnable);
                return;
            } else {
                if (i2 == -1) {
                    addAppWidgetImpl(intExtra, pendingRequestArgs, null, pendingRequestArgs.mObjectType == 2 ? (WidgetAddFlowHandler) pendingRequestArgs.mObject : null, 500);
                    return;
                }
                return;
            }
        }
        if (i == 9 || i == 5) {
            int intExtra2 = intent != null ? intent.getIntExtra("appWidgetId", -1) : -1;
            final int i4 = intExtra2 < 0 ? i3 : intExtra2;
            if (i4 < 0 || i2 == 0) {
                Log.e(OverscrollPlugin.DEVICE_STATE_LAUNCHER, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the widget configuration activity.");
                completeTwoStageWidgetDrop(0, i4, pendingRequestArgs);
                this.mWorkspace.removeExtraEmptyScreenDelayed(500, false, new Runnable() { // from class: c.a.a.G
                    @Override // java.lang.Runnable
                    public final void run() {
                        Launcher.this.f();
                    }
                });
                return;
            } else {
                if (pendingRequestArgs.container == -100) {
                    pendingRequestArgs.screenId = ensurePendingDropLayoutExists(pendingRequestArgs.screenId);
                }
                final CellLayout screenWithId = this.mWorkspace.getScreenWithId(pendingRequestArgs.screenId);
                screenWithId.mDropPending = true;
                this.mWorkspace.removeExtraEmptyScreenDelayed(500, false, new Runnable() { // from class: com.android.launcher3.Launcher.4
                    @Override // java.lang.Runnable
                    public void run() {
                        Launcher.this.completeTwoStageWidgetDrop(i2, i4, pendingRequestArgs);
                        screenWithId.mDropPending = false;
                    }
                });
                return;
            }
        }
        if (i == 13 || i == 12) {
            if (i2 == -1) {
                completeAdd(i, intent, i3, pendingRequestArgs);
                return;
            }
            return;
        }
        if (i == 1) {
            if (i2 == -1 && pendingRequestArgs.container != -1) {
                completeAdd(i, intent, -1, pendingRequestArgs);
                this.mWorkspace.removeExtraEmptyScreenDelayed(500, false, runnable);
            } else if (i2 == 0) {
                this.mWorkspace.removeExtraEmptyScreenDelayed(500, false, runnable);
            }
        }
        this.mDragLayer.clearAnimatedView();
    }

    public void hideKeyboard() {
        View peekDecorView = getWindow().peekDecorView();
        if (peekDecorView == null || peekDecorView.getWindowToken() == null) {
            return;
        }
        Message.obtain((Handler) UiThreadHelper.HANDLER.b(this), 1, peekDecorView.getWindowToken()).sendToTarget();
    }

    public /* synthetic */ LauncherOverlayManager i(OverlayPlugin overlayPlugin) {
        return overlayPlugin.createOverlayManager(this, this);
    }

    public final View inflateAppWidget(LauncherAppWidgetInfo launcherAppWidgetInfo) {
        AppWidgetHostView pendingAppWidgetHostView;
        if ((launcherAppWidgetInfo.options & 1) != 0) {
            ComponentName searchComponentName = QsbContainerView.getSearchComponentName(this);
            launcherAppWidgetInfo.providerName = searchComponentName;
            if (searchComponentName == null) {
                this.mModelWriter.deleteItemFromDatabase(launcherAppWidgetInfo);
                return null;
            }
        }
        if (this.mIsSafeModeEnabled) {
            PendingAppWidgetHostView pendingAppWidgetHostView2 = new PendingAppWidgetHostView(this, launcherAppWidgetInfo, this.mIconCache, true);
            prepareAppWidget(pendingAppWidgetHostView2, launcherAppWidgetInfo);
            return pendingAppWidgetHostView2;
        }
        StringBuilder f = a.f("BIND_WIDGET_id=");
        f.append(launcherAppWidgetInfo.appWidgetId);
        Trace.beginSection(f.toString());
        try {
            LauncherAppWidgetProviderInfo findProvider = launcherAppWidgetInfo.hasRestoreFlag(2) ? null : launcherAppWidgetInfo.hasRestoreFlag(1) ? this.mAppWidgetManager.findProvider(launcherAppWidgetInfo.providerName, launcherAppWidgetInfo.user) : this.mAppWidgetManager.getLauncherAppWidgetInfo(launcherAppWidgetInfo.appWidgetId);
            if (!launcherAppWidgetInfo.hasRestoreFlag(2) && launcherAppWidgetInfo.restoreStatus != 0) {
                if (findProvider == null) {
                    Log.d(OverscrollPlugin.DEVICE_STATE_LAUNCHER, "Removing restored widget: id=" + launcherAppWidgetInfo.appWidgetId + " belongs to component " + launcherAppWidgetInfo.providerName + ", as the provider is null");
                    this.mModelWriter.deleteItemFromDatabase(launcherAppWidgetInfo);
                    return null;
                }
                if (launcherAppWidgetInfo.hasRestoreFlag(1)) {
                    if (!launcherAppWidgetInfo.hasRestoreFlag(16)) {
                        launcherAppWidgetInfo.appWidgetId = this.mAppWidgetHost.allocateAppWidgetId();
                        launcherAppWidgetInfo.restoreStatus = 16 | launcherAppWidgetInfo.restoreStatus;
                        PendingAddWidgetInfo pendingAddWidgetInfo = new PendingAddWidgetInfo(findProvider);
                        pendingAddWidgetInfo.spanX = launcherAppWidgetInfo.spanX;
                        pendingAddWidgetInfo.spanY = launcherAppWidgetInfo.spanY;
                        pendingAddWidgetInfo.minSpanX = launcherAppWidgetInfo.minSpanX;
                        pendingAddWidgetInfo.minSpanY = launcherAppWidgetInfo.minSpanY;
                        Bundle defaultOptionsForWidget = WidgetHostViewLoader.getDefaultOptionsForWidget(this, pendingAddWidgetInfo);
                        boolean hasRestoreFlag = launcherAppWidgetInfo.hasRestoreFlag(32);
                        if (hasRestoreFlag && launcherAppWidgetInfo.bindOptions != null) {
                            Bundle extras = launcherAppWidgetInfo.bindOptions.getExtras();
                            extras.putAll(defaultOptionsForWidget);
                            defaultOptionsForWidget = extras;
                        }
                        boolean bindAppWidgetIdIfAllowed = this.mAppWidgetManager.bindAppWidgetIdIfAllowed(launcherAppWidgetInfo.appWidgetId, findProvider, defaultOptionsForWidget);
                        launcherAppWidgetInfo.bindOptions = null;
                        launcherAppWidgetInfo.restoreStatus &= -33;
                        if (bindAppWidgetIdIfAllowed) {
                            launcherAppWidgetInfo.restoreStatus = (((AppWidgetProviderInfo) findProvider).configure == null || hasRestoreFlag) ? 0 : 4;
                        }
                        this.mModelWriter.updateItemInDatabase(launcherAppWidgetInfo);
                    }
                } else if (launcherAppWidgetInfo.hasRestoreFlag(4) && ((AppWidgetProviderInfo) findProvider).configure == null) {
                    launcherAppWidgetInfo.restoreStatus = 0;
                    this.mModelWriter.updateItemInDatabase(launcherAppWidgetInfo);
                } else if (launcherAppWidgetInfo.hasRestoreFlag(4) && ((AppWidgetProviderInfo) findProvider).configure != null) {
                    if (this.mAppWidgetManager.mAppWidgetManager.getAppWidgetOptions(launcherAppWidgetInfo.appWidgetId).getBoolean("appWidgetRestoreCompleted")) {
                        launcherAppWidgetInfo.restoreStatus = 0;
                        this.mModelWriter.updateItemInDatabase(launcherAppWidgetInfo);
                    }
                }
            }
            if (launcherAppWidgetInfo.restoreStatus == 0) {
                if (findProvider == null) {
                    FileLog.e(OverscrollPlugin.DEVICE_STATE_LAUNCHER, "Removing invalid widget: id=" + launcherAppWidgetInfo.appWidgetId);
                    this.mModelWriter.deleteWidgetInfo(launcherAppWidgetInfo, this.mAppWidgetHost);
                    return null;
                }
                launcherAppWidgetInfo.minSpanX = findProvider.minSpanX;
                launcherAppWidgetInfo.minSpanY = findProvider.minSpanY;
                pendingAppWidgetHostView = this.mAppWidgetHost.createView((Context) this, launcherAppWidgetInfo.appWidgetId, findProvider);
            } else if (launcherAppWidgetInfo.hasRestoreFlag(1) || findProvider == null) {
                pendingAppWidgetHostView = new PendingAppWidgetHostView(this, launcherAppWidgetInfo, this.mIconCache, false);
            } else {
                this.mAppWidgetHost.mPendingViews.put(launcherAppWidgetInfo.appWidgetId, new PendingAppWidgetHostView(this, launcherAppWidgetInfo, this.mIconCache, false));
                pendingAppWidgetHostView = this.mAppWidgetHost.createView((Context) this, launcherAppWidgetInfo.appWidgetId, findProvider);
            }
            prepareAppWidget(pendingAppWidgetHostView, launcherAppWidgetInfo);
            return pendingAppWidgetHostView;
        } finally {
            Trace.endSection();
        }
    }

    public final void initDeviceProfile(InvariantDeviceProfile invariantDeviceProfile) {
        this.mDeviceProfile = invariantDeviceProfile.getDeviceProfile(this);
        if (isInMultiWindowMode()) {
            this.mDeviceProfile = this.mDeviceProfile.getMultiWindowProfile(this, getMultiWindowDisplaySize());
        }
        onDeviceProfileInitiated();
        LauncherModel launcherModel = this.mModel;
        this.mModelWriter = new ModelWriter(launcherModel.mApp.mContext, launcherModel, launcherModel.mBgDataModel, getDeviceProfile().isVerticalBarLayout(), true);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public void invalidateParent(ItemInfo itemInfo) {
        int i = itemInfo.container;
        if (i >= 0) {
            View homescreenIconByItemId = this.mWorkspace.getHomescreenIconByItemId(i);
            if ((homescreenIconByItemId instanceof FolderIcon) && (homescreenIconByItemId.getTag() instanceof FolderInfo)) {
                FolderGridOrganizer folderGridOrganizer = new FolderGridOrganizer(getDeviceProfile().inv);
                folderGridOrganizer.setFolderInfo((FolderInfo) homescreenIconByItemId.getTag());
                if (folderGridOrganizer.isItemInPreview(itemInfo.rank)) {
                    homescreenIconByItemId.invalidate();
                }
            }
        }
    }

    public boolean isHotseatLayout(View view) {
        Hotseat hotseat = this.mHotseat;
        return hotseat != null && view == hotseat;
    }

    public final void logStopAndResume(int i) {
        StatsLogManager.LauncherEvent launcherEvent;
        Workspace workspace = this.mWorkspace;
        int currentPage = workspace.mOverlayShown ? -1 : workspace.getCurrentPage();
        int i2 = ((LauncherState) this.mStateManager.mState).containerType;
        StatsLogManager.StatsLogger logger = getStatsLogManager().logger();
        if (i == 7) {
            logger.withSrcState(1).withDstState(StatsLogManager.containerTypeToAtomState(((LauncherState) this.mStateManager.mState).containerType));
            launcherEvent = StatsLogManager.LauncherEvent.LAUNCHER_ONRESUME;
        } else {
            logger.withSrcState(StatsLogManager.containerTypeToAtomState(((LauncherState) this.mStateManager.mState).containerType)).withDstState(1);
            launcherEvent = StatsLogManager.LauncherEvent.LAUNCHER_ONSTOP;
        }
        if (i2 != 1 || this.mWorkspace == null) {
            getUserEventDispatcher().logActionCommand(i, i2, -1);
        } else {
            getUserEventDispatcher().logActionCommand(i, i2, -1, currentPage);
            LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
            LauncherAtom$WorkspaceContainer.Builder newBuilder2 = LauncherAtom$WorkspaceContainer.newBuilder();
            newBuilder2.setPageIndex(currentPage);
            newBuilder.copyOnWrite();
            LauncherAtom$ContainerInfo.access$3600((LauncherAtom$ContainerInfo) newBuilder.instance, newBuilder2);
            logger.withContainerInfo((LauncherAtom$ContainerInfo) newBuilder.build());
        }
        logger.log(launcherEvent);
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.mPendingActivityRequestCode = -1;
        handleActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mOverlayManager.onAttachedToWindow();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (finishAutoCancelActionMode()) {
            return;
        }
        if (this.mDragController.isDragging()) {
            this.mDragController.cancelDrag();
            return;
        }
        AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView(this);
        if (topOpenView == null || !topOpenView.onBackPressed()) {
            ((LauncherState) this.mStateManager.mState).onBackPressed(this);
        }
    }

    @Override // com.android.launcher3.BaseDraggingActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        if ((configuration.diff(this.mOldConfig) & 1152) != 0) {
            onIdpChanged(this.mDeviceProfile.inv);
        }
        this.mOldConfig.setTo(configuration);
        super.onConfigurationChanged(configuration);
    }

    @Override // com.android.launcher3.BaseDraggingActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Trace.beginSection("Launcher.onCreate");
        super.onCreate(bundle);
        LauncherAppState launcherAppState = LauncherAppState.getInstance(this);
        this.mOldConfig = new Configuration(getResources().getConfiguration());
        this.mModel = launcherAppState.mModel;
        this.mRotationHelper = new RotationHelper(this);
        InvariantDeviceProfile invariantDeviceProfile = launcherAppState.mInvariantDeviceProfile;
        initDeviceProfile(invariantDeviceProfile);
        invariantDeviceProfile.mChangeListeners.add(this);
        this.mSharedPrefs = Utilities.getPrefs(this);
        this.mIconCache = launcherAppState.mIconCache;
        this.mAccessibilityDelegate = new LauncherAccessibilityDelegate(this);
        this.mDragController = new DragController(this);
        this.mAllAppsController = new AllAppsTransitionController(this);
        this.mStateManager = new StateManager(this, LauncherState.NORMAL);
        this.mOnboardingPrefs = createOnboardingPrefs(this.mSharedPrefs);
        this.mAppWidgetManager = new WidgetManagerHelper(this);
        LauncherAppWidgetHost launcherAppWidgetHost = new LauncherAppWidgetHost(this, new IntConsumer() { // from class: c.a.a.D
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                Launcher.this.g(i);
            }
        });
        this.mAppWidgetHost = launcherAppWidgetHost;
        launcherAppWidgetHost.startListening();
        inflateRootView(R.layout.launcher);
        setupViews();
        this.mPopupDataProvider = new PopupDataProvider(new Consumer() { // from class: c.a.a.J
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Launcher launcher = Launcher.this;
                final Predicate predicate = (Predicate) obj;
                final Workspace workspace = launcher.mWorkspace;
                Objects.requireNonNull(workspace);
                final PackageUserKey packageUserKey = new PackageUserKey(null, null);
                final Predicate predicate2 = new Predicate() { // from class: c.a.a.m0
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj2) {
                        return Workspace.l(PackageUserKey.this, predicate, (ItemInfo) obj2);
                    }
                };
                Workspace.ItemOperator itemOperator = new Workspace.ItemOperator() { // from class: c.a.a.o0
                    @Override // com.android.launcher3.Workspace.ItemOperator
                    public final boolean evaluate(ItemInfo itemInfo, View view) {
                        return Workspace.this.m(predicate2, itemInfo, view);
                    }
                };
                workspace.mapOverItems(itemOperator);
                Folder open = Folder.getOpen(workspace.mLauncher);
                if (open != null) {
                    open.mContent.iterateOverItems(itemOperator);
                }
                AllAppsStore allAppsStore = launcher.mAppsView.mAllAppsStore;
                allAppsStore.updateAllIcons(new c.a.a.D0.l(allAppsStore, predicate));
            }
        });
        LauncherAppTransitionManager launcherAppTransitionManager = (LauncherAppTransitionManager) W.getObject(LauncherAppTransitionManager.class, this, R.string.app_transition_manager_class);
        this.mAppTransitionManager = launcherAppTransitionManager;
        launcherAppTransitionManager.registerRemoteAnimations();
        ActivityTracker activityTracker = ACTIVITY_TRACKER;
        Objects.requireNonNull(activityTracker);
        activityTracker.mCurrentActivity = new WeakReference(this);
        boolean handleIntent = activityTracker.handleIntent(this, getIntent(), false);
        if (handleIntent && bundle != null) {
            bundle.remove("launcher.state");
        }
        if (bundle != null) {
            int i = bundle.getInt("launcher.state", LauncherState.NORMAL.ordinal);
            LauncherState[] launcherStateArr = LauncherState.sAllStates;
            LauncherState launcherState = ((LauncherState[]) Arrays.copyOf(launcherStateArr, launcherStateArr.length))[i];
            if (!launcherState.shouldDisableRestore()) {
                this.mStateManager.goToState(launcherState, false, 0L, null);
            }
            PendingRequestArgs pendingRequestArgs = (PendingRequestArgs) bundle.getParcelable("launcher.request_args");
            if (pendingRequestArgs != null) {
                this.mPendingRequestArgs = pendingRequestArgs;
            }
            this.mPendingActivityRequestCode = bundle.getInt("launcher.request_code");
            this.mPendingActivityResult = (ActivityResultInfo) bundle.getParcelable("launcher.activity_result");
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("launcher.widget_panel");
            if (sparseParcelableArray != null) {
                WidgetsFullSheet.show(this, false).restoreHierarchyState(sparseParcelableArray);
            }
        }
        this.mStateManager.reapplyState(false);
        this.mPageToBindSynchronously = bundle != null ? bundle.getInt("launcher.current_screen", -1) : -1;
        if (!this.mModel.addCallbacksAndLoad(this) && !handleIntent) {
            this.mDragLayer.getAlphaProperty(1).setValue(RecentsState.NO_OFFSET);
        }
        setDefaultKeyMode(3);
        setContentView(getRootView());
        getRootView().dispatchInsets();
        registerReceiver(this.mScreenOffReceiver, new IntentFilter("android.intent.action.SCREEN_OFF"));
        getSystemUiController().updateUiState(0, W.getAttrBoolean(this, R.attr.isWorkspaceDarkText));
        d dVar = this.mLauncherCallbacks;
        if (dVar != null) {
            dVar.f2534b = new K(dVar.f2533a);
        }
        this.mOverlayManager = getDefaultOverlay();
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(this)).mPluginManager.addPluginListener((PluginListener) this, OverlayPlugin.class, false);
        RotationHelper rotationHelper = this.mRotationHelper;
        if (!rotationHelper.mInitialized) {
            rotationHelper.mInitialized = true;
            rotationHelper.notifyChange();
            rotationHelper.mContentResolver.registerContentObserver(Settings.System.getUriFor("accelerometer_rotation"), false, rotationHelper.mSystemAutoRotateObserver);
            rotationHelper.updateAutoRotateSetting();
        }
        this.mStateManager.mListeners.add(new StateManager.StateListener() { // from class: com.android.launcher3.Launcher.1
            @Override // com.android.launcher3.statemanager.StateManager.StateListener
            public void onStateTransitionComplete(Object obj) {
                LauncherState launcherState2 = (LauncherState) obj;
                Launcher launcher = Launcher.this;
                float f = 1.0f - launcher.mCurrentAssistantVisibility;
                if (launcherState2 == LauncherState.NORMAL) {
                    launcher.mAppsView.getAlphaProperty(1).setValue(f);
                    return;
                }
                if (launcherState2 == LauncherState.OVERVIEW || launcherState2 == LauncherState.OVERVIEW_PEEK) {
                    Launcher.this.mAppsView.getAlphaProperty(1).setValue(f);
                    Launcher.this.mScrimView.getAlphaProperty(0).setValue(f);
                } else {
                    launcher.mAppsView.getAlphaProperty(1).setValue(1.0f);
                    Launcher.this.mScrimView.getAlphaProperty(0).setValue(1.0f);
                }
            }
        });
        Trace.endSection();
        this.mUserChangedCallbackCloseable = ((UserCache) UserCache.INSTANCE.b(this)).addUserChangeListener(new Runnable() { // from class: c.a.a.C
            @Override // java.lang.Runnable
            public final void run() {
                Launcher.this.h();
            }
        });
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public void onDeferredResumed() {
        logStopAndResume(7);
        getUserEventDispatcher().startSession();
        ((AppLaunchTracker) AppLaunchTracker.INSTANCE.b(this)).onReturnedToHome();
        InstallShortcutReceiver.disableAndFlushInstallQueue(1, this);
        LauncherModel launcherModel = this.mModel;
        Objects.requireNonNull(launcherModel);
        Executors.MODEL_EXECUTOR.mHandler.removeCallbacks(launcherModel.mShortcutPermissionCheckRunnable);
        LooperExecutor looperExecutor = Executors.MODEL_EXECUTOR;
        looperExecutor.mHandler.post(launcherModel.mShortcutPermissionCheckRunnable);
        final PopupDataProvider popupDataProvider = this.mPopupDataProvider;
        NotificationListener.sNotificationsChangedListener = popupDataProvider;
        NotificationListener instanceIfConnected = NotificationListener.getInstanceIfConnected();
        if (instanceIfConnected != null) {
            instanceIfConnected.onNotificationFullRefresh();
        } else {
            Executors.MODEL_EXECUTOR.submit(new Callable() { // from class: c.a.a.O0.j
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Future submit;
                    submit = Executors.MAIN_EXECUTOR.submit(new Runnable() { // from class: c.a.a.O0.h
                        @Override // java.lang.Runnable
                        public final void run() {
                            PopupDataProvider.this.onNotificationFullRefresh(Collections.emptyList());
                        }
                    });
                    return submit;
                }
            });
        }
        DiscoveryBounce.showForHomeIfNeeded(this, true);
    }

    @Override // com.android.launcher3.BaseDraggingActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ActivityTracker activityTracker = ACTIVITY_TRACKER;
        if (activityTracker.mCurrentActivity.get() == this) {
            activityTracker.mCurrentActivity.clear();
        }
        unregisterReceiver(this.mScreenOffReceiver);
        Workspace workspace = this.mWorkspace;
        workspace.mapOverItems(new Workspace.AnonymousClass6(workspace));
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(this)).mPluginManager.removePluginListener(this);
        this.mModel.removeCallbacks(this);
        RotationHelper rotationHelper = this.mRotationHelper;
        if (!rotationHelper.mDestroyed) {
            rotationHelper.mDestroyed = true;
            SharedPreferences sharedPreferences = rotationHelper.mSharedPrefs;
            if (sharedPreferences != null) {
                sharedPreferences.unregisterOnSharedPreferenceChangeListener(rotationHelper);
            }
            rotationHelper.mContentResolver.unregisterContentObserver(rotationHelper.mSystemAutoRotateObserver);
        }
        try {
            this.mAppWidgetHost.stopListening();
        } catch (NullPointerException e) {
            Log.w(OverscrollPlugin.DEVICE_STATE_LAUNCHER, "problem while stopping AppWidgetHost during Launcher destruction", e);
        }
        TextKeyListener.getInstance().release();
        clearPendingBinds();
        LauncherAppState.getIDP(this).mChangeListeners.remove(this);
        this.mOverlayManager.onActivityDestroyed(this);
        this.mAppTransitionManager.unregisterRemoteAnimations();
        this.mUserChangedCallbackCloseable.close();
        AllAppsTransitionController allAppsTransitionController = this.mAllAppsController;
        Objects.requireNonNull(allAppsTransitionController);
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(allAppsTransitionController.mLauncher)).mPluginManager.removePluginListener(allAppsTransitionController);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mOverlayManager.onDetachedFromWindow();
        closeContextMenu();
    }

    public void onDragLayerHierarchyChanged() {
    }

    @Override // android.app.Activity
    public void onEnterAnimationComplete() {
        super.onEnterAnimationComplete();
        RotationHelper rotationHelper = this.mRotationHelper;
        if (rotationHelper.mCurrentTransitionRequest != 0) {
            rotationHelper.mCurrentTransitionRequest = 0;
            rotationHelper.notifyChange();
        }
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    @TargetApi(23)
    public boolean onErrorStartingShortcut(Intent intent, ItemInfo itemInfo) {
        if (intent.getComponent() != null || !"android.intent.action.CALL".equals(intent.getAction()) || checkSelfPermission("android.permission.CALL_PHONE") == 0) {
            return false;
        }
        PendingRequestArgs pendingRequestArgs = new PendingRequestArgs(14, 1, intent);
        pendingRequestArgs.copyFrom(itemInfo);
        this.mPendingRequestArgs = pendingRequestArgs;
        requestPermissions(new String[]{"android.permission.CALL_PHONE"}, 14);
        return true;
    }

    @Override // com.android.launcher3.InvariantDeviceProfile.OnIDPChangeListener
    public void onIdpChanged(int i, InvariantDeviceProfile invariantDeviceProfile) {
        onIdpChanged(invariantDeviceProfile);
    }

    @Override // android.app.Activity
    public boolean onKeyShortcut(int i, KeyEvent keyEvent) {
        if (keyEvent.hasModifiers(QuickStepContract.SYSUI_STATE_TRACING_ENABLED)) {
            if (i != 29) {
                if (i != 43) {
                    if (i == 47) {
                        View currentFocus = getCurrentFocus();
                        if ((currentFocus instanceof BubbleTextView) && (currentFocus.getTag() instanceof ItemInfo) && this.mAccessibilityDelegate.performAction(currentFocus, (ItemInfo) currentFocus.getTag(), R.id.action_deep_shortcuts)) {
                            PopupContainerWithArrow.getOpen(this).requestFocus();
                            return true;
                        }
                    } else if (i == 51 && isInState(LauncherState.NORMAL)) {
                        OptionsPopupView.openWidgets(this);
                        return true;
                    }
                } else if (new CustomActionsPopup(this, getCurrentFocus()).show()) {
                    return true;
                }
            } else if (isInState(LauncherState.NORMAL)) {
                getStateManager().goToState(LauncherState.ALL_APPS);
                return true;
            }
        }
        return super.onKeyShortcut(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 82) {
            return super.onKeyUp(i, keyEvent);
        }
        if (!this.mDragController.isDragging() && !this.mWorkspace.mIsSwitchingState && isInState(LauncherState.NORMAL)) {
            closeOpenViews(true);
            if (Utilities.IS_RUNNING_IN_TEST_HARNESS) {
                Log.d("TaplTarget", "Opening options popup on key up");
            }
            OptionsPopupView.showDefaultOptions(this, -1.0f, -1.0f);
        }
        return true;
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        if (Utilities.IS_RUNNING_IN_TEST_HARNESS) {
            Log.d("TaplTarget", "Launcher.onNewIntent: " + intent);
        }
        Trace.beginSection("Launcher.onNewIntent");
        super.onNewIntent(intent);
        boolean z = hasWindowFocus() && (intent.getFlags() & 4194304) != 4194304;
        boolean z2 = z && isInState(LauncherState.NORMAL) && AbstractFloatingView.getTopOpenView(this) == null;
        boolean equals = "android.intent.action.MAIN".equals(intent.getAction());
        ActivityTracker activityTracker = ACTIVITY_TRACKER;
        Objects.requireNonNull(activityTracker);
        boolean handleIntent = activityTracker.handleIntent(this, intent, isStarted());
        if (equals) {
            if (!handleIntent) {
                closeOpenViews(isStarted());
                if (!isInState(LauncherState.NORMAL)) {
                    this.mStateManager.goToState(LauncherState.NORMAL);
                }
                if (!z) {
                    this.mAppsView.reset(isStarted());
                }
                if (z2 && !this.mWorkspace.isHandlingTouch()) {
                    final Workspace workspace = this.mWorkspace;
                    Objects.requireNonNull(workspace);
                    workspace.post(new Runnable() { // from class: c.a.a.B0
                        @Override // java.lang.Runnable
                        public final void run() {
                            Workspace.this.moveToDefaultScreen();
                        }
                    });
                }
            }
            UserEventDispatcher userEventDispatcher = getUserEventDispatcher();
            LauncherLogProto$Target newContainerTarget = LoggerUtils.newContainerTarget(((LauncherState) this.mStateManager.mState).containerType);
            newContainerTarget.pageIndex = this.mWorkspace.getCurrentPage();
            userEventDispatcher.logActionCommand(0, newContainerTarget, LoggerUtils.newContainerTarget(1));
            hideKeyboard();
            d dVar = this.mLauncherCallbacks;
            if (dVar != null && !handleIntent && dVar.f2534b.f2631c) {
                dVar.f2533a.getStateManager().goToState((BaseState) LauncherState.NORMAL, false);
            }
            this.mOverlayManager.hideOverlay(isStarted() && !isForceInvisible());
        } else if ("android.intent.action.ALL_APPS".equals(intent.getAction())) {
            getStateManager().goToState(LauncherState.ALL_APPS, z);
        }
        Trace.endSection();
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void onPageBoundSynchronously(int i) {
        this.mSynchronouslyBoundPage = i;
        this.mWorkspace.setCurrentPage(i);
        this.mPageToBindSynchronously = -1;
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public void onPause() {
        InstallShortcutReceiver.enableInstallQueue(1);
        super.onPause();
        this.mDragController.cancelDrag();
        this.mLastTouchUpTime = -1L;
        this.mDropTargetBar.animateToVisibility(false);
        if (this.mDeferOverlayCallbacks) {
            return;
        }
        this.mOverlayManager.onActivityPaused(this);
    }

    @Override // com.android.systemui.plugins.PluginListener
    public /* bridge */ /* synthetic */ void onPluginConnected(Plugin plugin, Context context) {
        onPluginConnected((OverlayPlugin) plugin);
    }

    @Override // com.android.systemui.plugins.PluginListener
    public /* bridge */ /* synthetic */ void onPluginDisconnected(Plugin plugin) {
        onPluginDisconnected();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onProvideKeyboardShortcuts(List list, Menu menu, int i) {
        List arrayList;
        ArrayList arrayList2 = new ArrayList();
        if (isInState(LauncherState.NORMAL)) {
            arrayList2.add(new KeyboardShortcutInfo(getString(R.string.all_apps_button_label), 29, QuickStepContract.SYSUI_STATE_TRACING_ENABLED));
            arrayList2.add(new KeyboardShortcutInfo(getString(R.string.widget_button_text), 51, QuickStepContract.SYSUI_STATE_TRACING_ENABLED));
        }
        View currentFocus = getCurrentFocus();
        if (currentFocus != null) {
            PopupContainerWithArrow open = PopupContainerWithArrow.getOpen(this);
            LauncherAccessibilityDelegate launcherAccessibilityDelegate = open != null ? open.mAccessibilityDelegate : this.mAccessibilityDelegate;
            if (currentFocus.getTag() instanceof ItemInfo) {
                AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain();
                launcherAccessibilityDelegate.addSupportedActions(currentFocus, obtain, true);
                arrayList = new ArrayList(obtain.getActionList());
                obtain.recycle();
            } else {
                arrayList = Collections.EMPTY_LIST;
            }
            if (!arrayList.isEmpty()) {
                arrayList2.add(new KeyboardShortcutInfo(getString(R.string.custom_actions), 43, QuickStepContract.SYSUI_STATE_TRACING_ENABLED));
            }
            if ((currentFocus.getTag() instanceof ItemInfo) && W.supportsShortcuts((ItemInfo) currentFocus.getTag())) {
                arrayList2.add(new KeyboardShortcutInfo(getString(R.string.shortcuts_menu_with_notifications_description), 47, QuickStepContract.SYSUI_STATE_TRACING_ENABLED));
            }
        }
        if (!arrayList2.isEmpty()) {
            list.add(new KeyboardShortcutGroup(getString(R.string.home_screen), arrayList2));
        }
        super.onProvideKeyboardShortcuts(list, menu, i);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        PendingRequestArgs pendingRequestArgs = this.mPendingRequestArgs;
        if (i != 14 || pendingRequestArgs == null) {
            return;
        }
        if ((pendingRequestArgs.mObjectType == 1 ? pendingRequestArgs.mArg1 : 0) == 14) {
            this.mPendingRequestArgs = null;
            CellLayout cellLayout = getCellLayout(pendingRequestArgs.container, pendingRequestArgs.screenId);
            View childAt = cellLayout != null ? cellLayout.getChildAt(pendingRequestArgs.cellX, pendingRequestArgs.cellY) : null;
            Intent pendingIntent = pendingRequestArgs.getPendingIntent();
            if (iArr.length <= 0 || iArr[0] != 0) {
                Toast.makeText(this, getString(R.string.msg_no_phone_permission, new Object[]{getString(R.string.derived_app_name)}), 0).show();
            } else {
                k(childAt, pendingIntent, null, null);
            }
        }
    }

    @Override // android.app.Activity
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.mWorkspace.restoreInstanceStateForChild(this.mSynchronouslyBoundPage);
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity, com.android.launcher3.BaseActivity, android.app.Activity
    public void onResume() {
        Trace.beginSection("Launcher.onResume");
        super.onResume();
        if (!this.mOnResumeCallbacks.isEmpty()) {
            ArrayList arrayList = new ArrayList(this.mOnResumeCallbacks);
            this.mOnResumeCallbacks.clear();
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                } else {
                    ((OnResumeCallback) arrayList.get(size)).onLauncherResume();
                }
            }
            arrayList.clear();
        }
        if (this.mDeferOverlayCallbacks) {
            this.mHandler.removeCallbacks(this.mDeferredOverlayCallbacks);
            Utilities.postAsyncCallback(this.mHandler, this.mDeferredOverlayCallbacks);
        } else {
            this.mOverlayManager.onActivityResumed(this);
        }
        Trace.endSection();
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        if (this.mWorkspace.getChildCount() > 0) {
            bundle.putInt("launcher.current_screen", this.mWorkspace.getNextPage());
        }
        bundle.putInt("launcher.state", ((LauncherState) this.mStateManager.mState).ordinal);
        AbstractFloatingView openView = AbstractFloatingView.getOpenView(this, 16);
        if (openView != null) {
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            openView.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("launcher.widget_panel", sparseArray);
        } else {
            bundle.remove("launcher.widget_panel");
        }
        AbstractFloatingView.closeOpenViews(this, false, 3467);
        finishAutoCancelActionMode();
        PendingRequestArgs pendingRequestArgs = this.mPendingRequestArgs;
        if (pendingRequestArgs != null) {
            bundle.putParcelable("launcher.request_args", pendingRequestArgs);
        }
        bundle.putInt("launcher.request_code", this.mPendingActivityRequestCode);
        ActivityResultInfo activityResultInfo = this.mPendingActivityResult;
        if (activityResultInfo != null) {
            bundle.putParcelable("launcher.activity_result", activityResultInfo);
        }
        super.onSaveInstanceState(bundle);
        this.mOverlayManager.onActivitySaveInstanceState(this, bundle);
    }

    @Override // com.android.launcher3.BaseDraggingActivity, com.android.launcher3.BaseActivity, android.app.Activity
    public void onStart() {
        Trace.beginSection("Launcher.onStart");
        super.onStart();
        if (!this.mDeferOverlayCallbacks) {
            this.mOverlayManager.onActivityStarted(this);
        }
        this.mAppWidgetHost.setListenIfResumed(true);
        Trace.endSection();
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public void onStateSetStart(BaseState baseState) {
        LauncherState launcherState = (LauncherState) baseState;
        super.onStateSetStart(launcherState);
        if (this.mDeferOverlayCallbacks) {
            this.mHandler.removeCallbacks(this.mDeferredOverlayCallbacks);
            Utilities.postAsyncCallback(this.mHandler, this.mDeferredOverlayCallbacks);
        }
        addActivityFlags(64);
        if (launcherState.hasFlag(LauncherState.FLAG_CLOSE_POPUPS)) {
            AbstractFloatingView.closeAllOpenViews(this, !launcherState.hasFlag(1));
        }
        if (launcherState == LauncherState.SPRING_LOADED) {
            InstallShortcutReceiver.enableInstallQueue(4);
            RotationHelper rotationHelper = this.mRotationHelper;
            if (rotationHelper.mCurrentStateRequest != 2) {
                rotationHelper.mCurrentStateRequest = 2;
                rotationHelper.notifyChange();
            }
            this.mWorkspace.showPageIndicatorAtCurrentScroll();
            this.mWorkspace.setClipChildren(false);
        }
        WorkspacePageIndicator workspacePageIndicator = (WorkspacePageIndicator) this.mWorkspace.getPageIndicator();
        boolean z = !launcherState.hasFlag(LauncherState.FLAG_MULTI_PAGE);
        workspacePageIndicator.mShouldAutoHide = z;
        if (z && workspacePageIndicator.mLinePaint.getAlpha() > 0) {
            workspacePageIndicator.mDelayedLineFadeHandler.removeCallbacksAndMessages(null);
            workspacePageIndicator.mDelayedLineFadeHandler.postDelayed(workspacePageIndicator.mHideLineRunnable, WorkspacePageIndicator.LINE_FADE_DELAY);
        } else {
            if (z) {
                return;
            }
            workspacePageIndicator.mDelayedLineFadeHandler.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity, com.android.launcher3.BaseActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        if (this.mDeferOverlayCallbacks) {
            checkIfOverlayStillDeferred();
        } else {
            this.mOverlayManager.onActivityStopped(this);
        }
        logStopAndResume(5);
        this.mAppWidgetHost.setListenIfResumed(false);
        NotificationListener.sNotificationsChangedListener = null;
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        if (i >= 20) {
            SQLiteDatabase.releaseMemory();
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void preAddApps() {
        this.mModelWriter.commitDelete();
        final AbstractFloatingView openView = AbstractFloatingView.getOpenView(this, 128);
        if (openView != null) {
            openView.post(new Runnable() { // from class: c.a.a.E
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractFloatingView.this.close(true);
                }
            });
        }
    }

    public final void prepareAppWidget(AppWidgetHostView appWidgetHostView, LauncherAppWidgetInfo launcherAppWidgetInfo) {
        appWidgetHostView.setTag(launcherAppWidgetInfo);
        if (!launcherAppWidgetInfo.mHasNotifiedInitialWidgetSizeChanged) {
            AppWidgetResizeFrame.updateWidgetSizeRanges(appWidgetHostView, this, launcherAppWidgetInfo.spanX, launcherAppWidgetInfo.spanY);
            launcherAppWidgetInfo.mHasNotifiedInitialWidgetSizeChanged = true;
        }
        appWidgetHostView.setFocusable(true);
        appWidgetHostView.setOnFocusChangeListener(this.mFocusHandler);
    }

    public boolean removeItem(View view, ItemInfo itemInfo, boolean z) {
        if (itemInfo instanceof WorkspaceItemInfo) {
            View homescreenIconByItemId = this.mWorkspace.getHomescreenIconByItemId(itemInfo.container);
            if (homescreenIconByItemId instanceof FolderIcon) {
                ((FolderInfo) homescreenIconByItemId.getTag()).remove((WorkspaceItemInfo) itemInfo, true);
            } else {
                this.mWorkspace.removeWorkspaceItem(view);
            }
            if (z) {
                this.mModelWriter.deleteItemFromDatabase(itemInfo);
            }
        } else if (itemInfo instanceof FolderInfo) {
            final FolderInfo folderInfo = (FolderInfo) itemInfo;
            if (view instanceof FolderIcon) {
                FolderIcon folderIcon = (FolderIcon) view;
                folderIcon.mInfo.mListeners.remove(folderIcon);
                FolderInfo folderInfo2 = folderIcon.mInfo;
                folderInfo2.mListeners.remove(folderIcon.mFolder);
            }
            this.mWorkspace.removeWorkspaceItem(view);
            if (z) {
                final ModelWriter modelWriter = this.mModelWriter;
                Objects.requireNonNull(modelWriter);
                final ModelWriter.ModelVerifier modelVerifier = modelWriter.new ModelVerifier();
                modelWriter.enqueueDeleteRunnable(new Runnable() { // from class: c.a.a.N0.N
                    @Override // java.lang.Runnable
                    public final void run() {
                        ModelWriter modelWriter2 = ModelWriter.this;
                        FolderInfo folderInfo3 = folderInfo;
                        ModelWriter.ModelVerifier modelVerifier2 = modelVerifier;
                        ContentResolver contentResolver = modelWriter2.mContext.getContentResolver();
                        Uri uri = LauncherSettings$Favorites.CONTENT_URI;
                        StringBuilder f = c.a.c.a.a.f("container=");
                        f.append(folderInfo3.id);
                        contentResolver.delete(uri, f.toString(), null);
                        modelWriter2.mBgDataModel.removeItem(modelWriter2.mContext, folderInfo3.contents);
                        folderInfo3.contents.clear();
                        contentResolver.delete(LauncherSettings$Favorites.getContentUri(folderInfo3.id), null, null);
                        BgDataModel bgDataModel = modelWriter2.mBgDataModel;
                        Context context = modelWriter2.mContext;
                        ItemInfo[] itemInfoArr = {folderInfo3};
                        synchronized (bgDataModel) {
                            bgDataModel.removeItem(context, Arrays.asList(itemInfoArr));
                        }
                        modelVerifier2.verifyModel();
                    }
                });
            }
        } else {
            if (!(itemInfo instanceof LauncherAppWidgetInfo)) {
                return false;
            }
            LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) itemInfo;
            this.mWorkspace.removeWorkspaceItem(view);
            if (z) {
                this.mModelWriter.deleteWidgetInfo(launcherAppWidgetInfo, this.mAppWidgetHost);
            }
        }
        return true;
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public void returnToHomescreen() {
        super.returnToHomescreen();
        getStateManager().goToState(LauncherState.NORMAL);
    }

    @Override // com.android.systemui.plugins.shared.LauncherExterns
    public void runOnOverlayHidden(final Runnable runnable) {
        final ViewTreeObserver viewTreeObserver;
        final Workspace workspace = this.mWorkspace;
        final Runnable runnable2 = workspace.mOnOverlayHiddenCallback;
        if (runnable2 == null) {
            workspace.mOnOverlayHiddenCallback = runnable;
        } else {
            workspace.mOnOverlayHiddenCallback = new Runnable() { // from class: c.a.a.t0
                @Override // java.lang.Runnable
                public final void run() {
                    Workspace.k(runnable2, runnable);
                }
            };
        }
        if (workspace.tryRunOverlayCallback() || (viewTreeObserver = workspace.getViewTreeObserver()) == null || !viewTreeObserver.isAlive()) {
            return;
        }
        viewTreeObserver.addOnWindowFocusChangeListener(
        /*  JADX ERROR: Method code generation error
            jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0027: INVOKE 
              (r3v2 'viewTreeObserver' android.view.ViewTreeObserver)
              (wrap:android.view.ViewTreeObserver$OnWindowFocusChangeListener:0x0024: CONSTRUCTOR 
              (r2v1 'workspace' com.android.launcher3.Workspace A[DONT_INLINE])
              (r3v2 'viewTreeObserver' android.view.ViewTreeObserver A[DONT_INLINE])
             A[MD:(com.android.launcher3.Workspace, android.view.ViewTreeObserver):void (m), WRAPPED] (LINE:8) call: com.android.launcher3.Workspace.1.<init>(com.android.launcher3.Workspace, android.view.ViewTreeObserver):void type: CONSTRUCTOR)
             VIRTUAL call: android.view.ViewTreeObserver.addOnWindowFocusChangeListener(android.view.ViewTreeObserver$OnWindowFocusChangeListener):void A[MD:(android.view.ViewTreeObserver$OnWindowFocusChangeListener):void (c)] (LINE:8) in method: com.android.launcher3.Launcher.runOnOverlayHidden(java.lang.Runnable):void, file: classes.dex
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
            	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
            	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
            Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: com.android.launcher3.Workspace, state: NOT_LOADED
            	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:305)
            	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:807)
            	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
            	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
            	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:1143)
            	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:910)
            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:422)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
            	... 19 more
            */
        /*
            this = this;
            com.android.launcher3.Workspace r2 = r2.mWorkspace
            java.lang.Runnable r0 = r2.mOnOverlayHiddenCallback
            if (r0 != 0) goto L9
            r2.mOnOverlayHiddenCallback = r3
            goto L10
        L9:
            c.a.a.t0 r1 = new c.a.a.t0
            r1.<init>()
            r2.mOnOverlayHiddenCallback = r1
        L10:
            boolean r3 = r2.tryRunOverlayCallback()
            if (r3 != 0) goto L2a
            android.view.ViewTreeObserver r3 = r2.getViewTreeObserver()
            if (r3 == 0) goto L2a
            boolean r0 = r3.isAlive()
            if (r0 == 0) goto L2a
            com.android.launcher3.Workspace$1 r0 = new com.android.launcher3.Workspace$1
            r0.<init>()
            r3.addOnWindowFocusChangeListener(r0)
        L2a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.Launcher.runOnOverlayHidden(java.lang.Runnable):void");
    }

    public boolean setLauncherCallbacks(d dVar) {
        this.mLauncherCallbacks = dVar;
        return true;
    }

    @Override // com.android.systemui.plugins.shared.LauncherExterns
    public void setLauncherOverlay(LauncherOverlayManager.LauncherOverlay launcherOverlay) {
        if (launcherOverlay != null) {
            launcherOverlay.setOverlayCallbacks(new LauncherOverlayCallbacksImpl());
        }
        Workspace workspace = this.mWorkspace;
        workspace.mLauncherOverlay = launcherOverlay;
        workspace.mStartedSendingScrollEvents = false;
        workspace.onOverlayScrollChanged(RecentsState.NO_OFFSET);
    }

    public void setupViews() {
        DragLayer dragLayer = (DragLayer) findViewById(R.id.drag_layer);
        this.mDragLayer = dragLayer;
        this.mFocusHandler = dragLayer.mFocusIndicatorHelper;
        Workspace workspace = (Workspace) dragLayer.findViewById(R.id.workspace);
        this.mWorkspace = workspace;
        workspace.initParentViews(this.mDragLayer);
        this.mOverviewPanel = findViewById(R.id.overview_panel);
        Hotseat hotseat = (Hotseat) findViewById(R.id.hotseat);
        this.mHotseat = hotseat;
        Workspace workspace2 = this.mWorkspace;
        hotseat.mWorkspace = workspace2;
        DragLayer dragLayer2 = this.mDragLayer;
        dragLayer2.mDragController = this.mDragController;
        dragLayer2.mWorkspaceScrim.mWorkspace = workspace2;
        dragLayer2.mMoveTarget = workspace2;
        dragLayer2.recreateControllers();
        Workspace workspace3 = this.mWorkspace;
        DragController dragController = this.mDragController;
        workspace3.mSpringLoadedDragController = new SpringLoadedDragController(workspace3.mLauncher);
        workspace3.mDragController = dragController;
        workspace3.updateChildrenLayersEnabled();
        Workspace workspace4 = this.mWorkspace;
        workspace4.mWallpaperOffset.mLockedToDefaultPage = true;
        workspace4.bindAndInitFirstWorkspaceScreen(null);
        this.mDragController.mListeners.add(this.mWorkspace);
        this.mDropTargetBar = (DropTargetBar) this.mDragLayer.findViewById(R.id.drop_target_bar);
        this.mAppsView = (AllAppsContainerView) findViewById(R.id.apps_view);
        this.mScrimView = (ScrimView) findViewById(R.id.scrim_view);
        DropTargetBar dropTargetBar = this.mDropTargetBar;
        DragController dragController2 = this.mDragController;
        Objects.requireNonNull(dropTargetBar);
        dragController2.mListeners.add(dropTargetBar);
        int i = 0;
        while (true) {
            ButtonDropTarget[] buttonDropTargetArr = dropTargetBar.mDropTargets;
            if (i >= buttonDropTargetArr.length) {
                AllAppsTransitionController allAppsTransitionController = this.mAllAppsController;
                AllAppsContainerView allAppsContainerView = this.mAppsView;
                ScrimView scrimView = this.mScrimView;
                allAppsTransitionController.mAppsView = allAppsContainerView;
                allAppsTransitionController.mScrimView = scrimView;
                ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(allAppsTransitionController.mLauncher)).mPluginManager.addPluginListener((PluginListener) allAppsTransitionController, AllAppsSearchPlugin.class, false);
                return;
            }
            dragController2.mListeners.add(buttonDropTargetArr[i]);
            dragController2.mDropTargets.add(dropTargetBar.mDropTargets[i]);
            i++;
        }
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        if (i != -1) {
            this.mPendingActivityRequestCode = i;
        }
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    /* renamed from: startActivitySafely, reason: merged with bridge method [inline-methods] */
    public boolean k(final View view, final Intent intent, final ItemInfo itemInfo, final String str) {
        if (!hasBeenResumed()) {
            this.mOnResumeCallbacks.add(new OnResumeCallback() { // from class: c.a.a.K
                @Override // com.android.launcher3.Launcher.OnResumeCallback
                public final void onLauncherResume() {
                    Launcher.this.k(view, intent, itemInfo, str);
                }
            });
            Runnable runnable = this.mOnDeferredActivityLaunchCallback;
            if (runnable != null) {
                runnable.run();
                this.mOnDeferredActivityLaunchCallback = null;
            }
            return true;
        }
        boolean k = super.k(view, intent, itemInfo, str);
        if (k && (view instanceof BubbleTextView)) {
            BubbleTextView bubbleTextView = (BubbleTextView) view;
            bubbleTextView.mStayPressed = true;
            bubbleTextView.refreshDrawableState();
            this.mOnResumeCallbacks.add(bubbleTextView);
        }
        return k;
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void startBinding() {
        Trace.beginSection("startBinding");
        AbstractFloatingView.closeOpenViews(this, true, 3467);
        this.mWorkspaceLoading = true;
        this.mDragController.cancelDrag();
        final Workspace workspace = this.mWorkspace;
        workspace.mapOverItems(
        /*  JADX ERROR: Method code generation error
            jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0019: INVOKE 
              (r0v3 'workspace' com.android.launcher3.Workspace)
              (wrap:com.android.launcher3.Workspace$ItemOperator:0x0016: CONSTRUCTOR (r0v3 'workspace' com.android.launcher3.Workspace A[DONT_INLINE]) A[MD:(com.android.launcher3.Workspace):void (m), WRAPPED] (LINE:6) call: com.android.launcher3.Workspace.8.<init>(com.android.launcher3.Workspace):void type: CONSTRUCTOR)
             VIRTUAL call: com.android.launcher3.Workspace.mapOverItems(com.android.launcher3.Workspace$ItemOperator):void A[MD:(com.android.launcher3.Workspace$ItemOperator):void (m)] (LINE:6) in method: com.android.launcher3.Launcher.startBinding():void, file: classes.dex
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
            	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
            	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
            Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: com.android.launcher3.Workspace, state: PROCESS_STARTED
            	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:305)
            	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:807)
            	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
            	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
            	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:1143)
            	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:910)
            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:422)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
            	... 15 more
            */
        /*
            this = this;
            java.lang.String r0 = "startBinding"
            android.os.Trace.beginSection(r0)
            r0 = 1
            r1 = 3467(0xd8b, float:4.858E-42)
            com.android.launcher3.AbstractFloatingView.closeOpenViews(r4, r0, r1)
            r4.mWorkspaceLoading = r0
            com.android.launcher3.dragndrop.DragController r0 = r4.mDragController
            r0.cancelDrag()
            com.android.launcher3.Workspace r0 = r4.mWorkspace
            com.android.launcher3.Workspace$8 r1 = new com.android.launcher3.Workspace$8
            r1.<init>()
            r0.mapOverItems(r1)
            com.android.launcher3.Workspace r0 = r4.mWorkspace
            r1 = 0
            r0.setLayoutTransition(r1)
            r1 = 2131296517(0x7f090105, float:1.8210953E38)
            android.view.View r1 = r0.findViewById(r1)
            if (r1 == 0) goto L34
            android.view.ViewParent r2 = r1.getParent()
            android.view.ViewGroup r2 = (android.view.ViewGroup) r2
            r2.removeView(r1)
        L34:
            com.android.launcher3.Workspace$6 r2 = new com.android.launcher3.Workspace$6
            r2.<init>(r0)
            r0.mapOverItems(r2)
            r0.removeAllViews()
            com.android.launcher3.util.IntArray r2 = r0.mScreenOrder
            r3 = 0
            r2.mSize = r3
            com.android.launcher3.util.IntSparseArrayMap r2 = r0.mWorkspaceScreens
            r2.clear()
            com.android.launcher3.Launcher r2 = r0.mLauncher
            android.os.Handler r2 = r2.mHandler
            java.lang.Class<com.android.launcher3.Workspace$DeferredWidgetRefresh> r3 = com.android.launcher3.Workspace.DeferredWidgetRefresh.class
            r2.removeCallbacksAndMessages(r3)
            r0.bindAndInitFirstWorkspaceScreen(r1)
            android.animation.LayoutTransition r1 = r0.mLayoutTransition
            r0.setLayoutTransition(r1)
            com.android.launcher3.LauncherAppWidgetHost r0 = r4.mAppWidgetHost
            r0.clearViews()
            com.android.launcher3.Hotseat r0 = r4.mHotseat
            if (r0 == 0) goto L6e
            com.android.launcher3.DeviceProfile r4 = r4.getDeviceProfile()
            boolean r4 = r4.isVerticalBarLayout()
            r0.resetLayout(r4)
        L6e:
            android.os.Trace.endSection()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.Launcher.startBinding():void");
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        if (i != -1) {
            this.mPendingActivityRequestCode = i;
        }
        try {
            super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        } catch (IntentSender.SendIntentException unused) {
            throw new ActivityNotFoundException();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0027, code lost:
    
        if (r2 == false) goto L10;
     */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startSearch(java.lang.String r4, boolean r5, android.os.Bundle r6, boolean r7) {
        /*
            r3 = this;
            if (r6 != 0) goto Le
            android.os.Bundle r6 = new android.os.Bundle
            r6.<init>()
            java.lang.String r7 = "source"
            java.lang.String r0 = "launcher-search"
            r6.putString(r7, r0)
        Le:
            c.b.a.b.b.d r7 = r3.mLauncherCallbacks
            r0 = 1
            if (r7 == 0) goto L29
            com.android.launcher3.Launcher r7 = r7.f2533a
            r1 = 2131296516(0x7f090104, float:1.821095E38)
            android.view.View r7 = r7.findViewById(r1)
            boolean r1 = r7 instanceof c.b.a.b.b.l.A
            r2 = 0
            if (r1 == 0) goto L27
            c.b.a.b.b.l.A r7 = (c.b.a.b.b.l.A) r7
            r7.q(r4, r2)
            r2 = r0
        L27:
            if (r2 != 0) goto L2c
        L29:
            super.startSearch(r4, r5, r6, r0)
        L2c:
            com.android.launcher3.statemanager.StateManager r3 = r3.mStateManager
            com.android.launcher3.LauncherState r4 = com.android.launcher3.LauncherState.NORMAL
            r3.goToState(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.Launcher.startSearch(java.lang.String, boolean, android.os.Bundle, boolean):void");
    }

    public final void switchOverlay(Supplier supplier) {
        LauncherOverlayManager launcherOverlayManager = this.mOverlayManager;
        if (launcherOverlayManager != null) {
            launcherOverlayManager.onActivityDestroyed(this);
        }
        this.mOverlayManager = (LauncherOverlayManager) supplier.get();
        if (getRootView().isAttachedToWindow()) {
            this.mOverlayManager.onAttachedToWindow();
        }
        this.mDeferOverlayCallbacks = true;
        checkIfOverlayStillDeferred();
    }

    public void useFadeOutAnimationForLauncherStart(CancellationSignal cancellationSignal) {
    }

    public final void onIdpChanged(InvariantDeviceProfile invariantDeviceProfile) {
        this.mUserEventDispatcher = null;
        initDeviceProfile(invariantDeviceProfile);
        dispatchDeviceProfileChanged();
        reapplyUi();
        this.mDragLayer.recreateControllers();
        onSaveInstanceState(new Bundle());
        LauncherModel launcherModel = this.mModel;
        if (launcherModel.hasCallbacks()) {
            launcherModel.startLoader();
        }
    }

    public void onPluginConnected(final OverlayPlugin overlayPlugin) {
        switchOverlay(new Supplier() { // from class: c.a.a.F
            @Override // java.util.function.Supplier
            public final Object get() {
                return Launcher.this.i(overlayPlugin);
            }
        });
    }

    public void onPluginDisconnected() {
        switchOverlay(new Supplier() { // from class: c.a.a.y0
            @Override // java.util.function.Supplier
            public final Object get() {
                return Launcher.this.getDefaultOverlay();
            }
        });
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public void onStateSetEnd(LauncherState launcherState) {
        super.onStateSetStart(launcherState);
        LauncherAppWidgetHost launcherAppWidgetHost = this.mAppWidgetHost;
        boolean z = launcherState == LauncherState.NORMAL;
        if (z != ((launcherAppWidgetHost.mFlags & 2) != 0)) {
            if (z) {
                int i = launcherAppWidgetHost.mFlags | 2;
                launcherAppWidgetHost.mFlags = i;
                if ((i & 4) != 0 && (i & 1) == 0) {
                    launcherAppWidgetHost.startListening();
                }
            } else {
                launcherAppWidgetHost.mFlags &= -3;
            }
        }
        this.mWorkspace.setClipChildren(!launcherState.hasFlag(LauncherState.FLAG_MULTI_PAGE));
        finishAutoCancelActionMode();
        removeActivityFlags(64);
        getWindow().getDecorView().sendAccessibilityEvent(32);
        W.sendStateEventToTest(this, launcherState.ordinal);
        if (launcherState == LauncherState.NORMAL) {
            InstallShortcutReceiver.disableAndFlushInstallQueue(4, this);
            RotationHelper rotationHelper = this.mRotationHelper;
            if (rotationHelper.mCurrentStateRequest != 0) {
                rotationHelper.mCurrentStateRequest = 0;
                rotationHelper.notifyChange();
            }
        }
    }
}
