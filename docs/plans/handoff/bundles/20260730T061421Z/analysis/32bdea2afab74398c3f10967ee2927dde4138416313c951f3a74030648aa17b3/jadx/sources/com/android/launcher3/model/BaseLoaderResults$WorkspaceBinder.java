package com.android.launcher3.model;

import android.util.Log;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.BaseLoaderResults$WorkspaceBinder;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.IntArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class BaseLoaderResults$WorkspaceBinder {
    public final LauncherAppState mApp;
    public final ArrayList mAppWidgets;
    public final BgDataModel mBgDataModel;
    public final BgDataModel.Callbacks mCallbacks;
    public final int mMyBindingId;
    public final IntArray mOrderedScreenIds;
    public final Executor mUiExecutor;
    public final ArrayList mWorkspaceItems;

    public BaseLoaderResults$WorkspaceBinder(BgDataModel.Callbacks callbacks, Executor executor, LauncherAppState launcherAppState, BgDataModel bgDataModel, int i, ArrayList arrayList, ArrayList arrayList2, IntArray intArray) {
        this.mCallbacks = callbacks;
        this.mUiExecutor = executor;
        this.mApp = launcherAppState;
        this.mBgDataModel = bgDataModel;
        this.mMyBindingId = i;
        this.mWorkspaceItems = arrayList;
        this.mAppWidgets = arrayList2;
        this.mOrderedScreenIds = intArray;
    }

    public final void bindAppWidgets(List list, Executor executor) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            final ItemInfo itemInfo = (ItemInfo) list.get(i);
            executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: c.a.a.N0.g
                @Override // com.android.launcher3.LauncherModel.CallbackTask
                public final void execute(BgDataModel.Callbacks callbacks) {
                    callbacks.bindItems(Collections.singletonList(ItemInfo.this), false);
                }
            }, executor);
        }
    }

    public final void bindWorkspaceItems(final ArrayList arrayList, Executor executor) {
        int size = arrayList.size();
        final int i = 0;
        while (i < size) {
            int i2 = i + 6;
            final int i3 = i2 <= size ? 6 : size - i;
            executeCallbacksTask(new LauncherModel.CallbackTask() { // from class: c.a.a.N0.n
                @Override // com.android.launcher3.LauncherModel.CallbackTask
                public final void execute(BgDataModel.Callbacks callbacks) {
                    ArrayList arrayList2 = arrayList;
                    int i4 = i;
                    callbacks.bindItems(arrayList2.subList(i4, i3 + i4), false);
                }
            }, executor);
            i = i2;
        }
    }

    public void executeCallbacksTask(final LauncherModel.CallbackTask callbackTask, Executor executor) {
        executor.execute(new Runnable() { // from class: c.a.a.N0.i
            @Override // java.lang.Runnable
            public final void run() {
                BaseLoaderResults$WorkspaceBinder baseLoaderResults$WorkspaceBinder = BaseLoaderResults$WorkspaceBinder.this;
                LauncherModel.CallbackTask callbackTask2 = callbackTask;
                if (baseLoaderResults$WorkspaceBinder.mMyBindingId != baseLoaderResults$WorkspaceBinder.mBgDataModel.lastBindId) {
                    Log.d("LoaderResults", "Too many consecutive reloads, skipping obsolete data-bind");
                } else {
                    callbackTask2.execute(baseLoaderResults$WorkspaceBinder.mCallbacks);
                }
            }
        });
    }
}
