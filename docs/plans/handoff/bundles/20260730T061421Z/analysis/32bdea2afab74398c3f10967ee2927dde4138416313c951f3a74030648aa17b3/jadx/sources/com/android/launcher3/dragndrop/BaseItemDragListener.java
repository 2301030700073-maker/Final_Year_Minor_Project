package com.android.launcher3.dragndrop;

import android.content.ClipDescription;
import android.content.Intent;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.DragEvent;
import android.view.View;
import c.a.c.a.a;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.dragndrop.BaseItemDragListener;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.states.RotationHelper;
import com.android.launcher3.util.ActivityTracker;
import com.android.launcher3.widget.PendingItemDragHelper;
import com.android.systemui.shared.R;
import java.util.UUID;

/* loaded from: classes.dex */
public abstract class BaseItemDragListener implements View.OnDragListener, DragSource, DragOptions.PreDragCondition, ActivityTracker.SchedulerCallback {
    public DragController mDragController;
    public final String mId = UUID.randomUUID().toString();
    public Launcher mLauncher;
    public final int mPreviewBitmapWidth;
    public final Rect mPreviewRect;
    public final int mPreviewViewWidth;

    public BaseItemDragListener(Rect rect, int i, int i2) {
        this.mPreviewRect = rect;
        this.mPreviewBitmapWidth = i;
        this.mPreviewViewWidth = i2;
    }

    public abstract PendingItemDragHelper createDragHelper();

    public String getMimeType() {
        StringBuilder f = a.f("com.android.launcher3.drag_and_drop/");
        f.append(this.mId);
        return f.toString();
    }

    @Override // android.view.View.OnDragListener
    public boolean onDrag(View view, DragEvent dragEvent) {
        if (this.mLauncher == null || this.mDragController == null) {
            postCleanup();
            return false;
        }
        if (dragEvent.getAction() != 1 && this.mDragController.isDragging()) {
            DragDriver dragDriver = this.mDragController.mDragDriver;
            return dragDriver != null && dragDriver.onDragEvent(dragEvent);
        }
        if (onDragStart(dragEvent)) {
            return true;
        }
        postCleanup();
        return false;
    }

    public boolean onDragStart(DragEvent dragEvent) {
        return onDragStart(dragEvent, this);
    }

    @Override // com.android.launcher3.DragSource
    public void onDropCompleted(View view, DropTarget.DragObject dragObject, boolean z) {
        postCleanup();
    }

    @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
    public void onPreDragEnd(DropTarget.DragObject dragObject, boolean z) {
        if (z) {
            dragObject.dragView.setColor(0);
        }
    }

    @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
    public void onPreDragStart(DropTarget.DragObject dragObject) {
        this.mLauncher.mDragLayer.setAlpha(1.0f);
        dragObject.dragView.setColor(this.mLauncher.getResources().getColor(R.color.delete_target_hover_tint));
    }

    public void postCleanup() {
        if (this.mLauncher != null) {
            Intent intent = new Intent(this.mLauncher.getIntent());
            intent.removeExtra("pin_item_drag_listener");
            this.mLauncher.setIntent(intent);
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: c.a.a.H0.j
            @Override // java.lang.Runnable
            public final void run() {
                BaseItemDragListener baseItemDragListener = BaseItemDragListener.this;
                Launcher launcher = baseItemDragListener.mLauncher;
                if (launcher != null) {
                    RotationHelper rotationHelper = launcher.mRotationHelper;
                    if (rotationHelper.mStateHandlerRequest != 0) {
                        rotationHelper.mStateHandlerRequest = 0;
                        rotationHelper.notifyChange();
                    }
                    baseItemDragListener.mLauncher.mDragLayer.setOnDragListener(null);
                }
            }
        });
    }

    @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
    public boolean shouldStartDrag(double d2) {
        Launcher launcher = this.mLauncher;
        return !(launcher.mWorkspaceLoading || launcher.mPendingRequestArgs != null);
    }

    @Override // com.android.launcher3.util.ActivityTracker.SchedulerCallback
    public boolean init(Launcher launcher, boolean z) {
        AbstractFloatingView.closeAllOpenViews(launcher, z);
        launcher.getStateManager().goToState(LauncherState.NORMAL, z);
        launcher.mDragLayer.setOnDragListener(this);
        RotationHelper rotationHelper = launcher.mRotationHelper;
        if (rotationHelper.mStateHandlerRequest != 2) {
            rotationHelper.mStateHandlerRequest = 2;
            rotationHelper.notifyChange();
        }
        this.mLauncher = launcher;
        this.mDragController = launcher.mDragController;
        return false;
    }

    public boolean onDragStart(DragEvent dragEvent, DragOptions.PreDragCondition preDragCondition) {
        ClipDescription clipDescription = dragEvent.getClipDescription();
        if (clipDescription == null || !clipDescription.hasMimeType(getMimeType())) {
            Log.e("BaseItemDragListener", "Someone started a dragAndDrop before us.");
            return false;
        }
        Point point = new Point((int) dragEvent.getX(), (int) dragEvent.getY());
        DragOptions dragOptions = new DragOptions();
        dragOptions.simulatedDndStartPoint = point;
        dragOptions.preDragCondition = preDragCondition;
        createDragHelper().startDrag(new Rect(this.mPreviewRect), this.mPreviewBitmapWidth, this.mPreviewViewWidth, point, this, dragOptions);
        return true;
    }
}
