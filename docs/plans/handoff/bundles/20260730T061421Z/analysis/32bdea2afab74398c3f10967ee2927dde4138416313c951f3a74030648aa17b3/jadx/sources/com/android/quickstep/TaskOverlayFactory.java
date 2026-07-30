package com.android.quickstep;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Insets;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.view.View;
import android.widget.Toast;
import c.a.a.a1.r;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.quickstep.util.RecentsOrientedState;
import com.android.quickstep.views.OverviewActionsView;
import com.android.quickstep.views.TaskThumbnailView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.plugins.OverscrollPlugin;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.model.ThumbnailData;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public class TaskOverlayFactory implements ResourceBasedOverride {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new r(TaskOverlayFactory.class, R.string.task_overlay_factory_class));
    public static final TaskShortcutFactory[] MENU_OPTIONS = {TaskShortcutFactory.APP_INFO, TaskShortcutFactory.SPLIT_SCREEN, TaskShortcutFactory.PIN, TaskShortcutFactory.INSTALL, TaskShortcutFactory.FREE_FORM, TaskShortcutFactory.WELLBEING};

    public interface OverlayUICallbacks {
        void onScreenshot();

        void onShare();
    }

    public class TaskOverlay {
        public OverviewActionsView mActionsView;
        public final Context mApplicationContext;
        public ImageActionsApi mImageApi;
        public boolean mIsAllowedByPolicy;
        public final TaskThumbnailView mThumbnailView;

        public class ScreenshotSystemShortcut extends SystemShortcut {
            public final BaseDraggingActivity mActivity;

            public ScreenshotSystemShortcut(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo) {
                super(R.drawable.ic_screenshot, R.string.action_screenshot, baseDraggingActivity, itemInfo);
                this.mActivity = baseDraggingActivity;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TaskOverlay taskOverlay = TaskOverlay.this;
                taskOverlay.saveScreenshot(taskOverlay.mThumbnailView.getTaskView().getTask());
                SystemShortcut.dismissTaskMenuView(this.mActivity);
            }
        }

        public TaskOverlay(final TaskThumbnailView taskThumbnailView) {
            Context applicationContext = taskThumbnailView.getContext().getApplicationContext();
            this.mApplicationContext = applicationContext;
            this.mThumbnailView = taskThumbnailView;
            Objects.requireNonNull(taskThumbnailView);
            this.mImageApi = new ImageActionsApi(applicationContext, new Supplier() { // from class: c.a.b.e
                @Override // java.util.function.Supplier
                public final Object get() {
                    return TaskThumbnailView.this.getThumbnail();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        @SuppressLint({"NewApi"})
        public void saveScreenshot(Task task) {
            if (this.mThumbnailView.isRealSnapshot()) {
                this.mImageApi.saveScreenshot(this.mThumbnailView.getThumbnail(), getTaskSnapshotBounds(), getTaskSnapshotInsets(), task.key);
            } else {
                showBlockedByPolicyMessage();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void showBlockedByPolicyMessage() {
            Toast.makeText(this.mThumbnailView.getContext(), R.string.blocked_by_policy, 1).show();
        }

        public OverviewActionsView getActionsView() {
            if (this.mActionsView == null) {
                this.mActionsView = (OverviewActionsView) BaseActivity.fromContext(this.mThumbnailView.getContext()).findViewById(R.id.overview_actions_view);
            }
            return this.mActionsView;
        }

        public SystemShortcut getModalStateSystemShortcut(WorkspaceItemInfo workspaceItemInfo) {
            return null;
        }

        public SystemShortcut getScreenshotShortcut(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo) {
            return new ScreenshotSystemShortcut(baseDraggingActivity, itemInfo);
        }

        public Rect getTaskSnapshotBounds() {
            int[] iArr = new int[2];
            this.mThumbnailView.getLocationOnScreen(iArr);
            return new Rect(iArr[0], iArr[1], this.mThumbnailView.getWidth() + iArr[0], this.mThumbnailView.getHeight() + iArr[1]);
        }

        public Insets getTaskSnapshotInsets() {
            return this.mThumbnailView.getScaledInsets();
        }

        public void initOverlay(final Task task, ThumbnailData thumbnailData, Matrix matrix, boolean z) {
            final boolean isRealSnapshot = this.mThumbnailView.isRealSnapshot();
            getActionsView().updateDisabledFlags(2, z);
            getActionsView().setCallbacks(new OverlayUICallbacks() { // from class: com.android.quickstep.TaskOverlayFactory.TaskOverlay.1
                @Override // com.android.quickstep.TaskOverlayFactory.OverlayUICallbacks
                @SuppressLint({"NewApi"})
                public void onScreenshot() {
                    TaskOverlay.this.saveScreenshot(task);
                }

                @Override // com.android.quickstep.TaskOverlayFactory.OverlayUICallbacks
                public void onShare() {
                    if (isRealSnapshot) {
                        TaskOverlay.this.mImageApi.startShareActivity();
                    } else {
                        TaskOverlay.this.showBlockedByPolicyMessage();
                    }
                }
            });
        }

        public void reset() {
        }

        public void resetModalVisuals() {
        }
    }

    public static List getEnabledShortcuts(TaskView taskView) {
        SystemShortcut shortcut;
        ArrayList arrayList = new ArrayList();
        BaseDraggingActivity baseDraggingActivity = (BaseDraggingActivity) BaseActivity.fromContext(taskView.getContext());
        for (TaskShortcutFactory taskShortcutFactory : MENU_OPTIONS) {
            SystemShortcut shortcut2 = taskShortcutFactory.getShortcut(baseDraggingActivity, taskView);
            if (shortcut2 != null) {
                arrayList.add(shortcut2);
            }
        }
        RecentsOrientedState pagedViewOrientedState = taskView.getRecentsView().getPagedViewOrientedState();
        boolean canRecentsActivityRotate = pagedViewOrientedState.canRecentsActivityRotate();
        boolean z = pagedViewOrientedState.getTouchRotation() != 0;
        if (!canRecentsActivityRotate && z) {
            SystemShortcut shortcut3 = TaskShortcutFactory.SCREENSHOT.getShortcut(baseDraggingActivity, taskView);
            if (shortcut3 != null) {
                arrayList.add(shortcut3);
            }
            if (pagedViewOrientedState.getDisplayRotation() == 0 && (shortcut = TaskShortcutFactory.MODAL.getShortcut(baseDraggingActivity, taskView)) != null) {
                arrayList.add(shortcut);
            }
        }
        return arrayList;
    }

    public TaskOverlay createOverlay(TaskThumbnailView taskThumbnailView) {
        return new TaskOverlay(taskThumbnailView);
    }

    public OverscrollPlugin getLocalOverscrollPlugin() {
        return null;
    }
}
