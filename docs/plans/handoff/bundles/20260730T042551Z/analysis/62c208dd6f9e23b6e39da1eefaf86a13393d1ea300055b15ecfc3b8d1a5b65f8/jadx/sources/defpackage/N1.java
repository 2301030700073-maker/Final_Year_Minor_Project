package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;

/* loaded from: classes.dex */
public final class N1 {

    /* renamed from: do, reason: not valid java name */
    public int f2282do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ImageView f2283do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3852vH f2284do;

    public N1(ImageView imageView) {
        this.f2283do = imageView;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m1483do() {
        ImageView imageView = this.f2283do;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            C0470Re.m2061do(drawable);
        }
        if (drawable != null) {
            int i = Build.VERSION.SDK_INT;
            if (i <= 21 && i == 21) {
                if (this.f2284do == null) {
                    this.f2284do = new C3852vH();
                }
                C3852vH c3852vH = this.f2284do;
                c3852vH.f16054do = null;
                c3852vH.f16057if = false;
                c3852vH.f16055do = null;
                c3852vH.f16056do = false;
                ColorStateList m7985do = C3644rn.m7985do(imageView);
                if (m7985do != null) {
                    c3852vH.f16057if = true;
                    c3852vH.f16054do = m7985do;
                }
                PorterDuff.Mode m7987if = C3644rn.m7987if(imageView);
                if (m7987if != null) {
                    c3852vH.f16056do = true;
                    c3852vH.f16055do = m7987if;
                }
                if (c3852vH.f16057if || c3852vH.f16056do) {
                    K1.m1104try(drawable, c3852vH, imageView.getDrawableState());
                }
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m1484for(int i) {
        ImageView imageView = this.f2283do;
        if (i != 0) {
            Drawable m7997extends = C3645ro.m7997extends(imageView.getContext(), i);
            if (m7997extends != null) {
                C0470Re.m2061do(m7997extends);
            }
            imageView.setImageDrawable(m7997extends);
        } else {
            imageView.setImageDrawable(null);
        }
        m1483do();
    }

    /* renamed from: if, reason: not valid java name */
    public final void m1485if(AttributeSet attributeSet, int i) {
        Drawable drawable;
        Drawable drawable2;
        int m8638this;
        ImageView imageView = this.f2283do;
        Context context = imageView.getContext();
        int[] iArr = O4.f2529const;
        C3970xH m8626const = C3970xH.m8626const(context, attributeSet, iArr, i);
        QK.m1857import(imageView, imageView.getContext(), iArr, attributeSet, m8626const.f16536do, i);
        try {
            Drawable drawable3 = imageView.getDrawable();
            if (drawable3 == null && (m8638this = m8626const.m8638this(1, -1)) != -1 && (drawable3 = C3645ro.m7997extends(imageView.getContext(), m8638this)) != null) {
                imageView.setImageDrawable(drawable3);
            }
            if (drawable3 != null) {
                C0470Re.m2061do(drawable3);
            }
            if (m8626const.m8630class(2)) {
                ColorStateList m8636if = m8626const.m8636if(2);
                int i2 = Build.VERSION.SDK_INT;
                C3644rn.m7986for(imageView, m8636if);
                if (i2 == 21 && (drawable2 = imageView.getDrawable()) != null && C3644rn.m7985do(imageView) != null) {
                    if (drawable2.isStateful()) {
                        drawable2.setState(imageView.getDrawableState());
                    }
                    imageView.setImageDrawable(drawable2);
                }
            }
            if (m8626const.m8630class(3)) {
                PorterDuff.Mode m2062for = C0470Re.m2062for(m8626const.m8635goto(3, -1), null);
                int i3 = Build.VERSION.SDK_INT;
                C3644rn.m7988new(imageView, m2062for);
                if (i3 == 21 && (drawable = imageView.getDrawable()) != null && C3644rn.m7985do(imageView) != null) {
                    if (drawable.isStateful()) {
                        drawable.setState(imageView.getDrawableState());
                    }
                    imageView.setImageDrawable(drawable);
                }
            }
        } finally {
            m8626const.m8633final();
        }
    }
}
