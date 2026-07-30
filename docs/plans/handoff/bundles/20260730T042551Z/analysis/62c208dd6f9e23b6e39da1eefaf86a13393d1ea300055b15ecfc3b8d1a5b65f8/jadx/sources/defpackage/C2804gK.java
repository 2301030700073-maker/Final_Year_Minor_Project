package defpackage;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import defpackage.C0426Pe;
import defpackage.Cw;
import defpackage.Oz;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: gK, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2804gK extends AbstractC2745fK {

    /* renamed from: do, reason: not valid java name */
    public static final PorterDuff.Mode f13087do = PorterDuff.Mode.SRC_IN;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorFilter f13088do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Matrix f13089do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PorterDuffColorFilter f13090do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f13091do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Celse f13092do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f13093do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final float[] f13094do;

    /* renamed from: if, reason: not valid java name */
    public boolean f13095if;

    /* renamed from: gK$do, reason: invalid class name */
    public static class Cdo extends Ctry {
        public Cdo() {
        }

        public Cdo(Cdo cdo) {
            super(cdo);
        }
    }

    /* renamed from: gK$else, reason: invalid class name */
    public static class Celse extends Drawable.ConstantState {

        /* renamed from: do, reason: not valid java name */
        public int f13112do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public ColorStateList f13113do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Bitmap f13114do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Paint f13115do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public PorterDuff.Mode f13116do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Ccase f13117do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f13118do;

        /* renamed from: for, reason: not valid java name */
        public boolean f13119for;

        /* renamed from: if, reason: not valid java name */
        public int f13120if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public ColorStateList f13121if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public PorterDuff.Mode f13122if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f13123if;

        public Celse(Celse celse) {
            this.f13113do = null;
            this.f13116do = C2804gK.f13087do;
            if (celse != null) {
                this.f13112do = celse.f13112do;
                Ccase ccase = new Ccase(celse.f13117do);
                this.f13117do = ccase;
                if (celse.f13117do.f13109if != null) {
                    ccase.f13109if = new Paint(celse.f13117do.f13109if);
                }
                if (celse.f13117do.f13101do != null) {
                    this.f13117do.f13101do = new Paint(celse.f13117do.f13101do);
                }
                this.f13113do = celse.f13113do;
                this.f13116do = celse.f13116do;
                this.f13118do = celse.f13118do;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f13112do;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new C2804gK(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new C2804gK(this);
        }

        public Celse() {
            this.f13113do = null;
            this.f13116do = C2804gK.f13087do;
            this.f13117do = new Ccase();
        }
    }

    /* renamed from: gK$new, reason: invalid class name */
    public static abstract class Cnew {
        /* renamed from: do */
        public boolean mo6721do() {
            return false;
        }

        /* renamed from: if */
        public boolean mo6723if(int[] iArr) {
            return false;
        }
    }

    public C2804gK() {
        this.f13095if = true;
        this.f13094do = new float[9];
        this.f13089do = new Matrix();
        this.f13091do = new Rect();
        this.f13092do = new Celse();
    }

    /* renamed from: do, reason: not valid java name */
    public static C2804gK m6718do(Resources resources, int i, Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            C2804gK c2804gK = new C2804gK();
            ThreadLocal<TypedValue> threadLocal = Oz.f2712do;
            ((AbstractC2745fK) c2804gK).f12895do = Oz.Cdo.m1726do(resources, i, theme);
            new Cgoto(((AbstractC2745fK) c2804gK).f12895do.getConstantState());
            return c2804gK;
        }
        try {
            XmlResourceParser xml = resources.getXml(i);
            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            }
            C2804gK c2804gK2 = new C2804gK();
            c2804gK2.inflate(resources, xml, asAttributeSet, theme);
            return c2804gK2;
        } catch (IOException | XmlPullParserException unused) {
            return null;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable == null) {
            return false;
        }
        C0426Pe.Cdo.m1788if(drawable);
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00bf, code lost:
    
        if ((r5 == r10.getWidth() && r6 == r9.f13114do.getHeight()) == false) goto L40;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void draw(android.graphics.Canvas r19) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2804gK.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        return drawable != null ? drawable.getAlpha() : this.f13092do.f13117do.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f13092do.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        return drawable != null ? C0426Pe.Cdo.m1786for(drawable) : this.f13088do;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (((AbstractC2745fK) this).f12895do != null && Build.VERSION.SDK_INT >= 24) {
            return new Cgoto(((AbstractC2745fK) this).f12895do.getConstantState());
        }
        this.f13092do.f13112do = getChangingConfigurations();
        return this.f13092do;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f13092do.f13117do.f13108if;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f13092do.f13117do.f13097do;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    /* renamed from: if, reason: not valid java name */
    public final PorterDuffColorFilter m6719if(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        return drawable != null ? drawable.isAutoMirrored() : this.f13092do.f13118do;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            return drawable.isStateful();
        }
        if (!super.isStateful()) {
            Celse celse = this.f13092do;
            if (celse != null) {
                Ccase ccase = celse.f13117do;
                if (ccase.f13105do == null) {
                    ccase.f13105do = Boolean.valueOf(ccase.f13104do.mo6721do());
                }
                if (ccase.f13105do.booleanValue() || ((colorStateList = this.f13092do.f13113do) != null && colorStateList.isStateful())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f13093do && super.mutate() == this) {
            this.f13092do = new Celse(this.f13092do);
            this.f13093do = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean z;
        PorterDuff.Mode mode;
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Celse celse = this.f13092do;
        ColorStateList colorStateList = celse.f13113do;
        if (colorStateList == null || (mode = celse.f13116do) == null) {
            z = false;
        } else {
            this.f13090do = m6719if(colorStateList, mode);
            invalidateSelf();
            z = true;
        }
        Ccase ccase = celse.f13117do;
        if (ccase.f13105do == null) {
            ccase.f13105do = Boolean.valueOf(ccase.f13104do.mo6721do());
        }
        if (ccase.f13105do.booleanValue()) {
            boolean mo6723if = celse.f13117do.f13104do.mo6723if(iArr);
            celse.f13119for |= mo6723if;
            if (mo6723if) {
                invalidateSelf();
                return true;
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final void scheduleSelf(Runnable runnable, long j) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else if (this.f13092do.f13117do.getRootAlpha() != i) {
            this.f13092do.f13117do.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            drawable.setAutoMirrored(z);
        } else {
            this.f13092do.f13118do = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f13088do = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            C0426Pe.m1781new(drawable, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            C0426Pe.Cdo.m1787goto(drawable, colorStateList);
            return;
        }
        Celse celse = this.f13092do;
        if (celse.f13113do != colorStateList) {
            celse.f13113do = colorStateList;
            this.f13090do = m6719if(colorStateList, celse.f13116do);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            C0426Pe.Cdo.m1790this(drawable, mode);
            return;
        }
        Celse celse = this.f13092do;
        if (celse.f13116do != mode) {
            celse.f13116do = mode;
            this.f13090do = m6719if(celse.f13113do, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        return drawable != null ? drawable.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void unscheduleSelf(Runnable runnable) {
        Drawable drawable = ((AbstractC2745fK) this).f12895do;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    /* renamed from: gK$goto, reason: invalid class name */
    public static class Cgoto extends Drawable.ConstantState {

        /* renamed from: do, reason: not valid java name */
        public final Drawable.ConstantState f13136do;

        public Cgoto(Drawable.ConstantState constantState) {
            this.f13136do = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final boolean canApplyTheme() {
            return this.f13136do.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f13136do.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            C2804gK c2804gK = new C2804gK();
            ((AbstractC2745fK) c2804gK).f12895do = (VectorDrawable) this.f13136do.newDrawable();
            return c2804gK;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            C2804gK c2804gK = new C2804gK();
            ((AbstractC2745fK) c2804gK).f12895do = (VectorDrawable) this.f13136do.newDrawable(resources);
            return c2804gK;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C2804gK c2804gK = new C2804gK();
            ((AbstractC2745fK) c2804gK).f12895do = (VectorDrawable) this.f13136do.newDrawable(resources, theme);
            return c2804gK;
        }
    }

    /* renamed from: gK$try, reason: invalid class name */
    public static abstract class Ctry extends Cnew {

        /* renamed from: do, reason: not valid java name */
        public int f13148do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f13149do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Cw.Cdo[] f13150do;

        /* renamed from: if, reason: not valid java name */
        public final int f13151if;

        public Ctry() {
            this.f13150do = null;
            this.f13148do = 0;
        }

        public Cw.Cdo[] getPathData() {
            return this.f13150do;
        }

        public String getPathName() {
            return this.f13149do;
        }

        public void setPathData(Cw.Cdo[] cdoArr) {
            if (!Cw.m317do(this.f13150do, cdoArr)) {
                this.f13150do = Cw.m321try(cdoArr);
                return;
            }
            Cw.Cdo[] cdoArr2 = this.f13150do;
            for (int i = 0; i < cdoArr.length; i++) {
                cdoArr2[i].f451do = cdoArr[i].f451do;
                int i2 = 0;
                while (true) {
                    float[] fArr = cdoArr[i].f452do;
                    if (i2 < fArr.length) {
                        cdoArr2[i].f452do[i2] = fArr[i2];
                        i2++;
                    }
                }
            }
        }

        public Ctry(Ctry ctry) {
            this.f13150do = null;
            this.f13148do = 0;
            this.f13149do = ctry.f13149do;
            this.f13151if = ctry.f13151if;
            this.f13150do = Cw.m321try(ctry.f13150do);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:130:0x03c7  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00cf  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void inflate(android.content.res.Resources r23, org.xmlpull.v1.XmlPullParser r24, android.util.AttributeSet r25, android.content.res.Resources.Theme r26) {
        /*
            Method dump skipped, instructions count: 1004
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2804gK.inflate(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):void");
    }

    public C2804gK(Celse celse) {
        this.f13095if = true;
        this.f13094do = new float[9];
        this.f13089do = new Matrix();
        this.f13091do = new Rect();
        this.f13092do = celse;
        this.f13090do = m6719if(celse.f13113do, celse.f13116do);
    }

    /* renamed from: gK$if, reason: invalid class name */
    public static class Cif extends Ctry {

        /* renamed from: case, reason: not valid java name */
        public float f13137case;

        /* renamed from: do, reason: not valid java name */
        public float f13138do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Y8 f13139do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Paint.Cap f13140do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Paint.Join f13141do;

        /* renamed from: else, reason: not valid java name */
        public float f13142else;

        /* renamed from: for, reason: not valid java name */
        public float f13143for;

        /* renamed from: if, reason: not valid java name */
        public float f13144if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public Y8 f13145if;

        /* renamed from: new, reason: not valid java name */
        public float f13146new;

        /* renamed from: try, reason: not valid java name */
        public float f13147try;

        public Cif() {
            this.f13138do = 0.0f;
            this.f13144if = 1.0f;
            this.f13143for = 1.0f;
            this.f13146new = 0.0f;
            this.f13147try = 1.0f;
            this.f13137case = 0.0f;
            this.f13140do = Paint.Cap.BUTT;
            this.f13141do = Paint.Join.MITER;
            this.f13142else = 4.0f;
        }

        @Override // defpackage.C2804gK.Cnew
        /* renamed from: do */
        public final boolean mo6721do() {
            return this.f13145if.m2892if() || this.f13139do.m2892if();
        }

        public float getFillAlpha() {
            return this.f13143for;
        }

        public int getFillColor() {
            return this.f13145if.f4664do;
        }

        public float getStrokeAlpha() {
            return this.f13144if;
        }

        public int getStrokeColor() {
            return this.f13139do.f4664do;
        }

        public float getStrokeWidth() {
            return this.f13138do;
        }

        public float getTrimPathEnd() {
            return this.f13147try;
        }

        public float getTrimPathOffset() {
            return this.f13137case;
        }

        public float getTrimPathStart() {
            return this.f13146new;
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
        @Override // defpackage.C2804gK.Cnew
        /* renamed from: if */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean mo6723if(int[] r7) {
            /*
                r6 = this;
                Y8 r0 = r6.f13145if
                boolean r1 = r0.m2892if()
                r2 = 1
                r3 = 0
                if (r1 == 0) goto L1c
                android.content.res.ColorStateList r1 = r0.f4665do
                int r4 = r1.getDefaultColor()
                int r1 = r1.getColorForState(r7, r4)
                int r4 = r0.f4664do
                if (r1 == r4) goto L1c
                r0.f4664do = r1
                r0 = 1
                goto L1d
            L1c:
                r0 = 0
            L1d:
                Y8 r1 = r6.f13139do
                boolean r4 = r1.m2892if()
                if (r4 == 0) goto L36
                android.content.res.ColorStateList r4 = r1.f4665do
                int r5 = r4.getDefaultColor()
                int r7 = r4.getColorForState(r7, r5)
                int r4 = r1.f4664do
                if (r7 == r4) goto L36
                r1.f4664do = r7
                goto L37
            L36:
                r2 = 0
            L37:
                r7 = r2 | r0
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C2804gK.Cif.mo6723if(int[]):boolean");
        }

        public void setFillAlpha(float f) {
            this.f13143for = f;
        }

        public void setFillColor(int i) {
            this.f13145if.f4664do = i;
        }

        public void setStrokeAlpha(float f) {
            this.f13144if = f;
        }

        public void setStrokeColor(int i) {
            this.f13139do.f4664do = i;
        }

        public void setStrokeWidth(float f) {
            this.f13138do = f;
        }

        public void setTrimPathEnd(float f) {
            this.f13147try = f;
        }

        public void setTrimPathOffset(float f) {
            this.f13137case = f;
        }

        public void setTrimPathStart(float f) {
            this.f13146new = f;
        }

        public Cif(Cif cif) {
            super(cif);
            this.f13138do = 0.0f;
            this.f13144if = 1.0f;
            this.f13143for = 1.0f;
            this.f13146new = 0.0f;
            this.f13147try = 1.0f;
            this.f13137case = 0.0f;
            this.f13140do = Paint.Cap.BUTT;
            this.f13141do = Paint.Join.MITER;
            this.f13142else = 4.0f;
            this.f13139do = cif.f13139do;
            this.f13138do = cif.f13138do;
            this.f13144if = cif.f13144if;
            this.f13145if = cif.f13145if;
            ((Ctry) this).f13148do = ((Ctry) cif).f13148do;
            this.f13143for = cif.f13143for;
            this.f13146new = cif.f13146new;
            this.f13147try = cif.f13147try;
            this.f13137case = cif.f13137case;
            this.f13140do = cif.f13140do;
            this.f13141do = cif.f13141do;
            this.f13142else = cif.f13142else;
        }
    }

    /* renamed from: gK$for, reason: invalid class name */
    public static class Cfor extends Cnew {

        /* renamed from: case, reason: not valid java name */
        public float f13124case;

        /* renamed from: do, reason: not valid java name */
        public float f13125do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final int f13126do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Matrix f13127do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f13128do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayList<Cnew> f13129do;

        /* renamed from: else, reason: not valid java name */
        public float f13130else;

        /* renamed from: for, reason: not valid java name */
        public float f13131for;

        /* renamed from: if, reason: not valid java name */
        public float f13132if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final Matrix f13133if;

        /* renamed from: new, reason: not valid java name */
        public float f13134new;

        /* renamed from: try, reason: not valid java name */
        public float f13135try;

        public Cfor() {
            this.f13127do = new Matrix();
            this.f13129do = new ArrayList<>();
            this.f13125do = 0.0f;
            this.f13132if = 0.0f;
            this.f13131for = 0.0f;
            this.f13134new = 1.0f;
            this.f13135try = 1.0f;
            this.f13124case = 0.0f;
            this.f13130else = 0.0f;
            this.f13133if = new Matrix();
            this.f13128do = null;
        }

        @Override // defpackage.C2804gK.Cnew
        /* renamed from: do, reason: not valid java name */
        public final boolean mo6721do() {
            int i = 0;
            while (true) {
                ArrayList<Cnew> arrayList = this.f13129do;
                if (i >= arrayList.size()) {
                    return false;
                }
                if (arrayList.get(i).mo6721do()) {
                    return true;
                }
                i++;
            }
        }

        /* renamed from: for, reason: not valid java name */
        public final void m6722for() {
            Matrix matrix = this.f13133if;
            matrix.reset();
            matrix.postTranslate(-this.f13132if, -this.f13131for);
            matrix.postScale(this.f13134new, this.f13135try);
            matrix.postRotate(this.f13125do, 0.0f, 0.0f);
            matrix.postTranslate(this.f13124case + this.f13132if, this.f13130else + this.f13131for);
        }

        public String getGroupName() {
            return this.f13128do;
        }

        public Matrix getLocalMatrix() {
            return this.f13133if;
        }

        public float getPivotX() {
            return this.f13132if;
        }

        public float getPivotY() {
            return this.f13131for;
        }

        public float getRotation() {
            return this.f13125do;
        }

        public float getScaleX() {
            return this.f13134new;
        }

        public float getScaleY() {
            return this.f13135try;
        }

        public float getTranslateX() {
            return this.f13124case;
        }

        public float getTranslateY() {
            return this.f13130else;
        }

        @Override // defpackage.C2804gK.Cnew
        /* renamed from: if, reason: not valid java name */
        public final boolean mo6723if(int[] iArr) {
            int i = 0;
            boolean z = false;
            while (true) {
                ArrayList<Cnew> arrayList = this.f13129do;
                if (i >= arrayList.size()) {
                    return z;
                }
                z |= arrayList.get(i).mo6723if(iArr);
                i++;
            }
        }

        public void setPivotX(float f) {
            if (f != this.f13132if) {
                this.f13132if = f;
                m6722for();
            }
        }

        public void setPivotY(float f) {
            if (f != this.f13131for) {
                this.f13131for = f;
                m6722for();
            }
        }

        public void setRotation(float f) {
            if (f != this.f13125do) {
                this.f13125do = f;
                m6722for();
            }
        }

        public void setScaleX(float f) {
            if (f != this.f13134new) {
                this.f13134new = f;
                m6722for();
            }
        }

        public void setScaleY(float f) {
            if (f != this.f13135try) {
                this.f13135try = f;
                m6722for();
            }
        }

        public void setTranslateX(float f) {
            if (f != this.f13124case) {
                this.f13124case = f;
                m6722for();
            }
        }

        public void setTranslateY(float f) {
            if (f != this.f13130else) {
                this.f13130else = f;
                m6722for();
            }
        }

        public Cfor(Cfor cfor, F2<String, Object> f2) {
            Ctry cdo;
            this.f13127do = new Matrix();
            this.f13129do = new ArrayList<>();
            this.f13125do = 0.0f;
            this.f13132if = 0.0f;
            this.f13131for = 0.0f;
            this.f13134new = 1.0f;
            this.f13135try = 1.0f;
            this.f13124case = 0.0f;
            this.f13130else = 0.0f;
            Matrix matrix = new Matrix();
            this.f13133if = matrix;
            this.f13128do = null;
            this.f13125do = cfor.f13125do;
            this.f13132if = cfor.f13132if;
            this.f13131for = cfor.f13131for;
            this.f13134new = cfor.f13134new;
            this.f13135try = cfor.f13135try;
            this.f13124case = cfor.f13124case;
            this.f13130else = cfor.f13130else;
            String str = cfor.f13128do;
            this.f13128do = str;
            this.f13126do = cfor.f13126do;
            if (str != null) {
                f2.put(str, this);
            }
            matrix.set(cfor.f13133if);
            ArrayList<Cnew> arrayList = cfor.f13129do;
            for (int i = 0; i < arrayList.size(); i++) {
                Cnew cnew = arrayList.get(i);
                if (cnew instanceof Cfor) {
                    this.f13129do.add(new Cfor((Cfor) cnew, f2));
                } else {
                    if (cnew instanceof Cif) {
                        cdo = new Cif((Cif) cnew);
                    } else if (cnew instanceof Cdo) {
                        cdo = new Cdo((Cdo) cnew);
                    } else {
                        throw new IllegalStateException("Unknown object in the tree!");
                    }
                    this.f13129do.add(cdo);
                    String str2 = cdo.f13149do;
                    if (str2 != null) {
                        f2.put(str2, cdo);
                    }
                }
            }
        }
    }

    /* renamed from: gK$case, reason: invalid class name */
    public static class Ccase {

        /* renamed from: if, reason: not valid java name */
        public static final Matrix f13096if = new Matrix();

        /* renamed from: do, reason: not valid java name */
        public float f13097do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f13098do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final F2<String, Object> f13099do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Matrix f13100do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Paint f13101do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Path f13102do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public PathMeasure f13103do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cfor f13104do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Boolean f13105do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f13106do;

        /* renamed from: for, reason: not valid java name */
        public float f13107for;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public float f13108if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public Paint f13109if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final Path f13110if;

        /* renamed from: new, reason: not valid java name */
        public float f13111new;

        public Ccase() {
            this.f13100do = new Matrix();
            this.f13097do = 0.0f;
            this.f13108if = 0.0f;
            this.f13107for = 0.0f;
            this.f13111new = 0.0f;
            this.f13098do = 255;
            this.f13106do = null;
            this.f13105do = null;
            this.f13099do = new F2<>();
            this.f13104do = new Cfor();
            this.f13102do = new Path();
            this.f13110if = new Path();
        }

        /* renamed from: do, reason: not valid java name */
        public final void m6720do(Cfor cfor, Matrix matrix, Canvas canvas, int i, int i2) {
            int i3;
            float f;
            boolean z;
            cfor.f13127do.set(matrix);
            Matrix matrix2 = cfor.f13127do;
            matrix2.preConcat(cfor.f13133if);
            canvas.save();
            char c = 0;
            int i4 = 0;
            while (true) {
                ArrayList<Cnew> arrayList = cfor.f13129do;
                if (i4 >= arrayList.size()) {
                    canvas.restore();
                    return;
                }
                Cnew cnew = arrayList.get(i4);
                if (cnew instanceof Cfor) {
                    m6720do((Cfor) cnew, matrix2, canvas, i, i2);
                } else if (cnew instanceof Ctry) {
                    Ctry ctry = (Ctry) cnew;
                    float f2 = i / this.f13107for;
                    float f3 = i2 / this.f13111new;
                    float min = Math.min(f2, f3);
                    Matrix matrix3 = this.f13100do;
                    matrix3.set(matrix2);
                    matrix3.postScale(f2, f3);
                    float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
                    matrix2.mapVectors(fArr);
                    float hypot = (float) Math.hypot(fArr[c], fArr[1]);
                    i3 = i4;
                    float hypot2 = (float) Math.hypot(fArr[2], fArr[3]);
                    float f4 = (fArr[0] * fArr[3]) - (fArr[1] * fArr[2]);
                    float max = Math.max(hypot, hypot2);
                    float abs = max > 0.0f ? Math.abs(f4) / max : 0.0f;
                    if (abs != 0.0f) {
                        Path path = this.f13102do;
                        ctry.getClass();
                        path.reset();
                        Cw.Cdo[] cdoArr = ctry.f13150do;
                        if (cdoArr != null) {
                            Cw.Cdo.m323if(cdoArr, path);
                        }
                        Path path2 = this.f13110if;
                        path2.reset();
                        if (ctry instanceof Cdo) {
                            path2.setFillType(ctry.f13148do == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                            path2.addPath(path, matrix3);
                            canvas.clipPath(path2);
                        } else {
                            Cif cif = (Cif) ctry;
                            float f5 = cif.f13146new;
                            if (f5 != 0.0f || cif.f13147try != 1.0f) {
                                float f6 = cif.f13137case;
                                float f7 = (f5 + f6) % 1.0f;
                                float f8 = (cif.f13147try + f6) % 1.0f;
                                if (this.f13103do == null) {
                                    this.f13103do = new PathMeasure();
                                }
                                this.f13103do.setPath(path, false);
                                float length = this.f13103do.getLength();
                                float f9 = f7 * length;
                                float f10 = f8 * length;
                                path.reset();
                                if (f9 > f10) {
                                    this.f13103do.getSegment(f9, length, path, true);
                                    f = 0.0f;
                                    this.f13103do.getSegment(0.0f, f10, path, true);
                                } else {
                                    f = 0.0f;
                                    this.f13103do.getSegment(f9, f10, path, true);
                                }
                                path.rLineTo(f, f);
                            }
                            path2.addPath(path, matrix3);
                            Y8 y8 = cif.f13145if;
                            if ((y8.f4666do != null) || y8.f4664do != 0) {
                                if (this.f13109if == null) {
                                    Paint paint = new Paint(1);
                                    this.f13109if = paint;
                                    paint.setStyle(Paint.Style.FILL);
                                }
                                Paint paint2 = this.f13109if;
                                Shader shader = y8.f4666do;
                                if (shader != null) {
                                    shader.setLocalMatrix(matrix3);
                                    paint2.setShader(shader);
                                    paint2.setAlpha(Math.round(cif.f13143for * 255.0f));
                                } else {
                                    paint2.setShader(null);
                                    paint2.setAlpha(255);
                                    int i5 = y8.f4664do;
                                    float f11 = cif.f13143for;
                                    PorterDuff.Mode mode = C2804gK.f13087do;
                                    paint2.setColor((i5 & 16777215) | (((int) (Color.alpha(i5) * f11)) << 24));
                                }
                                paint2.setColorFilter(null);
                                path2.setFillType(((Ctry) cif).f13148do == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                canvas.drawPath(path2, paint2);
                            }
                            Y8 y82 = cif.f13139do;
                            if ((y82.f4666do != null) || y82.f4664do != 0) {
                                if (this.f13101do == null) {
                                    z = true;
                                    Paint paint3 = new Paint(1);
                                    this.f13101do = paint3;
                                    paint3.setStyle(Paint.Style.STROKE);
                                } else {
                                    z = true;
                                }
                                Paint paint4 = this.f13101do;
                                Paint.Join join = cif.f13141do;
                                if (join != null) {
                                    paint4.setStrokeJoin(join);
                                }
                                Paint.Cap cap = cif.f13140do;
                                if (cap != null) {
                                    paint4.setStrokeCap(cap);
                                }
                                paint4.setStrokeMiter(cif.f13142else);
                                Shader shader2 = y82.f4666do;
                                if (shader2 == null) {
                                    z = false;
                                }
                                if (z) {
                                    shader2.setLocalMatrix(matrix3);
                                    paint4.setShader(shader2);
                                    paint4.setAlpha(Math.round(cif.f13144if * 255.0f));
                                } else {
                                    paint4.setShader(null);
                                    paint4.setAlpha(255);
                                    int i6 = y82.f4664do;
                                    float f12 = cif.f13144if;
                                    PorterDuff.Mode mode2 = C2804gK.f13087do;
                                    paint4.setColor((i6 & 16777215) | (((int) (Color.alpha(i6) * f12)) << 24));
                                }
                                paint4.setColorFilter(null);
                                paint4.setStrokeWidth(cif.f13138do * abs * min);
                                canvas.drawPath(path2, paint4);
                            }
                        }
                    }
                    i4 = i3 + 1;
                    c = 0;
                }
                i3 = i4;
                i4 = i3 + 1;
                c = 0;
            }
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.f13098do;
        }

        public void setAlpha(float f) {
            setRootAlpha((int) (f * 255.0f));
        }

        public void setRootAlpha(int i) {
            this.f13098do = i;
        }

        public Ccase(Ccase ccase) {
            this.f13100do = new Matrix();
            this.f13097do = 0.0f;
            this.f13108if = 0.0f;
            this.f13107for = 0.0f;
            this.f13111new = 0.0f;
            this.f13098do = 255;
            this.f13106do = null;
            this.f13105do = null;
            F2<String, Object> f2 = new F2<>();
            this.f13099do = f2;
            this.f13104do = new Cfor(ccase.f13104do, f2);
            this.f13102do = new Path(ccase.f13102do);
            this.f13110if = new Path(ccase.f13110if);
            this.f13097do = ccase.f13097do;
            this.f13108if = ccase.f13108if;
            this.f13107for = ccase.f13107for;
            this.f13111new = ccase.f13111new;
            this.f13098do = ccase.f13098do;
            this.f13106do = ccase.f13106do;
            String str = ccase.f13106do;
            if (str != null) {
                f2.put(str, this);
            }
            this.f13105do = ccase.f13105do;
        }
    }
}
