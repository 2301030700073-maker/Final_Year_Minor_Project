package com.android.launcher3.util;

import android.content.ComponentName;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public interface ItemInfoMatcher {
    default HashSet filterItemInfos(Iterable iterable) {
        LauncherAppWidgetInfo launcherAppWidgetInfo;
        ComponentName componentName;
        HashSet hashSet = new HashSet();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it.next();
            if (itemInfo instanceof WorkspaceItemInfo) {
                WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfo;
                ComponentName targetComponent = workspaceItemInfo.getTargetComponent();
                if (targetComponent != null && matches(workspaceItemInfo, targetComponent)) {
                    hashSet.add(workspaceItemInfo);
                }
            } else if (itemInfo instanceof FolderInfo) {
                Iterator it2 = ((FolderInfo) itemInfo).contents.iterator();
                while (it2.hasNext()) {
                    WorkspaceItemInfo workspaceItemInfo2 = (WorkspaceItemInfo) it2.next();
                    ComponentName targetComponent2 = workspaceItemInfo2.getTargetComponent();
                    if (targetComponent2 != null && matches(workspaceItemInfo2, targetComponent2)) {
                        hashSet.add(workspaceItemInfo2);
                    }
                }
            } else if ((itemInfo instanceof LauncherAppWidgetInfo) && (componentName = (launcherAppWidgetInfo = (LauncherAppWidgetInfo) itemInfo).providerName) != null && matches(launcherAppWidgetInfo, componentName)) {
                hashSet.add(launcherAppWidgetInfo);
            }
        }
        return hashSet;
    }

    boolean matches(ItemInfo itemInfo, ComponentName componentName);
}
