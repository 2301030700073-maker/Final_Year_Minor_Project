package androidx.compose.material.ripple;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.animation.AnimationUtils;
import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.camera.core.Preview$$ExternalSyntheticLambda0;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RippleHostView extends View {
    public static final int[] PressedState = {R.attr.state_pressed, R.attr.state_enabled};
    public static final int[] RestingState = new int[0];
    public Boolean bounded;
    public Long lastRippleStateChangeTimeMillis;
    public OnBackPressedDispatcher$$ExternalSyntheticLambda0 onInvalidateRipple;
    public Preview$$ExternalSyntheticLambda0 resetRippleRunnable;
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
            Preview$$ExternalSyntheticLambda0 preview$$ExternalSyntheticLambda0 = new Preview$$ExternalSyntheticLambda0(20, this);
            this.resetRippleRunnable = preview$$ExternalSyntheticLambda0;
            postDelayed(preview$$ExternalSyntheticLambda0, 50L);
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
    public final void m314addRippleKOepWvA(PressInteraction.Press press, boolean z, long j, int i, long j2, OnBackPressedDispatcher$$ExternalSyntheticLambda0 onBackPressedDispatcher$$ExternalSyntheticLambda0) {
        if (this.ripple == null || !Boolean.valueOf(z).equals(this.bounded)) {
            UnprojectedRipple unprojectedRipple = new UnprojectedRipple(z);
            setBackground(unprojectedRipple);
            this.ripple = unprojectedRipple;
            this.bounded = Boolean.valueOf(z);
        }
        UnprojectedRipple unprojectedRipple2 = this.ripple;
        unprojectedRipple2.getClass();
        this.onInvalidateRipple = onBackPressedDispatcher$$ExternalSyntheticLambda0;
        m315setRipplePropertiesbiQXAtU(i, j, j2);
        if (z) {
            unprojectedRipple2.setHotspot(Float.intBitsToFloat((int) (press.pressPosition >> 32)), Float.intBitsToFloat((int) (press.pressPosition & 4294967295L)));
        } else {
            unprojectedRipple2.setHotspot(unprojectedRipple2.getBounds().centerX(), unprojectedRipple2.getBounds().centerY());
        }
        setRippleState(true);
    }

    public final void disposeRipple() {
        this.onInvalidateRipple = null;
        Preview$$ExternalSyntheticLambda0 preview$$ExternalSyntheticLambda0 = this.resetRippleRunnable;
        if (preview$$ExternalSyntheticLambda0 != null) {
            removeCallbacks(preview$$ExternalSyntheticLambda0);
            Preview$$ExternalSyntheticLambda0 preview$$ExternalSyntheticLambda02 = this.resetRippleRunnable;
            preview$$ExternalSyntheticLambda02.getClass();
            preview$$ExternalSyntheticLambda02.run();
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
        OnBackPressedDispatcher$$ExternalSyntheticLambda0 onBackPressedDispatcher$$ExternalSyntheticLambda0 = this.onInvalidateRipple;
        if (onBackPressedDispatcher$$ExternalSyntheticLambda0 != null) {
            onBackPressedDispatcher$$ExternalSyntheticLambda0.invoke();
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
    public final void m315setRipplePropertiesbiQXAtU(int i, long j, long j2) {
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
        Color = ColorKt.Color(Color.m487getRedimpl(j2), Color.m486getGreenimpl(j2), Color.m484getBlueimpl(j2), f, Color.m485getColorSpaceimpl(j2));
        Color color = unprojectedRipple.rippleColor;
        if (!(color == null ? false : Color.m482equalsimpl0(color.value, Color))) {
            unprojectedRipple.rippleColor = new Color(Color);
            unprojectedRipple.setColor(ColorStateList.valueOf(ColorKt.m500toArgb8_81llA(Color)));
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
