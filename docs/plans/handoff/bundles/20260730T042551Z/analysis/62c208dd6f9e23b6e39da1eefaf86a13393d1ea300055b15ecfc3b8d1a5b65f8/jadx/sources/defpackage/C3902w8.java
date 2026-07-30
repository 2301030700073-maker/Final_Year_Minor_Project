package defpackage;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.View;
import android.view.animation.LinearInterpolator;
import defpackage.C3202kF;
import defpackage.R6;
import java.util.WeakHashMap;

/* renamed from: w8, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3902w8 {

    /* renamed from: break, reason: not valid java name */
    public float f16209break;

    /* renamed from: case, reason: not valid java name */
    public float f16210case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public Typeface f16212case;

    /* renamed from: catch, reason: not valid java name */
    public float f16213catch;

    /* renamed from: class, reason: not valid java name */
    public float f16214class;

    /* renamed from: const, reason: not valid java name */
    public float f16215const;

    /* renamed from: default, reason: not valid java name */
    public float f16216default;

    /* renamed from: do, reason: not valid java name */
    public float f16217do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f16218do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public R6 f16219do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TimeInterpolator f16220do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorStateList f16221do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Bitmap f16222do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f16223do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RectF f16224do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Typeface f16225do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public StaticLayout f16226do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TextPaint f16227do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final View f16229do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f16230do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f16231do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f16232do;

    /* renamed from: else, reason: not valid java name */
    public float f16233else;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public Typeface f16235else;

    /* renamed from: extends, reason: not valid java name */
    public float f16236extends;

    /* renamed from: final, reason: not valid java name */
    public float f16237final;

    /* renamed from: finally, reason: not valid java name */
    public float f16238finally;

    /* renamed from: for, reason: not valid java name */
    public float f16239for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public ColorStateList f16241for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public Typeface f16242for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public CharSequence f16243for;

    /* renamed from: goto, reason: not valid java name */
    public float f16245goto;

    /* renamed from: if, reason: not valid java name */
    public float f16246if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public R6 f16248if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public TimeInterpolator f16249if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ColorStateList f16250if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Rect f16251if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public Typeface f16252if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final TextPaint f16253if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public CharSequence f16254if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f16255if;

    /* renamed from: import, reason: not valid java name */
    public float f16256import;

    /* renamed from: native, reason: not valid java name */
    public float f16257native;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public int f16259new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public ColorStateList f16260new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public Typeface f16261new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f16262new;

    /* renamed from: package, reason: not valid java name */
    public float f16263package;

    /* renamed from: public, reason: not valid java name */
    public float f16265public;

    /* renamed from: return, reason: not valid java name */
    public float f16266return;

    /* renamed from: static, reason: not valid java name */
    public float f16267static;

    /* renamed from: super, reason: not valid java name */
    public float f16268super;

    /* renamed from: switch, reason: not valid java name */
    public float f16269switch;

    /* renamed from: this, reason: not valid java name */
    public float f16270this;

    /* renamed from: throw, reason: not valid java name */
    public float f16271throw;

    /* renamed from: throws, reason: not valid java name */
    public float f16272throws;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public int f16274try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public Typeface f16275try;

    /* renamed from: while, reason: not valid java name */
    public float f16276while;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public int f16247if = 16;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f16240for = 16;

    /* renamed from: new, reason: not valid java name */
    public float f16258new = 15.0f;

    /* renamed from: try, reason: not valid java name */
    public float f16273try = 15.0f;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TextUtils.TruncateAt f16228do = TextUtils.TruncateAt.END;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f16244for = true;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public int f16211case = 1;

    /* renamed from: private, reason: not valid java name */
    public final float f16264private = 1.0f;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public final int f16234else = C3202kF.f13944try;

    /* renamed from: w8$do, reason: invalid class name */
    public class Cdo implements R6.Cdo {
        public Cdo() {
        }

        @Override // defpackage.R6.Cdo
        /* renamed from: do */
        public final void mo2015do(Typeface typeface) {
            C3902w8 c3902w8 = C3902w8.this;
            if (c3902w8.m8545class(typeface)) {
                c3902w8.m8553this(false);
            }
        }
    }

    /* renamed from: w8$if, reason: invalid class name */
    public class Cif implements R6.Cdo {
        public Cif() {
        }

        @Override // defpackage.R6.Cdo
        /* renamed from: do */
        public final void mo2015do(Typeface typeface) {
            C3902w8 c3902w8 = C3902w8.this;
            if (c3902w8.m8547final(typeface)) {
                c3902w8.m8553this(false);
            }
        }
    }

    public C3902w8(View view) {
        this.f16229do = view;
        TextPaint textPaint = new TextPaint(129);
        this.f16227do = textPaint;
        this.f16253if = new TextPaint(textPaint);
        this.f16251if = new Rect();
        this.f16223do = new Rect();
        this.f16224do = new RectF();
        float f = this.f16246if;
        this.f16239for = Cpublic.m7823for(1.0f, f, 0.5f, f);
        m8549goto(view.getContext().getResources().getConfiguration());
    }

    /* renamed from: do, reason: not valid java name */
    public static int m8540do(float f, int i, int i2) {
        float f2 = 1.0f - f;
        return Color.argb(Math.round((Color.alpha(i2) * f) + (Color.alpha(i) * f2)), Math.round((Color.red(i2) * f) + (Color.red(i) * f2)), Math.round((Color.green(i2) * f) + (Color.green(i) * f2)), Math.round((Color.blue(i2) * f) + (Color.blue(i) * f2)));
    }

    /* renamed from: else, reason: not valid java name */
    public static float m8541else(float f, float f2, float f3, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f3 = timeInterpolator.getInterpolation(f3);
        }
        LinearInterpolator linearInterpolator = C2785g1.f13028do;
        return Cpublic.m7823for(f2, f, f3, f);
    }

    /* renamed from: break, reason: not valid java name */
    public final void m8542break(ColorStateList colorStateList) {
        if (this.f16250if == colorStateList && this.f16221do == colorStateList) {
            return;
        }
        this.f16250if = colorStateList;
        this.f16221do = colorStateList;
        m8553this(false);
    }

    /* renamed from: case, reason: not valid java name */
    public final int m8543case(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.f16232do;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m8544catch(int i) {
        View view = this.f16229do;
        PG pg = new PG(view.getContext(), i);
        ColorStateList colorStateList = pg.f2763if;
        if (colorStateList != null) {
            this.f16250if = colorStateList;
        }
        float f = pg.f2766try;
        if (f != 0.0f) {
            this.f16273try = f;
        }
        ColorStateList colorStateList2 = pg.f2755do;
        if (colorStateList2 != null) {
            this.f16241for = colorStateList2;
        }
        this.f16256import = pg.f2753do;
        this.f16257native = pg.f2761if;
        this.f16276while = pg.f2759for;
        this.f16269switch = pg.f2765new;
        R6 r6 = this.f16248if;
        if (r6 != null) {
            r6.f3148do = true;
        }
        Cdo cdo = new Cdo();
        pg.m1756do();
        this.f16248if = new R6(cdo, pg.f2756do);
        pg.m1758for(view.getContext(), this.f16248if);
        m8553this(false);
    }

    /* renamed from: class, reason: not valid java name */
    public final boolean m8545class(Typeface typeface) {
        R6 r6 = this.f16248if;
        if (r6 != null) {
            r6.f3148do = true;
        }
        if (this.f16242for == typeface) {
            return false;
        }
        this.f16242for = typeface;
        Typeface m2555do = VI.m2555do(this.f16229do.getContext().getResources().getConfiguration(), typeface);
        this.f16252if = m2555do;
        if (m2555do == null) {
            m2555do = this.f16242for;
        }
        this.f16225do = m2555do;
        return true;
    }

    /* renamed from: const, reason: not valid java name */
    public final void m8546const(int i) {
        View view = this.f16229do;
        PG pg = new PG(view.getContext(), i);
        ColorStateList colorStateList = pg.f2763if;
        if (colorStateList != null) {
            this.f16221do = colorStateList;
        }
        float f = pg.f2766try;
        if (f != 0.0f) {
            this.f16258new = f;
        }
        ColorStateList colorStateList2 = pg.f2755do;
        if (colorStateList2 != null) {
            this.f16260new = colorStateList2;
        }
        this.f16266return = pg.f2753do;
        this.f16267static = pg.f2761if;
        this.f16265public = pg.f2759for;
        this.f16272throws = pg.f2765new;
        R6 r6 = this.f16219do;
        if (r6 != null) {
            r6.f3148do = true;
        }
        Cif cif = new Cif();
        pg.m1756do();
        this.f16219do = new R6(cif, pg.f2756do);
        pg.m1758for(view.getContext(), this.f16219do);
        m8553this(false);
    }

    /* renamed from: final, reason: not valid java name */
    public final boolean m8547final(Typeface typeface) {
        R6 r6 = this.f16219do;
        if (r6 != null) {
            r6.f3148do = true;
        }
        if (this.f16212case == typeface) {
            return false;
        }
        this.f16212case = typeface;
        Typeface m2555do = VI.m2555do(this.f16229do.getContext().getResources().getConfiguration(), typeface);
        this.f16275try = m2555do;
        if (m2555do == null) {
            m2555do = this.f16212case;
        }
        this.f16261new = m2555do;
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m8548for(float f, boolean z) {
        float f2;
        float f3;
        Typeface typeface;
        boolean z2;
        StaticLayout staticLayout;
        Layout.Alignment alignment;
        if (this.f16230do == null) {
            return;
        }
        float width = this.f16251if.width();
        float width2 = this.f16223do.width();
        if (Math.abs(f - 1.0f) < 1.0E-5f) {
            f2 = this.f16273try;
            f3 = this.f16269switch;
            this.f16214class = 1.0f;
            typeface = this.f16225do;
        } else {
            float f4 = this.f16258new;
            float f5 = this.f16272throws;
            Typeface typeface2 = this.f16261new;
            if (Math.abs(f - 0.0f) < 1.0E-5f) {
                this.f16214class = 1.0f;
            } else {
                this.f16214class = m8541else(this.f16258new, this.f16273try, f, this.f16249if) / this.f16258new;
            }
            float f6 = this.f16273try / this.f16258new;
            width = (z || this.f16231do || width2 * f6 <= width) ? width2 : Math.min(width / f6, width2);
            f2 = f4;
            f3 = f5;
            typeface = typeface2;
        }
        TextPaint textPaint = this.f16227do;
        if (width > 0.0f) {
            boolean z3 = this.f16215const != f2;
            boolean z4 = this.f16216default != f3;
            boolean z5 = this.f16235else != typeface;
            StaticLayout staticLayout2 = this.f16226do;
            z2 = z3 || z4 || (staticLayout2 != null && (width > ((float) staticLayout2.getWidth()) ? 1 : (width == ((float) staticLayout2.getWidth()) ? 0 : -1)) != 0) || z5 || this.f16262new;
            this.f16215const = f2;
            this.f16216default = f3;
            this.f16235else = typeface;
            this.f16262new = false;
            textPaint.setLinearText(this.f16214class != 1.0f);
        } else {
            z2 = false;
        }
        if (this.f16254if == null || z2) {
            textPaint.setTextSize(this.f16215const);
            textPaint.setTypeface(this.f16235else);
            textPaint.setLetterSpacing(this.f16216default);
            boolean m8550if = m8550if(this.f16230do);
            this.f16255if = m8550if;
            int i = this.f16211case;
            if (!(i > 1 && (!m8550if || this.f16231do))) {
                i = 1;
            }
            try {
                if (i == 1) {
                    alignment = Layout.Alignment.ALIGN_NORMAL;
                } else {
                    int absoluteGravity = Gravity.getAbsoluteGravity(this.f16247if, m8550if ? 1 : 0) & 7;
                    alignment = absoluteGravity != 1 ? absoluteGravity != 5 ? this.f16255if ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : this.f16255if ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_CENTER;
                }
                C3202kF c3202kF = new C3202kF(this.f16230do, textPaint, (int) width);
                c3202kF.f13949do = this.f16228do;
                c3202kF.f13955if = m8550if;
                c3202kF.f13947do = alignment;
                c3202kF.f13951do = false;
                c3202kF.f13952for = i;
                float f7 = this.f16264private;
                c3202kF.f13945do = 0.0f;
                c3202kF.f13953if = f7;
                c3202kF.f13956new = this.f16234else;
                staticLayout = c3202kF.m7230do();
            } catch (C3202kF.Cdo e) {
                e.getCause().getMessage();
                staticLayout = null;
            }
            staticLayout.getClass();
            this.f16226do = staticLayout;
            this.f16254if = staticLayout.getText();
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m8549goto(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 31) {
            Typeface typeface = this.f16242for;
            if (typeface != null) {
                this.f16252if = VI.m2555do(configuration, typeface);
            }
            Typeface typeface2 = this.f16212case;
            if (typeface2 != null) {
                this.f16275try = VI.m2555do(configuration, typeface2);
            }
            Typeface typeface3 = this.f16252if;
            if (typeface3 == null) {
                typeface3 = this.f16242for;
            }
            this.f16225do = typeface3;
            Typeface typeface4 = this.f16275try;
            if (typeface4 == null) {
                typeface4 = this.f16212case;
            }
            this.f16261new = typeface4;
            m8553this(true);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m8550if(CharSequence charSequence) {
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        boolean z = this.f16229do.getLayoutDirection() == 1;
        if (this.f16244for) {
            return (z ? SG.f3484new : SG.f3482for).m2126if(charSequence, charSequence.length());
        }
        return z;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m8551new(Canvas canvas) {
        int save = canvas.save();
        if (this.f16254if != null) {
            RectF rectF = this.f16224do;
            if (rectF.width() <= 0.0f || rectF.height() <= 0.0f) {
                return;
            }
            TextPaint textPaint = this.f16227do;
            textPaint.setTextSize(this.f16215const);
            float f = this.f16209break;
            float f2 = this.f16213catch;
            float f3 = this.f16214class;
            if (f3 != 1.0f && !this.f16231do) {
                canvas.scale(f3, f3, f, f2);
            }
            boolean z = true;
            if (this.f16211case <= 1 || (this.f16255if && !this.f16231do)) {
                z = false;
            }
            if (!z || (this.f16231do && this.f16217do <= this.f16239for)) {
                canvas.translate(f, f2);
                this.f16226do.draw(canvas);
            } else {
                float lineStart = this.f16209break - this.f16226do.getLineStart(0);
                int alpha = textPaint.getAlpha();
                canvas.translate(lineStart, f2);
                if (!this.f16231do) {
                    textPaint.setAlpha((int) (this.f16263package * alpha));
                    if (Build.VERSION.SDK_INT >= 31) {
                        textPaint.setShadowLayer(this.f16237final, this.f16268super, this.f16271throw, O2.m1589new(this.f16274try, textPaint.getAlpha()));
                    }
                    this.f16226do.draw(canvas);
                }
                if (!this.f16231do) {
                    textPaint.setAlpha((int) (this.f16238finally * alpha));
                }
                int i = Build.VERSION.SDK_INT;
                if (i >= 31) {
                    textPaint.setShadowLayer(this.f16237final, this.f16268super, this.f16271throw, O2.m1589new(this.f16274try, textPaint.getAlpha()));
                }
                int lineBaseline = this.f16226do.getLineBaseline(0);
                CharSequence charSequence = this.f16243for;
                float f4 = lineBaseline;
                canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f4, textPaint);
                if (i >= 31) {
                    textPaint.setShadowLayer(this.f16237final, this.f16268super, this.f16271throw, this.f16274try);
                }
                if (!this.f16231do) {
                    String trim = this.f16243for.toString().trim();
                    if (trim.endsWith("…")) {
                        trim = trim.substring(0, trim.length() - 1);
                    }
                    String str = trim;
                    textPaint.setAlpha(alpha);
                    canvas.drawText(str, 0, Math.min(this.f16226do.getLineEnd(0), str.length()), 0.0f, f4, (Paint) textPaint);
                }
            }
            canvas.restoreToCount(save);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public final void m8552super(float f) {
        float f2;
        float m1179super = C0315Kc.m1179super(f, 0.0f, 1.0f);
        if (m1179super != this.f16217do) {
            this.f16217do = m1179super;
            boolean z = this.f16231do;
            RectF rectF = this.f16224do;
            Rect rect = this.f16251if;
            Rect rect2 = this.f16223do;
            if (z) {
                if (m1179super < this.f16239for) {
                    rect = rect2;
                }
                rectF.set(rect);
            } else {
                rectF.left = m8541else(rect2.left, rect.left, m1179super, this.f16220do);
                rectF.top = m8541else(this.f16210case, this.f16233else, m1179super, this.f16220do);
                rectF.right = m8541else(rect2.right, rect.right, m1179super, this.f16220do);
                rectF.bottom = m8541else(rect2.bottom, rect.bottom, m1179super, this.f16220do);
            }
            if (!this.f16231do) {
                this.f16209break = m8541else(this.f16245goto, this.f16270this, m1179super, this.f16220do);
                this.f16213catch = m8541else(this.f16210case, this.f16233else, m1179super, this.f16220do);
                m8554throw(m1179super);
                f2 = m1179super;
            } else if (m1179super < this.f16239for) {
                this.f16209break = this.f16245goto;
                this.f16213catch = this.f16210case;
                m8554throw(0.0f);
                f2 = 0.0f;
            } else {
                this.f16209break = this.f16270this;
                this.f16213catch = this.f16233else - Math.max(0, this.f16218do);
                m8554throw(1.0f);
                f2 = 1.0f;
            }
            C0166Dh c0166Dh = C2785g1.f13026do;
            this.f16238finally = 1.0f - m8541else(0.0f, 1.0f, 1.0f - m1179super, c0166Dh);
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            View view = this.f16229do;
            view.postInvalidateOnAnimation();
            this.f16263package = m8541else(1.0f, 0.0f, m1179super, c0166Dh);
            view.postInvalidateOnAnimation();
            ColorStateList colorStateList = this.f16250if;
            ColorStateList colorStateList2 = this.f16221do;
            TextPaint textPaint = this.f16227do;
            if (colorStateList != colorStateList2) {
                textPaint.setColor(m8540do(f2, m8543case(colorStateList2), m8543case(this.f16250if)));
            } else {
                textPaint.setColor(m8543case(colorStateList));
            }
            int i = Build.VERSION.SDK_INT;
            float f3 = this.f16269switch;
            float f4 = this.f16272throws;
            if (f3 != f4) {
                textPaint.setLetterSpacing(m8541else(f4, f3, m1179super, c0166Dh));
            } else {
                textPaint.setLetterSpacing(f3);
            }
            this.f16237final = m8541else(this.f16265public, this.f16276while, m1179super, null);
            this.f16268super = m8541else(this.f16266return, this.f16256import, m1179super, null);
            this.f16271throw = m8541else(this.f16267static, this.f16257native, m1179super, null);
            int m8540do = m8540do(m1179super, m8543case(this.f16260new), m8543case(this.f16241for));
            this.f16274try = m8540do;
            textPaint.setShadowLayer(this.f16237final, this.f16268super, this.f16271throw, m8540do);
            if (this.f16231do) {
                int alpha = textPaint.getAlpha();
                float f5 = this.f16239for;
                textPaint.setAlpha((int) ((m1179super <= f5 ? C2785g1.m6709do(1.0f, 0.0f, this.f16246if, f5, m1179super) : C2785g1.m6709do(0.0f, 1.0f, f5, 1.0f, m1179super)) * alpha));
                if (i >= 31) {
                    textPaint.setShadowLayer(this.f16237final, this.f16268super, this.f16271throw, O2.m1589new(this.f16274try, textPaint.getAlpha()));
                }
            }
            view.postInvalidateOnAnimation();
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final void m8553this(boolean z) {
        float measureText;
        float f;
        StaticLayout staticLayout;
        View view = this.f16229do;
        if ((view.getHeight() <= 0 || view.getWidth() <= 0) && !z) {
            return;
        }
        m8548for(1.0f, z);
        CharSequence charSequence = this.f16254if;
        TextPaint textPaint = this.f16227do;
        if (charSequence != null && (staticLayout = this.f16226do) != null) {
            this.f16243for = TextUtils.ellipsize(charSequence, textPaint, staticLayout.getWidth(), this.f16228do);
        }
        CharSequence charSequence2 = this.f16243for;
        if (charSequence2 != null) {
            this.f16236extends = textPaint.measureText(charSequence2, 0, charSequence2.length());
        } else {
            this.f16236extends = 0.0f;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(this.f16240for, this.f16255if ? 1 : 0);
        int i = absoluteGravity & 112;
        Rect rect = this.f16251if;
        if (i == 48) {
            this.f16233else = rect.top;
        } else if (i != 80) {
            this.f16233else = rect.centerY() - ((textPaint.descent() - textPaint.ascent()) / 2.0f);
        } else {
            this.f16233else = textPaint.ascent() + rect.bottom;
        }
        int i2 = absoluteGravity & 8388615;
        if (i2 == 1) {
            this.f16270this = rect.centerX() - (this.f16236extends / 2.0f);
        } else if (i2 != 5) {
            this.f16270this = rect.left;
        } else {
            this.f16270this = rect.right - this.f16236extends;
        }
        m8548for(0.0f, z);
        float height = this.f16226do != null ? r1.getHeight() : 0.0f;
        StaticLayout staticLayout2 = this.f16226do;
        if (staticLayout2 == null || this.f16211case <= 1) {
            CharSequence charSequence3 = this.f16254if;
            measureText = charSequence3 != null ? textPaint.measureText(charSequence3, 0, charSequence3.length()) : 0.0f;
        } else {
            measureText = staticLayout2.getWidth();
        }
        StaticLayout staticLayout3 = this.f16226do;
        this.f16259new = staticLayout3 != null ? staticLayout3.getLineCount() : 0;
        int absoluteGravity2 = Gravity.getAbsoluteGravity(this.f16247if, this.f16255if ? 1 : 0);
        int i3 = absoluteGravity2 & 112;
        Rect rect2 = this.f16223do;
        if (i3 == 48) {
            this.f16210case = rect2.top;
        } else if (i3 != 80) {
            this.f16210case = rect2.centerY() - (height / 2.0f);
        } else {
            this.f16210case = textPaint.descent() + (rect2.bottom - height);
        }
        int i4 = absoluteGravity2 & 8388615;
        if (i4 == 1) {
            this.f16245goto = rect2.centerX() - (measureText / 2.0f);
        } else if (i4 != 5) {
            this.f16245goto = rect2.left;
        } else {
            this.f16245goto = rect2.right - measureText;
        }
        Bitmap bitmap = this.f16222do;
        if (bitmap != null) {
            bitmap.recycle();
            this.f16222do = null;
        }
        m8554throw(this.f16217do);
        float f2 = this.f16217do;
        boolean z2 = this.f16231do;
        RectF rectF = this.f16224do;
        if (z2) {
            if (f2 < this.f16239for) {
                rect = rect2;
            }
            rectF.set(rect);
        } else {
            rectF.left = m8541else(rect2.left, rect.left, f2, this.f16220do);
            rectF.top = m8541else(this.f16210case, this.f16233else, f2, this.f16220do);
            rectF.right = m8541else(rect2.right, rect.right, f2, this.f16220do);
            rectF.bottom = m8541else(rect2.bottom, rect.bottom, f2, this.f16220do);
        }
        if (!this.f16231do) {
            this.f16209break = m8541else(this.f16245goto, this.f16270this, f2, this.f16220do);
            this.f16213catch = m8541else(this.f16210case, this.f16233else, f2, this.f16220do);
            m8554throw(f2);
            f = f2;
        } else if (f2 < this.f16239for) {
            this.f16209break = this.f16245goto;
            this.f16213catch = this.f16210case;
            m8554throw(0.0f);
            f = 0.0f;
        } else {
            this.f16209break = this.f16270this;
            this.f16213catch = this.f16233else - Math.max(0, this.f16218do);
            m8554throw(1.0f);
            f = 1.0f;
        }
        C0166Dh c0166Dh = C2785g1.f13026do;
        this.f16238finally = 1.0f - m8541else(0.0f, 1.0f, 1.0f - f2, c0166Dh);
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        view.postInvalidateOnAnimation();
        this.f16263package = m8541else(1.0f, 0.0f, f2, c0166Dh);
        view.postInvalidateOnAnimation();
        ColorStateList colorStateList = this.f16250if;
        ColorStateList colorStateList2 = this.f16221do;
        if (colorStateList != colorStateList2) {
            textPaint.setColor(m8540do(f, m8543case(colorStateList2), m8543case(this.f16250if)));
        } else {
            textPaint.setColor(m8543case(colorStateList));
        }
        int i5 = Build.VERSION.SDK_INT;
        float f3 = this.f16269switch;
        float f4 = this.f16272throws;
        if (f3 != f4) {
            textPaint.setLetterSpacing(m8541else(f4, f3, f2, c0166Dh));
        } else {
            textPaint.setLetterSpacing(f3);
        }
        this.f16237final = m8541else(this.f16265public, this.f16276while, f2, null);
        this.f16268super = m8541else(this.f16266return, this.f16256import, f2, null);
        this.f16271throw = m8541else(this.f16267static, this.f16257native, f2, null);
        int m8540do = m8540do(f2, m8543case(this.f16260new), m8543case(this.f16241for));
        this.f16274try = m8540do;
        textPaint.setShadowLayer(this.f16237final, this.f16268super, this.f16271throw, m8540do);
        if (this.f16231do) {
            int alpha = textPaint.getAlpha();
            float f5 = this.f16239for;
            textPaint.setAlpha((int) ((f2 <= f5 ? C2785g1.m6709do(1.0f, 0.0f, this.f16246if, f5, f2) : C2785g1.m6709do(0.0f, 1.0f, f5, 1.0f, f2)) * alpha));
            if (i5 >= 31) {
                textPaint.setShadowLayer(this.f16237final, this.f16268super, this.f16271throw, O2.m1589new(this.f16274try, textPaint.getAlpha()));
            }
        }
        view.postInvalidateOnAnimation();
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m8554throw(float f) {
        m8548for(f, false);
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        this.f16229do.postInvalidateOnAnimation();
    }

    /* renamed from: try, reason: not valid java name */
    public final float m8555try() {
        TextPaint textPaint = this.f16253if;
        textPaint.setTextSize(this.f16273try);
        textPaint.setTypeface(this.f16225do);
        textPaint.setLetterSpacing(this.f16269switch);
        return -textPaint.ascent();
    }

    /* renamed from: while, reason: not valid java name */
    public final boolean m8556while(int[] iArr) {
        ColorStateList colorStateList;
        this.f16232do = iArr;
        ColorStateList colorStateList2 = this.f16250if;
        if (!((colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f16221do) != null && colorStateList.isStateful()))) {
            return false;
        }
        m8553this(false);
        return true;
    }
}
