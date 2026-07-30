package com.android.launcher3.views;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.views.Snackbar;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class Snackbar extends AbstractFloatingView {
    public final BaseDraggingActivity mActivity;
    public Runnable mOnDismissed;

    public Snackbar(Context context, AttributeSet attributeSet) {
        super(context, null, 0);
        this.mActivity = (BaseDraggingActivity) BaseActivity.fromContext(context);
        LinearLayout.inflate(context, R.layout.snackbar, this);
    }

    public static /* synthetic */ void a(Runnable runnable, Snackbar snackbar, View view) {
        if (runnable != null) {
            runnable.run();
        }
        snackbar.mOnDismissed = null;
        snackbar.close(true);
    }

    public static void show(BaseDraggingActivity baseDraggingActivity, int i, int i2, Runnable runnable, final Runnable runnable2) {
        AbstractFloatingView.closeOpenViews(baseDraggingActivity, true, 128);
        final Snackbar snackbar = new Snackbar(baseDraggingActivity, null);
        snackbar.setOrientation(0);
        snackbar.setGravity(16);
        Resources resources = baseDraggingActivity.getResources();
        snackbar.setElevation(resources.getDimension(R.dimen.snackbar_elevation));
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.snackbar_padding);
        snackbar.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        snackbar.setBackgroundResource(R.drawable.round_rect_primary);
        snackbar.mIsOpen = true;
        BaseDragLayer dragLayer = baseDraggingActivity.getDragLayer();
        dragLayer.addView(snackbar);
        BaseDragLayer.LayoutParams layoutParams = (BaseDragLayer.LayoutParams) snackbar.getLayoutParams();
        ((FrameLayout.LayoutParams) layoutParams).gravity = 81;
        ((FrameLayout.LayoutParams) layoutParams).height = resources.getDimensionPixelSize(R.dimen.snackbar_height);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.snackbar_max_margin_left_right);
        int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.snackbar_min_margin_left_right);
        int dimensionPixelSize4 = resources.getDimensionPixelSize(R.dimen.snackbar_margin_bottom);
        Rect rect = baseDraggingActivity.getDeviceProfile().mInsets;
        int width = ((dragLayer.getWidth() - (dimensionPixelSize3 * 2)) - rect.left) - rect.right;
        ((FrameLayout.LayoutParams) layoutParams).width = ((dragLayer.getWidth() - (dimensionPixelSize2 * 2)) - rect.left) - rect.right;
        layoutParams.setMargins(0, 0, 0, dimensionPixelSize4 + rect.bottom);
        TextView textView = (TextView) snackbar.findViewById(R.id.label);
        TextView textView2 = (TextView) snackbar.findViewById(R.id.action);
        String string = resources.getString(i);
        String string2 = resources.getString(i2);
        int paddingLeft = (dimensionPixelSize * 2) + textView2.getPaddingLeft() + textView2.getPaddingRight() + textView.getPaddingLeft() + textView.getPaddingRight() + ((int) (textView2.getPaint().measureText(string2) + textView.getPaint().measureText(string)));
        if (paddingLeft > ((FrameLayout.LayoutParams) layoutParams).width) {
            if (paddingLeft <= width) {
                ((FrameLayout.LayoutParams) layoutParams).width = paddingLeft;
            } else {
                int dimensionPixelSize5 = resources.getDimensionPixelSize(R.dimen.snackbar_content_height);
                float dimension = resources.getDimension(R.dimen.snackbar_min_text_size);
                textView.setLines(2);
                int i3 = dimensionPixelSize5 * 2;
                textView.getLayoutParams().height = i3;
                textView2.getLayoutParams().height = i3;
                textView.setTextSize(0, dimension);
                textView2.setTextSize(0, dimension);
                ((FrameLayout.LayoutParams) layoutParams).height += dimensionPixelSize5;
                ((FrameLayout.LayoutParams) layoutParams).width = width;
            }
        }
        textView.setText(string);
        textView2.setText(string2);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: c.a.a.b1.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Snackbar.a(runnable2, snackbar, view);
            }
        });
        snackbar.mOnDismissed = runnable;
        snackbar.setAlpha(RecentsState.NO_OFFSET);
        snackbar.setScaleX(0.8f);
        snackbar.setScaleY(0.8f);
        snackbar.animate().alpha(1.0f).withLayer().scaleX(1.0f).scaleY(1.0f).setDuration(180L).setInterpolator(Interpolators.ACCEL_DEACCEL).start();
        snackbar.postDelayed(new Runnable() { // from class: c.a.a.b1.n
            @Override // java.lang.Runnable
            public final void run() {
                Snackbar.this.close(true);
            }
        }, Utilities.ATLEAST_Q ? ((AccessibilityManager) baseDraggingActivity.getSystemService("accessibility")).getRecommendedTimeoutMillis(4000, 6) : 4000);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void handleClose(boolean z) {
        if (this.mIsOpen) {
            if (z) {
                animate().alpha(RecentsState.NO_OFFSET).withLayer().setStartDelay(0L).setDuration(180L).setInterpolator(Interpolators.ACCEL).withEndAction(new Runnable() { // from class: c.a.a.b1.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        Snackbar snackbar = Snackbar.this;
                        snackbar.mActivity.getDragLayer().removeView(snackbar);
                        Runnable runnable = snackbar.mOnDismissed;
                        if (runnable != null) {
                            runnable.run();
                        }
                    }
                }).start();
            } else {
                animate().cancel();
                this.mActivity.getDragLayer().removeView(this);
                Runnable runnable = this.mOnDismissed;
                if (runnable != null) {
                    runnable.run();
                }
            }
            this.mIsOpen = false;
        }
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public boolean isOfType(int i) {
        return (i & 128) != 0;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void logActionCommand(int i) {
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || this.mActivity.getDragLayer().isEventOverView(this, motionEvent)) {
            return false;
        }
        close(true);
        return false;
    }
}
