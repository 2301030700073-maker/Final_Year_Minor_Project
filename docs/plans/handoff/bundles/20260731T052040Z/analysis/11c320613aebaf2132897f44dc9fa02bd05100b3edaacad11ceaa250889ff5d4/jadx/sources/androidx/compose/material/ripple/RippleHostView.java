package androidx.compose.material.ripple;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.animation.AnimationUtils;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import kotlin.math.MathKt;
import org.acra.builder.ReportExecutor$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RippleHostView extends View {
    public static final int[] PressedState = {R.attr.state_pressed, R.attr.state_enabled};
    public static final int[] RestingState = new int[0];
    public Boolean bounded;
    public Long lastRippleStateChangeTimeMillis;
    public Worker$$ExternalSyntheticLambda0 onInvalidateRipple;
    public ReportExecutor$$ExternalSyntheticLambda0 resetRippleRunnable;
    public UnprojectedRipple ripple;

    private final void setRippleState(boolean z) {
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        Runnable runnable = this.resetRippleRunnable;
        if (runnable != null) {
            removeCallbacks(runnable);
            runnable.run();
        }
        Long l = this.lastRippleStateChangeTimeMillis;
        long longValue = currentAnimationTimeMillis - (l != null ? l.longValue() : 0L);
        if (z || longValue >= 5) {
            int[] iArr = z ? PressedState : RestingState;
            UnprojectedRipple unprojectedRipple = this.ripple;
            if (unprojectedRipple != null) {
                unprojectedRipple.setState(iArr);
            }
        } else {
            ReportExecutor$$ExternalSyntheticLambda0 reportExecutor$$ExternalSyntheticLambda0 = new ReportExecutor$$ExternalSyntheticLambda0(this, 3);
            this.resetRippleRunnable = reportExecutor$$ExternalSyntheticLambda0;
            postDelayed(reportExecutor$$ExternalSyntheticLambda0, 50L);
        }
        this.lastRippleStateChangeTimeMillis = Long.valueOf(currentAnimationTimeMillis);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setRippleState$lambda$1(RippleHostView rippleHostView) {
        UnprojectedRipple unprojectedRipple = rippleHostView.ripple;
        if (unprojectedRipple != null) {
            unprojectedRipple.setState(RestingState);
        }
        rippleHostView.resetRippleRunnable = null;
    }

    /* renamed from: addRipple-KOepWvA, reason: not valid java name */
    public final void m124addRippleKOepWvA(PressInteraction.Press press, boolean z, long j, int i, long j2, Worker$$ExternalSyntheticLambda0 worker$$ExternalSyntheticLambda0) {
        if (this.ripple == null || !Boolean.valueOf(z).equals(this.bounded)) {
            UnprojectedRipple unprojectedRipple = new UnprojectedRipple(z);
            setBackground(unprojectedRipple);
            this.ripple = unprojectedRipple;
            this.bounded = Boolean.valueOf(z);
        }
        UnprojectedRipple unprojectedRipple2 = this.ripple;
        unprojectedRipple2.getClass();
        this.onInvalidateRipple = worker$$ExternalSyntheticLambda0;
        m125setRipplePropertiesbiQXAtU(i, j, j2);
        if (z) {
            unprojectedRipple2.setHotspot(Float.intBitsToFloat((int) (press.pressPosition >> 32)), Float.intBitsToFloat((int) (press.pressPosition & 4294967295L)));
        } else {
            unprojectedRipple2.setHotspot(unprojectedRipple2.getBounds().centerX(), unprojectedRipple2.getBounds().centerY());
        }
        setRippleState(true);
    }

    public final void disposeRipple() {
        this.onInvalidateRipple = null;
        ReportExecutor$$ExternalSyntheticLambda0 reportExecutor$$ExternalSyntheticLambda0 = this.resetRippleRunnable;
        if (reportExecutor$$ExternalSyntheticLambda0 != null) {
            removeCallbacks(reportExecutor$$ExternalSyntheticLambda0);
            ReportExecutor$$ExternalSyntheticLambda0 reportExecutor$$ExternalSyntheticLambda02 = this.resetRippleRunnable;
            reportExecutor$$ExternalSyntheticLambda02.getClass();
            reportExecutor$$ExternalSyntheticLambda02.run();
        } else {
            UnprojectedRipple unprojectedRipple = this.ripple;
            if (unprojectedRipple != null) {
                unprojectedRipple.setState(RestingState);
            }
        }
        UnprojectedRipple unprojectedRipple2 = this.ripple;
        if (unprojectedRipple2 == null) {
            return;
        }
        unprojectedRipple2.setVisible(false, false);
        unscheduleDrawable(unprojectedRipple2);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        if (isAttachedToWindow()) {
            super.draw(canvas);
        } else {
            disposeRipple();
        }
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Worker$$ExternalSyntheticLambda0 worker$$ExternalSyntheticLambda0 = this.onInvalidateRipple;
        if (worker$$ExternalSyntheticLambda0 != null) {
            worker$$ExternalSyntheticLambda0.invoke();
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public final void removeRipple() {
        setRippleState(false);
    }

    /* renamed from: setRippleProperties-biQXAtU, reason: not valid java name */
    public final void m125setRipplePropertiesbiQXAtU(int i, long j, long j2) {
        long Color;
        UnprojectedRipple unprojectedRipple = this.ripple;
        if (unprojectedRipple == null) {
            return;
        }
        if (unprojectedRipple.getRadius() != i) {
            unprojectedRipple.setRadius(i);
        }
        float f = Build.VERSION.SDK_INT < 28 ? 0.2f : 0.1f;
        if (f > 1.0f) {
            f = 1.0f;
        }
        Color = Brush.Color(Color.m249getRedimpl(j2), Color.m248getGreenimpl(j2), Color.m246getBlueimpl(j2), f, Color.m247getColorSpaceimpl(j2));
        Color color = unprojectedRipple.rippleColor;
        if (!(color == null ? false : Color.m244equalsimpl0(color.value, Color))) {
            unprojectedRipple.rippleColor = new Color(Color);
            unprojectedRipple.setColor(ColorStateList.valueOf(Brush.m235toArgb8_81llA(Color)));
        }
        Rect rect = new Rect(0, 0, MathKt.roundToInt(Float.intBitsToFloat((int) (j >> 32))), MathKt.roundToInt(Float.intBitsToFloat((int) (j & 4294967295L))));
        setLeft(rect.left);
        setTop(rect.top);
        setRight(rect.right);
        setBottom(rect.bottom);
        unprojectedRipple.setBounds(rect);
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }
}
