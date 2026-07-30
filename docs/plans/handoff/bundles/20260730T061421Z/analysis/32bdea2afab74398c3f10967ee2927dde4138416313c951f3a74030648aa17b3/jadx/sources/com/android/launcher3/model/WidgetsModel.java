package com.android.launcher3.model;

import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.os.Process;
import android.os.UserHandle;
import b.l.W;
import com.android.launcher3.AppFilter;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.Utilities;
import com.android.launcher3.compat.AlphabeticIndexCompat;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.PackageItemInfo;
import com.android.launcher3.util.MultiHashMap;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.widget.WidgetItemComparator;
import com.android.launcher3.widget.WidgetListRowEntry;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public class WidgetsModel {
    public AppFilter mAppFilter;
    public final MultiHashMap mWidgetsList = new MultiHashMap();

    public synchronized ArrayList getWidgetsList(Context context) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        AlphabeticIndexCompat alphabeticIndexCompat = new AlphabeticIndexCompat(context.getResources().getConfiguration().getLocales());
        WidgetItemComparator widgetItemComparator = new WidgetItemComparator();
        for (Map.Entry entry : this.mWidgetsList.entrySet()) {
            WidgetListRowEntry widgetListRowEntry = new WidgetListRowEntry((PackageItemInfo) entry.getKey(), (ArrayList) entry.getValue());
            widgetListRowEntry.titleSectionName = widgetListRowEntry.pkgItem.title == null ? "" : alphabeticIndexCompat.computeSectionName(widgetListRowEntry.pkgItem.title);
            Collections.sort(widgetListRowEntry.widgets, widgetItemComparator);
            arrayList.add(widgetListRowEntry);
        }
        return arrayList;
    }

    public final synchronized void setWidgetsAndShortcuts(ArrayList arrayList, LauncherAppState launcherAppState, PackageUserKey packageUserKey) {
        HashMap hashMap = new HashMap();
        if (packageUserKey == null) {
            this.mWidgetsList.clear();
        } else {
            PackageItemInfo packageItemInfo = null;
            Iterator it = this.mWidgetsList.keySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                PackageItemInfo packageItemInfo2 = (PackageItemInfo) it.next();
                if (packageItemInfo2.packageName.equals(packageUserKey.mPackageName)) {
                    packageItemInfo = packageItemInfo2;
                    break;
                }
            }
            if (packageItemInfo != null) {
                hashMap.put(packageItemInfo.packageName, packageItemInfo);
                Iterator it2 = ((ArrayList) this.mWidgetsList.get(packageItemInfo)).iterator();
                while (it2.hasNext()) {
                    WidgetItem widgetItem = (WidgetItem) it2.next();
                    if (widgetItem.componentName.getPackageName().equals(packageUserKey.mPackageName) && widgetItem.user.equals(packageUserKey.mUser)) {
                        it2.remove();
                    }
                }
            }
        }
        InvariantDeviceProfile invariantDeviceProfile = launcherAppState.mInvariantDeviceProfile;
        UserHandle myUserHandle = Process.myUserHandle();
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            WidgetItem widgetItem2 = (WidgetItem) it3.next();
            if (widgetItem2.widgetInfo != null) {
                LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo = widgetItem2.widgetInfo;
                Objects.requireNonNull(launcherAppWidgetProviderInfo);
                if (((Utilities.ATLEAST_P ? ((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).widgetFeatures : 0) & 2) == 0) {
                    int min = Math.min(widgetItem2.widgetInfo.spanX, widgetItem2.widgetInfo.minSpanX);
                    int min2 = Math.min(widgetItem2.widgetInfo.spanY, widgetItem2.widgetInfo.minSpanY);
                    if (min <= invariantDeviceProfile.numColumns && min2 <= invariantDeviceProfile.numRows) {
                    }
                }
            }
            if (this.mAppFilter == null) {
                this.mAppFilter = (AppFilter) W.getObject(AppFilter.class, launcherAppState.mContext, R.string.app_filter_class);
            }
            if (this.mAppFilter.shouldShowApp(widgetItem2.componentName)) {
                String packageName = widgetItem2.componentName.getPackageName();
                PackageItemInfo packageItemInfo3 = (PackageItemInfo) hashMap.get(packageName);
                if (packageItemInfo3 == null) {
                    packageItemInfo3 = new PackageItemInfo(packageName);
                    packageItemInfo3.user = widgetItem2.user;
                    hashMap.put(packageName, packageItemInfo3);
                } else if (!myUserHandle.equals(packageItemInfo3.user)) {
                    packageItemInfo3.user = widgetItem2.user;
                }
                this.mWidgetsList.addToList(packageItemInfo3, widgetItem2);
            }
        }
        IconCache iconCache = launcherAppState.mIconCache;
        Iterator it4 = hashMap.values().iterator();
        while (it4.hasNext()) {
            iconCache.getTitleAndIconForApp((PackageItemInfo) it4.next(), true);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x0168, code lost:
    
        if (r7 == null) goto L67;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List update(com.android.launcher3.LauncherAppState r20, com.android.launcher3.util.PackageUserKey r21) {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.model.WidgetsModel.update(com.android.launcher3.LauncherAppState, com.android.launcher3.util.PackageUserKey):java.util.List");
    }
}
