package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.method.SingleLineTransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import defpackage.AbstractC3536pw;
import defpackage.XG;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Locale;

@ViewPager.Cnew
/* loaded from: classes.dex */
public class PagerTitleStrip extends ViewGroup {

    /* renamed from: do, reason: not valid java name */
    public static final int[] f7980do = {R.attr.textAppearance, R.attr.textSize, R.attr.textColor, R.attr.gravity};

    /* renamed from: if, reason: not valid java name */
    public static final int[] f7981if = {R.attr.textAllCaps};

    /* renamed from: case, reason: not valid java name */
    public final int f7982case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float f7983do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TextView f7984do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f7985do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ViewPager f7986do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public WeakReference<AbstractC3536pw> f7987do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f7988do;

    /* renamed from: for, reason: not valid java name */
    public int f7989for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final TextView f7990for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final TextView f7991if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f7992if;

    /* renamed from: new, reason: not valid java name */
    public int f7993new;

    /* renamed from: try, reason: not valid java name */
    public final int f7994try;

    /* renamed from: androidx.viewpager.widget.PagerTitleStrip$do, reason: invalid class name */
    public class Cdo extends DataSetObserver implements ViewPager.Cgoto, ViewPager.Celse {

        /* renamed from: for, reason: not valid java name */
        public int f7996for;

        public Cdo() {
        }

        @Override // androidx.viewpager.widget.ViewPager.Cgoto
        /* renamed from: do, reason: not valid java name */
        public final void mo4671do(float f, int i, int i2) {
            if (f > 0.5f) {
                i++;
            }
            PagerTitleStrip.this.mo4668new(f, i, false);
        }

        @Override // androidx.viewpager.widget.ViewPager.Cgoto
        /* renamed from: for, reason: not valid java name */
        public final void mo4672for(int i) {
            this.f7996for = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.Celse
        /* renamed from: if, reason: not valid java name */
        public final void mo4673if(ViewPager viewPager, AbstractC3536pw abstractC3536pw, AbstractC3536pw abstractC3536pw2) {
            PagerTitleStrip.this.m4670if(abstractC3536pw, abstractC3536pw2);
        }

        @Override // androidx.viewpager.widget.ViewPager.Cgoto
        /* renamed from: new */
        public final void mo1557new(int i) {
            if (this.f7996for == 0) {
                PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
                ViewPager viewPager = pagerTitleStrip.f7986do;
                pagerTitleStrip.m4669for(viewPager.f8038new, viewPager.mo4678catch());
                float f = pagerTitleStrip.f7983do;
                if (f < 0.0f) {
                    f = 0.0f;
                }
                pagerTitleStrip.mo4668new(f, pagerTitleStrip.f7986do.f8038new, true);
            }
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
            ViewPager viewPager = pagerTitleStrip.f7986do;
            pagerTitleStrip.m4669for(viewPager.f8038new, viewPager.mo4678catch());
            float f = pagerTitleStrip.f7983do;
            if (f < 0.0f) {
                f = 0.0f;
            }
            pagerTitleStrip.mo4668new(f, pagerTitleStrip.f7986do.f8038new, true);
        }
    }

    /* renamed from: androidx.viewpager.widget.PagerTitleStrip$if, reason: invalid class name */
    public static class Cif extends SingleLineTransformationMethod {

        /* renamed from: do, reason: not valid java name */
        public final Locale f7997do;

        public Cif(Context context) {
            this.f7997do = context.getResources().getConfiguration().locale;
        }

        @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
        public final CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            if (transformation != null) {
                return transformation.toString().toUpperCase(this.f7997do);
            }
            return null;
        }
    }

    public PagerTitleStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7989for = -1;
        this.f7983do = -1.0f;
        this.f7985do = new Cdo();
        TextView textView = new TextView(context);
        this.f7984do = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.f7991if = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.f7990for = textView3;
        addView(textView3);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f7980do);
        boolean z = false;
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            XG.m2800for(textView, resourceId);
            XG.m2800for(textView2, resourceId);
            XG.m2800for(textView3, resourceId);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            float f = dimensionPixelSize;
            textView.setTextSize(0, f);
            textView2.setTextSize(0, f);
            textView3.setTextSize(0, f);
        }
        if (obtainStyledAttributes.hasValue(2)) {
            int color = obtainStyledAttributes.getColor(2, 0);
            textView.setTextColor(color);
            textView2.setTextColor(color);
            textView3.setTextColor(color);
        }
        this.f7994try = obtainStyledAttributes.getInteger(3, 80);
        obtainStyledAttributes.recycle();
        int defaultColor = textView2.getTextColors().getDefaultColor();
        this.f7982case = defaultColor;
        int i = (defaultColor & 16777215) | ((((int) 153.0f) & 255) << 24);
        textView.setTextColor(i);
        textView3.setTextColor(i);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        textView3.setEllipsize(TextUtils.TruncateAt.END);
        if (resourceId != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, f7981if);
            z = obtainStyledAttributes2.getBoolean(0, false);
            obtainStyledAttributes2.recycle();
        }
        if (z) {
            textView.setTransformationMethod(new Cif(textView.getContext()));
            textView2.setTransformationMethod(new Cif(textView2.getContext()));
            textView3.setTransformationMethod(new Cif(textView3.getContext()));
        } else {
            textView.setSingleLine();
            textView2.setSingleLine();
            textView3.setSingleLine();
        }
        this.f7993new = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }

    /* renamed from: do */
    public int mo4667do() {
        Drawable background = getBackground();
        if (background != null) {
            return background.getIntrinsicHeight();
        }
        return 0;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m4669for(int i, AbstractC3536pw abstractC3536pw) {
        int mo171try = abstractC3536pw != null ? abstractC3536pw.mo171try() : 0;
        this.f7988do = true;
        CharSequence charSequence = null;
        CharSequence mo1700else = (i < 1 || abstractC3536pw == null) ? null : abstractC3536pw.mo1700else(i - 1);
        TextView textView = this.f7984do;
        textView.setText(mo1700else);
        TextView textView2 = this.f7991if;
        textView2.setText((abstractC3536pw == null || i >= mo171try) ? null : abstractC3536pw.mo1700else(i));
        int i2 = i + 1;
        if (i2 < mo171try && abstractC3536pw != null) {
            charSequence = abstractC3536pw.mo1700else(i2);
        }
        TextView textView3 = this.f7990for;
        textView3.setText(charSequence);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), Integer.MIN_VALUE);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), Integer.MIN_VALUE);
        textView.measure(makeMeasureSpec, makeMeasureSpec2);
        textView2.measure(makeMeasureSpec, makeMeasureSpec2);
        textView3.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f7989for = i;
        if (!this.f7992if) {
            mo4668new(this.f7983do, i, false);
        }
        this.f7988do = false;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m4670if(AbstractC3536pw abstractC3536pw, AbstractC3536pw abstractC3536pw2) {
        Cdo cdo = this.f7985do;
        if (abstractC3536pw != null) {
            abstractC3536pw.mo6372return(cdo);
            this.f7987do = null;
        }
        if (abstractC3536pw2 != null) {
            abstractC3536pw2.mo6367const(cdo);
            this.f7987do = new WeakReference<>(abstractC3536pw2);
        }
        ViewPager viewPager = this.f7986do;
        if (viewPager != null) {
            this.f7989for = -1;
            this.f7983do = -1.0f;
            m4669for(viewPager.f8038new, abstractC3536pw2);
            requestLayout();
        }
    }

    /* renamed from: new */
    public void mo4668new(float f, int i, boolean z) {
        int i2;
        int i3;
        int i4;
        int i5;
        if (i != this.f7989for) {
            m4669for(i, this.f7986do.mo4678catch());
        } else if (!z && f == this.f7983do) {
            return;
        }
        this.f7992if = true;
        TextView textView = this.f7984do;
        int measuredWidth = textView.getMeasuredWidth();
        TextView textView2 = this.f7991if;
        int measuredWidth2 = textView2.getMeasuredWidth();
        TextView textView3 = this.f7990for;
        int measuredWidth3 = textView3.getMeasuredWidth();
        int i6 = measuredWidth2 / 2;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i7 = paddingRight + i6;
        int i8 = (width - (paddingLeft + i6)) - i7;
        float f2 = f + 0.5f;
        if (f2 > 1.0f) {
            f2 -= 1.0f;
        }
        int i9 = ((width - i7) - ((int) (i8 * f2))) - i6;
        int i10 = measuredWidth2 + i9;
        int baseline = textView.getBaseline();
        int baseline2 = textView2.getBaseline();
        int baseline3 = textView3.getBaseline();
        int max = Math.max(Math.max(baseline, baseline2), baseline3);
        int i11 = max - baseline;
        int i12 = max - baseline2;
        int i13 = max - baseline3;
        int max2 = Math.max(Math.max(textView.getMeasuredHeight() + i11, textView2.getMeasuredHeight() + i12), textView3.getMeasuredHeight() + i13);
        int i14 = this.f7994try & 112;
        if (i14 == 16) {
            i2 = (((height - paddingTop) - paddingBottom) - max2) / 2;
        } else {
            if (i14 != 80) {
                i3 = i11 + paddingTop;
                i4 = i12 + paddingTop;
                i5 = paddingTop + i13;
                textView2.layout(i9, i4, i10, textView2.getMeasuredHeight() + i4);
                int min = Math.min(paddingLeft, (i9 - this.f7993new) - measuredWidth);
                textView.layout(min, i3, measuredWidth + min, textView.getMeasuredHeight() + i3);
                int max3 = Math.max((width - paddingRight) - measuredWidth3, i10 + this.f7993new);
                textView3.layout(max3, i5, max3 + measuredWidth3, textView3.getMeasuredHeight() + i5);
                this.f7983do = f;
                this.f7992if = false;
            }
            i2 = (height - paddingBottom) - max2;
        }
        i3 = i11 + i2;
        i4 = i12 + i2;
        i5 = i2 + i13;
        textView2.layout(i9, i4, i10, textView2.getMeasuredHeight() + i4);
        int min2 = Math.min(paddingLeft, (i9 - this.f7993new) - measuredWidth);
        textView.layout(min2, i3, measuredWidth + min2, textView.getMeasuredHeight() + i3);
        int max32 = Math.max((width - paddingRight) - measuredWidth3, i10 + this.f7993new);
        textView3.layout(max32, i5, max32 + measuredWidth3, textView3.getMeasuredHeight() + i5);
        this.f7983do = f;
        this.f7992if = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (!(parent instanceof ViewPager)) {
            throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
        }
        ViewPager viewPager = (ViewPager) parent;
        AbstractC3536pw mo4678catch = viewPager.mo4678catch();
        Cdo cdo = this.f7985do;
        viewPager.f8034if = cdo;
        if (viewPager.f8028for == null) {
            viewPager.f8028for = new ArrayList();
        }
        viewPager.f8028for.add(cdo);
        this.f7986do = viewPager;
        WeakReference<AbstractC3536pw> weakReference = this.f7987do;
        m4670if(weakReference != null ? weakReference.get() : null, mo4678catch);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPager viewPager = this.f7986do;
        if (viewPager != null) {
            m4670if(viewPager.mo4678catch(), null);
            ViewPager viewPager2 = this.f7986do;
            ViewPager.Cgoto cgoto = viewPager2.f8034if;
            viewPager2.f8034if = null;
            ArrayList arrayList = viewPager2.f8028for;
            if (arrayList != null) {
                arrayList.remove(this.f7985do);
            }
            this.f7986do = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f7986do != null) {
            float f = this.f7983do;
            if (f < 0.0f) {
                f = 0.0f;
            }
            mo4668new(f, this.f7989for, true);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int max;
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException("Must measure with an exact width");
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingBottom, -2);
        int size = View.MeasureSpec.getSize(i);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i, (int) (size * 0.2f), -2);
        this.f7984do.measure(childMeasureSpec2, childMeasureSpec);
        TextView textView = this.f7991if;
        textView.measure(childMeasureSpec2, childMeasureSpec);
        this.f7990for.measure(childMeasureSpec2, childMeasureSpec);
        if (View.MeasureSpec.getMode(i2) == 1073741824) {
            max = View.MeasureSpec.getSize(i2);
        } else {
            max = Math.max(mo4667do(), textView.getMeasuredHeight() + paddingBottom);
        }
        setMeasuredDimension(size, View.resolveSizeAndState(max, i2, textView.getMeasuredState() << 16));
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.f7988do) {
            return;
        }
        super.requestLayout();
    }
}
