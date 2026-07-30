package com.android.launcher3.settings;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.Property;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import b.l.W;
import b.m.b.AbstractC0168b0;
import b.m.b.t0;
import b.m.b.w0;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class PreferenceHighlighter extends AbstractC0168b0 implements Runnable {
    public final int mIndex;
    public final RecyclerView mRv;
    public static final Property HIGHLIGHT_COLOR = new Property(Integer.TYPE, "highlightColor") { // from class: com.android.launcher3.settings.PreferenceHighlighter.1
        @Override // android.util.Property
        public Object get(Object obj) {
            return Integer.valueOf(((PreferenceHighlighter) obj).mHighlightColor);
        }

        @Override // android.util.Property
        public void set(Object obj, Object obj2) {
            PreferenceHighlighter preferenceHighlighter = (PreferenceHighlighter) obj;
            preferenceHighlighter.mHighlightColor = ((Integer) obj2).intValue();
            preferenceHighlighter.mRv.invalidateItemDecorations();
        }
    };
    public static final int END_COLOR = GraphicsUtils.setColorAlphaBound(-1, 0);
    public final Paint mPaint = new Paint();
    public boolean mHighLightStarted = false;
    public int mHighlightColor = END_COLOR;

    public PreferenceHighlighter(RecyclerView recyclerView, int i) {
        this.mRv = recyclerView;
        this.mIndex = i;
    }

    @Override // b.m.b.AbstractC0168b0
    public void onDraw(Canvas canvas, RecyclerView recyclerView, t0 t0Var) {
        w0 findViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(this.mIndex);
        if (findViewHolderForAdapterPosition == null) {
            return;
        }
        if (this.mHighLightStarted || t0Var.p == 0) {
            if (!this.mHighLightStarted) {
                ObjectAnimator ofArgb = ObjectAnimator.ofArgb(this, (Property<PreferenceHighlighter, Integer>) HIGHLIGHT_COLOR, END_COLOR, GraphicsUtils.setColorAlphaBound(W.getColorAccent(this.mRv.getContext()), 66));
                ofArgb.setDuration(200L);
                ofArgb.setRepeatMode(2);
                ofArgb.setRepeatCount(4);
                ofArgb.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.settings.PreferenceHighlighter.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        final PreferenceHighlighter preferenceHighlighter = PreferenceHighlighter.this;
                        ObjectAnimator ofArgb2 = ObjectAnimator.ofArgb(preferenceHighlighter, (Property<PreferenceHighlighter, Integer>) PreferenceHighlighter.HIGHLIGHT_COLOR, preferenceHighlighter.mHighlightColor, PreferenceHighlighter.END_COLOR);
                        ofArgb2.setDuration(500L);
                        ofArgb2.setStartDelay(15000L);
                        ofArgb2.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.settings.PreferenceHighlighter.3
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator2) {
                                PreferenceHighlighter preferenceHighlighter2 = PreferenceHighlighter.this;
                                preferenceHighlighter2.mRv.removeItemDecoration(preferenceHighlighter2);
                            }
                        });
                        ofArgb2.start();
                    }
                });
                ofArgb.start();
                this.mHighLightStarted = true;
            }
            View view = findViewHolderForAdapterPosition.itemView;
            this.mPaint.setColor(this.mHighlightColor);
            canvas.drawRect(RecentsState.NO_OFFSET, view.getY(), recyclerView.getWidth(), view.getY() + view.getHeight(), this.mPaint);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.mRv.addItemDecoration(this);
        this.mRv.smoothScrollToPosition(this.mIndex);
    }
}
