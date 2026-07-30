package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import android.widget.TextView;
import java.util.WeakHashMap;

/* renamed from: v6, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3841v6 {

    /* renamed from: do, reason: not valid java name */
    public final int f16012do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ColorStateList f16013do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f16014do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3554qD f16015do;

    /* renamed from: for, reason: not valid java name */
    public final ColorStateList f16016for;

    /* renamed from: if, reason: not valid java name */
    public final ColorStateList f16017if;

    public C3841v6(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i, C3554qD c3554qD, Rect rect) {
        O4.m1609goto(rect.left);
        O4.m1609goto(rect.top);
        O4.m1609goto(rect.right);
        O4.m1609goto(rect.bottom);
        this.f16014do = rect;
        this.f16013do = colorStateList2;
        this.f16017if = colorStateList;
        this.f16016for = colorStateList3;
        this.f16012do = i;
        this.f16015do = c3554qD;
    }

    /* renamed from: do, reason: not valid java name */
    public static C3841v6 m8429do(Context context, int i) {
        O4.m1604else(i != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, O2.f2506private);
        Rect rect = new Rect(obtainStyledAttributes.getDimensionPixelOffset(0, 0), obtainStyledAttributes.getDimensionPixelOffset(2, 0), obtainStyledAttributes.getDimensionPixelOffset(1, 0), obtainStyledAttributes.getDimensionPixelOffset(3, 0));
        ColorStateList m3071if = C0659Zr.m3071if(context, obtainStyledAttributes, 4);
        ColorStateList m3071if2 = C0659Zr.m3071if(context, obtainStyledAttributes, 9);
        ColorStateList m3071if3 = C0659Zr.m3071if(context, obtainStyledAttributes, 7);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(8, 0);
        C3554qD c3554qD = new C3554qD(C3554qD.m7858do(context, obtainStyledAttributes.getResourceId(5, 0), obtainStyledAttributes.getResourceId(6, 0)));
        obtainStyledAttributes.recycle();
        return new C3841v6(m3071if, m3071if2, m3071if3, dimensionPixelSize, c3554qD, rect);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m8430if(TextView textView) {
        C0716as c0716as = new C0716as();
        C0716as c0716as2 = new C0716as();
        C3554qD c3554qD = this.f16015do;
        c0716as.mo4768do(c3554qD);
        c0716as2.mo4768do(c3554qD);
        c0716as.m4778super(this.f16017if);
        c0716as.f8253do.f8280for = this.f16012do;
        c0716as.invalidateSelf();
        c0716as.m4775public(this.f16016for);
        ColorStateList colorStateList = this.f16013do;
        textView.setTextColor(colorStateList);
        RippleDrawable rippleDrawable = new RippleDrawable(colorStateList.withAlpha(30), c0716as, c0716as2);
        Rect rect = this.f16014do;
        InsetDrawable insetDrawable = new InsetDrawable((Drawable) rippleDrawable, rect.left, rect.top, rect.right, rect.bottom);
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        textView.setBackground(insetDrawable);
    }
}
