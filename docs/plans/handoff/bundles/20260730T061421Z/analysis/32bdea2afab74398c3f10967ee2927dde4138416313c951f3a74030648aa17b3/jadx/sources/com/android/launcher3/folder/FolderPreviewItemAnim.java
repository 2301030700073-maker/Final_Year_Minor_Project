package com.android.launcher3.folder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.FloatArrayEvaluator;
import android.animation.ObjectAnimator;
import android.util.Property;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class FolderPreviewItemAnim {
    public final float[] finalState;
    public final ObjectAnimator mAnimator;
    public final PreviewItemManager mItemManager;
    public final PreviewItemDrawingParams mParams;
    public static final Property PARAMS = new Property(float[].class, "params") { // from class: com.android.launcher3.folder.FolderPreviewItemAnim.1
        @Override // android.util.Property
        public Object get(Object obj) {
            float[] fArr = FolderPreviewItemAnim.sTempParamsArray;
            PreviewItemDrawingParams previewItemDrawingParams = ((FolderPreviewItemAnim) obj).mParams;
            fArr[0] = previewItemDrawingParams.scale;
            fArr[1] = previewItemDrawingParams.transX;
            fArr[2] = previewItemDrawingParams.transY;
            return fArr;
        }

        @Override // android.util.Property
        public void set(Object obj, Object obj2) {
            FolderPreviewItemAnim folderPreviewItemAnim = (FolderPreviewItemAnim) obj;
            float[] fArr = (float[]) obj2;
            PreviewItemDrawingParams previewItemDrawingParams = folderPreviewItemAnim.mParams;
            previewItemDrawingParams.scale = fArr[0];
            previewItemDrawingParams.transX = fArr[1];
            previewItemDrawingParams.transY = fArr[2];
            folderPreviewItemAnim.mItemManager.mIcon.invalidate();
        }
    };
    public static final PreviewItemDrawingParams sTmpParams = new PreviewItemDrawingParams(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
    public static final float[] sTempParamsArray = new float[3];

    public FolderPreviewItemAnim(PreviewItemManager previewItemManager, final PreviewItemDrawingParams previewItemDrawingParams, int i, int i2, int i3, int i4, int i5, final Runnable runnable) {
        this.mItemManager = previewItemManager;
        this.mParams = previewItemDrawingParams;
        previewItemManager.computePreviewItemDrawingParams(i3, i4, sTmpParams);
        PreviewItemDrawingParams previewItemDrawingParams2 = sTmpParams;
        this.finalState = new float[]{previewItemDrawingParams2.scale, previewItemDrawingParams2.transX, previewItemDrawingParams2.transY};
        this.mItemManager.computePreviewItemDrawingParams(i, i2, previewItemDrawingParams2);
        PreviewItemDrawingParams previewItemDrawingParams3 = sTmpParams;
        ObjectAnimator ofObject = ObjectAnimator.ofObject(this, (Property<FolderPreviewItemAnim, V>) PARAMS, new FloatArrayEvaluator(), new float[]{previewItemDrawingParams3.scale, previewItemDrawingParams3.transX, previewItemDrawingParams3.transY}, this.finalState);
        this.mAnimator = ofObject;
        ofObject.addListener(new AnimatorListenerAdapter(this) { // from class: com.android.launcher3.folder.FolderPreviewItemAnim.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
                previewItemDrawingParams.anim = null;
            }
        });
        this.mAnimator.setDuration(i5);
    }
}
