package com.android.launcher3.dot;

import android.view.ViewDebug;
import com.android.launcher3.Utilities;

/* loaded from: classes.dex */
public class FolderDotInfo extends DotInfo {
    public int mNumNotifications;

    public void addDotInfo(DotInfo dotInfo) {
        if (dotInfo == null) {
            return;
        }
        int size = dotInfo.mNotificationKeys.size() + this.mNumNotifications;
        this.mNumNotifications = size;
        this.mNumNotifications = Utilities.boundToRange(size, 0, 999);
    }

    @Override // com.android.launcher3.dot.DotInfo
    public int getNotificationCount() {
        return this.mNumNotifications;
    }

    @ViewDebug.ExportedProperty(category = "launcher")
    public boolean hasDot() {
        return this.mNumNotifications > 0;
    }
}
