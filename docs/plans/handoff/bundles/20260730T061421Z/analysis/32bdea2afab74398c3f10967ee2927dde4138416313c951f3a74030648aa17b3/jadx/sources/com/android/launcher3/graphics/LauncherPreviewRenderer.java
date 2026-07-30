package com.android.launcher3.graphics;

import android.annotation.TargetApi;
import android.app.Fragment;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextClock;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Hotseat;
import com.android.launcher3.InsettableFrameLayout;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.LauncherSettings$Favorites;
import com.android.launcher3.R$styleable;
import com.android.launcher3.WorkspaceLayoutManager;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.model.AllAppsList;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.LoaderResults;
import com.android.launcher3.model.LoaderTask;
import com.android.launcher3.model.WidgetsModel;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.InstallSessionHelper;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.widget.custom.CustomWidgetManager;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.ISystemUiProxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public class LauncherPreviewRenderer {
    public final Context mContext;
    public final DeviceProfile mDp;
    public final InvariantDeviceProfile mIdp;
    public final Rect mInsets;
    public final boolean mMigrated;
    public final Handler mUiHandler = new Handler(Looper.getMainLooper());
    public final WorkspaceItemInfo mWorkspaceItemInfo;

    public class PreviewContext extends ContextWrapper {
        public static final Set WHITELIST = new HashSet(Arrays.asList(UserCache.INSTANCE, InstallSessionHelper.INSTANCE, LauncherAppState.INSTANCE, InvariantDeviceProfile.INSTANCE, CustomWidgetManager.INSTANCE, PluginManagerWrapper.INSTANCE));
        public final ConcurrentLinkedQueue mIconPool;
        public final InvariantDeviceProfile mIdp;
        public final Map mObjectMap;

        public final class LauncherIconsForPreview extends LauncherIcons {
            public LauncherIconsForPreview(Context context, int i, int i2, int i3, boolean z, AnonymousClass1 anonymousClass1) {
                super(context, i, i2, i3, z);
            }

            @Override // com.android.launcher3.icons.LauncherIcons
            public void recycle() {
                clear();
                PreviewContext.this.mIconPool.offer(this);
            }
        }

        public PreviewContext(Context context, InvariantDeviceProfile invariantDeviceProfile) {
            super(context);
            this.mObjectMap = new HashMap();
            this.mIconPool = new ConcurrentLinkedQueue();
            this.mIdp = invariantDeviceProfile;
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public Context getApplicationContext() {
            return this;
        }
    }

    public interface WorkspaceFetcher extends Runnable, Callable {
        FutureTask getTask();
    }

    public class WorkspaceItemsInfoFetcher implements LauncherModel.ModelUpdateTask, WorkspaceFetcher {
        public AllAppsList mAllAppsList;
        public LauncherAppState mApp;
        public BgDataModel mBgDataModel;
        public LauncherModel mModel;
        public final FutureTask mTask = new FutureTask(this);

        public WorkspaceItemsInfoFetcher(AnonymousClass1 anonymousClass1) {
        }

        @Override // java.util.concurrent.Callable
        public Object call() {
            if (this.mModel.isModelLoaded()) {
                BgDataModel bgDataModel = this.mBgDataModel;
                return new WorkspaceResult(bgDataModel.workspaceItems, bgDataModel.appWidgets, bgDataModel.cachedPredictedItems, bgDataModel.widgetsModel, null);
            }
            Log.d("LauncherPreviewRenderer", "Workspace not loaded, loading now");
            this.mModel.startLoaderForResults(new LoaderResults(this.mApp, this.mBgDataModel, this.mAllAppsList, new BgDataModel.Callbacks[0]));
            return null;
        }

        @Override // com.android.launcher3.graphics.LauncherPreviewRenderer.WorkspaceFetcher
        public FutureTask getTask() {
            return this.mTask;
        }

        @Override // com.android.launcher3.LauncherModel.ModelUpdateTask
        public void init(LauncherAppState launcherAppState, LauncherModel launcherModel, BgDataModel bgDataModel, AllAppsList allAppsList, Executor executor) {
            this.mApp = launcherAppState;
            this.mModel = launcherModel;
            this.mBgDataModel = bgDataModel;
            this.mAllAppsList = allAppsList;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mTask.run();
        }
    }

    public class WorkspaceItemsInfoFromPreviewFetcher extends LoaderTask implements WorkspaceFetcher {
        public final FutureTask mTask;

        public WorkspaceItemsInfoFromPreviewFetcher(LauncherAppState launcherAppState) {
            super(launcherAppState, null, new BgDataModel(), null);
            this.mTask = new FutureTask(this);
        }

        @Override // java.util.concurrent.Callable
        public Object call() {
            loadWorkspace(new ArrayList(), LauncherSettings$Favorites.PREVIEW_CONTENT_URI);
            this.mBgDataModel.widgetsModel.update(this.mApp, null);
            BgDataModel bgDataModel = this.mBgDataModel;
            return new WorkspaceResult(bgDataModel.workspaceItems, bgDataModel.appWidgets, bgDataModel.cachedPredictedItems, bgDataModel.widgetsModel, null);
        }

        @Override // com.android.launcher3.graphics.LauncherPreviewRenderer.WorkspaceFetcher
        public FutureTask getTask() {
            return this.mTask;
        }

        @Override // com.android.launcher3.model.LoaderTask, java.lang.Runnable
        public void run() {
            this.mTask.run();
        }
    }

    public class WorkspaceResult {
        public final ArrayList mAppWidgets;
        public final ArrayList mCachedPredictedItems;
        public final WidgetsModel mWidgetsModel;
        public final ArrayList mWorkspaceItems;

        public WorkspaceResult(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, WidgetsModel widgetsModel, AnonymousClass1 anonymousClass1) {
            this.mWorkspaceItems = arrayList;
            this.mAppWidgets = arrayList2;
            this.mCachedPredictedItems = arrayList3;
            this.mWidgetsModel = widgetsModel;
        }
    }

    public LauncherPreviewRenderer(Context context, InvariantDeviceProfile invariantDeviceProfile, boolean z) {
        this.mContext = context;
        this.mIdp = invariantDeviceProfile;
        this.mDp = invariantDeviceProfile.portraitProfile.toBuilder(context).build();
        this.mMigrated = z;
        Rect rect = new Rect();
        this.mInsets = rect;
        DeviceProfile deviceProfile = this.mDp;
        int i = (deviceProfile.widthPx - deviceProfile.availableWidthPx) / 2;
        rect.right = i;
        rect.left = i;
        int i2 = (deviceProfile.heightPx - deviceProfile.availableHeightPx) / 2;
        rect.bottom = i2;
        rect.top = i2;
        deviceProfile.updateInsets(rect);
        InvariantDeviceProfile invariantDeviceProfile2 = this.mIdp;
        BitmapInfo createBadgedIconBitmap = new BaseIconFactory(this, context, invariantDeviceProfile2.fillResIconDpi, invariantDeviceProfile2.iconBitmapSize) { // from class: com.android.launcher3.graphics.LauncherPreviewRenderer.1
        }.createBadgedIconBitmap(new AdaptiveIconDrawable(new ColorDrawable(-1), new ColorDrawable(-1)), Process.myUserHandle(), Build.VERSION.SDK_INT, false);
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo();
        this.mWorkspaceItemInfo = workspaceItemInfo;
        workspaceItemInfo.bitmap = createBadgedIconBitmap;
        workspaceItemInfo.intent = new Intent();
        WorkspaceItemInfo workspaceItemInfo2 = this.mWorkspaceItemInfo;
        String string = context.getString(R.string.label_application);
        workspaceItemInfo2.title = string;
        workspaceItemInfo2.contentDescription = string;
    }

    public static void access$600(View view, int i, int i2) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
        view.layout(0, 0, i, i2);
    }

    public class MainThreadRenderer extends ContextThemeWrapper implements ActivityContext, WorkspaceLayoutManager, LayoutInflater.Factory2 {
        public final LayoutInflater mHomeElementInflater;
        public final Hotseat mHotseat;
        public final InsettableFrameLayout mRootView;
        public final CellLayout mWorkspace;

        public MainThreadRenderer(Context context) {
            super(context, R.style.AppTheme);
            LayoutInflater from = LayoutInflater.from(new ContextThemeWrapper(this, R.style.HomeScreenElementTheme));
            this.mHomeElementInflater = from;
            from.setFactory2(this);
            InsettableFrameLayout insettableFrameLayout = (InsettableFrameLayout) this.mHomeElementInflater.inflate(R.layout.launcher_preview_layout, (ViewGroup) null, false);
            this.mRootView = insettableFrameLayout;
            insettableFrameLayout.setInsets(LauncherPreviewRenderer.this.mInsets);
            InsettableFrameLayout insettableFrameLayout2 = this.mRootView;
            DeviceProfile deviceProfile = LauncherPreviewRenderer.this.mDp;
            LauncherPreviewRenderer.access$600(insettableFrameLayout2, deviceProfile.widthPx, deviceProfile.heightPx);
            Hotseat hotseat = (Hotseat) this.mRootView.findViewById(R.id.hotseat);
            this.mHotseat = hotseat;
            hotseat.resetLayout(false);
            CellLayout cellLayout = (CellLayout) this.mRootView.findViewById(R.id.workspace);
            this.mWorkspace = cellLayout;
            DeviceProfile deviceProfile2 = LauncherPreviewRenderer.this.mDp;
            Rect rect = deviceProfile2.workspacePadding;
            int i = rect.left;
            int i2 = deviceProfile2.cellLayoutPaddingLeftRightPx;
            cellLayout.setPadding(i + i2, rect.top, rect.right + i2, rect.bottom);
        }

        public final void dispatchVisibilityAggregated(View view, boolean z) {
            boolean z2 = view.getVisibility() == 0;
            if (z2 || !z) {
                view.onVisibilityAggregated(z);
            }
            if (view instanceof ViewGroup) {
                boolean z3 = z2 && z;
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    dispatchVisibilityAggregated(viewGroup.getChildAt(i), z3);
                }
            }
        }

        @Override // com.android.launcher3.views.ActivityContext
        public DeviceProfile getDeviceProfile() {
            return LauncherPreviewRenderer.this.mDp;
        }

        @Override // com.android.launcher3.views.ActivityContext
        public BaseDragLayer getDragLayer() {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.launcher3.WorkspaceLayoutManager
        public Hotseat getHotseat() {
            return this.mHotseat;
        }

        @Override // com.android.launcher3.WorkspaceLayoutManager
        public CellLayout getScreenWithId(int i) {
            return this.mWorkspace;
        }

        public final void inflateAndAddIcon(WorkspaceItemInfo workspaceItemInfo) {
            BubbleTextView bubbleTextView = (BubbleTextView) this.mHomeElementInflater.inflate(R.layout.app_icon, (ViewGroup) this.mWorkspace, false);
            bubbleTextView.applyFromWorkspaceItem(workspaceItemInfo);
            addInScreenFromBind(bubbleTextView, workspaceItemInfo);
        }

        @Override // android.view.LayoutInflater.Factory2
        public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
            if ("TextClock".equals(str)) {
                return new TextClock(context, attributeSet) { // from class: com.android.launcher3.graphics.LauncherPreviewRenderer.MainThreadRenderer.1
                    @Override // android.view.View
                    public Handler getHandler() {
                        return LauncherPreviewRenderer.this.mUiHandler;
                    }
                };
            }
            if (!"fragment".equals(str)) {
                return null;
            }
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.PreviewFragment);
            FragmentWithPreview fragmentWithPreview = (FragmentWithPreview) Fragment.instantiate(context, obtainStyledAttributes.getString(0));
            fragmentWithPreview.mPreviewContext = context;
            fragmentWithPreview.onInit(null);
            View onCreateView = fragmentWithPreview.onCreateView(LayoutInflater.from(context), (ViewGroup) view, null);
            onCreateView.setId(obtainStyledAttributes.getInt(1, -1));
            return onCreateView;
        }

        @Override // android.view.LayoutInflater.Factory
        public View onCreateView(String str, Context context, AttributeSet attributeSet) {
            return onCreateView(null, str, context, attributeSet);
        }
    }
}
