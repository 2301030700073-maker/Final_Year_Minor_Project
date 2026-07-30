package defpackage;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.TypedValue;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

/* renamed from: Ft, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0222Ft {
    /* renamed from: do, reason: not valid java name */
    public static float m648do(int i, String[] strArr) {
        float parseFloat = Float.parseFloat(strArr[i]);
        if (parseFloat >= 0.0f && parseFloat <= 1.0f) {
            return parseFloat;
        }
        throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + parseFloat);
    }

    /* renamed from: for, reason: not valid java name */
    public static int m649for(Context context, int i, int i2) {
        TypedValue m304do = C0154Cr.m304do(context, i);
        return (m304do == null || m304do.type != 16) ? i2 : m304do.data;
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m650if(String str, String str2) {
        return str.startsWith(str2.concat("(")) && str.endsWith(")");
    }

    /* renamed from: new, reason: not valid java name */
    public static TimeInterpolator m651new(Context context, int i, Interpolator interpolator) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i, typedValue, true)) {
            return interpolator;
        }
        if (typedValue.type != 3) {
            throw new IllegalArgumentException("Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes.");
        }
        String valueOf = String.valueOf(typedValue.string);
        if (!(m650if(valueOf, "cubic-bezier") || m650if(valueOf, "path"))) {
            return AnimationUtils.loadInterpolator(context, typedValue.resourceId);
        }
        if (!m650if(valueOf, "cubic-bezier")) {
            if (m650if(valueOf, "path")) {
                return Bw.m240for(Cw.m320new(valueOf.substring(5, valueOf.length() - 1)));
            }
            throw new IllegalArgumentException("Invalid motion easing type: ".concat(valueOf));
        }
        String[] split = valueOf.substring(13, valueOf.length() - 1).split(",");
        if (split.length == 4) {
            return Bw.m241if(m648do(0, split), m648do(1, split), m648do(2, split), m648do(3, split));
        }
        throw new IllegalArgumentException("Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: " + split.length);
    }
}
