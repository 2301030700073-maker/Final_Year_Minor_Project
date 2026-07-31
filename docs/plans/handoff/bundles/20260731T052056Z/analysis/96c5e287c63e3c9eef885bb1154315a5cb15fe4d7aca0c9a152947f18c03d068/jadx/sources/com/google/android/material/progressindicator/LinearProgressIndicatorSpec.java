package com.google.android.material.progressindicator;

import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LinearProgressIndicatorSpec {
    public boolean drawHorizontallyInverse;
    public boolean hasInnerCornerRadius;
    public int hideAnimationBehavior;
    public int indeterminateAnimationType;
    public float indeterminateAnimatorDurationScale;
    public int[] indicatorColors;
    public int indicatorDirection;
    public int indicatorTrackGapSize;
    public int showAnimationBehavior;
    public int trackColor;
    public int trackCornerRadius;
    public float trackCornerRadiusFraction;
    public int trackInnerCornerRadius;
    public float trackInnerCornerRadiusFraction;
    public Integer trackStopIndicatorPadding;
    public int trackStopIndicatorSize;
    public int trackThickness;
    public boolean useRelativeTrackCornerRadius;
    public boolean useRelativeTrackInnerCornerRadius;
    public int waveAmplitude;
    public float waveAmplitudeRampProgressMax;
    public float waveAmplitudeRampProgressMin;
    public int waveSpeed;
    public int wavelengthDeterminate;
    public int wavelengthIndeterminate;

    public final int getTrackCornerRadiusInPx() {
        return this.useRelativeTrackCornerRadius ? (int) (this.trackThickness * this.trackCornerRadiusFraction) : this.trackCornerRadius;
    }

    public final int getTrackInnerCornerRadiusInPx() {
        return !this.hasInnerCornerRadius ? getTrackCornerRadiusInPx() : this.useRelativeTrackInnerCornerRadius ? (int) (this.trackThickness * this.trackInnerCornerRadiusFraction) : this.trackInnerCornerRadius;
    }

    public final boolean hasWavyEffect(boolean z) {
        if (this.waveAmplitude <= 0) {
            return false;
        }
        if (z || this.wavelengthIndeterminate <= 0) {
            return z && this.wavelengthDeterminate > 0;
        }
        return true;
    }

    public final void validateSpec() {
        if (this.indicatorTrackGapSize < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("indicatorTrackGapSize must be >= 0.");
            return;
        }
        if (this.trackStopIndicatorSize < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Stop indicator size must be >= 0.");
            return;
        }
        if (this.indeterminateAnimationType == 0) {
            if ((getTrackCornerRadiusInPx() > 0 || (this.hasInnerCornerRadius && getTrackInnerCornerRadiusInPx() > 0)) && this.indicatorTrackGapSize == 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Rounded corners without gap are not supported in contiguous indeterminate animation.");
            } else {
                if (this.indicatorColors.length >= 3) {
                    return;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Contiguous indeterminate animation must be used with 3 or more indicator colors.");
            }
        }
    }
}
