package com.android.launcher3;

import android.content.Context;
import android.graphics.Rect;
import com.android.launcher3.DropTarget;
import com.android.launcher3.accessibility.DragViewStateAnnouncer;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.folder.FolderNameProvider;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.InstanceIdSequence;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.systemui.shared.tracing.FrameProtoTracer;
import java.util.Objects;

/* loaded from: classes.dex */
public interface DropTarget {

    public class DragObject {
        public FolderNameProvider folderNameProvider;
        public DragViewStateAnnouncer stateAnnouncer;
        public int x = -1;
        public int y = -1;
        public int xOffset = -1;
        public int yOffset = -1;
        public boolean dragComplete = false;
        public DragView dragView = null;
        public ItemInfo dragInfo = null;
        public ItemInfo originalDragInfo = null;
        public DragSource dragSource = null;
        public boolean cancelled = false;
        public boolean deferDragViewCleanupPostAnimation = true;
        public DraggableView originalView = null;
        public final InstanceId logInstanceId = new InstanceIdSequence(FrameProtoTracer.BUFFER_CAPACITY).newInstanceId();

        public DragObject(final Context context) {
            if (FeatureFlags.FOLDER_NAME_SUGGEST.get()) {
                LooperExecutor looperExecutor = Executors.MODEL_EXECUTOR;
                looperExecutor.mHandler.post(new Runnable() { // from class: c.a.a.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        DropTarget.DragObject dragObject = DropTarget.DragObject.this;
                        Context context2 = context;
                        Objects.requireNonNull(dragObject);
                        dragObject.folderNameProvider = FolderNameProvider.newInstance(context2);
                    }
                });
            }
        }

        public final float[] getVisualCenter(float[] fArr) {
            if (fArr == null) {
                fArr = new float[2];
            }
            Rect rect = this.dragView.mDragRegion;
            int i = (this.x - this.xOffset) - rect.left;
            int i2 = (this.y - this.yOffset) - rect.top;
            fArr[0] = (rect.width() / 2) + i;
            fArr[1] = (rect.height() / 2) + i2;
            return fArr;
        }
    }

    boolean acceptDrop(DragObject dragObject);

    void getHitRectRelativeToDragLayer(Rect rect);

    boolean isDropEnabled();

    void onDragEnter(DragObject dragObject);

    void onDragExit(DragObject dragObject);

    void onDragOver(DragObject dragObject);

    void onDrop(DragObject dragObject, DragOptions dragOptions);

    void prepareAccessibilityDrop();
}
