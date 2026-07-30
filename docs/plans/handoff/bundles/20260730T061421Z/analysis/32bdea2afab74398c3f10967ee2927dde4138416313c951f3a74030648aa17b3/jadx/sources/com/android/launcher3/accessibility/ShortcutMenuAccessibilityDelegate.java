package com.android.launcher3.accessibility;

import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.notification.NotificationMainView;
import com.android.launcher3.shortcuts.DeepShortcutView;
import com.android.systemui.shared.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ShortcutMenuAccessibilityDelegate extends LauncherAccessibilityDelegate {
    public ShortcutMenuAccessibilityDelegate(Launcher launcher) {
        super(launcher);
        this.mActions.put(R.id.action_dismiss_notification, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_dismiss_notification, launcher.getText(R.string.action_dismiss_notification)));
    }

    @Override // com.android.launcher3.accessibility.LauncherAccessibilityDelegate
    public void addSupportedActions(View view, AccessibilityNodeInfo accessibilityNodeInfo, boolean z) {
        if (view.getParent() instanceof DeepShortcutView) {
            accessibilityNodeInfo.addAction((AccessibilityNodeInfo.AccessibilityAction) this.mActions.get(R.id.action_add_to_workspace));
        } else if ((view instanceof NotificationMainView) && ((NotificationMainView) view).canChildBeDismissed()) {
            accessibilityNodeInfo.addAction((AccessibilityNodeInfo.AccessibilityAction) this.mActions.get(R.id.action_dismiss_notification));
        }
    }

    @Override // com.android.launcher3.accessibility.LauncherAccessibilityDelegate
    public boolean performAction(View view, ItemInfo itemInfo, int i) {
        if (i != R.id.action_add_to_workspace) {
            if (i != R.id.action_dismiss_notification || !(view instanceof NotificationMainView)) {
                return false;
            }
            ((NotificationMainView) view).onChildDismissed();
            announceConfirmation(R.string.notification_dismissed);
            return true;
        }
        if (!(view.getParent() instanceof DeepShortcutView)) {
            return false;
        }
        final WorkspaceItemInfo finalInfo = ((DeepShortcutView) view.getParent()).getFinalInfo();
        final int[] iArr = new int[2];
        final int findSpaceOnWorkspace = findSpaceOnWorkspace(itemInfo, iArr);
        this.mLauncher.getStateManager().goToState(LauncherState.NORMAL, true, new Runnable() { // from class: com.android.launcher3.accessibility.ShortcutMenuAccessibilityDelegate.1
            @Override // java.lang.Runnable
            public void run() {
                ModelWriter modelWriter = ShortcutMenuAccessibilityDelegate.this.mLauncher.mModelWriter;
                WorkspaceItemInfo workspaceItemInfo = finalInfo;
                int i2 = findSpaceOnWorkspace;
                int[] iArr2 = iArr;
                modelWriter.addItemToDatabase(workspaceItemInfo, -100, i2, iArr2[0], iArr2[1]);
                ArrayList arrayList = new ArrayList();
                arrayList.add(finalInfo);
                ShortcutMenuAccessibilityDelegate.this.mLauncher.bindItems(arrayList, true);
                AbstractFloatingView.closeAllOpenViews(ShortcutMenuAccessibilityDelegate.this.mLauncher);
                ShortcutMenuAccessibilityDelegate.this.announceConfirmation(R.string.item_added_to_workspace);
            }
        });
        return true;
    }
}
