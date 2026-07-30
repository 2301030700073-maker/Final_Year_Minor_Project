package defpackage;

import android.animation.FloatEvaluator;
import android.animation.TypeEvaluator;

/* renamed from: Ui, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0540Ui implements TypeEvaluator<Float> {

    /* renamed from: do, reason: not valid java name */
    public final FloatEvaluator f3953do = new FloatEvaluator();

    @Override // android.animation.TypeEvaluator
    public final Float evaluate(float f, Float f2, Float f3) {
        float floatValue = this.f3953do.evaluate(f, (Number) f2, (Number) f3).floatValue();
        if (floatValue < 0.1f) {
            floatValue = 0.0f;
        }
        return Float.valueOf(floatValue);
    }
}
