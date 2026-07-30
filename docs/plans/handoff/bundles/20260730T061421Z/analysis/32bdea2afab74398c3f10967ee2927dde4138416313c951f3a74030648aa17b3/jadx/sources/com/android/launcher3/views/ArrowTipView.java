package com.android.launcher3.views;

import android.content.Context;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.drawable.ShapeDrawable;
import android.os.Handler;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import b.e.b.b;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.graphics.TriangleShape;
import com.android.launcher3.views.ArrowTipView;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class ArrowTipView extends AbstractFloatingView {
    public final BaseDraggingActivity mActivity;
    public final Handler mHandler;
    public Runnable mOnClosed;

    public ArrowTipView(Context context) {
        super(context, null, 0);
        this.mHandler = new Handler();
        this.mActivity = (BaseDraggingActivity) BaseActivity.fromContext(context);
        LinearLayout.inflate(context, R.layout.arrow_toast, this);
        setOrientation(1);
        findViewById(R.id.dismiss).setOnClickListener(new View.OnClickListener() { // from class: c.a.a.b1.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ArrowTipView.this.handleClose(true);
            }
        });
        View findViewById = findViewById(R.id.arrow);
        ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
        ShapeDrawable shapeDrawable = new ShapeDrawable(TriangleShape.create(layoutParams.width, layoutParams.height, false));
        Paint paint = shapeDrawable.getPaint();
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(android.R.attr.colorAccent, typedValue, true);
        paint.setColor(b.c(getContext(), typedValue.resourceId));
        paint.setPathEffect(new CornerPathEffect(context.getResources().getDimension(R.dimen.arrow_toast_corner_radius)));
        findViewById.setBackground(shapeDrawable);
        this.mIsOpen = true;
        this.mHandler.postDelayed(new Runnable() { // from class: c.a.a.b1.c
            @Override // java.lang.Runnable
            public final void run() {
                ArrowTipView.this.handleClose(true);
            }
        }, 10000L);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void handleClose(boolean z) {
        if (this.mIsOpen) {
            if (z) {
                animate().alpha(RecentsState.NO_OFFSET).withLayer().setStartDelay(0L).setDuration(100L).setInterpolator(Interpolators.ACCEL).withEndAction(new Runnable() { // from class: c.a.a.b1.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        ArrowTipView arrowTipView = ArrowTipView.this;
                        arrowTipView.mActivity.getDragLayer().removeView(arrowTipView);
                    }
                }).start();
            } else {
                animate().cancel();
                this.mActivity.getDragLayer().removeView(this);
            }
            Runnable runnable = this.mOnClosed;
            if (runnable != null) {
                runnable.run();
            }
            this.mIsOpen = false;
        }
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public boolean isOfType(int i) {
        return (i & 32) != 0;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void logActionCommand(int i) {
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        close(true);
        return false;
    }

    public ArrowTipView show(String str, int i) {
        show(str, 1, 0, i);
        return this;
    }

    public ArrowTipView show(String str, int i, int i2, final int i3) {
        ((TextView) findViewById(R.id.text)).setText(str);
        BaseDragLayer dragLayer = this.mActivity.getDragLayer();
        dragLayer.addView(this);
        BaseDragLayer.LayoutParams layoutParams = (BaseDragLayer.LayoutParams) getLayoutParams();
        ((FrameLayout.LayoutParams) layoutParams).gravity = i;
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) findViewById(R.id.arrow).getLayoutParams();
        layoutParams2.gravity = i;
        if (i == 8388613) {
            layoutParams2.setMarginEnd(dragLayer.getMeasuredWidth() - i2);
        } else if (i == 8388611) {
            layoutParams2.setMarginStart(i2);
        }
        requestLayout();
        ((FrameLayout.LayoutParams) layoutParams).leftMargin = this.mActivity.getDeviceProfile().workspacePadding.left;
        ((FrameLayout.LayoutParams) layoutParams).rightMargin = this.mActivity.getDeviceProfile().workspacePadding.right;
        post(new Runnable() { // from class: c.a.a.b1.d
            @Override // java.lang.Runnable
            public final void run() {
                ArrowTipView.this.setY(i3 - r0.getHeight());
            }
        });
        setAlpha(RecentsState.NO_OFFSET);
        animate().alpha(1.0f).withLayer().setStartDelay(200L).setDuration(300L).setInterpolator(Interpolators.DEACCEL).start();
        return this;
    }
}
