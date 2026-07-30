package androidx.transition;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.util.AttributeSet;
import defpackage.Cpublic;
import defpackage.HF;
import defpackage.KI;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public class ArcMotion extends PathMotion {

    /* renamed from: new, reason: not valid java name */
    public static final float f7772new = (float) Math.tan(Math.toRadians(35.0d));

    /* renamed from: do, reason: not valid java name */
    public float f7773do;

    /* renamed from: for, reason: not valid java name */
    public float f7774for;

    /* renamed from: if, reason: not valid java name */
    public float f7775if;

    public ArcMotion() {
        this.f7773do = 0.0f;
        this.f7775if = 0.0f;
        this.f7774for = f7772new;
    }

    /* renamed from: if, reason: not valid java name */
    public static float m4600if(float f) {
        if (f < 0.0f || f > 90.0f) {
            throw new IllegalArgumentException("Arc must be between 0 and 90 degrees");
        }
        return (float) Math.tan(Math.toRadians(f / 2.0f));
    }

    @Override // androidx.transition.PathMotion
    /* renamed from: do, reason: not valid java name */
    public final Path mo4601do(float f, float f2, float f3, float f4) {
        float f5;
        float f6;
        float f7;
        Path path = new Path();
        path.moveTo(f, f2);
        float f8 = f3 - f;
        float f9 = f4 - f2;
        float f10 = (f9 * f9) + (f8 * f8);
        float f11 = (f + f3) / 2.0f;
        float f12 = (f2 + f4) / 2.0f;
        float f13 = 0.25f * f10;
        boolean z = f2 > f4;
        if (Math.abs(f8) < Math.abs(f9)) {
            float abs = Math.abs(f10 / (f9 * 2.0f));
            if (z) {
                f6 = abs + f4;
                f5 = f3;
            } else {
                f6 = abs + f2;
                f5 = f;
            }
            f7 = this.f7775if;
        } else {
            float f14 = f10 / (f8 * 2.0f);
            if (z) {
                f6 = f2;
                f5 = f14 + f;
            } else {
                f5 = f3 - f14;
                f6 = f4;
            }
            f7 = this.f7773do;
        }
        float f15 = f13 * f7 * f7;
        float f16 = f11 - f5;
        float f17 = f12 - f6;
        float f18 = (f17 * f17) + (f16 * f16);
        float f19 = this.f7774for;
        float f20 = f13 * f19 * f19;
        if (f18 >= f15) {
            f15 = f18 > f20 ? f20 : 0.0f;
        }
        if (f15 != 0.0f) {
            float sqrt = (float) Math.sqrt(f15 / f18);
            f5 = Cpublic.m7823for(f5, f11, sqrt, f11);
            f6 = Cpublic.m7823for(f6, f12, sqrt, f12);
        }
        path.cubicTo((f + f5) / 2.0f, (f2 + f6) / 2.0f, (f5 + f3) / 2.0f, (f6 + f4) / 2.0f, f3, f4);
        return path;
    }

    public ArcMotion(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7773do = 0.0f;
        this.f7775if = 0.0f;
        this.f7774for = f7772new;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, HF.f1330goto);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        this.f7775if = m4600if(KI.m1136if(obtainStyledAttributes, xmlPullParser, "minimumVerticalAngle", 1, 0.0f));
        this.f7773do = m4600if(KI.m1136if(obtainStyledAttributes, xmlPullParser, "minimumHorizontalAngle", 0, 0.0f));
        this.f7774for = m4600if(KI.m1136if(obtainStyledAttributes, xmlPullParser, "maximumAngle", 2, 70.0f));
        obtainStyledAttributes.recycle();
    }
}
