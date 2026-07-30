package defpackage;

import android.content.Context;
import android.graphics.Color;
import com.joeykrim.rootcheck.R;

/* renamed from: Af, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0098Af {

    /* renamed from: new, reason: not valid java name */
    public static final int f114new = (int) Math.round(5.1000000000000005d);

    /* renamed from: do, reason: not valid java name */
    public final float f115do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f116do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f117do;

    /* renamed from: for, reason: not valid java name */
    public final int f118for;

    /* renamed from: if, reason: not valid java name */
    public final int f119if;

    public C0098Af(Context context) {
        boolean m306if = C0154Cr.m306if(context, R.attr.elevationOverlayEnabled, false);
        int m1584else = O2.m1584else(context, R.attr.elevationOverlayColor, 0);
        int m1584else2 = O2.m1584else(context, R.attr.elevationOverlayAccentColor, 0);
        int m1584else3 = O2.m1584else(context, R.attr.colorSurface, 0);
        float f = context.getResources().getDisplayMetrics().density;
        this.f117do = m306if;
        this.f116do = m1584else;
        this.f119if = m1584else2;
        this.f118for = m1584else3;
        this.f115do = f;
    }

    /* renamed from: do, reason: not valid java name */
    public final int m82do(float f, int i) {
        int i2;
        if (this.f117do) {
            if (G8.m707case(i, 255) == this.f118for) {
                float min = (this.f115do <= 0.0f || f <= 0.0f) ? 0.0f : Math.min(((((float) Math.log1p(f / r2)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
                int alpha = Color.alpha(i);
                int m1581catch = O2.m1581catch(min, G8.m707case(i, 255), this.f116do);
                if (min > 0.0f && (i2 = this.f119if) != 0) {
                    m1581catch = G8.m711new(G8.m707case(i2, f114new), m1581catch);
                }
                return G8.m707case(m1581catch, alpha);
            }
        }
        return i;
    }
}
