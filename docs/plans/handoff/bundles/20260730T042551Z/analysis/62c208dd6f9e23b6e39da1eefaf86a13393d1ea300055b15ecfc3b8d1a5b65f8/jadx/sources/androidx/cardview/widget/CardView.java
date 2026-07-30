package androidx.cardview.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import defpackage.C0315Kc;
import defpackage.InterfaceC0672a7;
import defpackage.NA;
import defpackage.O4;

/* loaded from: classes.dex */
public class CardView extends FrameLayout {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f6029do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f6030do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f6031do;

    /* renamed from: if, reason: not valid java name */
    public final Rect f6032if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f6033if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[] f6028do = {R.attr.colorBackground};

    /* renamed from: do, reason: not valid java name */
    public static final O4 f6027do = new O4();

    /* renamed from: androidx.cardview.widget.CardView$do, reason: invalid class name */
    public class Cdo implements InterfaceC0672a7 {

        /* renamed from: do, reason: not valid java name */
        public Drawable f6034do;

        public Cdo() {
        }

        /* renamed from: do, reason: not valid java name */
        public final void m3562do(int i, int i2, int i3, int i4) {
            CardView cardView = CardView.this;
            cardView.f6032if.set(i, i2, i3, i4);
            Rect rect = cardView.f6029do;
            CardView.super.setPadding(i + rect.left, i2 + rect.top, i3 + rect.right, i4 + rect.bottom);
        }
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.joeykrim.rootcheck.R.attr.cardViewStyle);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public final void setMinimumHeight(int i) {
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public final void setMinimumWidth(int i) {
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public CardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ColorStateList valueOf;
        Rect rect = new Rect();
        this.f6029do = rect;
        this.f6032if = new Rect();
        Cdo cdo = new Cdo();
        this.f6030do = cdo;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0315Kc.f1834for, i, com.joeykrim.rootcheck.R.style.CardView);
        if (obtainStyledAttributes.hasValue(2)) {
            valueOf = obtainStyledAttributes.getColorStateList(2);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(f6028do);
            int color = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            valueOf = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(com.joeykrim.rootcheck.R.color.cardview_light_background) : getResources().getColor(com.joeykrim.rootcheck.R.color.cardview_dark_background));
        }
        float dimension = obtainStyledAttributes.getDimension(3, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(4, 0.0f);
        float dimension3 = obtainStyledAttributes.getDimension(5, 0.0f);
        boolean z = obtainStyledAttributes.getBoolean(7, false);
        this.f6031do = z;
        boolean z2 = obtainStyledAttributes.getBoolean(6, true);
        this.f6033if = z2;
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(8, 0);
        rect.left = obtainStyledAttributes.getDimensionPixelSize(10, dimensionPixelSize);
        rect.top = obtainStyledAttributes.getDimensionPixelSize(12, dimensionPixelSize);
        rect.right = obtainStyledAttributes.getDimensionPixelSize(11, dimensionPixelSize);
        rect.bottom = obtainStyledAttributes.getDimensionPixelSize(9, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.getDimensionPixelSize(1, 0);
        obtainStyledAttributes.recycle();
        O4 o4 = f6027do;
        NA na = new NA(dimension, valueOf);
        cdo.f6034do = na;
        setBackgroundDrawable(na);
        setClipToOutline(true);
        setElevation(dimension2);
        NA na2 = (NA) cdo.f6034do;
        if (dimension3 != na2.f2334if || na2.f2333do != z || na2.f2336if != z2) {
            na2.f2334if = dimension3;
            na2.f2333do = z;
            na2.f2336if = z2;
            na2.m1508if(null);
            na2.invalidateSelf();
        }
        o4.a(cdo);
    }
}
