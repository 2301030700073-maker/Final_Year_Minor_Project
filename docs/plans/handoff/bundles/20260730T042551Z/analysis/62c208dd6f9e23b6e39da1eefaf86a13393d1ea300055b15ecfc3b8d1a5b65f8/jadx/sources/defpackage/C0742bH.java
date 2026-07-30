package defpackage;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;

/* renamed from: bH, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0742bH {

    /* renamed from: do, reason: not valid java name */
    public static final ThreadLocal<TypedValue> f8356do = new ThreadLocal<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[] f8357do = {-16842910};

    /* renamed from: if, reason: not valid java name */
    public static final int[] f8359if = {R.attr.state_focused};

    /* renamed from: for, reason: not valid java name */
    public static final int[] f8358for = {R.attr.state_pressed};

    /* renamed from: new, reason: not valid java name */
    public static final int[] f8360new = {R.attr.state_checked};

    /* renamed from: try, reason: not valid java name */
    public static final int[] f8361try = new int[0];

    /* renamed from: case, reason: not valid java name */
    public static final int[] f8355case = new int[1];

    /* renamed from: do, reason: not valid java name */
    public static void m4822do(Context context, View view) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(O4.f2581while);
        try {
            if (!obtainStyledAttributes.hasValue(117)) {
                view.getClass().toString();
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static int m4823for(Context context, int i) {
        int[] iArr = f8355case;
        iArr[0] = i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        try {
            return obtainStyledAttributes.getColor(0, 0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static int m4824if(Context context, int i) {
        ColorStateList m4825new = m4825new(context, i);
        if (m4825new != null && m4825new.isStateful()) {
            return m4825new.getColorForState(f8357do, m4825new.getDefaultColor());
        }
        ThreadLocal<TypedValue> threadLocal = f8356do;
        TypedValue typedValue = threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, typedValue, true);
        float f = typedValue.getFloat();
        return G8.m707case(m4823for(context, i), Math.round(Color.alpha(r4) * f));
    }

    /* renamed from: new, reason: not valid java name */
    public static ColorStateList m4825new(Context context, int i) {
        ColorStateList colorStateList;
        int resourceId;
        int[] iArr = f8355case;
        iArr[0] = i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        try {
            if (!obtainStyledAttributes.hasValue(0) || (resourceId = obtainStyledAttributes.getResourceId(0, 0)) == 0 || (colorStateList = C0466Ra.getColorStateList(context, resourceId)) == null) {
                colorStateList = obtainStyledAttributes.getColorStateList(0);
            }
            return colorStateList;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
