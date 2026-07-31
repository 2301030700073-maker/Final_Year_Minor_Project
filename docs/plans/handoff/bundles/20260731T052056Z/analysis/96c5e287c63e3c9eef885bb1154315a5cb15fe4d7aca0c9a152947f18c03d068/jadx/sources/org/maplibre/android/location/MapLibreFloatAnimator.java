package org.maplibre.android.location;

import android.animation.FloatEvaluator;
import android.animation.TypeEvaluator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class MapLibreFloatAnimator extends MapLibreAnimator {
    @Override // org.maplibre.android.location.MapLibreAnimator
    public final TypeEvaluator provideEvaluator() {
        return new FloatEvaluator();
    }
}
