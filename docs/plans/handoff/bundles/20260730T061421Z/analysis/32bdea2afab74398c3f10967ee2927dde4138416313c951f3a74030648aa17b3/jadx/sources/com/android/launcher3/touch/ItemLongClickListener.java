package com.android.launcher3.touch;

import android.view.View;
import b.l.W;
import c.a.a.Y0.g;
import c.a.a.Y0.h;
import c.a.a.x0;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Workspace;
import com.android.launcher3.accessibility.AccessibleDragListenerAdapter;
import com.android.launcher3.accessibility.WorkspaceAccessibilityHelper;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.model.data.ItemInfo;
import java.util.Objects;
import java.util.function.Function;

/* loaded from: classes.dex */
public class ItemLongClickListener {
    public static final View.OnLongClickListener INSTANCE_WORKSPACE = g.f1711a;
    public static final View.OnLongClickListener INSTANCE_ALL_APPS = h.f1712a;

    public static boolean a(View view) {
        W.recordEvent("Main", "onWorkspaceItemLongClick");
        Launcher launcher = Launcher.getLauncher(view.getContext());
        if (!canStartDrag(launcher)) {
            return false;
        }
        if ((!launcher.isInState(LauncherState.NORMAL) && !launcher.isInState(LauncherState.OVERVIEW)) || !(view.getTag() instanceof ItemInfo)) {
            return false;
        }
        launcher.mPendingRequestArgs = null;
        beginDrag(view, launcher, (ItemInfo) view.getTag(), new DragOptions());
        return true;
    }

    public static boolean b(final View view) {
        W.recordEvent("Main", "onAllAppsItemLongClick");
        view.cancelLongPress();
        Launcher launcher = Launcher.getLauncher(view.getContext());
        if (!canStartDrag(launcher)) {
            return false;
        }
        if ((!launcher.isInState(LauncherState.ALL_APPS) && !launcher.isInState(LauncherState.OVERVIEW)) || launcher.mWorkspace.mIsSwitchingState) {
            return false;
        }
        final DragController dragController = launcher.mDragController;
        dragController.mListeners.add(new DragController.DragListener() { // from class: com.android.launcher3.touch.ItemLongClickListener.1
            @Override // com.android.launcher3.dragndrop.DragController.DragListener
            public void onDragEnd() {
                view.setVisibility(0);
                dragController.mListeners.remove(this);
            }

            @Override // com.android.launcher3.dragndrop.DragController.DragListener
            public void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
                view.setVisibility(4);
            }
        });
        DeviceProfile deviceProfile = launcher.getDeviceProfile();
        DragOptions dragOptions = new DragOptions();
        dragOptions.intrinsicIconScaleFactor = deviceProfile.allAppsIconSizePx / deviceProfile.iconSizePx;
        launcher.mWorkspace.beginDragShared(view, launcher.mAppsView, dragOptions);
        return false;
    }

    public static void beginDrag(View view, Launcher launcher, ItemInfo itemInfo, DragOptions dragOptions) {
        Folder open;
        if (itemInfo.container >= 0 && (open = Folder.getOpen(launcher)) != null) {
            if (open.getIconsInReadingOrder().contains(view)) {
                open.startDrag(view, dragOptions);
                return;
            }
            open.close(true);
        }
        CellLayout.CellInfo cellInfo = new CellLayout.CellInfo(view, itemInfo);
        final Workspace workspace = launcher.mWorkspace;
        Objects.requireNonNull(workspace);
        View view2 = cellInfo.cell;
        workspace.mDragInfo = cellInfo;
        view2.setVisibility(4);
        if (dragOptions.isAccessibleDrag) {
            DragController dragController = workspace.mDragController;
            final x0 x0Var = new Function() { // from class: c.a.a.x0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return new WorkspaceAccessibilityHelper((CellLayout) obj);
                }
            };
            dragController.mListeners.add(new AccessibleDragListenerAdapter(workspace, x0Var) { // from class: com.android.launcher3.Workspace.3
                @Override // com.android.launcher3.accessibility.AccessibleDragListenerAdapter
                public void enableAccessibleDrag(boolean z) {
                    super.enableAccessibleDrag(z);
                    setEnableForLayout(Workspace.this.mLauncher.mHotseat, z);
                }
            });
        }
        workspace.beginDragShared(view2, workspace, dragOptions);
    }

    public static boolean canStartDrag(Launcher launcher) {
        if (launcher == null) {
            return false;
        }
        return ((launcher.mWorkspaceLoading || launcher.mPendingRequestArgs != null) || launcher.mDragController.isDragging()) ? false : true;
    }
}
