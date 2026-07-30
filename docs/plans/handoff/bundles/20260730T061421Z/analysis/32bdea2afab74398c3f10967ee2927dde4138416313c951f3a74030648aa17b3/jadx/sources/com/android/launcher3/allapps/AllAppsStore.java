package com.android.launcher3.allapps;

import android.view.View;
import android.view.ViewGroup;
import c.a.a.N0.h0.b;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.PackageUserKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class AllAppsStore {
    public int mModelFlags;
    public PackageUserKey mTempKey = new PackageUserKey(null, null);
    public AppInfo mTempInfo = new AppInfo();
    public AppInfo[] mApps = AppInfo.EMPTY_ARRAY;
    public final List mUpdateListeners = new CopyOnWriteArrayList();
    public final ArrayList mIconContainers = new ArrayList();
    public int mDeferUpdatesFlags = 0;
    public boolean mUpdatePending = false;

    public interface OnUpdateListener {
        void onAppsUpdated();
    }

    public void disableDeferUpdates(int i) {
        int i2 = (~i) & this.mDeferUpdatesFlags;
        this.mDeferUpdatesFlags = i2;
        if (i2 == 0 && this.mUpdatePending) {
            notifyUpdate();
            this.mUpdatePending = false;
        }
    }

    public AppInfo getApp(ComponentKey componentKey) {
        AppInfo appInfo = this.mTempInfo;
        appInfo.componentName = componentKey.componentName;
        appInfo.user = componentKey.user;
        AppInfo[] appInfoArr = this.mApps;
        Comparator comparator = AppInfo.COMPONENT_KEY_COMPARATOR;
        int binarySearch = Arrays.binarySearch(appInfoArr, appInfo, b.f1529a);
        if (binarySearch < 0) {
            return null;
        }
        return this.mApps[binarySearch];
    }

    public boolean hasModelFlag(int i) {
        return (this.mModelFlags & i) != 0;
    }

    public final void notifyUpdate() {
        if (this.mDeferUpdatesFlags != 0) {
            this.mUpdatePending = true;
            return;
        }
        Iterator it = this.mUpdateListeners.iterator();
        while (it.hasNext()) {
            ((OnUpdateListener) it.next()).onAppsUpdated();
        }
    }

    public void registerIconContainer(ViewGroup viewGroup) {
        if (viewGroup != null) {
            this.mIconContainers.add(viewGroup);
        }
    }

    public final void updateAllIcons(Consumer consumer) {
        int size = this.mIconContainers.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            ViewGroup viewGroup = (ViewGroup) this.mIconContainers.get(size);
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt instanceof BubbleTextView) {
                    consumer.accept((BubbleTextView) childAt);
                }
            }
        }
    }
}
