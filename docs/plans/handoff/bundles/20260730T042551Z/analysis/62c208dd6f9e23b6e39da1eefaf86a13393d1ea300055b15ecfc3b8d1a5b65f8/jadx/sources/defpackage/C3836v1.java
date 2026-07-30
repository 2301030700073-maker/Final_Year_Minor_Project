package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import defpackage.QK;
import java.util.WeakHashMap;

/* renamed from: v1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3836v1 {

    /* renamed from: do, reason: not valid java name */
    public int f15976do = -1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final K1 f15977do = K1.m1101do();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final View f15978do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3852vH f15979do;

    /* renamed from: for, reason: not valid java name */
    public C3852vH f15980for;

    /* renamed from: if, reason: not valid java name */
    public C3852vH f15981if;

    public C3836v1(View view) {
        this.f15978do = view;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m8413case(int i) {
        ColorStateList colorStateList;
        this.f15976do = i;
        K1 k1 = this.f15977do;
        if (k1 != null) {
            Context context = this.f15978do.getContext();
            synchronized (k1) {
                colorStateList = k1.f1741do.m1571this(context, i);
            }
        } else {
            colorStateList = null;
        }
        m8415else(colorStateList);
        m8414do();
    }

    /* renamed from: do, reason: not valid java name */
    public final void m8414do() {
        View view = this.f15978do;
        Drawable background = view.getBackground();
        if (background != null) {
            int i = Build.VERSION.SDK_INT;
            boolean z = true;
            if (i <= 21 ? i == 21 : this.f15979do != null) {
                if (this.f15980for == null) {
                    this.f15980for = new C3852vH();
                }
                C3852vH c3852vH = this.f15980for;
                c3852vH.f16054do = null;
                c3852vH.f16057if = false;
                c3852vH.f16055do = null;
                c3852vH.f16056do = false;
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                ColorStateList m1925else = QK.Cnew.m1925else(view);
                if (m1925else != null) {
                    c3852vH.f16057if = true;
                    c3852vH.f16054do = m1925else;
                }
                PorterDuff.Mode m1929goto = QK.Cnew.m1929goto(view);
                if (m1929goto != null) {
                    c3852vH.f16056do = true;
                    c3852vH.f16055do = m1929goto;
                }
                if (c3852vH.f16057if || c3852vH.f16056do) {
                    K1.m1104try(background, c3852vH, view.getDrawableState());
                } else {
                    z = false;
                }
                if (z) {
                    return;
                }
            }
            C3852vH c3852vH2 = this.f15981if;
            if (c3852vH2 != null) {
                K1.m1104try(background, c3852vH2, view.getDrawableState());
                return;
            }
            C3852vH c3852vH3 = this.f15979do;
            if (c3852vH3 != null) {
                K1.m1104try(background, c3852vH3, view.getDrawableState());
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m8415else(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f15979do == null) {
                this.f15979do = new C3852vH();
            }
            C3852vH c3852vH = this.f15979do;
            c3852vH.f16054do = colorStateList;
            c3852vH.f16057if = true;
        } else {
            this.f15979do = null;
        }
        m8414do();
    }

    /* renamed from: for, reason: not valid java name */
    public final PorterDuff.Mode m8416for() {
        C3852vH c3852vH = this.f15981if;
        if (c3852vH != null) {
            return c3852vH.f16055do;
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m8417goto(ColorStateList colorStateList) {
        if (this.f15981if == null) {
            this.f15981if = new C3852vH();
        }
        C3852vH c3852vH = this.f15981if;
        c3852vH.f16054do = colorStateList;
        c3852vH.f16057if = true;
        m8414do();
    }

    /* renamed from: if, reason: not valid java name */
    public final ColorStateList m8418if() {
        C3852vH c3852vH = this.f15981if;
        if (c3852vH != null) {
            return c3852vH.f16054do;
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m8419new(AttributeSet attributeSet, int i) {
        ColorStateList m1571this;
        View view = this.f15978do;
        Context context = view.getContext();
        int[] iArr = O4.f2566protected;
        C3970xH m8626const = C3970xH.m8626const(context, attributeSet, iArr, i);
        View view2 = this.f15978do;
        QK.m1857import(view2, view2.getContext(), iArr, attributeSet, m8626const.f16536do, i);
        try {
            if (m8626const.m8630class(0)) {
                this.f15976do = m8626const.m8638this(0, -1);
                K1 k1 = this.f15977do;
                Context context2 = view.getContext();
                int i2 = this.f15976do;
                synchronized (k1) {
                    m1571this = k1.f1741do.m1571this(context2, i2);
                }
                if (m1571this != null) {
                    m8415else(m1571this);
                }
            }
            if (m8626const.m8630class(1)) {
                QK.m1861return(view, m8626const.m8636if(1));
            }
            if (m8626const.m8630class(2)) {
                PorterDuff.Mode m2062for = C0470Re.m2062for(m8626const.m8635goto(2, -1), null);
                int i3 = Build.VERSION.SDK_INT;
                QK.Cnew.m1931import(view, m2062for);
                if (i3 == 21) {
                    Drawable background = view.getBackground();
                    boolean z = (QK.Cnew.m1925else(view) == null && QK.Cnew.m1929goto(view) == null) ? false : true;
                    if (background != null && z) {
                        if (background.isStateful()) {
                            background.setState(view.getDrawableState());
                        }
                        view.setBackground(background);
                    }
                }
            }
        } finally {
            m8626const.m8633final();
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final void m8420this(PorterDuff.Mode mode) {
        if (this.f15981if == null) {
            this.f15981if = new C3852vH();
        }
        C3852vH c3852vH = this.f15981if;
        c3852vH.f16055do = mode;
        c3852vH.f16056do = true;
        m8414do();
    }

    /* renamed from: try, reason: not valid java name */
    public final void m8421try() {
        this.f15976do = -1;
        m8415else(null);
        m8414do();
    }
}
