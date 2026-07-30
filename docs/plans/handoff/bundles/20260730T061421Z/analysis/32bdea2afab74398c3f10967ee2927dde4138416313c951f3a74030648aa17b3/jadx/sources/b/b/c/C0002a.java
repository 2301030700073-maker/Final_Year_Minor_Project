package b.b.c;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* renamed from: b.b.c.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0002a extends ViewGroup.MarginLayoutParams {

    /* renamed from: a, reason: collision with root package name */
    public int f290a;

    public C0002a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f290a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.b.b.f241b);
        this.f290a = obtainStyledAttributes.getInt(0, 0);
        obtainStyledAttributes.recycle();
    }

    public C0002a(int i, int i2) {
        super(i, i2);
        this.f290a = 0;
        this.f290a = 8388627;
    }

    public C0002a(C0002a c0002a) {
        super((ViewGroup.MarginLayoutParams) c0002a);
        this.f290a = 0;
        this.f290a = c0002a.f290a;
    }

    public C0002a(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f290a = 0;
    }
}
