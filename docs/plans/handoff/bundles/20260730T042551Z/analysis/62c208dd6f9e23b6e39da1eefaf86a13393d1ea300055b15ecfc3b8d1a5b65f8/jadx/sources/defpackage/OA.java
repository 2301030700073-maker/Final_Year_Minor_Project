package defpackage;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class OA extends Drawable {

    /* renamed from: do, reason: not valid java name */
    public static final double f2587do = Math.cos(Math.toRadians(45.0d));

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final /* synthetic */ int f2588do = 0;

    /* renamed from: do, reason: not valid java name */
    public static float m1638do(float f, float f2, boolean z) {
        if (!z) {
            return f * 1.5f;
        }
        return (float) (((1.0d - f2587do) * f2) + (f * 1.5f));
    }
}
