package org.maplibre.android.style.layers;

import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class TransitionOptions {
    private long delay;
    private long duration;
    private boolean enablePlacementTransitions;

    public TransitionOptions(long j, long j2, boolean z) {
        this.duration = j;
        this.delay = j2;
        this.enablePlacementTransitions = z;
    }

    @Deprecated
    public static TransitionOptions fromTransitionOptions(long j, long j2) {
        return new TransitionOptions(j, j2, true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            TransitionOptions transitionOptions = (TransitionOptions) obj;
            if (this.duration == transitionOptions.duration && this.delay == transitionOptions.delay && this.enablePlacementTransitions == transitionOptions.enablePlacementTransitions) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.duration;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        long j2 = this.delay;
        return ((i + ((int) ((j2 >>> 32) ^ j2))) * 31) + (this.enablePlacementTransitions ? 1 : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TransitionOptions{duration=");
        sb.append(this.duration);
        sb.append(", delay=");
        sb.append(this.delay);
        sb.append(", enablePlacementTransitions=");
        return Animation.CC.m(sb, this.enablePlacementTransitions, '}');
    }

    public static TransitionOptions fromTransitionOptions(long j, long j2, boolean z) {
        return new TransitionOptions(j, j2, z);
    }
}
