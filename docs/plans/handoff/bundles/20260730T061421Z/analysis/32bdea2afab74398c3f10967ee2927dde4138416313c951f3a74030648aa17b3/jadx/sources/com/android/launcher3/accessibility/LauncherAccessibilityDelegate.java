package com.android.launcher3.accessibility;

import android.app.AlertDialog;
import android.appwidget.AppWidgetProviderInfo;
import android.content.DialogInterface;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.android.launcher3.AppWidgetResizeFrame;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.ButtonDropTarget;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.PendingAddItemInfo;
import com.android.launcher3.Workspace;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.keyboard.CustomActionsPopup;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.touch.ItemLongClickListener;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes.dex */
public class LauncherAccessibilityDelegate extends View.AccessibilityDelegate implements DragController.DragListener {
    public final SparseArray mActions;
    public DragInfo mDragInfo;
    public final Launcher mLauncher;

    public interface AccessibilityActionHandler {
        void addSupportedAccessibilityActions(AccessibilityNodeInfo accessibilityNodeInfo);

        boolean performAccessibilityAction(int i, ItemInfo itemInfo);
    }

    public class DragInfo {
        public DragType dragType;
        public ItemInfo info;
        public View item;
    }

    public enum DragType {
        ICON,
        FOLDER,
        WIDGET
    }

    public LauncherAccessibilityDelegate(Launcher launcher) {
        SparseArray sparseArray = new SparseArray();
        this.mActions = sparseArray;
        this.mDragInfo = null;
        this.mLauncher = launcher;
        sparseArray.put(R.id.action_remove, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_remove, launcher.getText(R.string.remove_drop_target_label)));
        this.mActions.put(R.id.action_uninstall, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_uninstall, launcher.getText(R.string.uninstall_drop_target_label)));
        this.mActions.put(R.id.action_dismiss_prediction, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_dismiss_prediction, launcher.getText(R.string.dismiss_prediction_label)));
        this.mActions.put(R.id.action_reconfigure, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_reconfigure, launcher.getText(R.string.gadget_setup_text)));
        this.mActions.put(R.id.action_add_to_workspace, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_add_to_workspace, launcher.getText(R.string.action_add_to_workspace)));
        this.mActions.put(R.id.action_move, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move, launcher.getText(R.string.action_move)));
        this.mActions.put(R.id.action_move_to_workspace, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_to_workspace, launcher.getText(R.string.action_move_to_workspace)));
        this.mActions.put(R.id.action_resize, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_resize, launcher.getText(R.string.action_resize)));
        this.mActions.put(R.id.action_deep_shortcuts, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_deep_shortcuts, launcher.getText(R.string.action_deep_shortcut)));
        this.mActions.put(R.id.action_shortcuts_and_notifications, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_deep_shortcuts, launcher.getText(R.string.shortcuts_menu_with_notifications_description)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0079, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addSupportedActions(android.view.View r8, android.view.accessibility.AccessibilityNodeInfo r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.accessibility.LauncherAccessibilityDelegate.addSupportedActions(android.view.View, android.view.accessibility.AccessibilityNodeInfo, boolean):void");
    }

    public void announceConfirmation(int i) {
        announceConfirmation(this.mLauncher.getResources().getString(i));
    }

    public int findSpaceOnWorkspace(ItemInfo itemInfo, int[] iArr) {
        Workspace workspace = this.mLauncher.mWorkspace;
        IntArray intArray = workspace.mScreenOrder;
        int currentPage = workspace.getCurrentPage();
        int i = intArray.get(currentPage);
        CellLayout cellLayout = (CellLayout) workspace.getPageAt(currentPage);
        boolean findVacantCell = cellLayout.mOccupied.findVacantCell(iArr, itemInfo.spanX, itemInfo.spanY);
        for (int i2 = 0; !findVacantCell && i2 < intArray.mSize; i2++) {
            i = intArray.get(i2);
            CellLayout cellLayout2 = (CellLayout) workspace.getPageAt(i2);
            findVacantCell = cellLayout2.mOccupied.findVacantCell(iArr, itemInfo.spanX, itemInfo.spanY);
        }
        if (findVacantCell) {
            return i;
        }
        workspace.addExtraEmptyScreen();
        int commitExtraEmptyScreen = workspace.commitExtraEmptyScreen();
        CellLayout screenWithId = workspace.getScreenWithId(commitExtraEmptyScreen);
        if (!screenWithId.mOccupied.findVacantCell(iArr, itemInfo.spanX, itemInfo.spanY)) {
            Log.wtf("LauncherAccessibilityDelegate", "Not enough space on an empty screen");
        }
        return commitExtraEmptyScreen;
    }

    public final IntArray getSupportedResizeActions(View view, LauncherAppWidgetInfo launcherAppWidgetInfo) {
        IntArray intArray = new IntArray(10);
        AppWidgetProviderInfo appWidgetInfo = ((LauncherAppWidgetHostView) view).getAppWidgetInfo();
        if (appWidgetInfo == null) {
            return intArray;
        }
        CellLayout cellLayout = (CellLayout) view.getParent().getParent();
        if ((appWidgetInfo.resizeMode & 1) != 0) {
            if (cellLayout.isRegionVacant(launcherAppWidgetInfo.cellX + launcherAppWidgetInfo.spanX, launcherAppWidgetInfo.cellY, 1, launcherAppWidgetInfo.spanY) || cellLayout.isRegionVacant(launcherAppWidgetInfo.cellX - 1, launcherAppWidgetInfo.cellY, 1, launcherAppWidgetInfo.spanY)) {
                intArray.add(intArray.mSize, R.string.action_increase_width);
            }
            int i = launcherAppWidgetInfo.spanX;
            if (i > launcherAppWidgetInfo.minSpanX && i > 1) {
                intArray.add(intArray.mSize, R.string.action_decrease_width);
            }
        }
        if ((appWidgetInfo.resizeMode & 2) != 0) {
            if (cellLayout.isRegionVacant(launcherAppWidgetInfo.cellX, launcherAppWidgetInfo.cellY + launcherAppWidgetInfo.spanY, launcherAppWidgetInfo.spanX, 1) || cellLayout.isRegionVacant(launcherAppWidgetInfo.cellX, launcherAppWidgetInfo.cellY - 1, launcherAppWidgetInfo.spanX, 1)) {
                intArray.add(intArray.mSize, R.string.action_increase_height);
            }
            int i2 = launcherAppWidgetInfo.spanY;
            if (i2 > launcherAppWidgetInfo.minSpanY && i2 > 1) {
                intArray.add(intArray.mSize, R.string.action_decrease_height);
            }
        }
        return intArray;
    }

    public void handleAccessibleDrop(View view, Rect rect, String str) {
        if (isInAccessibleDrag()) {
            int[] iArr = new int[2];
            if (rect == null) {
                iArr[0] = view.getWidth() / 2;
                iArr[1] = view.getHeight() / 2;
            } else {
                iArr[0] = rect.centerX();
                iArr[1] = rect.centerY();
            }
            this.mLauncher.mDragLayer.getDescendantCoordRelativeToSelf(view, iArr);
            DragController dragController = this.mLauncher.mDragController;
            int[] iArr2 = dragController.mCoordinatesTemp;
            DropTarget findDropTarget = dragController.findDropTarget(iArr[0], iArr[1], iArr2);
            DropTarget.DragObject dragObject = dragController.mDragObject;
            dragObject.x = iArr2[0];
            dragObject.y = iArr2[1];
            dragController.checkTouchMove(findDropTarget);
            findDropTarget.prepareAccessibilityDrop();
            dragController.drop(findDropTarget, null);
            dragController.endDrag();
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.mLauncher.mDragLayer.announceForAccessibility(str);
        }
    }

    public boolean isInAccessibleDrag() {
        return this.mDragInfo != null;
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragEnd() {
        this.mLauncher.mDragController.mListeners.remove(this);
        this.mDragInfo = null;
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        addSupportedActions(view, accessibilityNodeInfo, false);
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        if ((view.getTag() instanceof ItemInfo) && performAction(view, (ItemInfo) view.getTag(), i)) {
            return true;
        }
        return super.performAccessibilityAction(view, i, bundle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean performAction(final View view, final ItemInfo itemInfo, int i) {
        if (i == 32) {
            if (PopupContainerWithArrow.canShow(view, itemInfo)) {
                PopupContainerWithArrow.showForIcon((BubbleTextView) view);
                return true;
            }
            CustomActionsPopup customActionsPopup = new CustomActionsPopup(this.mLauncher, view);
            if (customActionsPopup.canShow()) {
                customActionsPopup.show();
                return true;
            }
        }
        if ((view instanceof AccessibilityActionHandler) && ((AccessibilityActionHandler) view).performAccessibilityAction(i, itemInfo)) {
            return true;
        }
        if (i == R.id.action_move) {
            DragInfo dragInfo = new DragInfo();
            this.mDragInfo = dragInfo;
            dragInfo.info = itemInfo;
            dragInfo.item = view;
            dragInfo.dragType = DragType.ICON;
            if (itemInfo instanceof FolderInfo) {
                dragInfo.dragType = DragType.FOLDER;
            } else if (itemInfo instanceof LauncherAppWidgetInfo) {
                dragInfo.dragType = DragType.WIDGET;
            }
            Rect rect = new Rect();
            this.mLauncher.mDragLayer.getDescendantRectRelativeToSelf(view, rect);
            this.mLauncher.mDragController.mListeners.add(this);
            DragOptions dragOptions = new DragOptions();
            dragOptions.isAccessibleDrag = true;
            dragOptions.simulatedDndStartPoint = new Point(rect.centerX(), rect.centerY());
            ItemLongClickListener.beginDrag(view, this.mLauncher, itemInfo, dragOptions);
        } else {
            if (i == R.id.action_add_to_workspace) {
                final int[] iArr = new int[2];
                final int findSpaceOnWorkspace = findSpaceOnWorkspace(itemInfo, iArr);
                this.mLauncher.getStateManager().goToState(LauncherState.NORMAL, true, new Runnable() { // from class: com.android.launcher3.accessibility.LauncherAccessibilityDelegate.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ItemInfo itemInfo2 = itemInfo;
                        if (!(itemInfo2 instanceof AppInfo)) {
                            if (itemInfo2 instanceof PendingAddItemInfo) {
                                PendingAddItemInfo pendingAddItemInfo = (PendingAddItemInfo) itemInfo2;
                                Workspace workspace = LauncherAccessibilityDelegate.this.mLauncher.mWorkspace;
                                workspace.snapToPage(workspace.getPageIndexForScreenId(findSpaceOnWorkspace));
                                LauncherAccessibilityDelegate.this.mLauncher.addPendingItem(pendingAddItemInfo, -100, findSpaceOnWorkspace, iArr, pendingAddItemInfo.spanX, pendingAddItemInfo.spanY);
                                return;
                            }
                            return;
                        }
                        WorkspaceItemInfo makeWorkspaceItem = ((AppInfo) itemInfo2).makeWorkspaceItem();
                        ModelWriter modelWriter = LauncherAccessibilityDelegate.this.mLauncher.mModelWriter;
                        int i2 = findSpaceOnWorkspace;
                        int[] iArr2 = iArr;
                        modelWriter.addItemToDatabase(makeWorkspaceItem, -100, i2, iArr2[0], iArr2[1]);
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(makeWorkspaceItem);
                        LauncherAccessibilityDelegate.this.mLauncher.bindItems(arrayList, true);
                        LauncherAccessibilityDelegate.this.announceConfirmation(R.string.item_added_to_workspace);
                    }
                });
                return true;
            }
            if (i == R.id.action_move_to_workspace) {
                Folder open = Folder.getOpen(this.mLauncher);
                open.close(true);
                WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfo;
                open.mInfo.remove(workspaceItemInfo, false);
                int[] iArr2 = new int[2];
                this.mLauncher.mModelWriter.moveItemInDatabase(workspaceItemInfo, -100, findSpaceOnWorkspace(itemInfo, iArr2), iArr2[0], iArr2[1]);
                new Handler().post(new Runnable() { // from class: com.android.launcher3.accessibility.LauncherAccessibilityDelegate.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(itemInfo);
                        LauncherAccessibilityDelegate.this.mLauncher.bindItems(arrayList, true);
                        LauncherAccessibilityDelegate.this.announceConfirmation(R.string.item_moved);
                    }
                });
            } else {
                if (i == R.id.action_resize) {
                    final LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) itemInfo;
                    final IntArray supportedResizeActions = getSupportedResizeActions(view, launcherAppWidgetInfo);
                    CharSequence[] charSequenceArr = new CharSequence[supportedResizeActions.mSize];
                    for (int i2 = 0; i2 < supportedResizeActions.mSize; i2++) {
                        charSequenceArr[i2] = this.mLauncher.getText(supportedResizeActions.get(i2));
                    }
                    new AlertDialog.Builder(this.mLauncher).setTitle(R.string.action_resize).setItems(charSequenceArr, new DialogInterface.OnClickListener() { // from class: com.android.launcher3.accessibility.LauncherAccessibilityDelegate.3
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i3) {
                            LauncherAccessibilityDelegate launcherAccessibilityDelegate = LauncherAccessibilityDelegate.this;
                            IntArray intArray = supportedResizeActions;
                            IntArray.checkBounds(intArray.mSize, i3);
                            int i4 = intArray.mValues[i3];
                            View view2 = view;
                            LauncherAppWidgetInfo launcherAppWidgetInfo2 = launcherAppWidgetInfo;
                            Objects.requireNonNull(launcherAccessibilityDelegate);
                            CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view2.getLayoutParams();
                            CellLayout cellLayout = (CellLayout) view2.getParent().getParent();
                            cellLayout.markCellsAsUnoccupiedForView(view2);
                            if (i4 == R.string.action_increase_width) {
                                if ((view2.getLayoutDirection() == 1 && cellLayout.isRegionVacant(launcherAppWidgetInfo2.cellX - 1, launcherAppWidgetInfo2.cellY, 1, launcherAppWidgetInfo2.spanY)) || !cellLayout.isRegionVacant(launcherAppWidgetInfo2.cellX + launcherAppWidgetInfo2.spanX, launcherAppWidgetInfo2.cellY, 1, launcherAppWidgetInfo2.spanY)) {
                                    layoutParams.cellX--;
                                    launcherAppWidgetInfo2.cellX--;
                                }
                                layoutParams.cellHSpan++;
                                launcherAppWidgetInfo2.spanX++;
                            } else if (i4 == R.string.action_decrease_width) {
                                layoutParams.cellHSpan--;
                                launcherAppWidgetInfo2.spanX--;
                            } else if (i4 == R.string.action_increase_height) {
                                if (!cellLayout.isRegionVacant(launcherAppWidgetInfo2.cellX, launcherAppWidgetInfo2.cellY + launcherAppWidgetInfo2.spanY, launcherAppWidgetInfo2.spanX, 1)) {
                                    layoutParams.cellY--;
                                    launcherAppWidgetInfo2.cellY--;
                                }
                                layoutParams.cellVSpan++;
                                launcherAppWidgetInfo2.spanY++;
                            } else if (i4 == R.string.action_decrease_height) {
                                layoutParams.cellVSpan--;
                                launcherAppWidgetInfo2.spanY--;
                            }
                            cellLayout.markCellsAsOccupiedForView(view2);
                            Rect rect2 = new Rect();
                            AppWidgetResizeFrame.getWidgetSizeRanges(launcherAccessibilityDelegate.mLauncher, launcherAppWidgetInfo2.spanX, launcherAppWidgetInfo2.spanY, rect2);
                            ((LauncherAppWidgetHostView) view2).updateAppWidgetSize(null, rect2.left, rect2.top, rect2.right, rect2.bottom);
                            view2.requestLayout();
                            launcherAccessibilityDelegate.mLauncher.mModelWriter.updateItemInDatabase(launcherAppWidgetInfo2);
                            launcherAccessibilityDelegate.announceConfirmation(launcherAccessibilityDelegate.mLauncher.getString(R.string.widget_resized, new Object[]{Integer.valueOf(launcherAppWidgetInfo2.spanX), Integer.valueOf(launcherAppWidgetInfo2.spanY)}));
                            dialogInterface.dismiss();
                        }
                    }).show();
                    return true;
                }
                if (i == R.id.action_deep_shortcuts) {
                    return PopupContainerWithArrow.showForIcon((BubbleTextView) view) != null;
                }
                for (ButtonDropTarget buttonDropTarget : this.mLauncher.mDropTargetBar.mDropTargets) {
                    if (buttonDropTarget.supportsAccessibilityDrop(itemInfo, view) && i == buttonDropTarget.getAccessibilityAction()) {
                        buttonDropTarget.onAccessibilityDrop(view, itemInfo);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public void announceConfirmation(String str) {
        this.mLauncher.mDragLayer.announceForAccessibility(str);
    }
}
