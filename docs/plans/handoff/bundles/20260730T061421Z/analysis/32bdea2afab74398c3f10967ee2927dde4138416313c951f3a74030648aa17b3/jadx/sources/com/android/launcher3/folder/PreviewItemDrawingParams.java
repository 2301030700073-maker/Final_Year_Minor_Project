package com.android.launcher3.folder;

import android.graphics.drawable.Drawable;
import com.android.launcher3.model.data.WorkspaceItemInfo;

/* loaded from: classes.dex */
public class PreviewItemDrawingParams {
    public FolderPreviewItemAnim anim;
    public Drawable drawable;
    public boolean hidden;
    public WorkspaceItemInfo item;
    public float scale;
    public float transX;
    public float transY;

    public PreviewItemDrawingParams(float f, float f2, float f3, float f4) {
        this.transX = f;
        this.transY = f2;
        this.scale = f3;
    }

    public void update(float f, float f2, float f3) {
        FolderPreviewItemAnim folderPreviewItemAnim = this.anim;
        if (folderPreviewItemAnim != null) {
            float[] fArr = folderPreviewItemAnim.finalState;
            if (fArr[1] == f || fArr[2] == f2 || fArr[0] == f3) {
                return;
            } else {
                folderPreviewItemAnim.mAnimator.cancel();
            }
        }
        this.transX = f;
        this.transY = f2;
        this.scale = f3;
    }
}
