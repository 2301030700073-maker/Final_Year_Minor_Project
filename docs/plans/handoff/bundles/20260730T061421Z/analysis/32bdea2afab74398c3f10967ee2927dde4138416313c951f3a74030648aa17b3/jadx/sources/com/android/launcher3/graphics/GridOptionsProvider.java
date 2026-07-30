package com.android.launcher3.graphics;

import android.appwidget.AppWidgetHostView;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import android.util.Xml;
import android.view.SurfaceControlViewHost;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import b.l.W;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InsettableFrameLayout;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.SearchUiManager;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.graphics.LauncherPreviewRenderer;
import com.android.launcher3.graphics.LauncherPreviewRenderer.MainThreadRenderer;
import com.android.launcher3.graphics.PreviewSurfaceRenderer;
import com.android.launcher3.model.GridSizeMigrationTask;
import com.android.launcher3.model.GridSizeMigrationTaskV2;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.model.WidgetsModel;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.PackageItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.uioverrides.PredictedAppIcon;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.widget.custom.CustomWidgetManager;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class GridOptionsProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public Bundle call(String str, String str2, Bundle bundle) {
        if (getContext().checkPermission("android.permission.BIND_WALLPAPER", Binder.getCallingPid(), Binder.getCallingUid()) != 0 || !"get_preview".equals(str)) {
            return null;
        }
        final PreviewSurfaceRenderer previewSurfaceRenderer = new PreviewSurfaceRenderer(getContext(), bundle);
        if (previewSurfaceRenderer.mSurfaceControlViewHost != null) {
            previewSurfaceRenderer.binderDied();
        }
        try {
            SurfaceControlViewHost surfaceControlViewHost = (SurfaceControlViewHost) Executors.MAIN_EXECUTOR.submit(new Callable() { // from class: c.a.a.J0.h
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    PreviewSurfaceRenderer previewSurfaceRenderer2 = PreviewSurfaceRenderer.this;
                    Objects.requireNonNull(previewSurfaceRenderer2);
                    return new SurfaceControlViewHost(previewSurfaceRenderer2.mContext, previewSurfaceRenderer2.mDisplay, previewSurfaceRenderer2.mHostToken);
                }
            }).get(5L, TimeUnit.SECONDS);
            previewSurfaceRenderer.mSurfaceControlViewHost = surfaceControlViewHost;
            SurfaceControlViewHost.SurfacePackage surfacePackage = surfaceControlViewHost.getSurfacePackage();
            previewSurfaceRenderer.mHostToken.linkToDeath(previewSurfaceRenderer, 0);
            LooperExecutor looperExecutor = Executors.MODEL_EXECUTOR;
            looperExecutor.mHandler.post(new Runnable() { // from class: c.a.a.J0.e
                @Override // java.lang.Runnable
                public final void run() {
                    final PreviewSurfaceRenderer previewSurfaceRenderer2 = PreviewSurfaceRenderer.this;
                    Objects.requireNonNull(previewSurfaceRenderer2);
                    final boolean migrateGridIfNeeded = !(FeatureFlags.MULTI_DB_GRID_MIRATION_ALGO.get() ? GridSizeMigrationTaskV2.needsToMigrate(previewSurfaceRenderer2.mContext, previewSurfaceRenderer2.mIdp) : GridSizeMigrationTask.needsToMigrate(previewSurfaceRenderer2.mContext, previewSurfaceRenderer2.mIdp)) ? false : FeatureFlags.MULTI_DB_GRID_MIRATION_ALGO.get() ? GridSizeMigrationTaskV2.migrateGridIfNeeded(previewSurfaceRenderer2.mContext, previewSurfaceRenderer2.mIdp) : GridSizeMigrationTask.migrateGridIfNeeded(previewSurfaceRenderer2.mContext, previewSurfaceRenderer2.mIdp);
                    Executors.MAIN_EXECUTOR.mHandler.post(new Runnable() { // from class: c.a.a.J0.g
                        @Override // java.lang.Runnable
                        public final void run() {
                            LauncherPreviewRenderer.PreviewContext previewContext;
                            LauncherPreviewRenderer.WorkspaceFetcher workspaceFetcher;
                            LauncherPreviewRenderer.WorkspaceResult workspaceResult;
                            WidgetItem widgetItem;
                            CustomWidgetManager customWidgetManager;
                            PreviewSurfaceRenderer previewSurfaceRenderer3 = PreviewSurfaceRenderer.this;
                            boolean z = migrateGridIfNeeded;
                            SurfaceControlViewHost surfaceControlViewHost2 = previewSurfaceRenderer3.mSurfaceControlViewHost;
                            if (surfaceControlViewHost2 == null) {
                                return;
                            }
                            LauncherPreviewRenderer launcherPreviewRenderer = new LauncherPreviewRenderer(previewSurfaceRenderer3.mContext, previewSurfaceRenderer3.mIdp, z);
                            LauncherPreviewRenderer.MainThreadRenderer mainThreadRenderer = launcherPreviewRenderer.new MainThreadRenderer(launcherPreviewRenderer.mContext);
                            if (!FeatureFlags.ENABLE_LAUNCHER_PREVIEW_IN_GRID_PICKER.get()) {
                                int i = 0;
                                while (true) {
                                    LauncherPreviewRenderer launcherPreviewRenderer2 = LauncherPreviewRenderer.this;
                                    if (i >= launcherPreviewRenderer2.mIdp.numHotseatIcons) {
                                        break;
                                    }
                                    WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo(launcherPreviewRenderer2.mWorkspaceItemInfo);
                                    workspaceItemInfo.container = -101;
                                    workspaceItemInfo.screenId = i;
                                    mainThreadRenderer.inflateAndAddIcon(workspaceItemInfo);
                                    i++;
                                }
                                int i2 = 0;
                                while (true) {
                                    LauncherPreviewRenderer launcherPreviewRenderer3 = LauncherPreviewRenderer.this;
                                    if (i2 >= launcherPreviewRenderer3.mIdp.numColumns) {
                                        break;
                                    }
                                    WorkspaceItemInfo workspaceItemInfo2 = new WorkspaceItemInfo(launcherPreviewRenderer3.mWorkspaceItemInfo);
                                    workspaceItemInfo2.container = -100;
                                    workspaceItemInfo2.screenId = 0;
                                    workspaceItemInfo2.cellX = i2;
                                    workspaceItemInfo2.cellY = LauncherPreviewRenderer.this.mIdp.numRows - 1;
                                    mainThreadRenderer.inflateAndAddIcon(workspaceItemInfo2);
                                    i2++;
                                }
                            } else {
                                if (LauncherPreviewRenderer.this.mMigrated) {
                                    LauncherPreviewRenderer launcherPreviewRenderer4 = LauncherPreviewRenderer.this;
                                    previewContext = new LauncherPreviewRenderer.PreviewContext(launcherPreviewRenderer4.mContext, launcherPreviewRenderer4.mIdp);
                                    LauncherPreviewRenderer.WorkspaceFetcher workspaceItemsInfoFromPreviewFetcher = new LauncherPreviewRenderer.WorkspaceItemsInfoFromPreviewFetcher(new LauncherAppState(previewContext, null));
                                    Executors.MODEL_EXECUTOR.execute(workspaceItemsInfoFromPreviewFetcher);
                                    workspaceFetcher = workspaceItemsInfoFromPreviewFetcher;
                                } else {
                                    LauncherPreviewRenderer.WorkspaceItemsInfoFetcher workspaceItemsInfoFetcher = new LauncherPreviewRenderer.WorkspaceItemsInfoFetcher(null);
                                    LauncherAppState.getInstance(LauncherPreviewRenderer.this.mContext).mModel.enqueueModelUpdateTask(workspaceItemsInfoFetcher);
                                    previewContext = null;
                                    workspaceFetcher = workspaceItemsInfoFetcher;
                                }
                                try {
                                    workspaceResult = (LauncherPreviewRenderer.WorkspaceResult) workspaceFetcher.getTask().get(5L, TimeUnit.SECONDS);
                                } catch (InterruptedException | ExecutionException | TimeoutException e) {
                                    Log.d("LauncherPreviewRenderer", "Error fetching workspace items info", e);
                                    workspaceResult = null;
                                }
                                if (previewContext != null && (customWidgetManager = (CustomWidgetManager) previewContext.mObjectMap.get(CustomWidgetManager.INSTANCE)) != null) {
                                    ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(customWidgetManager.mContext)).mPluginManager.removePluginListener(customWidgetManager);
                                }
                                if (workspaceResult != null) {
                                    ArrayList arrayList = new ArrayList();
                                    ArrayList arrayList2 = new ArrayList();
                                    ArrayList arrayList3 = new ArrayList();
                                    ArrayList arrayList4 = new ArrayList();
                                    W.filterCurrentWorkspaceItems(0, workspaceResult.mWorkspaceItems, arrayList, arrayList2);
                                    W.filterCurrentWorkspaceItems(0, workspaceResult.mAppWidgets, arrayList3, arrayList4);
                                    W.sortWorkspaceItemsSpatially(LauncherPreviewRenderer.this.mIdp, arrayList);
                                    Iterator it = arrayList.iterator();
                                    while (it.hasNext()) {
                                        ItemInfo itemInfo = (ItemInfo) it.next();
                                        int i3 = itemInfo.itemType;
                                        if (i3 != 0 && i3 != 1) {
                                            if (i3 == 2) {
                                                FolderInfo folderInfo = (FolderInfo) itemInfo;
                                                mainThreadRenderer.addInScreenFromBind(FolderIcon.inflateIcon(R.layout.folder_icon, mainThreadRenderer, mainThreadRenderer.mWorkspace, folderInfo), folderInfo);
                                            } else if (i3 != 6) {
                                            }
                                        }
                                        mainThreadRenderer.inflateAndAddIcon((WorkspaceItemInfo) itemInfo);
                                    }
                                    Iterator it2 = arrayList3.iterator();
                                    while (it2.hasNext()) {
                                        ItemInfo itemInfo2 = (ItemInfo) it2.next();
                                        int i4 = itemInfo2.itemType;
                                        if (i4 == 4 || i4 == 5) {
                                            LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) itemInfo2;
                                            WidgetsModel widgetsModel = workspaceResult.mWidgetsModel;
                                            ComponentName componentName = launcherAppWidgetInfo.providerName;
                                            ArrayList arrayList5 = (ArrayList) widgetsModel.mWidgetsList.get(new PackageItemInfo(componentName.getPackageName()));
                                            if (arrayList5 != null) {
                                                Iterator it3 = arrayList5.iterator();
                                                while (it3.hasNext()) {
                                                    widgetItem = (WidgetItem) it3.next();
                                                    if (widgetItem.componentName.equals(componentName)) {
                                                        break;
                                                    }
                                                }
                                            }
                                            widgetItem = null;
                                            if (widgetItem != null) {
                                                AppWidgetHostView appWidgetHostView = new AppWidgetHostView(LauncherPreviewRenderer.this.mContext);
                                                appWidgetHostView.setAppWidget(-1, widgetItem.widgetInfo);
                                                appWidgetHostView.updateAppWidget(null);
                                                appWidgetHostView.setTag(launcherAppWidgetInfo);
                                                mainThreadRenderer.addInScreenFromBind(appWidgetHostView, launcherAppWidgetInfo);
                                            }
                                        }
                                    }
                                    IntArray missingHotseatRanks = W.getMissingHotseatRanks(arrayList, LauncherPreviewRenderer.this.mIdp.numHotseatIcons);
                                    int min = Math.min(missingHotseatRanks.mSize, workspaceResult.mCachedPredictedItems.size());
                                    for (int i5 = 0; i5 < min; i5++) {
                                        AppInfo appInfo = (AppInfo) workspaceResult.mCachedPredictedItems.get(i5);
                                        int i6 = missingHotseatRanks.get(i5);
                                        WorkspaceItemInfo workspaceItemInfo3 = new WorkspaceItemInfo(appInfo);
                                        workspaceItemInfo3.container = -103;
                                        workspaceItemInfo3.rank = i6;
                                        workspaceItemInfo3.cellX = mainThreadRenderer.mHotseat.getCellXFromOrder(i6);
                                        workspaceItemInfo3.cellY = mainThreadRenderer.mHotseat.getCellYFromOrder(i6);
                                        workspaceItemInfo3.screenId = i6;
                                        PredictedAppIcon predictedAppIcon = (PredictedAppIcon) mainThreadRenderer.mHomeElementInflater.inflate(R.layout.predicted_app_icon, (ViewGroup) mainThreadRenderer.mWorkspace, false);
                                        predictedAppIcon.applyFromWorkspaceItem(workspaceItemInfo3);
                                        mainThreadRenderer.addInScreenFromBind(predictedAppIcon, workspaceItemInfo3);
                                    }
                                }
                                InsettableFrameLayout insettableFrameLayout = mainThreadRenderer.mRootView;
                                float min2 = Math.min(previewSurfaceRenderer3.mWidth / insettableFrameLayout.getMeasuredWidth(), previewSurfaceRenderer3.mHeight / insettableFrameLayout.getMeasuredHeight());
                                insettableFrameLayout.setScaleX(min2);
                                insettableFrameLayout.setScaleY(min2);
                                insettableFrameLayout.setPivotX(RecentsState.NO_OFFSET);
                                insettableFrameLayout.setPivotY(RecentsState.NO_OFFSET);
                                insettableFrameLayout.setTranslationX((previewSurfaceRenderer3.mWidth - (insettableFrameLayout.getWidth() * min2)) / 2.0f);
                                insettableFrameLayout.setTranslationY((previewSurfaceRenderer3.mHeight - (min2 * insettableFrameLayout.getHeight())) / 2.0f);
                                insettableFrameLayout.setAlpha(RecentsState.NO_OFFSET);
                                insettableFrameLayout.animate().alpha(1.0f).setInterpolator(new AccelerateDecelerateInterpolator()).setDuration(200L).start();
                                surfaceControlViewHost2.setView(insettableFrameLayout, insettableFrameLayout.getMeasuredWidth(), insettableFrameLayout.getMeasuredHeight());
                            }
                            View inflate = mainThreadRenderer.mHomeElementInflater.inflate(R.layout.search_container_workspace, (ViewGroup) mainThreadRenderer.mWorkspace, false);
                            CellLayout.LayoutParams layoutParams = new CellLayout.LayoutParams(0, 0, mainThreadRenderer.mWorkspace.mCountX, 1);
                            layoutParams.canReorder = false;
                            mainThreadRenderer.mWorkspace.addViewToCellLayout(inflate, 0, R.id.search_container_workspace, layoutParams, true);
                            SearchUiManager searchUiManager = (SearchUiManager) mainThreadRenderer.mRootView.findViewById(R.id.search_container_all_apps);
                            mainThreadRenderer.mRootView.findViewById(R.id.apps_view).setTranslationY(r5.mDp.heightPx - searchUiManager.getScrollRangeDelta(LauncherPreviewRenderer.this.mInsets));
                            InsettableFrameLayout insettableFrameLayout2 = mainThreadRenderer.mRootView;
                            DeviceProfile deviceProfile = LauncherPreviewRenderer.this.mDp;
                            LauncherPreviewRenderer.access$600(insettableFrameLayout2, deviceProfile.widthPx, deviceProfile.heightPx);
                            mainThreadRenderer.dispatchVisibilityAggregated(mainThreadRenderer.mRootView, true);
                            InsettableFrameLayout insettableFrameLayout3 = mainThreadRenderer.mRootView;
                            DeviceProfile deviceProfile2 = LauncherPreviewRenderer.this.mDp;
                            LauncherPreviewRenderer.access$600(insettableFrameLayout3, deviceProfile2.widthPx, deviceProfile2.heightPx);
                            InsettableFrameLayout insettableFrameLayout4 = mainThreadRenderer.mRootView;
                            DeviceProfile deviceProfile3 = LauncherPreviewRenderer.this.mDp;
                            LauncherPreviewRenderer.access$600(insettableFrameLayout4, deviceProfile3.widthPx, deviceProfile3.heightPx);
                            InsettableFrameLayout insettableFrameLayout5 = mainThreadRenderer.mRootView;
                            float min22 = Math.min(previewSurfaceRenderer3.mWidth / insettableFrameLayout5.getMeasuredWidth(), previewSurfaceRenderer3.mHeight / insettableFrameLayout5.getMeasuredHeight());
                            insettableFrameLayout5.setScaleX(min22);
                            insettableFrameLayout5.setScaleY(min22);
                            insettableFrameLayout5.setPivotX(RecentsState.NO_OFFSET);
                            insettableFrameLayout5.setPivotY(RecentsState.NO_OFFSET);
                            insettableFrameLayout5.setTranslationX((previewSurfaceRenderer3.mWidth - (insettableFrameLayout5.getWidth() * min22)) / 2.0f);
                            insettableFrameLayout5.setTranslationY((previewSurfaceRenderer3.mHeight - (min22 * insettableFrameLayout5.getHeight())) / 2.0f);
                            insettableFrameLayout5.setAlpha(RecentsState.NO_OFFSET);
                            insettableFrameLayout5.animate().alpha(1.0f).setInterpolator(new AccelerateDecelerateInterpolator()).setDuration(200L).start();
                            surfaceControlViewHost2.setView(insettableFrameLayout5, insettableFrameLayout5.getMeasuredWidth(), insettableFrameLayout5.getMeasuredHeight());
                        }
                    });
                }
            });
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("surface_package", surfacePackage);
            Messenger messenger = new Messenger(new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: c.a.a.J0.d
                @Override // android.os.Handler.Callback
                public final boolean handleMessage(Message message) {
                    PreviewSurfaceRenderer.this.binderDied();
                    return true;
                }
            }));
            Message obtain = Message.obtain();
            obtain.replyTo = messenger;
            bundle2.putParcelable("callback", obtain);
            return bundle2;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return "vnd.android.cursor.dir/launcher_grid";
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    public final List parseAllGridOptions() {
        ArrayList arrayList = new ArrayList();
        try {
            XmlResourceParser xml = getContext().getResources().getXml(R.xml.device_profiles);
            try {
                int depth = xml.getDepth();
                while (true) {
                    int next = xml.next();
                    if ((next != 3 || xml.getDepth() > depth) && next != 1) {
                        if (next == 2 && "grid-option".equals(xml.getName())) {
                            arrayList.add(new InvariantDeviceProfile.GridOption(getContext(), Xml.asAttributeSet(xml)));
                        }
                    }
                }
                xml.close();
                return arrayList;
            } catch (Throwable th) {
                if (xml != null) {
                    try {
                        xml.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException | XmlPullParserException e) {
            Log.e("GridOptionsProvider", "Error parsing device profile", e);
            return Collections.emptyList();
        }
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        if (!"/list_options".equals(uri.getPath())) {
            return null;
        }
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"name", "rows", "cols", "preview_count", "is_default"});
        InvariantDeviceProfile invariantDeviceProfile = (InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.b(getContext());
        for (InvariantDeviceProfile.GridOption gridOption : parseAllGridOptions()) {
            boolean z = true;
            MatrixCursor.RowBuilder add = matrixCursor.newRow().add("name", gridOption.name).add("rows", Integer.valueOf(gridOption.numRows)).add("cols", Integer.valueOf(gridOption.numColumns)).add("preview_count", 1);
            if (invariantDeviceProfile.numColumns != gridOption.numColumns || invariantDeviceProfile.numRows != gridOption.numRows) {
                z = false;
            }
            add.add("is_default", Boolean.valueOf(z));
        }
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        if (!"/default_grid".equals(uri.getPath())) {
            return 0;
        }
        String asString = contentValues.getAsString("name");
        InvariantDeviceProfile.GridOption gridOption = null;
        Iterator it = parseAllGridOptions().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            InvariantDeviceProfile.GridOption gridOption2 = (InvariantDeviceProfile.GridOption) it.next();
            if (gridOption2.name.equals(asString)) {
                gridOption = gridOption2;
                break;
            }
        }
        if (gridOption == null) {
            return 0;
        }
        final InvariantDeviceProfile invariantDeviceProfile = (InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.b(getContext());
        Context context = getContext();
        Objects.requireNonNull(invariantDeviceProfile);
        final Context applicationContext = context.getApplicationContext();
        Utilities.getPrefs(applicationContext).edit().putString("idp_grid_name", asString).apply();
        Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: c.a.a.w
            @Override // java.lang.Runnable
            public final void run() {
                InvariantDeviceProfile.this.d(applicationContext);
            }
        });
        return 1;
    }
}
