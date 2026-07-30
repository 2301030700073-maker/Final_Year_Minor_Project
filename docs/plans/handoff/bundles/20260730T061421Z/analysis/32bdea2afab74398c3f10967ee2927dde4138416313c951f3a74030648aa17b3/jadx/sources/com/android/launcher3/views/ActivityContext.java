package com.android.launcher3.views;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.ContextThemeWrapper;
import android.view.View;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.model.data.ItemInfo;

/* loaded from: classes.dex */
public interface ActivityContext {
    /* JADX WARN: Multi-variable type inference failed */
    static ActivityContext lookupContext(Context context) {
        if (context instanceof ActivityContext) {
            return (ActivityContext) context;
        }
        if (context instanceof ContextThemeWrapper) {
            return lookupContext(((ContextWrapper) context).getBaseContext());
        }
        throw new IllegalArgumentException("Cannot find ActivityContext in parent tree");
    }

    default boolean finishAutoCancelActionMode() {
        return false;
    }

    default View.AccessibilityDelegate getAccessibilityDelegate() {
        return null;
    }

    DeviceProfile getDeviceProfile();

    default DotInfo getDotInfoForItem(ItemInfo itemInfo) {
        return null;
    }

    BaseDragLayer getDragLayer();

    default void invalidateParent(ItemInfo itemInfo) {
    }
}
