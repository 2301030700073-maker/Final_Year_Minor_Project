package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;

/* renamed from: Zr, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0659Zr {
    /* renamed from: do, reason: not valid java name */
    public static ColorStateList m3069do(Context context, C3970xH c3970xH, int i) {
        int m8638this;
        ColorStateList colorStateList;
        return (!c3970xH.m8630class(i) || (m8638this = c3970xH.m8638this(i, 0)) == 0 || (colorStateList = C0466Ra.getColorStateList(context, m8638this)) == null) ? c3970xH.m8636if(i) : colorStateList;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m3070for(Context context, TypedArray typedArray, int i, int i2) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(i, typedValue) || typedValue.type != 2) {
            return typedArray.getDimensionPixelSize(i, i2);
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, i2);
        obtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    /* renamed from: if, reason: not valid java name */
    public static ColorStateList m3071if(Context context, TypedArray typedArray, int i) {
        int resourceId;
        ColorStateList colorStateList;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (colorStateList = C0466Ra.getColorStateList(context, resourceId)) == null) ? typedArray.getColorStateList(i) : colorStateList;
    }

    /* renamed from: new, reason: not valid java name */
    public static Drawable m3072new(Context context, TypedArray typedArray, int i) {
        int resourceId;
        Drawable m7997extends;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (m7997extends = C3645ro.m7997extends(context, resourceId)) == null) ? typedArray.getDrawable(i) : m7997extends;
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m3073try(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }
}
