package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.TypedValue;
import defpackage.Oz;

/* loaded from: classes3.dex */
public final class PG {

    /* renamed from: do, reason: not valid java name */
    public final float f2753do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f2754do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ColorStateList f2755do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Typeface f2756do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f2757do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f2758do;

    /* renamed from: for, reason: not valid java name */
    public final float f2759for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final int f2760for;

    /* renamed from: if, reason: not valid java name */
    public final float f2761if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final int f2762if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ColorStateList f2763if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f2764if = false;

    /* renamed from: new, reason: not valid java name */
    public final float f2765new;

    /* renamed from: try, reason: not valid java name */
    public float f2766try;

    /* renamed from: PG$do, reason: invalid class name */
    public class Cdo extends Oz.Ctry {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ AbstractC3134j6 f2768do;

        public Cdo(AbstractC3134j6 abstractC3134j6) {
            this.f2768do = abstractC3134j6;
        }

        @Override // defpackage.Oz.Ctry
        /* renamed from: for */
        public final void mo1731for(int i) {
            PG.this.f2764if = true;
            this.f2768do.mo1840class(i);
        }

        @Override // defpackage.Oz.Ctry
        /* renamed from: new */
        public final void mo1733new(Typeface typeface) {
            PG pg = PG.this;
            pg.f2756do = Typeface.create(typeface, pg.f2754do);
            pg.f2764if = true;
            this.f2768do.mo1841const(pg.f2756do, false);
        }
    }

    public PG(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, O2.r);
        this.f2766try = obtainStyledAttributes.getDimension(0, 0.0f);
        this.f2763if = C0659Zr.m3071if(context, obtainStyledAttributes, 3);
        C0659Zr.m3071if(context, obtainStyledAttributes, 4);
        C0659Zr.m3071if(context, obtainStyledAttributes, 5);
        this.f2754do = obtainStyledAttributes.getInt(2, 0);
        this.f2762if = obtainStyledAttributes.getInt(1, 1);
        int i2 = obtainStyledAttributes.hasValue(12) ? 12 : 10;
        this.f2760for = obtainStyledAttributes.getResourceId(i2, 0);
        this.f2757do = obtainStyledAttributes.getString(i2);
        obtainStyledAttributes.getBoolean(14, false);
        this.f2755do = C0659Zr.m3071if(context, obtainStyledAttributes, 6);
        this.f2753do = obtainStyledAttributes.getFloat(7, 0.0f);
        this.f2761if = obtainStyledAttributes.getFloat(8, 0.0f);
        this.f2759for = obtainStyledAttributes.getFloat(9, 0.0f);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(i, O2.f2518transient);
        this.f2758do = obtainStyledAttributes2.hasValue(0);
        this.f2765new = obtainStyledAttributes2.getFloat(0, 0.0f);
        obtainStyledAttributes2.recycle();
    }

    /* renamed from: case, reason: not valid java name */
    public final void m1755case(Context context, TextPaint textPaint, AbstractC3134j6 abstractC3134j6) {
        if (m1760new(context)) {
            m1757else(context, textPaint, m1759if(context));
            return;
        }
        m1756do();
        m1757else(context, textPaint, this.f2756do);
        m1758for(context, new QG(this, context, textPaint, abstractC3134j6));
    }

    /* renamed from: do, reason: not valid java name */
    public final void m1756do() {
        String str;
        Typeface typeface = this.f2756do;
        int i = this.f2754do;
        if (typeface == null && (str = this.f2757do) != null) {
            this.f2756do = Typeface.create(str, i);
        }
        if (this.f2756do == null) {
            int i2 = this.f2762if;
            if (i2 == 1) {
                this.f2756do = Typeface.SANS_SERIF;
            } else if (i2 == 2) {
                this.f2756do = Typeface.SERIF;
            } else if (i2 != 3) {
                this.f2756do = Typeface.DEFAULT;
            } else {
                this.f2756do = Typeface.MONOSPACE;
            }
            this.f2756do = Typeface.create(this.f2756do, i);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m1757else(Context context, TextPaint textPaint, Typeface typeface) {
        Typeface m2555do = VI.m2555do(context.getResources().getConfiguration(), typeface);
        if (m2555do != null) {
            typeface = m2555do;
        }
        textPaint.setTypeface(typeface);
        int i = (~typeface.getStyle()) & this.f2754do;
        textPaint.setFakeBoldText((i & 1) != 0);
        textPaint.setTextSkewX((i & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f2766try);
        if (this.f2758do) {
            textPaint.setLetterSpacing(this.f2765new);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m1758for(Context context, AbstractC3134j6 abstractC3134j6) {
        if (m1760new(context)) {
            m1759if(context);
        } else {
            m1756do();
        }
        int i = this.f2760for;
        if (i == 0) {
            this.f2764if = true;
        }
        if (this.f2764if) {
            abstractC3134j6.mo1841const(this.f2756do, true);
            return;
        }
        try {
            Cdo cdo = new Cdo(abstractC3134j6);
            ThreadLocal<TypedValue> threadLocal = Oz.f2712do;
            if (context.isRestricted()) {
                cdo.m1730do(-4);
            } else {
                Oz.m1722for(context, i, new TypedValue(), 0, cdo, false, false);
            }
        } catch (Resources.NotFoundException unused) {
            this.f2764if = true;
            abstractC3134j6.mo1840class(1);
        } catch (Exception unused2) {
            this.f2764if = true;
            abstractC3134j6.mo1840class(-3);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final Typeface m1759if(Context context) {
        if (this.f2764if) {
            return this.f2756do;
        }
        if (!context.isRestricted()) {
            try {
                Typeface m1723if = Oz.m1723if(context, this.f2760for);
                this.f2756do = m1723if;
                if (m1723if != null) {
                    this.f2756do = Typeface.create(m1723if, this.f2754do);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException | Exception unused) {
            }
        }
        m1756do();
        this.f2764if = true;
        return this.f2756do;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001f A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0021 A[ORIG_RETURN, RETURN] */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m1760new(android.content.Context r8) {
        /*
            r7 = this;
            int r1 = r7.f2760for
            if (r1 == 0) goto L1c
            java.lang.ThreadLocal<android.util.TypedValue> r0 = defpackage.Oz.f2712do
            boolean r0 = r8.isRestricted()
            if (r0 == 0) goto Ld
            goto L1c
        Ld:
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 1
            r0 = r8
            android.graphics.Typeface r8 = defpackage.Oz.m1722for(r0, r1, r2, r3, r4, r5, r6)
            goto L1d
        L1c:
            r8 = 0
        L1d:
            if (r8 == 0) goto L21
            r8 = 1
            goto L22
        L21:
            r8 = 0
        L22:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.PG.m1760new(android.content.Context):boolean");
    }

    /* renamed from: try, reason: not valid java name */
    public final void m1761try(Context context, TextPaint textPaint, AbstractC3134j6 abstractC3134j6) {
        m1755case(context, textPaint, abstractC3134j6);
        ColorStateList colorStateList = this.f2763if;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        ColorStateList colorStateList2 = this.f2755do;
        textPaint.setShadowLayer(this.f2759for, this.f2753do, this.f2761if, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }
}
