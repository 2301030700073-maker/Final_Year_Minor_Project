package com.android.launcher3;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.android.launcher3.DeleteDropTarget;
import com.android.launcher3.DropTarget;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.views.Snackbar;
import com.android.systemui.shared.R;
import java.util.Objects;

/* loaded from: classes.dex */
public class DeleteDropTarget extends ButtonDropTarget {
    public int mControlType;
    public final StatsLogManager mStatsLogManager;

    public DeleteDropTarget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void c(int i, ModelWriter modelWriter) {
        this.mLauncher.mPageToBindSynchronously = i;
        modelWriter.mPreparingToUndo = false;
        modelWriter.mDeleteRunnables.clear();
        modelWriter.mModel.forceReload();
        this.mLauncher.getUserEventDispatcher().logActionOnControl(0, 20);
    }

    public final boolean canRemove(ItemInfo itemInfo) {
        return itemInfo.id != -1;
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public void completeDrop(DropTarget.DragObject dragObject) {
        ItemInfo itemInfo = dragObject.dragInfo;
        if (canRemove(itemInfo)) {
            final int currentPage = this.mLauncher.mWorkspace.getCurrentPage();
            onAccessibilityDrop(null, itemInfo);
            final ModelWriter modelWriter = this.mLauncher.mModelWriter;
            Runnable runnable = new Runnable() { // from class: c.a.a.m
                @Override // java.lang.Runnable
                public final void run() {
                    DeleteDropTarget.this.c(currentPage, modelWriter);
                }
            };
            Launcher launcher = this.mLauncher;
            Objects.requireNonNull(modelWriter);
            Snackbar.show(launcher, R.string.item_removed, R.string.undo, new Runnable() { // from class: c.a.a.z0
                @Override // java.lang.Runnable
                public final void run() {
                    ModelWriter.this.commitDelete();
                }
            }, runnable);
        }
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public int getAccessibilityAction() {
        return R.id.action_remove;
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public LauncherLogProto$Target getDropTargetForLogging() {
        LauncherLogProto$Target newTarget = LoggerUtils.newTarget(2);
        newTarget.controlType = this.mControlType;
        return newTarget;
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public void onAccessibilityDrop(View view, ItemInfo itemInfo) {
        this.mLauncher.removeItem(view, itemInfo, true);
        this.mLauncher.mWorkspace.stripEmptyScreens();
        this.mLauncher.mDragLayer.announceForAccessibility(getContext().getString(R.string.item_removed));
    }

    @Override // com.android.launcher3.ButtonDropTarget, com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        super.onDragStart(dragObject, dragOptions);
        ItemInfo itemInfo = dragObject.dragInfo;
        if (!TextUtils.isEmpty(this.mText)) {
            String string = getResources().getString(canRemove(itemInfo) ? R.string.remove_drop_target_label : android.R.string.cancel);
            this.mText = string;
            setContentDescription(string);
            requestLayout();
        }
        this.mControlType = dragObject.dragInfo.id != -1 ? 5 : 14;
    }

    @Override // com.android.launcher3.ButtonDropTarget, com.android.launcher3.DropTarget
    public void onDrop(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        if (canRemove(dragObject.dragInfo)) {
            ModelWriter modelWriter = this.mLauncher.mModelWriter;
            if (!modelWriter.mPreparingToUndo) {
                modelWriter.mDeleteRunnables.isEmpty();
                modelWriter.mDeleteRunnables.clear();
                modelWriter.mPreparingToUndo = true;
            }
            dragObject.dragInfo.container = -1;
        }
        super.onDrop(dragObject, dragOptions);
        this.mStatsLogManager.logger().withInstanceId(dragObject.logInstanceId).log(this.mControlType == 5 ? StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROPPED_ON_REMOVE : StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROPPED_ON_CANCEL);
    }

    @Override // com.android.launcher3.ButtonDropTarget, android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mHoverColor = getResources().getColor(R.color.delete_target_hover_tint);
        setDrawable(R.drawable.ic_remove_shadow);
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public boolean supportsAccessibilityDrop(ItemInfo itemInfo, View view) {
        return itemInfo instanceof WorkspaceItemInfo ? canRemove(itemInfo) : (itemInfo instanceof LauncherAppWidgetInfo) || (itemInfo instanceof FolderInfo);
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public boolean supportsDrop(ItemInfo itemInfo) {
        return true;
    }

    public DeleteDropTarget(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mControlType = 0;
        this.mStatsLogManager = StatsLogManager.newInstance(context);
    }
}
