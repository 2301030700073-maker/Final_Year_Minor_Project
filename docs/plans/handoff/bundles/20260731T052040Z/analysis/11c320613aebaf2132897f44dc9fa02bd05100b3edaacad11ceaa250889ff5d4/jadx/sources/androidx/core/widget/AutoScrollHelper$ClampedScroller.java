package androidx.core.widget;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
