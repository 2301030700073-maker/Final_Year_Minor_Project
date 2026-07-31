package androidx.core.widget;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutoScrollHelper$ClampedScroller {
    public long mDeltaTime;
    public int mEffectiveRampDown;
    public int mRampDownDuration;
    public int mRampUpDuration;
    public long mStartTime;
    public long mStopTime;
    public float mStopValue;
    public float mTargetVelocityX;
    public float mTargetVelocityY;

    public final float getValueAt(long j) {
        if (j < this.mStartTime) {
            return 0.0f;
        }
        long j2 = this.mStopTime;
        if (j2 < 0 || j < j2) {
            return ListViewAutoScrollHelper.constrain((j - r0) / this.mRampUpDuration, 0.0f, 1.0f) * 0.5f;
        }
        float f = this.mStopValue;
        return (ListViewAutoScrollHelper.constrain((j - j2) / this.mEffectiveRampDown, 0.0f, 1.0f) * f) + (1.0f - f);
    }
}
