package com.android.launcher3.allapps;

import android.content.Context;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.util.LabelComparator;
import com.android.quickstep.fallback.RecentsState;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class AlphabeticalAppsList implements AllAppsStore.OnUpdateListener {
    public AllAppsGridAdapter mAdapter;
    public final AllAppsStore mAllAppsStore;
    public AppInfoComparator mAppNameComparator;
    public ItemInfoMatcher mItemFilter;
    public final BaseDraggingActivity mLauncher;
    public int mNumAppRowsInAdapter;
    public final int mNumAppsPerRow;
    public ArrayList mSearchResults;
    public final List mApps = new ArrayList();
    public final List mFilteredApps = new ArrayList();
    public final ArrayList mAdapterItems = new ArrayList();
    public final List mFastScrollerSections = new ArrayList();

    public class AdapterItem {
        public AppInfo appInfo = null;
        public int position;
        public int rowAppIndex;
        public int rowIndex;
        public int viewType;
    }

    public class FastScrollSectionInfo {
        public AdapterItem fastScrollToItem;
        public String sectionName;
        public float touchFraction;

        public FastScrollSectionInfo(String str) {
            this.sectionName = str;
        }
    }

    public AlphabeticalAppsList(Context context, AllAppsStore allAppsStore, boolean z) {
        this.mAllAppsStore = allAppsStore;
        this.mLauncher = (BaseDraggingActivity) BaseActivity.fromContext(context);
        this.mAppNameComparator = new AppInfoComparator(context);
        this.mNumAppsPerRow = this.mLauncher.getDeviceProfile().inv.numColumns;
        this.mAllAppsStore.mUpdateListeners.add(this);
    }

    public boolean hasFilter() {
        return this.mSearchResults != null;
    }

    public boolean hasNoFilteredResults() {
        return this.mSearchResults != null && this.mFilteredApps.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v30, types: [java.util.List] */
    @Override // com.android.launcher3.allapps.AllAppsStore.OnUpdateListener
    public void onAppsUpdated() {
        String str;
        ?? arrayList;
        int i;
        this.mApps.clear();
        AppInfo[] appInfoArr = this.mAllAppsStore.mApps;
        int length = appInfoArr.length;
        int i2 = 0;
        while (true) {
            str = null;
            if (i2 >= length) {
                break;
            }
            AppInfo appInfo = appInfoArr[i2];
            ItemInfoMatcher itemInfoMatcher = this.mItemFilter;
            if (itemInfoMatcher == null || itemInfoMatcher.matches(appInfo, null) || hasFilter()) {
                this.mApps.add(appInfo);
            }
            i2++;
        }
        Collections.sort(this.mApps, this.mAppNameComparator);
        if (this.mLauncher.getResources().getConfiguration().locale.equals(Locale.SIMPLIFIED_CHINESE)) {
            TreeMap treeMap = new TreeMap(new LabelComparator());
            for (AppInfo appInfo2 : this.mApps) {
                String str2 = appInfo2.sectionName;
                ArrayList arrayList2 = (ArrayList) treeMap.get(str2);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                    treeMap.put(str2, arrayList2);
                }
                arrayList2.add(appInfo2);
            }
            this.mApps.clear();
            Iterator it = treeMap.entrySet().iterator();
            while (it.hasNext()) {
                this.mApps.addAll((Collection) ((Map.Entry) it.next()).getValue());
            }
        }
        this.mFilteredApps.clear();
        this.mFastScrollerSections.clear();
        this.mAdapterItems.clear();
        if (this.mSearchResults == null) {
            arrayList = this.mApps;
        } else {
            arrayList = new ArrayList();
            Iterator it2 = this.mSearchResults.iterator();
            while (it2.hasNext()) {
                AppInfo app = this.mAllAppsStore.getApp((ComponentKey) it2.next());
                if (app != null) {
                    arrayList.add(app);
                }
            }
        }
        int i3 = 0;
        FastScrollSectionInfo fastScrollSectionInfo = null;
        for (AppInfo appInfo3 : arrayList) {
            String str3 = appInfo3.sectionName;
            if (!str3.equals(str)) {
                fastScrollSectionInfo = new FastScrollSectionInfo(str3);
                this.mFastScrollerSections.add(fastScrollSectionInfo);
                str = str3;
            }
            int i4 = i3 + 1;
            AdapterItem adapterItem = new AdapterItem();
            adapterItem.viewType = 2;
            adapterItem.position = i3;
            adapterItem.appInfo = appInfo3;
            if (fastScrollSectionInfo.fastScrollToItem == null) {
                fastScrollSectionInfo.fastScrollToItem = adapterItem;
            }
            this.mAdapterItems.add(adapterItem);
            this.mFilteredApps.add(appInfo3);
            i3 = i4;
        }
        if (hasFilter()) {
            if (hasNoFilteredResults()) {
                ArrayList arrayList3 = this.mAdapterItems;
                i = i3 + 1;
                AdapterItem adapterItem2 = new AdapterItem();
                adapterItem2.viewType = 4;
                adapterItem2.position = i3;
                arrayList3.add(adapterItem2);
            } else {
                ArrayList arrayList4 = this.mAdapterItems;
                i = i3 + 1;
                AdapterItem adapterItem3 = new AdapterItem();
                adapterItem3.viewType = 16;
                adapterItem3.position = i3;
                arrayList4.add(adapterItem3);
            }
            ArrayList arrayList5 = this.mAdapterItems;
            AdapterItem adapterItem4 = new AdapterItem();
            adapterItem4.viewType = 8;
            adapterItem4.position = i;
            arrayList5.add(adapterItem4);
        }
        if (this.mNumAppsPerRow != 0) {
            int i5 = -1;
            Iterator it3 = this.mAdapterItems.iterator();
            int i6 = 0;
            int i7 = 0;
            while (it3.hasNext()) {
                AdapterItem adapterItem5 = (AdapterItem) it3.next();
                adapterItem5.rowIndex = 0;
                if (AllAppsGridAdapter.isViewType(adapterItem5.viewType, 16)) {
                    i6 = 0;
                } else if (AllAppsGridAdapter.isIconViewType(adapterItem5.viewType)) {
                    if (i6 % this.mNumAppsPerRow == 0) {
                        i5++;
                        i7 = 0;
                    }
                    adapterItem5.rowIndex = i5;
                    adapterItem5.rowAppIndex = i7;
                    i6++;
                    i7++;
                }
            }
            this.mNumAppRowsInAdapter = i5 + 1;
            float size = 1.0f / this.mFastScrollerSections.size();
            float f = 0.0f;
            for (FastScrollSectionInfo fastScrollSectionInfo2 : this.mFastScrollerSections) {
                if (AllAppsGridAdapter.isIconViewType(fastScrollSectionInfo2.fastScrollToItem.viewType)) {
                    fastScrollSectionInfo2.touchFraction = f;
                    f += size;
                } else {
                    fastScrollSectionInfo2.touchFraction = RecentsState.NO_OFFSET;
                }
            }
        }
        AllAppsGridAdapter allAppsGridAdapter = this.mAdapter;
        if (allAppsGridAdapter != null) {
            allAppsGridAdapter.mObservable.b();
        }
    }

    public boolean setOrderedFilter(ArrayList arrayList) {
        ArrayList arrayList2 = this.mSearchResults;
        boolean z = false;
        if (arrayList2 == arrayList) {
            return false;
        }
        if (arrayList2 != null && arrayList2.equals(arrayList)) {
            z = true;
        }
        this.mSearchResults = arrayList;
        onAppsUpdated();
        return !z;
    }
}
