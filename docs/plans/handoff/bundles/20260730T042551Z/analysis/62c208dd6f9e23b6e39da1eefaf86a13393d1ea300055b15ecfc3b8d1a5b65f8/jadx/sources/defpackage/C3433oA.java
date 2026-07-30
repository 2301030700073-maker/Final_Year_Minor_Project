package defpackage;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.StateSet;
import android.util.TypedValue;

/* renamed from: oA, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3433oA {

    /* renamed from: do, reason: not valid java name */
    public static final int[] f14692do = {R.attr.state_pressed};

    /* renamed from: if, reason: not valid java name */
    public static final int[] f14694if = {R.attr.state_focused};

    /* renamed from: for, reason: not valid java name */
    public static final int[] f14693for = {R.attr.state_selected, R.attr.state_pressed};

    /* renamed from: new, reason: not valid java name */
    public static final int[] f14695new = {R.attr.state_selected};

    /* renamed from: try, reason: not valid java name */
    public static final int[] f14696try = {R.attr.state_enabled, R.attr.state_pressed};

    /* renamed from: oA$do, reason: invalid class name */
    public static class Cdo {
        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public static Drawable m7700if(Context context, int i) {
            ColorStateList colorStateList;
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(-1);
            gradientDrawable.setShape(1);
            InsetDrawable insetDrawable = new InsetDrawable((Drawable) gradientDrawable, i, i, i, i);
            ColorStateList valueOf = ColorStateList.valueOf(0);
            TypedValue m304do = C0154Cr.m304do(context, com.joeykrim.rootcheck.R.attr.colorControlHighlight);
            if (m304do != null) {
                int i2 = m304do.resourceId;
                colorStateList = i2 != 0 ? C0466Ra.getColorStateList(context, i2) : ColorStateList.valueOf(m304do.data);
            } else {
                colorStateList = null;
            }
            if (colorStateList != null) {
                valueOf = colorStateList;
            }
            return new RippleDrawable(valueOf, null, insetDrawable);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static ColorStateList m7695do(ColorStateList colorStateList) {
        int[] iArr = f14694if;
        return new ColorStateList(new int[][]{f14695new, iArr, StateSet.NOTHING}, new int[]{m7697if(colorStateList, f14693for), m7697if(colorStateList, iArr), m7697if(colorStateList, f14692do)});
    }

    /* renamed from: for, reason: not valid java name */
    public static ColorStateList m7696for(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return ColorStateList.valueOf(0);
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 22 && i <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0) {
            Color.alpha(colorStateList.getColorForState(f14696try, 0));
        }
        return colorStateList;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m7697if(ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return G8.m707case(colorForState, Math.min(Color.alpha(colorForState) * 2, 255));
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m7698new(int[] iArr) {
        boolean z = false;
        boolean z2 = false;
        for (int i : iArr) {
            if (i == 16842910) {
                z = true;
            } else if (i == 16842908 || i == 16842919 || i == 16843623) {
                z2 = true;
            }
        }
        return z && z2;
    }
}
