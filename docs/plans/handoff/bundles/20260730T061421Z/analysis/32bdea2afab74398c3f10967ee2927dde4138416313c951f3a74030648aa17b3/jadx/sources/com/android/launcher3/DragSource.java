package com.android.launcher3;

import android.view.View;
import com.android.launcher3.DropTarget;
import com.android.launcher3.logging.StatsLogUtils$LogContainerProvider;

/* loaded from: classes.dex */
public interface DragSource extends StatsLogUtils$LogContainerProvider {
    void onDropCompleted(View view, DropTarget.DragObject dragObject, boolean z);
}
