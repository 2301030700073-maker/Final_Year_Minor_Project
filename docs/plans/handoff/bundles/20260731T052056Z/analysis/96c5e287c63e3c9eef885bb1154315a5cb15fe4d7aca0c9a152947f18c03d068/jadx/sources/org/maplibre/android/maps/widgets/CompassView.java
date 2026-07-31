package org.maplibre.android.maps.widgets;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.recyclerview.widget.RecyclerView;
import org.maplibre.android.maps.CameraChangeDispatcher;
import org.maplibre.android.maps.MapView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CompassView extends ImageView implements Runnable {
    public MapView.AnonymousClass2 compassAnimationListener;
    public ViewPropertyAnimatorCompat fadeAnimator;
    public boolean fadeCompassViewFacingNorth;
    public boolean isAnimating;
    public float rotation;

    public Drawable getCompassImage() {
        return getDrawable();
    }

    public final boolean isHidden() {
        if (this.fadeCompassViewFacingNorth) {
            return ((double) Math.abs(this.rotation)) >= 359.0d || ((double) Math.abs(this.rotation)) <= 1.0d;
        }
        return false;
    }

    public final void resetAnimation() {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.fadeAnimator;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
        }
        this.fadeAnimator = null;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (isHidden()) {
            MapView.AnonymousClass2 anonymousClass2 = this.compassAnimationListener;
            CompassView compassView = ((MapView) anonymousClass2.this$0).compassView;
            if (compassView != null) {
                compassView.isAnimating = false;
            }
            ((CameraChangeDispatcher) anonymousClass2.val$cameraChangeDispatcher).onCameraIdle();
            resetAnimation();
            setLayerType(2, null);
            ViewPropertyAnimatorCompat animate = ViewCompat.animate(this);
            animate.alpha(RecyclerView.DECELERATION_RATE);
            animate.setDuration(500L);
            this.fadeAnimator = animate;
            animate.setListener(new AppCompatDelegateImpl.AnonymousClass7(3, this));
        }
    }

    public void setCompassImage(Drawable drawable) {
        setImageDrawable(drawable);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!z || isHidden()) {
            resetAnimation();
            setAlpha(RecyclerView.DECELERATION_RATE);
            setVisibility(4);
        } else {
            resetAnimation();
            setAlpha(1.0f);
            setVisibility(0);
            update(this.rotation);
        }
    }

    public final void update(double d) {
        this.rotation = (float) d;
        if (isEnabled()) {
            if (isHidden()) {
                if (getVisibility() == 4 || this.fadeAnimator != null) {
                    return;
                }
                postDelayed(this, 500L);
                return;
            }
            resetAnimation();
            setAlpha(1.0f);
            setVisibility(0);
            if (this.isAnimating) {
                ((CameraChangeDispatcher) this.compassAnimationListener.val$cameraChangeDispatcher).onCameraMove();
            }
            setRotation(this.rotation);
        }
    }
}
