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
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.navigation.NavBackStackEntry$$ExternalSyntheticLambda0;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;
import kotlin.ULong;
import kotlin.UnsignedKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RippleHostView extends View {
    public static final int[] PressedState = {R.attr.state_pressed, R.attr.state_enabled};
    public static final int[] RestingState = new int[0];
    public Boolean bounded;
    public Long lastRippleStateChangeTimeMillis;
    public NavBackStackEntry$$ExternalSyntheticLambda0 onInvalidateRipple;
    public Task$$ExternalSyntheticLambda0 resetRippleRunnable;
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
            Task$$ExternalSyntheticLambda0 task$$ExternalSyntheticLambda0 = new Task$$ExternalSyntheticLambda0(4, this);
            this.resetRippleRunnable = task$$ExternalSyntheticLambda0;
            postDelayed(task$$ExternalSyntheticLambda0, 50L);
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
    public final void m247addRippleKOepWvA(PressInteraction.Press press, boolean z, long j, int i, long j2, NavBackStackEntry$$ExternalSyntheticLambda0 navBackStackEntry$$ExternalSyntheticLambda0) {
        long j3 = press.pressPosition;
        if (this.ripple == null || !Boolean.valueOf(z).equals(this.bounded)) {
            UnprojectedRipple unprojectedRipple = new UnprojectedRipple(z);
            setBackground(unprojectedRipple);
            this.ripple = unprojectedRipple;
            this.bounded = Boolean.valueOf(z);
        }
        UnprojectedRipple unprojectedRipple2 = this.ripple;
        unprojectedRipple2.getClass();
        this.onInvalidateRipple = navBackStackEntry$$ExternalSyntheticLambda0;
        m248setRipplePropertiesbiQXAtU(i, j, j2);
        if (z) {
            unprojectedRipple2.setHotspot(Float.intBitsToFloat((int) (j3 >> 32)), Float.intBitsToFloat((int) (4294967295L & j3)));
        } else {
            unprojectedRipple2.setHotspot(unprojectedRipple2.getBounds().centerX(), unprojectedRipple2.getBounds().centerY());
        }
        setRippleState(true);
    }

    public final void disposeRipple() {
        this.onInvalidateRipple = null;
        Task$$ExternalSyntheticLambda0 task$$ExternalSyntheticLambda0 = this.resetRippleRunnable;
        if (task$$ExternalSyntheticLambda0 != null) {
            removeCallbacks(task$$ExternalSyntheticLambda0);
            Task$$ExternalSyntheticLambda0 task$$ExternalSyntheticLambda02 = this.resetRippleRunnable;
            task$$ExternalSyntheticLambda02.getClass();
            task$$ExternalSyntheticLambda02.run();
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
        NavBackStackEntry$$ExternalSyntheticLambda0 navBackStackEntry$$ExternalSyntheticLambda0 = this.onInvalidateRipple;
        if (navBackStackEntry$$ExternalSyntheticLambda0 != null) {
            navBackStackEntry$$ExternalSyntheticLambda0.invoke();
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
    public final void m248setRipplePropertiesbiQXAtU(int i, long j, long j2) {
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
        Color = ColorKt.Color(Color.m433getRedimpl(j2), Color.m432getGreenimpl(j2), Color.m430getBlueimpl(j2), f, Color.m431getColorSpaceimpl(j2));
        Color color = unprojectedRipple.rippleColor;
        if (!(color == null ? false : ULong.m820equalsimpl0(color.value, Color))) {
            unprojectedRipple.rippleColor = new Color(Color);
            unprojectedRipple.setColor(ColorStateList.valueOf(ColorKt.m444toArgb8_81llA(Color)));
        }
        Rect rect = new Rect(0, 0, UnsignedKt.roundToInt(Size.m397getWidthimpl(j)), UnsignedKt.roundToInt(Size.m395getHeightimpl(j)));
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
