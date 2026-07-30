package com.android.launcher3.secondarydisplay;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.ActivityOptions;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.inputmethod.InputMethodManager;
import b.l.W;
import c.a.a.D0.k;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.allapps.AllAppsContainerView;
import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.model.AppLaunchTracker;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.PromiseAppInfo;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.secondarydisplay.SecondaryDisplayLauncher;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.util.ViewOnDrawExecutor;
import com.android.launcher3.views.BaseDragLayer;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class SecondaryDisplayLauncher extends BaseDraggingActivity implements BgDataModel.Callbacks {
    public boolean mAppDrawerShown = false;
    public View mAppsButton;
    public AllAppsContainerView mAppsView;
    public BaseDragLayer mDragLayer;
    public LauncherModel mModel;
    public PopupDataProvider mPopupDataProvider;

    public static void b(SecondaryDisplayLauncher secondaryDisplayLauncher, View view) {
        Objects.requireNonNull(secondaryDisplayLauncher);
        if (view.getWindowToken() == null) {
            return;
        }
        Object tag = view.getTag();
        if (tag instanceof ItemInfo) {
            ItemInfo itemInfo = (ItemInfo) tag;
            Intent marketIntent = itemInfo instanceof PromiseAppInfo ? ((PromiseAppInfo) itemInfo).getMarketIntent(secondaryDisplayLauncher) : itemInfo.getIntent();
            if (marketIntent == null) {
                throw new IllegalArgumentException("Input must have a valid intent");
            }
            secondaryDisplayLauncher.k(view, marketIntent, itemInfo, AppLaunchTracker.CONTAINER_ALL_APPS);
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
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindAppsAdded(IntArray intArray, ArrayList arrayList, ArrayList arrayList2) {
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindDeepShortcutMap(HashMap hashMap) {
        this.mPopupDataProvider.mDeepShortcutMap = hashMap;
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindItems(List list, boolean z) {
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindPredictedItems(List list, IntArray intArray) {
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindPromiseAppProgressUpdated(PromiseAppInfo promiseAppInfo) {
        this.mAppsView.mAllAppsStore.updateAllIcons(new k(promiseAppInfo));
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindRestoreItemsChange(HashSet hashSet) {
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindScreens(IntArray intArray) {
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindWidgetsRestored(ArrayList arrayList) {
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindWorkspaceComponentsRemoved(ItemInfoMatcher itemInfoMatcher) {
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindWorkspaceItemsChanged(ArrayList arrayList) {
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void clearPendingBinds() {
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void executeOnNextDraw(ViewOnDrawExecutor viewOnDrawExecutor) {
        viewOnDrawExecutor.attachTo(this.mDragLayer, false, null);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void finishBindingItems(int i) {
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void finishFirstPageBind(ViewOnDrawExecutor viewOnDrawExecutor) {
        if (viewOnDrawExecutor != null) {
            viewOnDrawExecutor.onLoadAnimationCompleted();
        }
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public ActivityOptions getActivityLaunchOptions(View view) {
        return null;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public BaseDragLayer getDragLayer() {
        return this.mDragLayer;
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public View.OnClickListener getItemOnClickListener() {
        return new View.OnClickListener() { // from class: c.a.a.T0.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SecondaryDisplayLauncher.b(SecondaryDisplayLauncher.this, view);
            }
        };
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public View getOverviewPanel() {
        return null;
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public int getPageToBindSynchronously() {
        return 0;
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public View getRootView() {
        return this.mDragLayer;
    }

    public final void initUi() {
        if (this.mDragLayer != null) {
            return;
        }
        DeviceProfile.Builder builder = new InvariantDeviceProfile(this, getWindow().getDecorView().getDisplay()).getDeviceProfile(this).toBuilder(this);
        builder.mIsMultiWindowMode = true;
        builder.mTransposeLayoutWithOrientation = false;
        DeviceProfile build = builder.build();
        this.mDeviceProfile = build;
        build.autoResizeAllAppsCells();
        setContentView(R.layout.secondary_launcher);
        this.mDragLayer = (BaseDragLayer) findViewById(R.id.drag_layer);
        this.mAppsView = (AllAppsContainerView) findViewById(R.id.apps_view);
        this.mAppsButton = findViewById(R.id.all_apps_button);
        final AllAppsStore allAppsStore = this.mAppsView.mAllAppsStore;
        Objects.requireNonNull(allAppsStore);
        this.mPopupDataProvider = new PopupDataProvider(new Consumer() { // from class: c.a.a.T0.j
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                AllAppsStore allAppsStore2 = AllAppsStore.this;
                allAppsStore2.updateAllIcons(new c.a.a.D0.l(allAppsStore2, (Predicate) obj));
            }
        });
        this.mModel.addCallbacksAndLoad(this);
    }

    public void onAppsButtonClicked(View view) {
        showAppDrawer(true);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        initUi();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (finishAutoCancelActionMode()) {
            return;
        }
        AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView(this);
        if (topOpenView == null || !topOpenView.onBackPressed()) {
            showAppDrawer(false);
        }
    }

    @Override // com.android.launcher3.BaseDraggingActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mModel = LauncherAppState.getInstance(this).mModel;
        if (getWindow().getDecorView().isAttachedToWindow()) {
            initUi();
        }
    }

    @Override // com.android.launcher3.BaseDraggingActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mModel.removeCallbacks(this);
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        View peekDecorView;
        super.onNewIntent(intent);
        if ("android.intent.action.MAIN".equals(intent.getAction()) && (peekDecorView = getWindow().peekDecorView()) != null && peekDecorView.getWindowToken() != null) {
            ((InputMethodManager) getSystemService(InputMethodManager.class)).hideSoftInputFromWindow(peekDecorView.getWindowToken(), 0);
        }
        showAppDrawer(false);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void onPageBoundSynchronously(int i) {
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void preAddApps() {
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public void reapplyUi() {
    }

    public void showAppDrawer(boolean z) {
        if (z == this.mAppDrawerShown) {
            return;
        }
        float hypot = (float) Math.hypot(this.mAppsView.getWidth(), this.mAppsView.getHeight());
        float dialogCornerRadius = W.getDialogCornerRadius(this);
        float width = this.mAppsButton.getWidth() / 2.0f;
        float[] fArr = {width, width};
        this.mDragLayer.getDescendantCoordRelativeToSelf(this.mAppsButton, fArr);
        this.mDragLayer.mapCoordInSelfToDescendant(this.mAppsView, fArr);
        AllAppsContainerView allAppsContainerView = this.mAppsView;
        int i = (int) fArr[0];
        int i2 = (int) fArr[1];
        float f = z ? dialogCornerRadius : hypot;
        if (!z) {
            hypot = dialogCornerRadius;
        }
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(allAppsContainerView, i, i2, f, hypot);
        if (z) {
            this.mAppDrawerShown = true;
            this.mAppsView.setVisibility(0);
            this.mAppsButton.setVisibility(4);
        } else {
            this.mAppDrawerShown = false;
            createCircularReveal.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.secondarydisplay.SecondaryDisplayLauncher.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SecondaryDisplayLauncher.this.mAppsView.setVisibility(4);
                    SecondaryDisplayLauncher.this.mAppsButton.setVisibility(0);
                    SecondaryDisplayLauncher.this.mAppsView.mSearchUiManager.resetSearch();
                }
            });
        }
        createCircularReveal.start();
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void startBinding() {
    }
}
