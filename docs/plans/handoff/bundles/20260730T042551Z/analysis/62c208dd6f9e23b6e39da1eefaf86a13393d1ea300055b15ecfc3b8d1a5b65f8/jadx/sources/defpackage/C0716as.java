package defpackage;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import defpackage.C0492Se;
import defpackage.C3612rD;
import defpackage.C3730tD;
import j$.util.Objects;
import java.util.BitSet;

/* renamed from: as, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C0716as extends Drawable implements InterfaceC3734tH, InterfaceC3789uD {

    /* renamed from: for, reason: not valid java name */
    public static final Paint f8245for;

    /* renamed from: do, reason: not valid java name */
    public final Matrix f8246do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Paint f8247do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Path f8248do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PorterDuffColorFilter f8249do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RectF f8250do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Region f8251do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f8252do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cif f8253do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final BitSet f8254do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3436oD f8255do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3554qD f8256do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3612rD f8257do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f8258do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3730tD.Ccase[] f8259do;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f8260for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final RectF f8261for;

    /* renamed from: if, reason: not valid java name */
    public final Paint f8262if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Path f8263if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public PorterDuffColorFilter f8264if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final RectF f8265if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Region f8266if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f8267if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final C3730tD.Ccase[] f8268if;

    /* renamed from: as$do, reason: invalid class name */
    public class Cdo {
        public Cdo() {
        }
    }

    static {
        Paint paint = new Paint(1);
        f8245for = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public C0716as() {
        this(new C3554qD());
    }

    /* renamed from: break, reason: not valid java name */
    public final int m4763break() {
        Cif cif = this.f8253do;
        return (int) (Math.cos(Math.toRadians(cif.f8290try)) * cif.f8287new);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m4764case(Canvas canvas) {
        this.f8254do.cardinality();
        int i = this.f8253do.f8287new;
        Path path = this.f8248do;
        C3436oD c3436oD = this.f8255do;
        if (i != 0) {
            canvas.drawPath(path, c3436oD.f14703do);
        }
        for (int i2 = 0; i2 < 4; i2++) {
            C3730tD.Ccase ccase = this.f8259do[i2];
            int i3 = this.f8253do.f8281for;
            Matrix matrix = C3730tD.Ccase.f15645if;
            ccase.mo8080do(matrix, c3436oD, i3, canvas);
            this.f8268if[i2].mo8080do(matrix, c3436oD, this.f8253do.f8281for, canvas);
        }
        if (this.f8267if) {
            Cif cif = this.f8253do;
            int sin = (int) (Math.sin(Math.toRadians(cif.f8290try)) * cif.f8287new);
            int m4763break = m4763break();
            canvas.translate(-sin, -m4763break);
            canvas.drawPath(path, f8245for);
            canvas.translate(sin, m4763break);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public final float m4765catch() {
        return this.f8253do.f8278do.f15058do.mo1748do(m4780this());
    }

    /* renamed from: class, reason: not valid java name */
    public final void m4766class(Context context) {
        this.f8253do.f8273do = new C0098Af(context);
        m4779switch();
    }

    /* renamed from: const, reason: not valid java name */
    public final boolean m4767const() {
        return this.f8253do.f8278do.m7863case(m4780this());
    }

    @Override // defpackage.InterfaceC3789uD
    /* renamed from: do, reason: not valid java name */
    public final void mo4768do(C3554qD c3554qD) {
        this.f8253do.f8278do = c3554qD;
        invalidateSelf();
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00e4, code lost:
    
        if (((m4767const() || r3.isConvex() || android.os.Build.VERSION.SDK_INT >= 29) ? false : true) != false) goto L42;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01c3  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r22) {
        /*
            Method dump skipped, instructions count: 469
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0716as.draw(android.graphics.Canvas):void");
    }

    /* renamed from: else, reason: not valid java name */
    public final void m4769else(Canvas canvas, Paint paint, Path path, C3554qD c3554qD, RectF rectF) {
        if (!c3554qD.m7863case(rectF)) {
            canvas.drawPath(path, paint);
        } else {
            float mo1748do = c3554qD.f15064if.mo1748do(rectF) * this.f8253do.f8283if;
            canvas.drawRoundRect(rectF, mo1748do, mo1748do, paint);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public final void m4770final(float f) {
        Cif cif = this.f8253do;
        if (cif.f8289try != f) {
            cif.f8289try = f;
            m4779switch();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m4771for(RectF rectF, Path path) {
        C3612rD c3612rD = this.f8257do;
        Cif cif = this.f8253do;
        c3612rD.m7942do(cif.f8278do, cif.f8283if, rectF, this.f8252do, path);
        if (this.f8253do.f8271do != 1.0f) {
            Matrix matrix = this.f8246do;
            matrix.reset();
            float f = this.f8253do.f8271do;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(matrix);
        }
        path.computeBounds(this.f8261for, true);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f8253do.f8272do;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f8253do;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(Outline outline) {
        if (this.f8253do.f8284if == 2) {
            return;
        }
        if (m4767const()) {
            outline.setRoundRect(getBounds(), m4765catch() * this.f8253do.f8283if);
            return;
        }
        RectF m4780this = m4780this();
        Path path = this.f8248do;
        m4771for(m4780this, path);
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            C0492Se.Cif.m2179do(outline, path);
            return;
        }
        if (i >= 29) {
            try {
                C0492Se.Cdo.m2178do(outline, path);
            } catch (IllegalArgumentException unused) {
            }
        } else if (path.isConvex()) {
            C0492Se.Cdo.m2178do(outline, path);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        Rect rect2 = this.f8253do.f8277do;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        Rect bounds = getBounds();
        Region region = this.f8251do;
        region.set(bounds);
        RectF m4780this = m4780this();
        Path path = this.f8248do;
        m4771for(m4780this, path);
        Region region2 = this.f8266if;
        region2.setPath(path, region);
        region.op(region2, Region.Op.DIFFERENCE);
        return region;
    }

    /* renamed from: goto */
    public void mo376goto(Canvas canvas) {
        Paint paint = this.f8262if;
        Path path = this.f8263if;
        C3554qD c3554qD = this.f8256do;
        RectF rectF = this.f8265if;
        rectF.set(m4780this());
        Paint.Style style = this.f8253do.f8275do;
        float strokeWidth = (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && (paint.getStrokeWidth() > 0.0f ? 1 : (paint.getStrokeWidth() == 0.0f ? 0 : -1)) > 0 ? paint.getStrokeWidth() / 2.0f : 0.0f;
        rectF.inset(strokeWidth, strokeWidth);
        m4769else(canvas, paint, path, c3554qD, rectF);
    }

    /* renamed from: import, reason: not valid java name */
    public final void m4772import() {
        this.f8255do.m7701do(-12303292);
        this.f8253do.f8279do = false;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        this.f8258do = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        return super.isStateful() || ((colorStateList = this.f8253do.f8288new) != null && colorStateList.isStateful()) || (((colorStateList2 = this.f8253do.f8282for) != null && colorStateList2.isStateful()) || (((colorStateList3 = this.f8253do.f8285if) != null && colorStateList3.isStateful()) || ((colorStateList4 = this.f8253do.f8274do) != null && colorStateList4.isStateful())));
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.f8253do = new Cif(this.f8253do);
        return this;
    }

    /* renamed from: native, reason: not valid java name */
    public final void m4773native(int i) {
        Cif cif = this.f8253do;
        if (cif.f8284if != i) {
            cif.f8284if = i;
            super.invalidateSelf();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final PorterDuffColorFilter m4774new(ColorStateList colorStateList, PorterDuff.Mode mode, Paint paint, boolean z) {
        PorterDuffColorFilter porterDuffColorFilter;
        if (colorStateList != null && mode != null) {
            int colorForState = colorStateList.getColorForState(getState(), 0);
            if (z) {
                colorForState = m4782try(colorForState);
            }
            this.f8260for = colorForState;
            return new PorterDuffColorFilter(colorForState, mode);
        }
        if (z) {
            int color = paint.getColor();
            int m4782try = m4782try(color);
            this.f8260for = m4782try;
            if (m4782try != color) {
                porterDuffColorFilter = new PorterDuffColorFilter(m4782try, PorterDuff.Mode.SRC_IN);
                return porterDuffColorFilter;
            }
        }
        porterDuffColorFilter = null;
        return porterDuffColorFilter;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.f8258do = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable, defpackage.TG.Cif
    public boolean onStateChange(int[] iArr) {
        boolean z = m4776return(iArr) || m4777static();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    /* renamed from: public, reason: not valid java name */
    public final void m4775public(ColorStateList colorStateList) {
        Cif cif = this.f8253do;
        if (cif.f8285if != colorStateList) {
            cif.f8285if = colorStateList;
            onStateChange(getState());
        }
    }

    /* renamed from: return, reason: not valid java name */
    public final boolean m4776return(int[] iArr) {
        boolean z;
        Paint paint;
        int color;
        int colorForState;
        Paint paint2;
        int color2;
        int colorForState2;
        if (this.f8253do.f8274do == null || color2 == (colorForState2 = this.f8253do.f8274do.getColorForState(iArr, (color2 = (paint2 = this.f8247do).getColor())))) {
            z = false;
        } else {
            paint2.setColor(colorForState2);
            z = true;
        }
        if (this.f8253do.f8285if == null || color == (colorForState = this.f8253do.f8285if.getColorForState(iArr, (color = (paint = this.f8262if).getColor())))) {
            return z;
        }
        paint.setColor(colorForState);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Cif cif = this.f8253do;
        if (cif.f8272do != i) {
            cif.f8272do = i;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f8253do.getClass();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f8253do.f8288new = colorStateList;
        m4777static();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        Cif cif = this.f8253do;
        if (cif.f8276do != mode) {
            cif.f8276do = mode;
            m4777static();
            super.invalidateSelf();
        }
    }

    /* renamed from: static, reason: not valid java name */
    public final boolean m4777static() {
        PorterDuffColorFilter porterDuffColorFilter = this.f8249do;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f8264if;
        Cif cif = this.f8253do;
        this.f8249do = m4774new(cif.f8288new, cif.f8276do, this.f8247do, true);
        Cif cif2 = this.f8253do;
        this.f8264if = m4774new(cif2.f8282for, cif2.f8276do, this.f8262if, false);
        Cif cif3 = this.f8253do;
        if (cif3.f8279do) {
            this.f8255do.m7701do(cif3.f8288new.getColorForState(getState(), 0));
        }
        return (Objects.equals(porterDuffColorFilter, this.f8249do) && Objects.equals(porterDuffColorFilter2, this.f8264if)) ? false : true;
    }

    /* renamed from: super, reason: not valid java name */
    public final void m4778super(ColorStateList colorStateList) {
        Cif cif = this.f8253do;
        if (cif.f8274do != colorStateList) {
            cif.f8274do = colorStateList;
            onStateChange(getState());
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m4779switch() {
        Cif cif = this.f8253do;
        float f = cif.f8289try + cif.f8270case;
        cif.f8281for = (int) Math.ceil(0.75f * f);
        this.f8253do.f8287new = (int) Math.ceil(f * 0.25f);
        m4777static();
        super.invalidateSelf();
    }

    /* renamed from: this, reason: not valid java name */
    public final RectF m4780this() {
        RectF rectF = this.f8250do;
        rectF.set(getBounds());
        return rectF;
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m4781throw(float f) {
        Cif cif = this.f8253do;
        if (cif.f8283if != f) {
            cif.f8283if = f;
            this.f8258do = true;
            invalidateSelf();
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final int m4782try(int i) {
        Cif cif = this.f8253do;
        float f = cif.f8289try + cif.f8270case + cif.f8286new;
        C0098Af c0098Af = cif.f8273do;
        return c0098Af != null ? c0098Af.m82do(f, i) : i;
    }

    /* renamed from: while, reason: not valid java name */
    public final void m4783while(Paint.Style style) {
        this.f8253do.f8275do = style;
        super.invalidateSelf();
    }

    public C0716as(C3554qD c3554qD) {
        this(new Cif(c3554qD));
    }

    public C0716as(Cif cif) {
        C3612rD c3612rD;
        this.f8259do = new C3730tD.Ccase[4];
        this.f8268if = new C3730tD.Ccase[4];
        this.f8254do = new BitSet(8);
        this.f8246do = new Matrix();
        this.f8248do = new Path();
        this.f8263if = new Path();
        this.f8250do = new RectF();
        this.f8265if = new RectF();
        this.f8251do = new Region();
        this.f8266if = new Region();
        Paint paint = new Paint(1);
        this.f8247do = paint;
        Paint paint2 = new Paint(1);
        this.f8262if = paint2;
        this.f8255do = new C3436oD();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            c3612rD = C3612rD.Cdo.f15244do;
        } else {
            c3612rD = new C3612rD();
        }
        this.f8257do = c3612rD;
        this.f8261for = new RectF();
        this.f8267if = true;
        this.f8253do = cif;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        m4777static();
        m4776return(getState());
        this.f8252do = new Cdo();
    }

    /* renamed from: as$if, reason: invalid class name */
    public static class Cif extends Drawable.ConstantState {

        /* renamed from: case, reason: not valid java name */
        public final float f8270case;

        /* renamed from: do, reason: not valid java name */
        public final float f8271do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f8272do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C0098Af f8273do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public ColorStateList f8274do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Paint.Style f8275do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public PorterDuff.Mode f8276do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Rect f8277do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C3554qD f8278do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f8279do;

        /* renamed from: for, reason: not valid java name */
        public float f8280for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public int f8281for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public final ColorStateList f8282for;

        /* renamed from: if, reason: not valid java name */
        public float f8283if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public int f8284if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public ColorStateList f8285if;

        /* renamed from: new, reason: not valid java name */
        public float f8286new;

        /* renamed from: new, reason: not valid java name and collision with other field name */
        public int f8287new;

        /* renamed from: new, reason: not valid java name and collision with other field name */
        public ColorStateList f8288new;

        /* renamed from: try, reason: not valid java name */
        public float f8289try;

        /* renamed from: try, reason: not valid java name and collision with other field name */
        public int f8290try;

        public Cif(C3554qD c3554qD) {
            this.f8274do = null;
            this.f8285if = null;
            this.f8282for = null;
            this.f8288new = null;
            this.f8276do = PorterDuff.Mode.SRC_IN;
            this.f8277do = null;
            this.f8271do = 1.0f;
            this.f8283if = 1.0f;
            this.f8272do = 255;
            this.f8286new = 0.0f;
            this.f8289try = 0.0f;
            this.f8270case = 0.0f;
            this.f8284if = 0;
            this.f8281for = 0;
            this.f8287new = 0;
            this.f8290try = 0;
            this.f8279do = false;
            this.f8275do = Paint.Style.FILL_AND_STROKE;
            this.f8278do = c3554qD;
            this.f8273do = null;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C0716as c0716as = new C0716as(this);
            c0716as.f8258do = true;
            return c0716as;
        }

        public Cif(Cif cif) {
            this.f8274do = null;
            this.f8285if = null;
            this.f8282for = null;
            this.f8288new = null;
            this.f8276do = PorterDuff.Mode.SRC_IN;
            this.f8277do = null;
            this.f8271do = 1.0f;
            this.f8283if = 1.0f;
            this.f8272do = 255;
            this.f8286new = 0.0f;
            this.f8289try = 0.0f;
            this.f8270case = 0.0f;
            this.f8284if = 0;
            this.f8281for = 0;
            this.f8287new = 0;
            this.f8290try = 0;
            this.f8279do = false;
            this.f8275do = Paint.Style.FILL_AND_STROKE;
            this.f8278do = cif.f8278do;
            this.f8273do = cif.f8273do;
            this.f8280for = cif.f8280for;
            this.f8274do = cif.f8274do;
            this.f8285if = cif.f8285if;
            this.f8276do = cif.f8276do;
            this.f8288new = cif.f8288new;
            this.f8272do = cif.f8272do;
            this.f8271do = cif.f8271do;
            this.f8287new = cif.f8287new;
            this.f8284if = cif.f8284if;
            this.f8279do = cif.f8279do;
            this.f8283if = cif.f8283if;
            this.f8286new = cif.f8286new;
            this.f8289try = cif.f8289try;
            this.f8270case = cif.f8270case;
            this.f8281for = cif.f8281for;
            this.f8290try = cif.f8290try;
            this.f8282for = cif.f8282for;
            this.f8275do = cif.f8275do;
            if (cif.f8277do != null) {
                this.f8277do = new Rect(cif.f8277do);
            }
        }
    }

    public C0716as(Context context, AttributeSet attributeSet, int i, int i2) {
        this(new C3554qD(C3554qD.m7859for(context, attributeSet, i, i2)));
    }
}
