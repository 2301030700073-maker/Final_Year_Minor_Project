package com.skydoves.balloon;

import androidx.compose.animation.core.Animation;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BalloonOverlayPadding {
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BalloonOverlayPadding) && Float.compare(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE) == 0 && Float.compare(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE) == 0 && Float.compare(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE) == 0 && Float.compare(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE) == 0;
    }

    public final int hashCode() {
        return Float.floatToIntBits(RecyclerView.DECELERATION_RATE) + Animation.CC.m(Animation.CC.m(Float.floatToIntBits(RecyclerView.DECELERATION_RATE) * 31, RecyclerView.DECELERATION_RATE, 31), RecyclerView.DECELERATION_RATE, 31);
    }

    public final String toString() {
        return "BalloonOverlayPadding(left=0.0, top=0.0, right=0.0, bottom=0.0)";
    }
}
