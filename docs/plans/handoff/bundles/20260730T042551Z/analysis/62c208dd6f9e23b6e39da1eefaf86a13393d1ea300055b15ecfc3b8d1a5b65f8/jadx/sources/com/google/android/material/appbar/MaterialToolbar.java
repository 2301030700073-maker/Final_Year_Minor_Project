package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.Toolbar;
import com.joeykrim.rootcheck.R;
import defpackage.C0426Pe;
import defpackage.C0492Se;
import defpackage.C0682aH;
import defpackage.C0716as;
import defpackage.C2775fs;
import defpackage.C3385nL;
import defpackage.HH;
import defpackage.O2;
import defpackage.O4;
import defpackage.QK;
import java.util.ArrayList;
import java.util.Collections;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class MaterialToolbar extends Toolbar {

    /* renamed from: do, reason: not valid java name */
    public static final ImageView.ScaleType[] f10462do = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    /* renamed from: case, reason: not valid java name */
    public final boolean f10463case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ImageView.ScaleType f10464do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Boolean f10465do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Integer f10466do;

    /* renamed from: try, reason: not valid java name */
    public final boolean f10467try;

    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    /* renamed from: continue, reason: not valid java name */
    public final void m5658continue(TextView textView, Pair pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = textView.getMeasuredWidth();
        int i = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i2 = measuredWidth2 + i;
        int max = Math.max(Math.max(((Integer) pair.first).intValue() - i, 0), Math.max(i2 - ((Integer) pair.second).intValue(), 0));
        if (max > 0) {
            i += max;
            i2 -= max;
            textView.measure(View.MeasureSpec.makeMeasureSpec(i2 - i, 1073741824), textView.getMeasuredHeightAndState());
        }
        textView.layout(i, textView.getTop(), i2, textView.getBottom());
    }

    @Override // androidx.appcompat.widget.Toolbar
    /* renamed from: default */
    public final void mo3483default(Drawable drawable) {
        if (drawable != null && this.f10466do != null) {
            drawable = C0426Pe.m1779goto(drawable.mutate());
            C0426Pe.Cdo.m1785else(drawable, this.f10466do.intValue());
        }
        super.mo3483default(drawable);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        O4.m1611implements(this);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ImageView imageView;
        Drawable drawable;
        super.onLayout(z, i, i2, i3, i4);
        int i5 = 0;
        ImageView imageView2 = null;
        boolean z2 = this.f10463case;
        boolean z3 = this.f10467try;
        if (z3 || z2) {
            ArrayList m827for = HH.m827for(this, ((Toolbar) this).f5950if);
            boolean isEmpty = m827for.isEmpty();
            HH.Cdo cdo = HH.f1335do;
            TextView textView = isEmpty ? null : (TextView) Collections.min(m827for, cdo);
            ArrayList m827for2 = HH.m827for(this, ((Toolbar) this).f5943for);
            TextView textView2 = m827for2.isEmpty() ? null : (TextView) Collections.max(m827for2, cdo);
            if (textView != null || textView2 != null) {
                int measuredWidth = getMeasuredWidth();
                int i6 = measuredWidth / 2;
                int paddingLeft = getPaddingLeft();
                int paddingRight = measuredWidth - getPaddingRight();
                for (int i7 = 0; i7 < getChildCount(); i7++) {
                    View childAt = getChildAt(i7);
                    if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                        if (childAt.getRight() < i6 && childAt.getRight() > paddingLeft) {
                            paddingLeft = childAt.getRight();
                        }
                        if (childAt.getLeft() > i6 && childAt.getLeft() < paddingRight) {
                            paddingRight = childAt.getLeft();
                        }
                    }
                }
                Pair pair = new Pair(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
                if (z3 && textView != null) {
                    m5658continue(textView, pair);
                }
                if (z2 && textView2 != null) {
                    m5658continue(textView2, pair);
                }
            }
        }
        AppCompatImageView appCompatImageView = ((Toolbar) this).f5929do;
        Drawable drawable2 = appCompatImageView != null ? appCompatImageView.getDrawable() : null;
        if (drawable2 != null) {
            while (true) {
                if (i5 >= getChildCount()) {
                    break;
                }
                View childAt2 = getChildAt(i5);
                if ((childAt2 instanceof ImageView) && (drawable = (imageView = (ImageView) childAt2).getDrawable()) != null && drawable.getConstantState() != null && drawable.getConstantState().equals(drawable2.getConstantState())) {
                    imageView2 = imageView;
                    break;
                }
                i5++;
            }
        }
        if (imageView2 != null) {
            Boolean bool = this.f10465do;
            if (bool != null) {
                imageView2.setAdjustViewBounds(bool.booleanValue());
            }
            ImageView.ScaleType scaleType = this.f10464do;
            if (scaleType != null) {
                imageView2.setScaleType(scaleType);
            }
        }
    }

    @Override // android.view.View
    public final void setElevation(float f) {
        super.setElevation(f);
        O4.m1619protected(this, f);
    }

    @Override // androidx.appcompat.widget.Toolbar
    /* renamed from: super */
    public final void mo3498super(int i) {
        Ccase m3481class = m3481class();
        boolean z = m3481class instanceof Ccase;
        if (z) {
            m3481class.m3331extends();
        }
        super.mo3498super(i);
        if (z) {
            m3481class.m3328default();
        }
    }

    public MaterialToolbar(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, R.style.Widget_MaterialComponents_Toolbar), attributeSet, i);
        Context context2 = getContext();
        TypedArray m3115new = C0682aH.m3115new(context2, attributeSet, O2.f2500instanceof, i, R.style.Widget_MaterialComponents_Toolbar, new int[0]);
        if (m3115new.hasValue(2)) {
            this.f10466do = Integer.valueOf(m3115new.getColor(2, -1));
            Drawable m3482const = m3482const();
            if (m3482const != null) {
                mo3483default(m3482const);
            }
        }
        this.f10467try = m3115new.getBoolean(4, false);
        this.f10463case = m3115new.getBoolean(3, false);
        int i2 = m3115new.getInt(1, -1);
        if (i2 >= 0) {
            ImageView.ScaleType[] scaleTypeArr = f10462do;
            if (i2 < scaleTypeArr.length) {
                this.f10464do = scaleTypeArr[i2];
            }
        }
        if (m3115new.hasValue(0)) {
            this.f10465do = Boolean.valueOf(m3115new.getBoolean(0, false));
        }
        m3115new.recycle();
        Drawable background = getBackground();
        ColorStateList valueOf = background == null ? ColorStateList.valueOf(0) : C0492Se.m2176new(background);
        if (valueOf != null) {
            C0716as c0716as = new C0716as();
            c0716as.m4778super(valueOf);
            c0716as.m4766class(context2);
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            c0716as.m4770final(QK.Cnew.m1939this(this));
            setBackground(c0716as);
        }
    }
}
