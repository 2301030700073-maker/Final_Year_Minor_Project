package b.b.g;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import b.b.c.C0002a;

/* loaded from: classes.dex */
public class f1 extends C0002a {

    /* renamed from: b, reason: collision with root package name */
    public int f536b;

    public f1(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f536b = 0;
    }

    public f1(int i, int i2) {
        super(i, i2);
        this.f536b = 0;
        this.f290a = 8388627;
    }

    public f1(f1 f1Var) {
        super((C0002a) f1Var);
        this.f536b = 0;
        this.f536b = f1Var.f536b;
    }

    public f1(C0002a c0002a) {
        super(c0002a);
        this.f536b = 0;
    }

    public f1(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f536b = 0;
        ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
        ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
        ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
        ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
    }

    public f1(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f536b = 0;
    }
}
