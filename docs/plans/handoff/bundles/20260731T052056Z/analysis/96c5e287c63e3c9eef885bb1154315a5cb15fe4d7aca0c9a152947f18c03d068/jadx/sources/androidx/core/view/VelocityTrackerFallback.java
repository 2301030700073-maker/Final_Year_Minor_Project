package androidx.core.view;

import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class VelocityTrackerFallback {
    public final float[] mMovements = new float[20];
    public final long[] mEventTimes = new long[20];
    public float mLastComputedVelocity = RecyclerView.DECELERATION_RATE;
    public int mDataPointsBufferSize = 0;
    public int mDataPointsBufferLastUsedIndex = 0;
}
