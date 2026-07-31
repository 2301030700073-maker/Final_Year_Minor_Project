package org.maplibre.android.location;

import org.maplibre.android.location.MapLibreAnimator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnimatorListenerHolder {
    public final int animatorType;
    public final MapLibreAnimator.AnimationsValueChangeListener listener;

    public AnimatorListenerHolder(int i, MapLibreAnimator.AnimationsValueChangeListener animationsValueChangeListener) {
        this.animatorType = i;
        this.listener = animationsValueChangeListener;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AnimatorListenerHolder.class != obj.getClass()) {
            return false;
        }
        AnimatorListenerHolder animatorListenerHolder = (AnimatorListenerHolder) obj;
        if (this.animatorType != animatorListenerHolder.animatorType) {
            return false;
        }
        MapLibreAnimator.AnimationsValueChangeListener animationsValueChangeListener = animatorListenerHolder.listener;
        MapLibreAnimator.AnimationsValueChangeListener animationsValueChangeListener2 = this.listener;
        return animationsValueChangeListener2 != null ? animationsValueChangeListener2.equals(animationsValueChangeListener) : animationsValueChangeListener == null;
    }

    public final int hashCode() {
        int i = this.animatorType * 31;
        MapLibreAnimator.AnimationsValueChangeListener animationsValueChangeListener = this.listener;
        return i + (animationsValueChangeListener != null ? animationsValueChangeListener.hashCode() : 0);
    }
}
