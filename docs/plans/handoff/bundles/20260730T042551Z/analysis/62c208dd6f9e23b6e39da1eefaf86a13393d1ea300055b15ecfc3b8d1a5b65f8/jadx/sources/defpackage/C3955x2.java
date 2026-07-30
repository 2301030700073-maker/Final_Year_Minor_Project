package defpackage;

import android.animation.TypeEvaluator;

/* renamed from: x2, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3955x2 implements TypeEvaluator<Integer> {

    /* renamed from: do, reason: not valid java name */
    public static final C3955x2 f16513do = new C3955x2();

    /* renamed from: do, reason: not valid java name */
    public static Integer m8618do(float f, Integer num, Integer num2) {
        int intValue = num.intValue();
        float f2 = ((intValue >> 24) & 255) / 255.0f;
        int intValue2 = num2.intValue();
        float f3 = ((intValue2 >> 24) & 255) / 255.0f;
        float pow = (float) Math.pow(((intValue >> 16) & 255) / 255.0f, 2.2d);
        float pow2 = (float) Math.pow(((intValue >> 8) & 255) / 255.0f, 2.2d);
        float pow3 = (float) Math.pow((intValue & 255) / 255.0f, 2.2d);
        float pow4 = (float) Math.pow(((intValue2 >> 16) & 255) / 255.0f, 2.2d);
        float pow5 = (float) Math.pow(((intValue2 >> 8) & 255) / 255.0f, 2.2d);
        float pow6 = (float) Math.pow((intValue2 & 255) / 255.0f, 2.2d);
        float m7823for = Cpublic.m7823for(f3, f2, f, f2);
        float m7823for2 = Cpublic.m7823for(pow4, pow, f, pow);
        float m7823for3 = Cpublic.m7823for(pow5, pow2, f, pow2);
        float m7823for4 = Cpublic.m7823for(pow6, pow3, f, pow3);
        float pow7 = ((float) Math.pow(m7823for2, 0.45454545454545453d)) * 255.0f;
        float pow8 = ((float) Math.pow(m7823for3, 0.45454545454545453d)) * 255.0f;
        return Integer.valueOf(Math.round(((float) Math.pow(m7823for4, 0.45454545454545453d)) * 255.0f) | (Math.round(pow7) << 16) | (Math.round(m7823for * 255.0f) << 24) | (Math.round(pow8) << 8));
    }

    @Override // android.animation.TypeEvaluator
    public final /* bridge */ /* synthetic */ Integer evaluate(float f, Integer num, Integer num2) {
        return m8618do(f, num, num2);
    }
}
