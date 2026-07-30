package com.android.launcher3.model;

import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.util.ItemInfoMatcher;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class BaseModelUpdateTask implements LauncherModel.ModelUpdateTask {
    public static final boolean DEBUG_TASKS = false;
    public static final String TAG = "BaseModelUpdateTask";
    public AllAppsList mAllAppsList;
    public LauncherAppState mApp;
    public BgDataModel mDataModel;
    public LauncherModel mModel;
    public Executor mUiExecutor;

    public void bindApplicationsIfNeeded() {
        AllAppsList allAppsList = this.mAllAppsList;
        boolean z = allAppsList.mDataChanged;
        allAppsList.mDataChanged = false;
        if (z) {
            final AppInfo[] copyData = allAppsList.copyData();
            final int i = this.mAllAppsList.mFlags;
            scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: c.a.a.N0.u
                @Override // com.android.launcher3.LauncherModel.CallbackTask
                public final void execute(BgDataModel.Callbacks callbacks) {
                    callbacks.bindAllApplications(copyData, i);
                }
            });
        }
    }

    public void bindDeepShortcuts(BgDataModel bgDataModel) {
        final HashMap hashMap = new HashMap(bgDataModel.deepShortcutMap);
        scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: c.a.a.N0.s
            @Override // com.android.launcher3.LauncherModel.CallbackTask
            public final void execute(BgDataModel.Callbacks callbacks) {
                callbacks.bindDeepShortcutMap(hashMap);
            }
        });
    }

    public void bindUpdatedWidgets(BgDataModel bgDataModel) {
        final ArrayList widgetsList = bgDataModel.widgetsModel.getWidgetsList(this.mApp.mContext);
        scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: c.a.a.N0.t
            @Override // com.android.launcher3.LauncherModel.CallbackTask
            public final void execute(BgDataModel.Callbacks callbacks) {
                callbacks.bindAllWidgets(widgetsList);
            }
        });
    }

    public void bindUpdatedWorkspaceItems(final ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: c.a.a.N0.q
            @Override // com.android.launcher3.LauncherModel.CallbackTask
            public final void execute(BgDataModel.Callbacks callbacks) {
                callbacks.bindWorkspaceItemsChanged(arrayList);
            }
        });
    }

    public void deleteAndBindComponentsRemoved(final ItemInfoMatcher itemInfoMatcher) {
        ModelWriter modelWriter = getModelWriter();
        modelWriter.deleteItemsFromDatabase(itemInfoMatcher.filterItemInfos(modelWriter.mBgDataModel.itemsIdMap));
        scheduleCallbackTask(new LauncherModel.CallbackTask() { // from class: c.a.a.N0.p
            @Override // com.android.launcher3.LauncherModel.CallbackTask
            public final void execute(BgDataModel.Callbacks callbacks) {
                callbacks.bindWorkspaceComponentsRemoved(ItemInfoMatcher.this);
            }
        });
    }

    public abstract void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList);

    public ModelWriter getModelWriter() {
        LauncherModel launcherModel = this.mModel;
        return new ModelWriter(launcherModel.mApp.mContext, launcherModel, launcherModel.mBgDataModel, false, false);
    }

    @Override // com.android.launcher3.LauncherModel.ModelUpdateTask
    public void init(LauncherAppState launcherAppState, LauncherModel launcherModel, BgDataModel bgDataModel, AllAppsList allAppsList, Executor executor) {
        this.mApp = launcherAppState;
        this.mModel = launcherModel;
        this.mDataModel = bgDataModel;
        this.mAllAppsList = allAppsList;
        this.mUiExecutor = executor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.mModel.isModelLoaded()) {
            execute(this.mApp, this.mDataModel, this.mAllAppsList);
        }
    }

    public final void scheduleCallbackTask(final LauncherModel.CallbackTask callbackTask) {
        for (final BgDataModel.Callbacks callbacks : this.mModel.getCallbacks()) {
            this.mUiExecutor.execute(new Runnable() { // from class: c.a.a.N0.r
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherModel.CallbackTask.this.execute(callbacks);
                }
            });
        }
    }
}
