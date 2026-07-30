package defpackage;

import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

/* renamed from: g1, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2785g1 {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final LinearInterpolator f13028do = new LinearInterpolator();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C0166Dh f13026do = new C0166Dh();

    /* renamed from: do, reason: not valid java name */
    public static final C0144Ch f13025do = new C0144Ch();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3647rq f13029do = new C3647rq();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final DecelerateInterpolator f13027do = new DecelerateInterpolator();

    /* renamed from: do, reason: not valid java name */
    public static float m6709do(float f, float f2, float f3, float f4, float f5) {
        return f5 <= f3 ? f : f5 >= f4 ? f2 : Cpublic.m7823for(f2, f, (f5 - f3) / (f4 - f3), f);
    }

    /* renamed from: if, reason: not valid java name */
    public static int m6710if(float f, int i, int i2) {
        return Math.round(f * (i2 - i)) + i;
    }
}
