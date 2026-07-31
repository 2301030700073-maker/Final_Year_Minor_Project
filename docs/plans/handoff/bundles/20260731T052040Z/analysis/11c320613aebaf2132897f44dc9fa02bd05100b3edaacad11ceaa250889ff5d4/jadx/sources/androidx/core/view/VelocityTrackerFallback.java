package androidx.core.view;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class VelocityTrackerFallback {
    public final float[] mMovements = new float[20];
    public final long[] mEventTimes = new long[20];
    public float mLastComputedVelocity = 0.0f;
    public int mDataPointsBufferSize = 0;
    public int mDataPointsBufferLastUsedIndex = 0;
}
