package com.fsck.k9.ui.compose;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Bitmap;
import android.view.ViewGroup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SimpleHighlightView$fadeInHighlight$$inlined$onAnimationStart$1 extends AnimatorListenerAdapter {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SimpleHighlightView this$0;

    public /* synthetic */ SimpleHighlightView$fadeInHighlight$$inlined$onAnimationStart$1(SimpleHighlightView simpleHighlightView, int i) {
        this.$r8$classId = i;
        this.this$0 = simpleHighlightView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        switch (this.$r8$classId) {
            case 1:
                animator.getClass();
                SimpleHighlightView simpleHighlightView = this.this$0;
                simpleHighlightView.setVisibility(8);
                Bitmap bitmap = simpleHighlightView.bitmapBuffer;
                if (bitmap != null && !bitmap.isRecycled()) {
                    bitmap.recycle();
                    simpleHighlightView.bitmapBuffer = null;
                }
                ViewGroup viewGroup = simpleHighlightView.parent;
                if (viewGroup != null) {
                    viewGroup.removeView(simpleHighlightView);
                    break;
                }
                break;
            default:
                super.onAnimationEnd(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.$r8$classId) {
            case 0:
                animator.getClass();
                this.this$0.setVisibility(0);
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }
}
