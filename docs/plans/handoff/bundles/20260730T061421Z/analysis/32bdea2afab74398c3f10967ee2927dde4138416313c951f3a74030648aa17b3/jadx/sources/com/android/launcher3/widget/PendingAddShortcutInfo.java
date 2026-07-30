package com.android.launcher3.widget;

import com.android.launcher3.PendingAddItemInfo;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;

/* loaded from: classes.dex */
public class PendingAddShortcutInfo extends PendingAddItemInfo {
    public ShortcutConfigActivityInfo activityInfo;

    public PendingAddShortcutInfo(ShortcutConfigActivityInfo shortcutConfigActivityInfo) {
        this.activityInfo = shortcutConfigActivityInfo;
        this.componentName = shortcutConfigActivityInfo.mCn;
        this.user = shortcutConfigActivityInfo.mUser;
        this.itemType = shortcutConfigActivityInfo.getItemType();
        this.container = -105;
    }
}
