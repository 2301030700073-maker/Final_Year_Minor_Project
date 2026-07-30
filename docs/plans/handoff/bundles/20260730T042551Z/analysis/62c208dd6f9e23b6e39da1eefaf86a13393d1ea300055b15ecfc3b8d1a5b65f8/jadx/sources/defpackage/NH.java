package defpackage;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextPaint;
import android.view.View;
import defpackage.C3554qD;
import defpackage.TG;

/* loaded from: classes3.dex */
public final class NH extends C0716as implements TG.Cif {

    /* renamed from: case, reason: not valid java name */
    public int f2341case;

    /* renamed from: do, reason: not valid java name */
    public float f2342do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f2343do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TG f2344do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f2345do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Paint.FontMetrics f2346do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f2347do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f2348do;

    /* renamed from: else, reason: not valid java name */
    public int f2349else;

    /* renamed from: for, reason: not valid java name */
    public float f2350for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f2351for;

    /* renamed from: goto, reason: not valid java name */
    public int f2352goto;

    /* renamed from: if, reason: not valid java name */
    public float f2353if;

    /* renamed from: new, reason: not valid java name */
    public float f2354new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public int f2355new;

    /* renamed from: this, reason: not valid java name */
    public int f2356this;

    /* renamed from: try, reason: not valid java name */
    public int f2357try;

    /* renamed from: NH$do, reason: invalid class name */
    public class Cdo implements View.OnLayoutChangeListener {
        public Cdo() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            NH nh = NH.this;
            nh.getClass();
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            nh.f2356this = iArr[0];
            view.getWindowVisibleDisplayFrame(nh.f2347do);
        }
    }

    public NH(Context context, int i) {
        super(context, null, 0, i);
        this.f2346do = new Paint.FontMetrics();
        TG tg = new TG(this);
        this.f2344do = tg;
        this.f2343do = new Cdo();
        this.f2347do = new Rect();
        this.f2342do = 1.0f;
        this.f2353if = 1.0f;
        this.f2350for = 0.5f;
        this.f2354new = 1.0f;
        this.f2345do = context;
        TextPaint textPaint = tg.f3636do;
        textPaint.density = context.getResources().getDisplayMetrics().density;
        textPaint.setTextAlign(Paint.Align.CENTER);
    }

    /* renamed from: default, reason: not valid java name */
    public final C3770tv m1510default() {
        float f = -m1512throws();
        float width = ((float) (getBounds().width() - (Math.sqrt(2.0d) * this.f2352goto))) / 2.0f;
        return new C3770tv(new C0110Ar(this.f2352goto), Math.min(Math.max(f, -width), width));
    }

    @Override // defpackage.C0716as, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        canvas.save();
        float m1512throws = m1512throws();
        float f = (float) (-((Math.sqrt(2.0d) * this.f2352goto) - this.f2352goto));
        canvas.scale(this.f2342do, this.f2353if, (getBounds().width() * 0.5f) + getBounds().left, (getBounds().height() * this.f2350for) + getBounds().top);
        canvas.translate(m1512throws, f);
        super.draw(canvas);
        if (this.f2348do != null) {
            float centerY = getBounds().centerY();
            TG tg = this.f2344do;
            TextPaint textPaint = tg.f3636do;
            Paint.FontMetrics fontMetrics = this.f2346do;
            textPaint.getFontMetrics(fontMetrics);
            int i = (int) (centerY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f));
            PG pg = tg.f3634do;
            TextPaint textPaint2 = tg.f3636do;
            if (pg != null) {
                textPaint2.drawableState = getState();
                tg.f3634do.m1761try(this.f2345do, textPaint2, tg.f3635do);
                textPaint2.setAlpha((int) (this.f2354new * 255.0f));
            }
            CharSequence charSequence = this.f2348do;
            canvas.drawText(charSequence, 0, charSequence.length(), r0.centerX(), i, textPaint2);
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) Math.max(this.f2344do.f3636do.getTextSize(), this.f2341case);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        float f = this.f2355new * 2;
        CharSequence charSequence = this.f2348do;
        return (int) Math.max(f + (charSequence == null ? 0.0f : this.f2344do.m2231do(charSequence.toString())), this.f2357try);
    }

    @Override // defpackage.TG.Cif
    /* renamed from: if, reason: not valid java name */
    public final void mo1511if() {
        invalidateSelf();
    }

    @Override // defpackage.C0716as, android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (this.f2351for) {
            C3554qD c3554qD = ((C0716as) this).f8253do.f8278do;
            c3554qD.getClass();
            C3554qD.Cdo cdo = new C3554qD.Cdo(c3554qD);
            cdo.f15074for = m1510default();
            mo4768do(new C3554qD(cdo));
        }
    }

    @Override // defpackage.C0716as, android.graphics.drawable.Drawable, defpackage.TG.Cif
    public final boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    /* renamed from: throws, reason: not valid java name */
    public final float m1512throws() {
        int i;
        Rect rect = this.f2347do;
        if (((rect.right - getBounds().right) - this.f2356this) - this.f2349else < 0) {
            i = ((rect.right - getBounds().right) - this.f2356this) - this.f2349else;
        } else {
            if (((rect.left - getBounds().left) - this.f2356this) + this.f2349else <= 0) {
                return 0.0f;
            }
            i = ((rect.left - getBounds().left) - this.f2356this) + this.f2349else;
        }
        return i;
    }
}
