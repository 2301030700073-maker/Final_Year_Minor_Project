package com.google.android.material.animation;

import android.animation.TypeEvaluator;
import org.bouncycastle.pqc.crypto.rainbow.util.GF2Field;

/* loaded from: classes.dex */
public class ArgbEvaluatorCompat implements TypeEvaluator {
    private static final ArgbEvaluatorCompat instance = new ArgbEvaluatorCompat();

    public static ArgbEvaluatorCompat getInstance() {
        return instance;
    }

    @Override // android.animation.TypeEvaluator
    public Integer evaluate(float f, Integer num, Integer num2) {
        int intValue = num.intValue();
        float f2 = ((intValue >> 24) & GF2Field.MASK) / 255.0f;
        float f3 = ((intValue >> 16) & GF2Field.MASK) / 255.0f;
        float f4 = ((intValue >> 8) & GF2Field.MASK) / 255.0f;
        int intValue2 = num2.intValue();
        float f5 = ((intValue2 >> 24) & GF2Field.MASK) / 255.0f;
        float f6 = ((intValue2 >> 16) & GF2Field.MASK) / 255.0f;
        float f7 = ((intValue2 >> 8) & GF2Field.MASK) / 255.0f;
        float pow = (float) Math.pow(f3, 2.2d);
        float pow2 = (float) Math.pow(f4, 2.2d);
        float pow3 = (float) Math.pow((intValue & GF2Field.MASK) / 255.0f, 2.2d);
        float pow4 = (float) Math.pow(f6, 2.2d);
        float f8 = f2 + ((f5 - f2) * f);
        float pow5 = pow2 + ((((float) Math.pow(f7, 2.2d)) - pow2) * f);
        float pow6 = pow3 + (f * (((float) Math.pow((intValue2 & GF2Field.MASK) / 255.0f, 2.2d)) - pow3));
        return Integer.valueOf((Math.round(((float) Math.pow(pow + ((pow4 - pow) * f), 0.45454545454545453d)) * 255.0f) << 16) | (Math.round(f8 * 255.0f) << 24) | (Math.round(((float) Math.pow(pow5, 0.45454545454545453d)) * 255.0f) << 8) | Math.round(((float) Math.pow(pow6, 0.45454545454545453d)) * 255.0f));
    }
}
