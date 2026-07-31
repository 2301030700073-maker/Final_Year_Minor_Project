package androidx.compose.animation.core;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface FloatAnimationSpec extends AnimationSpec {
    long getDurationNanos(float f, float f2, float f3);

    float getEndVelocity(float f, float f2, float f3);

    float getValueFromNanos(long j, float f, float f2, float f3);

    float getVelocityFromNanos(long j, float f, float f2, float f3);
}
