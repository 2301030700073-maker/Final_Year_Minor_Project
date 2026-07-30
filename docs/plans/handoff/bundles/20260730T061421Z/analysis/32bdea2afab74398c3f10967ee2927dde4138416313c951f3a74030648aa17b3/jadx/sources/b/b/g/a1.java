package b.b.g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;

/* loaded from: classes.dex */
public class a1 {

    /* renamed from: a, reason: collision with root package name */
    public final Context f512a;

    /* renamed from: b, reason: collision with root package name */
    public final TypedArray f513b;

    /* renamed from: c, reason: collision with root package name */
    public TypedValue f514c;

    public a1(Context context, TypedArray typedArray) {
        this.f512a = context;
        this.f513b = typedArray;
    }

    public static a1 n(Context context, AttributeSet attributeSet, int[] iArr) {
        return new a1(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static a1 o(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new a1(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    public boolean a(int i, boolean z) {
        return this.f513b.getBoolean(i, z);
    }

    public ColorStateList b(int i) {
        int resourceId;
        ColorStateList d2;
        return (!this.f513b.hasValue(i) || (resourceId = this.f513b.getResourceId(i, 0)) == 0 || (d2 = b.e.b.b.d(this.f512a, resourceId)) == null) ? this.f513b.getColorStateList(i) : d2;
    }

    public int c(int i, int i2) {
        return this.f513b.getDimensionPixelOffset(i, i2);
    }

    public int d(int i, int i2) {
        return this.f513b.getDimensionPixelSize(i, i2);
    }

    public Drawable e(int i) {
        int resourceId;
        return (!this.f513b.hasValue(i) || (resourceId = this.f513b.getResourceId(i, 0)) == 0) ? this.f513b.getDrawable(i) : b.b.a.a(this.f512a, resourceId);
    }

    public Drawable f(int i) {
        int resourceId;
        Drawable f;
        if (!this.f513b.hasValue(i) || (resourceId = this.f513b.getResourceId(i, 0)) == 0) {
            return null;
        }
        D a2 = D.a();
        Context context = this.f512a;
        synchronized (a2) {
            f = a2.f435a.f(context, resourceId, true);
        }
        return f;
    }

    public Typeface g(int i, int i2, Z z) {
        int resourceId = this.f513b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f514c == null) {
            this.f514c = new TypedValue();
        }
        return b.e.c.c.g.b(this.f512a, resourceId, this.f514c, i2, z);
    }

    public int h(int i, int i2) {
        return this.f513b.getInt(i, i2);
    }

    public int i(int i, int i2) {
        return this.f513b.getLayoutDimension(i, i2);
    }

    public int j(int i, int i2) {
        return this.f513b.getResourceId(i, i2);
    }

    public String k(int i) {
        return this.f513b.getString(i);
    }

    public CharSequence l(int i) {
        return this.f513b.getText(i);
    }

    public boolean m(int i) {
        return this.f513b.hasValue(i);
    }
}
