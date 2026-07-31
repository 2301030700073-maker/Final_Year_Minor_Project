package androidx.vectordrawable.graphics.drawable;

import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Animatable2Compat$AnimationCallback {
    Animatable2.AnimationCallback mPlatformCallback;

    public Animatable2.AnimationCallback getPlatformCallback() {
        if (this.mPlatformCallback == null) {
            this.mPlatformCallback = new Animatable2.AnimationCallback() { // from class: androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback.1
                @Override // android.graphics.drawable.Animatable2.AnimationCallback
                public final void onAnimationEnd(Drawable drawable) {
                    Animatable2Compat$AnimationCallback.this.onAnimationEnd(drawable);
                }

                @Override // android.graphics.drawable.Animatable2.AnimationCallback
                public final void onAnimationStart(Drawable drawable) {
                    Animatable2Compat$AnimationCallback.this.onAnimationStart(drawable);
                }
            };
        }
        return this.mPlatformCallback;
    }

    public abstract void onAnimationEnd(Drawable drawable);

    public abstract void onAnimationStart(Drawable drawable);
}
