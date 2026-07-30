package com.android.launcher3.appprediction;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.appprediction.DynamicItemCache;
import com.android.launcher3.appprediction.InstantAppItemInfo;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.InstantAppResolver;
import com.android.quickstep.InstantAppResolverImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public class DynamicItemCache {
    public final Context mContext;
    public final IconCache mIconCache;
    public final InstantAppResolver mInstantAppResolver;
    public final Runnable mOnUpdateCallback;
    public final Handler mWorker = new Handler(Executors.MODEL_EXECUTOR.getLooper(), new Handler.Callback() { // from class: c.a.a.F0.b
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00d1, code lost:
        
            if (r5.isDefaultIcon(r6, r7.user) == false) goto L33;
         */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean handleMessage(android.os.Message r12) {
            /*
                Method dump skipped, instructions count: 322
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: c.a.a.F0.b.handleMessage(android.os.Message):boolean");
        }
    });
    public final Handler mUiHandler = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: c.a.a.F0.c
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            DynamicItemCache dynamicItemCache = DynamicItemCache.this;
            Objects.requireNonNull(dynamicItemCache);
            int i = message.what;
            if (i == 1) {
                dynamicItemCache.mShortcuts.clear();
                dynamicItemCache.mShortcuts.putAll((Map) message.obj);
                dynamicItemCache.mOnUpdateCallback.run();
                return true;
            }
            if (i != 2) {
                return false;
            }
            List<InstantAppItemInfo> list = (List) message.obj;
            dynamicItemCache.mInstantApps.clear();
            for (InstantAppItemInfo instantAppItemInfo : list) {
                dynamicItemCache.mInstantApps.put(instantAppItemInfo.getTargetComponent().getPackageName(), instantAppItemInfo);
            }
            dynamicItemCache.mOnUpdateCallback.run();
            return true;
        }
    });
    public final Map mShortcuts = new HashMap();
    public final Map mInstantApps = new HashMap();

    public DynamicItemCache(Context context, Runnable runnable) {
        this.mContext = context;
        this.mInstantAppResolver = InstantAppResolver.newInstance(context);
        this.mOnUpdateCallback = runnable;
        this.mIconCache = LauncherAppState.getInstance(this.mContext).mIconCache;
    }

    public void updateDependencies(List list, AllAppsStore allAppsStore, IconCache.ItemInfoUpdateReceiver itemInfoUpdateReceiver, int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int size = list.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size && i2 < i; i3++) {
            ComponentKeyMapper componentKeyMapper = (ComponentKeyMapper) list.get(i3);
            if (InstantAppResolverImpl.COMPONENT_CLASS_MARKER.equals(componentKeyMapper.componentKey.componentName.getClassName())) {
                arrayList.add(componentKeyMapper.componentKey.componentName.getPackageName());
            } else {
                ComponentKey componentKey = componentKeyMapper.componentKey;
                if (componentKey instanceof ShortcutKey) {
                    arrayList2.add((ShortcutKey) componentKey);
                } else {
                    AppInfo appInfo = (AppInfo) componentKeyMapper.getApp(allAppsStore);
                    if (appInfo != null) {
                        if (appInfo.usingLowResIcon()) {
                            this.mIconCache.updateIconInBackground(itemInfoUpdateReceiver, appInfo);
                        }
                    }
                }
            }
            i2++;
        }
        if (!arrayList2.isEmpty()) {
            this.mWorker.removeMessages(1);
            Message.obtain(this.mWorker, 1, arrayList2).sendToTarget();
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.mWorker.removeMessages(2);
        Message.obtain(this.mWorker, 2, arrayList).sendToTarget();
    }
}
