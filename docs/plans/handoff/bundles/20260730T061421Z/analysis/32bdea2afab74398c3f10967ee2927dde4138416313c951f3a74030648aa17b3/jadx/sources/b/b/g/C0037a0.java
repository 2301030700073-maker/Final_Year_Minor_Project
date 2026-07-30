package b.b.g;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.LocaleList;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.TextView;
import com.android.quickstep.fallback.RecentsState;
import java.lang.ref.WeakReference;

/* renamed from: b.b.g.a0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0037a0 {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f508a;

    /* renamed from: b, reason: collision with root package name */
    public Y0 f509b;

    /* renamed from: c, reason: collision with root package name */
    public Y0 f510c;

    /* renamed from: d, reason: collision with root package name */
    public Y0 f511d;
    public Y0 e;
    public Y0 f;
    public Y0 g;
    public final C0047f0 h;
    public int i = 0;
    public int j = -1;
    public Typeface k;
    public boolean l;

    public C0037a0(TextView textView) {
        this.f508a = textView;
        this.h = new C0047f0(this.f508a);
    }

    public static Y0 c(Context context, D d2, int i) {
        ColorStateList c2 = d2.c(context, i);
        if (c2 == null) {
            return null;
        }
        Y0 y0 = new Y0();
        y0.f500d = true;
        y0.f497a = c2;
        return y0;
    }

    public final void a(Drawable drawable, Y0 y0) {
        if (drawable == null || y0 == null) {
            return;
        }
        D.e(drawable, y0, this.f508a.getDrawableState());
    }

    public void b() {
        if (this.f509b != null || this.f510c != null || this.f511d != null || this.e != null) {
            Drawable[] compoundDrawables = this.f508a.getCompoundDrawables();
            a(compoundDrawables[0], this.f509b);
            a(compoundDrawables[1], this.f510c);
            a(compoundDrawables[2], this.f511d);
            a(compoundDrawables[3], this.e);
        }
        if (this.f == null && this.g == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = this.f508a.getCompoundDrawablesRelative();
        a(compoundDrawablesRelative[0], this.f);
        a(compoundDrawablesRelative[2], this.g);
    }

    @SuppressLint({"NewApi"})
    public void d(AttributeSet attributeSet, int i) {
        boolean z;
        boolean z2;
        String str;
        String str2;
        ColorStateList colorStateList;
        int resourceId;
        int i2;
        int resourceId2;
        int i3;
        int[] iArr = b.b.b.i;
        int[] iArr2 = b.b.b.x;
        int[] iArr3 = b.b.b.h;
        Context context = this.f508a.getContext();
        D a2 = D.a();
        a1 o = a1.o(context, attributeSet, iArr3, i, 0);
        TextView textView = this.f508a;
        b.e.i.q.C(textView, textView.getContext(), iArr3, attributeSet, o.f513b, i, 0);
        int j = o.j(0, -1);
        if (o.m(3)) {
            this.f509b = c(context, a2, o.j(3, 0));
        }
        if (o.m(1)) {
            this.f510c = c(context, a2, o.j(1, 0));
        }
        if (o.m(4)) {
            this.f511d = c(context, a2, o.j(4, 0));
        }
        if (o.m(2)) {
            this.e = c(context, a2, o.j(2, 0));
        }
        if (o.m(5)) {
            this.f = c(context, a2, o.j(5, 0));
        }
        if (o.m(6)) {
            this.g = c(context, a2, o.j(6, 0));
        }
        o.f513b.recycle();
        boolean z3 = this.f508a.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (j != -1) {
            a1 a1Var = new a1(context, context.obtainStyledAttributes(j, iArr2));
            if (z3 || !a1Var.m(14)) {
                z = false;
                z2 = false;
            } else {
                z2 = a1Var.a(14, false);
                z = true;
            }
            f(context, a1Var);
            if (a1Var.m(15)) {
                str = a1Var.k(15);
                i3 = 13;
            } else {
                i3 = 13;
                str = null;
            }
            str2 = a1Var.m(i3) ? a1Var.k(i3) : null;
            a1Var.f513b.recycle();
        } else {
            z = false;
            z2 = false;
            str = null;
            str2 = null;
        }
        a1 a1Var2 = new a1(context, context.obtainStyledAttributes(attributeSet, iArr2, i, 0));
        if (!z3 && a1Var2.m(14)) {
            z2 = a1Var2.a(14, false);
            z = true;
        }
        boolean z4 = z2;
        if (a1Var2.m(15)) {
            str = a1Var2.k(15);
        }
        if (a1Var2.m(13)) {
            str2 = a1Var2.k(13);
        }
        String str3 = str2;
        if (a1Var2.m(0) && a1Var2.d(0, -1) == 0) {
            this.f508a.setTextSize(0, RecentsState.NO_OFFSET);
        }
        f(context, a1Var2);
        a1Var2.f513b.recycle();
        if (!z3 && z) {
            this.f508a.setAllCaps(z4);
        }
        Typeface typeface = this.k;
        if (typeface != null) {
            if (this.j == -1) {
                this.f508a.setTypeface(typeface, this.i);
            } else {
                this.f508a.setTypeface(typeface);
            }
        }
        if (str3 != null) {
            this.f508a.setFontVariationSettings(str3);
        }
        if (str != null) {
            this.f508a.setTextLocales(LocaleList.forLanguageTags(str));
        }
        C0047f0 c0047f0 = this.h;
        TypedArray obtainStyledAttributes = c0047f0.j.obtainStyledAttributes(attributeSet, iArr, i, 0);
        TextView textView2 = c0047f0.i;
        textView2.saveAttributeDataForStyleable(textView2.getContext(), iArr, attributeSet, obtainStyledAttributes, i, 0);
        if (obtainStyledAttributes.hasValue(5)) {
            c0047f0.f532a = obtainStyledAttributes.getInt(5, 0);
        }
        float dimension = obtainStyledAttributes.hasValue(4) ? obtainStyledAttributes.getDimension(4, -1.0f) : -1.0f;
        float dimension2 = obtainStyledAttributes.hasValue(2) ? obtainStyledAttributes.getDimension(2, -1.0f) : -1.0f;
        float dimension3 = obtainStyledAttributes.hasValue(1) ? obtainStyledAttributes.getDimension(1, -1.0f) : -1.0f;
        if (obtainStyledAttributes.hasValue(3) && (resourceId2 = obtainStyledAttributes.getResourceId(3, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId2);
            int length = obtainTypedArray.length();
            int[] iArr4 = new int[length];
            if (length > 0) {
                for (int i4 = 0; i4 < length; i4++) {
                    iArr4[i4] = obtainTypedArray.getDimensionPixelSize(i4, -1);
                }
                c0047f0.f = c0047f0.a(iArr4);
                c0047f0.c();
            }
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (!c0047f0.d()) {
            c0047f0.f532a = 0;
        } else if (c0047f0.f532a == 1) {
            if (!c0047f0.g) {
                DisplayMetrics displayMetrics = c0047f0.j.getResources().getDisplayMetrics();
                if (dimension2 == -1.0f) {
                    i2 = 2;
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                } else {
                    i2 = 2;
                }
                if (dimension3 == -1.0f) {
                    dimension3 = TypedValue.applyDimension(i2, 112.0f, displayMetrics);
                }
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                c0047f0.e(dimension2, dimension3, dimension);
            }
            c0047f0.b();
        }
        C0047f0 c0047f02 = this.h;
        if (c0047f02.f532a != 0) {
            int[] iArr5 = c0047f02.f;
            if (iArr5.length > 0) {
                if (this.f508a.getAutoSizeStepGranularity() != -1.0f) {
                    this.f508a.setAutoSizeTextTypeUniformWithConfiguration(Math.round(this.h.f535d), Math.round(this.h.e), Math.round(this.h.f534c), 0);
                } else {
                    this.f508a.setAutoSizeTextTypeUniformWithPresetSizes(iArr5, 0);
                }
            }
        }
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr);
        int resourceId3 = obtainStyledAttributes2.getResourceId(8, -1);
        Drawable b2 = resourceId3 != -1 ? a2.b(context, resourceId3) : null;
        int resourceId4 = obtainStyledAttributes2.getResourceId(13, -1);
        Drawable b3 = resourceId4 != -1 ? a2.b(context, resourceId4) : null;
        int resourceId5 = obtainStyledAttributes2.getResourceId(9, -1);
        Drawable b4 = resourceId5 != -1 ? a2.b(context, resourceId5) : null;
        int resourceId6 = obtainStyledAttributes2.getResourceId(6, -1);
        Drawable b5 = resourceId6 != -1 ? a2.b(context, resourceId6) : null;
        int resourceId7 = obtainStyledAttributes2.getResourceId(10, -1);
        Drawable b6 = resourceId7 != -1 ? a2.b(context, resourceId7) : null;
        int resourceId8 = obtainStyledAttributes2.getResourceId(7, -1);
        Drawable b7 = resourceId8 != -1 ? a2.b(context, resourceId8) : null;
        if (b6 != null || b7 != null) {
            Drawable[] compoundDrawablesRelative = this.f508a.getCompoundDrawablesRelative();
            TextView textView3 = this.f508a;
            if (b6 == null) {
                b6 = compoundDrawablesRelative[0];
            }
            if (b3 == null) {
                b3 = compoundDrawablesRelative[1];
            }
            if (b7 == null) {
                b7 = compoundDrawablesRelative[2];
            }
            if (b5 == null) {
                b5 = compoundDrawablesRelative[3];
            }
            textView3.setCompoundDrawablesRelativeWithIntrinsicBounds(b6, b3, b7, b5);
        } else if (b2 != null || b3 != null || b4 != null || b5 != null) {
            Drawable[] compoundDrawablesRelative2 = this.f508a.getCompoundDrawablesRelative();
            if (compoundDrawablesRelative2[0] == null && compoundDrawablesRelative2[2] == null) {
                Drawable[] compoundDrawables = this.f508a.getCompoundDrawables();
                TextView textView4 = this.f508a;
                if (b2 == null) {
                    b2 = compoundDrawables[0];
                }
                if (b3 == null) {
                    b3 = compoundDrawables[1];
                }
                if (b4 == null) {
                    b4 = compoundDrawables[2];
                }
                if (b5 == null) {
                    b5 = compoundDrawables[3];
                }
                textView4.setCompoundDrawablesWithIntrinsicBounds(b2, b3, b4, b5);
            } else {
                TextView textView5 = this.f508a;
                Drawable drawable = compoundDrawablesRelative2[0];
                if (b3 == null) {
                    b3 = compoundDrawablesRelative2[1];
                }
                Drawable drawable2 = compoundDrawablesRelative2[2];
                if (b5 == null) {
                    b5 = compoundDrawablesRelative2[3];
                }
                textView5.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, b3, drawable2, b5);
            }
        }
        if (obtainStyledAttributes2.hasValue(11)) {
            if (!obtainStyledAttributes2.hasValue(11) || (resourceId = obtainStyledAttributes2.getResourceId(11, 0)) == 0 || (colorStateList = b.e.b.b.d(context, resourceId)) == null) {
                colorStateList = obtainStyledAttributes2.getColorStateList(11);
            }
            TextView textView6 = this.f508a;
            if (textView6 == null) {
                throw null;
            }
            textView6.setCompoundDrawableTintList(colorStateList);
        }
        if (obtainStyledAttributes2.hasValue(12)) {
            PorterDuff.Mode d2 = C0055j0.d(obtainStyledAttributes2.getInt(12, -1), null);
            TextView textView7 = this.f508a;
            if (textView7 == null) {
                throw null;
            }
            textView7.setCompoundDrawableTintMode(d2);
        }
        int dimensionPixelSize = obtainStyledAttributes2.getDimensionPixelSize(14, -1);
        int dimensionPixelSize2 = obtainStyledAttributes2.getDimensionPixelSize(17, -1);
        int dimensionPixelSize3 = obtainStyledAttributes2.getDimensionPixelSize(18, -1);
        obtainStyledAttributes2.recycle();
        if (dimensionPixelSize != -1) {
            TextView textView8 = this.f508a;
            b.e.b.d.c(dimensionPixelSize);
            textView8.setFirstBaselineToTopHeight(dimensionPixelSize);
        }
        if (dimensionPixelSize2 != -1) {
            b.e.b.d.y(this.f508a, dimensionPixelSize2);
        }
        if (dimensionPixelSize3 != -1) {
            b.e.b.d.z(this.f508a, dimensionPixelSize3);
        }
    }

    public void e(Context context, int i) {
        String k;
        a1 a1Var = new a1(context, context.obtainStyledAttributes(i, b.b.b.x));
        if (a1Var.m(14)) {
            this.f508a.setAllCaps(a1Var.a(14, false));
        }
        if (a1Var.m(0) && a1Var.d(0, -1) == 0) {
            this.f508a.setTextSize(0, RecentsState.NO_OFFSET);
        }
        f(context, a1Var);
        if (a1Var.m(13) && (k = a1Var.k(13)) != null) {
            this.f508a.setFontVariationSettings(k);
        }
        a1Var.f513b.recycle();
        Typeface typeface = this.k;
        if (typeface != null) {
            this.f508a.setTypeface(typeface, this.i);
        }
    }

    public final void f(Context context, a1 a1Var) {
        String k;
        this.i = a1Var.h(2, this.i);
        int h = a1Var.h(11, -1);
        this.j = h;
        if (h != -1) {
            this.i = (this.i & 2) | 0;
        }
        if (!a1Var.m(10) && !a1Var.m(12)) {
            if (a1Var.m(1)) {
                this.l = false;
                int h2 = a1Var.h(1, 1);
                if (h2 == 1) {
                    this.k = Typeface.SANS_SERIF;
                    return;
                } else if (h2 == 2) {
                    this.k = Typeface.SERIF;
                    return;
                } else {
                    if (h2 != 3) {
                        return;
                    }
                    this.k = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.k = null;
        int i = a1Var.m(12) ? 12 : 10;
        int i2 = this.j;
        int i3 = this.i;
        if (!context.isRestricted()) {
            try {
                Typeface g = a1Var.g(i, this.i, new Z(this, i2, i3, new WeakReference(this.f508a)));
                if (g != null) {
                    if (this.j != -1) {
                        this.k = Typeface.create(Typeface.create(g, 0), this.j, (this.i & 2) != 0);
                    } else {
                        this.k = g;
                    }
                }
                this.l = this.k == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.k != null || (k = a1Var.k(i)) == null) {
            return;
        }
        if (this.j != -1) {
            this.k = Typeface.create(Typeface.create(k, 0), this.j, (this.i & 2) != 0);
        } else {
            this.k = Typeface.create(k, this.i);
        }
    }
}
