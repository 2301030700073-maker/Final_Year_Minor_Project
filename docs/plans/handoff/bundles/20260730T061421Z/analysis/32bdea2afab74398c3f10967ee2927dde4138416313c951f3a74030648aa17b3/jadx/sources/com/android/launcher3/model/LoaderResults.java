package com.android.launcher3.model;

import android.util.Log;
import b.l.W;
import c.a.a.N0.E;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.BaseLoaderResults$WorkspaceBinder;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.LoaderResults;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.ViewOnDrawExecutor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class LoaderResults {
    public final LauncherAppState mApp;
    public final AllAppsList mBgAllAppsList;
    public final BgDataModel mBgDataModel;
    public final BgDataModel.Callbacks[] mCallbacksList;
    public int mMyBindingId;
    public final LooperExecutor mUiExecutor;

    public LoaderResults(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList, BgDataModel.Callbacks[] callbacksArr) {
        this.mUiExecutor = Executors.MAIN_EXECUTOR;
        this.mApp = launcherAppState;
        this.mBgDataModel = bgDataModel;
        this.mBgAllAppsList = allAppsList;
        this.mCallbacksList = callbacksArr;
    }

    public void bindDeepShortcuts() {
        final HashMap hashMap;
        synchronized (this.mBgDataModel) {
            hashMap = new HashMap(this.mBgDataModel.deepShortcutMap);
        }
        executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: c.a.a.N0.z
            @Override // com.android.launcher3.LauncherModel.CallbackTask
            public final void execute(BgDataModel.Callbacks callbacks) {
                callbacks.bindDeepShortcutMap(hashMap);
            }
        }, this.mUiExecutor);
    }

    public void bindWidgets() {
        final ArrayList widgetsList = this.mBgDataModel.widgetsModel.getWidgetsList(this.mApp.mContext);
        executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: c.a.a.N0.y
            @Override // com.android.launcher3.LauncherModel.CallbackTask
            public final void execute(BgDataModel.Callbacks callbacks) {
                callbacks.bindAllWidgets(widgetsList);
            }
        }, this.mUiExecutor);
    }

    public void bindWorkspace() {
        LoaderResults loaderResults = this;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        IntArray intArray = new IntArray(10);
        synchronized (loaderResults.mBgDataModel) {
            arrayList.addAll(loaderResults.mBgDataModel.workspaceItems);
            arrayList2.addAll(loaderResults.mBgDataModel.appWidgets);
            intArray.addAll(loaderResults.mBgDataModel.collectWorkspaceScreens());
            loaderResults.mBgDataModel.lastBindId++;
            loaderResults.mMyBindingId = loaderResults.mBgDataModel.lastBindId;
        }
        BgDataModel.Callbacks[] callbacksArr = loaderResults.mCallbacksList;
        int length = callbacksArr.length;
        int i = 0;
        while (i < length) {
            int i2 = i;
            final BaseLoaderResults$WorkspaceBinder baseLoaderResults$WorkspaceBinder = new BaseLoaderResults$WorkspaceBinder(callbacksArr[i], loaderResults.mUiExecutor, loaderResults.mApp, loaderResults.mBgDataModel, loaderResults.mMyBindingId, arrayList, arrayList2, intArray);
            final int pageToBindSynchronously = baseLoaderResults$WorkspaceBinder.mCallbacks.getPageToBindSynchronously();
            if (pageToBindSynchronously >= baseLoaderResults$WorkspaceBinder.mOrderedScreenIds.mSize) {
                pageToBindSynchronously = -1;
            }
            final boolean z = pageToBindSynchronously >= 0;
            int i3 = z ? baseLoaderResults$WorkspaceBinder.mOrderedScreenIds.get(pageToBindSynchronously) : -1;
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            ArrayList arrayList5 = new ArrayList();
            ArrayList arrayList6 = new ArrayList();
            W.filterCurrentWorkspaceItems(i3, baseLoaderResults$WorkspaceBinder.mWorkspaceItems, arrayList3, arrayList4);
            W.filterCurrentWorkspaceItems(i3, baseLoaderResults$WorkspaceBinder.mAppWidgets, arrayList5, arrayList6);
            InvariantDeviceProfile invariantDeviceProfile = baseLoaderResults$WorkspaceBinder.mApp.mInvariantDeviceProfile;
            W.sortWorkspaceItemsSpatially(invariantDeviceProfile, arrayList3);
            int i4 = invariantDeviceProfile.numColumns;
            Collections.sort(arrayList4, new E(invariantDeviceProfile.numRows * i4, i4));
            baseLoaderResults$WorkspaceBinder.executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: c.a.a.N0.o
                @Override // com.android.launcher3.LauncherModel.CallbackTask
                public final void execute(BgDataModel.Callbacks callbacks) {
                    callbacks.clearPendingBinds();
                    callbacks.startBinding();
                }
            }, baseLoaderResults$WorkspaceBinder.mUiExecutor);
            baseLoaderResults$WorkspaceBinder.executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: c.a.a.N0.l
                @Override // com.android.launcher3.LauncherModel.CallbackTask
                public final void execute(BgDataModel.Callbacks callbacks) {
                    callbacks.bindScreens(BaseLoaderResults$WorkspaceBinder.this.mOrderedScreenIds);
                }
            }, baseLoaderResults$WorkspaceBinder.mUiExecutor);
            Executor executor = baseLoaderResults$WorkspaceBinder.mUiExecutor;
            baseLoaderResults$WorkspaceBinder.bindWorkspaceItems(arrayList3, executor);
            baseLoaderResults$WorkspaceBinder.bindAppWidgets(arrayList5, executor);
            final IntArray missingHotseatRanks = W.getMissingHotseatRanks(arrayList3, invariantDeviceProfile.numHotseatIcons);
            final ArrayList arrayList7 = new ArrayList(baseLoaderResults$WorkspaceBinder.mBgDataModel.cachedPredictedItems);
            baseLoaderResults$WorkspaceBinder.executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: c.a.a.N0.m
                @Override // com.android.launcher3.LauncherModel.CallbackTask
                public final void execute(BgDataModel.Callbacks callbacks) {
                    callbacks.bindPredictedItems(arrayList7, missingHotseatRanks);
                }
            }, executor);
            final Executor viewOnDrawExecutor = z ? new ViewOnDrawExecutor() : executor;
            baseLoaderResults$WorkspaceBinder.executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: c.a.a.N0.h
                @Override // com.android.launcher3.LauncherModel.CallbackTask
                public final void execute(BgDataModel.Callbacks callbacks) {
                    callbacks.finishFirstPageBind(z ? (ViewOnDrawExecutor) viewOnDrawExecutor : null);
                }
            }, executor);
            baseLoaderResults$WorkspaceBinder.bindWorkspaceItems(arrayList4, viewOnDrawExecutor);
            baseLoaderResults$WorkspaceBinder.bindAppWidgets(arrayList6, viewOnDrawExecutor);
            baseLoaderResults$WorkspaceBinder.executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: c.a.a.N0.j
                @Override // com.android.launcher3.LauncherModel.CallbackTask
                public final void execute(BgDataModel.Callbacks callbacks) {
                    callbacks.finishBindingItems(pageToBindSynchronously);
                }
            }, viewOnDrawExecutor);
            if (z) {
                baseLoaderResults$WorkspaceBinder.executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: c.a.a.N0.k
                    @Override // com.android.launcher3.LauncherModel.CallbackTask
                    public final void execute(BgDataModel.Callbacks callbacks) {
                        int i5 = pageToBindSynchronously;
                        Executor executor2 = viewOnDrawExecutor;
                        callbacks.onPageBoundSynchronously(i5);
                        callbacks.executeOnNextDraw((ViewOnDrawExecutor) executor2);
                    }
                }, baseLoaderResults$WorkspaceBinder.mUiExecutor);
            }
            i = i2 + 1;
            loaderResults = this;
        }
    }

    public void executeCallbacksTask(final LauncherModel.CallbackTask callbackTask, Executor executor) {
        executor.execute(new Runnable() { // from class: c.a.a.N0.e
            @Override // java.lang.Runnable
            public final void run() {
                LoaderResults loaderResults = LoaderResults.this;
                LauncherModel.CallbackTask callbackTask2 = callbackTask;
                if (loaderResults.mMyBindingId != loaderResults.mBgDataModel.lastBindId) {
                    Log.d("LoaderResults", "Too many consecutive reloads, skipping obsolete data-bind");
                    return;
                }
                for (BgDataModel.Callbacks callbacks : loaderResults.mCallbacksList) {
                    callbackTask2.execute(callbacks);
                }
            }
        });
    }

    public LoaderResults(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList, BgDataModel.Callbacks[] callbacksArr, LooperExecutor looperExecutor) {
        this.mUiExecutor = looperExecutor;
        this.mApp = launcherAppState;
        this.mBgDataModel = bgDataModel;
        this.mBgAllAppsList = allAppsList;
        this.mCallbacksList = callbacksArr;
    }
}
