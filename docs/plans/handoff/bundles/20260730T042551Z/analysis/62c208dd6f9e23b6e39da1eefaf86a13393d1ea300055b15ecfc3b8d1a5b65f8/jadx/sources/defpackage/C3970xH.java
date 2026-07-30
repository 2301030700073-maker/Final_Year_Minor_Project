package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import defpackage.S1;

/* renamed from: xH, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3970xH {

    /* renamed from: do, reason: not valid java name */
    public final Context f16535do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TypedArray f16536do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TypedValue f16537do;

    public C3970xH(Context context, TypedArray typedArray) {
        this.f16535do = context;
        this.f16536do = typedArray;
    }

    /* renamed from: const, reason: not valid java name */
    public static C3970xH m8626const(Context context, AttributeSet attributeSet, int[] iArr, int i) {
        return new C3970xH(context, context.obtainStyledAttributes(attributeSet, iArr, i, 0));
    }

    /* renamed from: break, reason: not valid java name */
    public final String m8627break(int i) {
        return this.f16536do.getString(i);
    }

    /* renamed from: case, reason: not valid java name */
    public final Drawable m8628case(int i) {
        int resourceId;
        Drawable m1568else;
        if (!this.f16536do.hasValue(i) || (resourceId = this.f16536do.getResourceId(i, 0)) == 0) {
            return null;
        }
        K1 m1101do = K1.m1101do();
        Context context = this.f16535do;
        synchronized (m1101do) {
            m1568else = m1101do.f1741do.m1568else(context, resourceId, true);
        }
        return m1568else;
    }

    /* renamed from: catch, reason: not valid java name */
    public final CharSequence m8629catch(int i) {
        return this.f16536do.getText(i);
    }

    /* renamed from: class, reason: not valid java name */
    public final boolean m8630class(int i) {
        return this.f16536do.hasValue(i);
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m8631do(int i, boolean z) {
        return this.f16536do.getBoolean(i, z);
    }

    /* renamed from: else, reason: not valid java name */
    public final Typeface m8632else(int i, int i2, S1.Cdo cdo) {
        int resourceId = this.f16536do.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f16537do == null) {
            this.f16537do = new TypedValue();
        }
        TypedValue typedValue = this.f16537do;
        ThreadLocal<TypedValue> threadLocal = Oz.f2712do;
        Context context = this.f16535do;
        if (context.isRestricted()) {
            return null;
        }
        return Oz.m1722for(context, resourceId, typedValue, i2, cdo, true, false);
    }

    /* renamed from: final, reason: not valid java name */
    public final void m8633final() {
        this.f16536do.recycle();
    }

    /* renamed from: for, reason: not valid java name */
    public final int m8634for(int i, int i2) {
        return this.f16536do.getDimensionPixelOffset(i, i2);
    }

    /* renamed from: goto, reason: not valid java name */
    public final int m8635goto(int i, int i2) {
        return this.f16536do.getInt(i, i2);
    }

    /* renamed from: if, reason: not valid java name */
    public final ColorStateList m8636if(int i) {
        int resourceId;
        ColorStateList colorStateList;
        TypedArray typedArray = this.f16536do;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (colorStateList = C0466Ra.getColorStateList(this.f16535do, resourceId)) == null) ? typedArray.getColorStateList(i) : colorStateList;
    }

    /* renamed from: new, reason: not valid java name */
    public final int m8637new(int i, int i2) {
        return this.f16536do.getDimensionPixelSize(i, i2);
    }

    /* renamed from: this, reason: not valid java name */
    public final int m8638this(int i, int i2) {
        return this.f16536do.getResourceId(i, i2);
    }

    /* renamed from: try, reason: not valid java name */
    public final Drawable m8639try(int i) {
        int resourceId;
        TypedArray typedArray = this.f16536do;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) ? typedArray.getDrawable(i) : C3645ro.m7997extends(this.f16535do, resourceId);
    }
}
