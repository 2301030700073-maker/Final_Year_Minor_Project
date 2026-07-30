package com.android.launcher3.keyboard;

import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.PopupMenu;
import com.android.launcher3.Launcher;
import com.android.launcher3.accessibility.LauncherAccessibilityDelegate;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.popup.PopupContainerWithArrow;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class CustomActionsPopup implements PopupMenu.OnMenuItemClickListener {
    public final LauncherAccessibilityDelegate mDelegate;
    public final View mIcon;
    public final Launcher mLauncher;

    public CustomActionsPopup(Launcher launcher, View view) {
        this.mLauncher = launcher;
        this.mIcon = view;
        PopupContainerWithArrow open = PopupContainerWithArrow.getOpen(launcher);
        if (open != null) {
            this.mDelegate = open.mAccessibilityDelegate;
        } else {
            this.mDelegate = launcher.mAccessibilityDelegate;
        }
    }

    public boolean canShow() {
        return !getActionList().isEmpty();
    }

    public final List getActionList() {
        View view = this.mIcon;
        if (view == null || !(view.getTag() instanceof ItemInfo)) {
            return Collections.EMPTY_LIST;
        }
        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain();
        this.mDelegate.addSupportedActions(this.mIcon, obtain, true);
        ArrayList arrayList = new ArrayList(obtain.getActionList());
        obtain.recycle();
        return arrayList;
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        LauncherAccessibilityDelegate launcherAccessibilityDelegate = this.mDelegate;
        View view = this.mIcon;
        return launcherAccessibilityDelegate.performAction(view, (ItemInfo) view.getTag(), menuItem.getItemId());
    }

    public boolean show() {
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = getActionList();
        if (actionList.isEmpty()) {
            return false;
        }
        PopupMenu popupMenu = new PopupMenu(this.mLauncher, this.mIcon);
        popupMenu.setOnMenuItemClickListener(this);
        Menu menu = popupMenu.getMenu();
        for (AccessibilityNodeInfo.AccessibilityAction accessibilityAction : actionList) {
            menu.add(0, accessibilityAction.getId(), 0, accessibilityAction.getLabel());
        }
        popupMenu.show();
        return true;
    }
}
