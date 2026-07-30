package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import defpackage.C0426Pe;

/* loaded from: classes.dex */
public final class Q1 extends O1 {

    /* renamed from: do, reason: not valid java name */
    public ColorStateList f2858do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PorterDuff.Mode f2859do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f2860do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SeekBar f2861do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f2862do;

    /* renamed from: if, reason: not valid java name */
    public boolean f2863if;

    public Q1(SeekBar seekBar) {
        super(seekBar);
        this.f2858do = null;
        this.f2859do = null;
        this.f2862do = false;
        this.f2863if = false;
        this.f2861do = seekBar;
    }

    @Override // defpackage.O1
    /* renamed from: do */
    public final void mo1577do(AttributeSet attributeSet, int i) {
        super.mo1577do(attributeSet, i);
        SeekBar seekBar = this.f2861do;
        Context context = seekBar.getContext();
        int[] iArr = O4.f2543final;
        C3970xH m8626const = C3970xH.m8626const(context, attributeSet, iArr, i);
        QK.m1857import(seekBar, seekBar.getContext(), iArr, attributeSet, m8626const.f16536do, i);
        Drawable m8628case = m8626const.m8628case(0);
        if (m8628case != null) {
            seekBar.setThumb(m8628case);
        }
        Drawable m8639try = m8626const.m8639try(1);
        Drawable drawable = this.f2860do;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.f2860do = m8639try;
        if (m8639try != null) {
            m8639try.setCallback(seekBar);
            C0426Pe.m1778for(m8639try, seekBar.getLayoutDirection());
            if (m8639try.isStateful()) {
                m8639try.setState(seekBar.getDrawableState());
            }
            m1825for();
        }
        seekBar.invalidate();
        if (m8626const.m8630class(3)) {
            this.f2859do = C0470Re.m2062for(m8626const.m8635goto(3, -1), this.f2859do);
            this.f2863if = true;
        }
        if (m8626const.m8630class(2)) {
            this.f2858do = m8626const.m8636if(2);
            this.f2862do = true;
        }
        m8626const.m8633final();
        m1825for();
    }

    /* renamed from: for, reason: not valid java name */
    public final void m1825for() {
        Drawable drawable = this.f2860do;
        if (drawable != null) {
            if (this.f2862do || this.f2863if) {
                Drawable m1779goto = C0426Pe.m1779goto(drawable.mutate());
                this.f2860do = m1779goto;
                if (this.f2862do) {
                    C0426Pe.Cdo.m1787goto(m1779goto, this.f2858do);
                }
                if (this.f2863if) {
                    C0426Pe.Cdo.m1790this(this.f2860do, this.f2859do);
                }
                if (this.f2860do.isStateful()) {
                    this.f2860do.setState(this.f2861do.getDrawableState());
                }
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m1826new(Canvas canvas) {
        if (this.f2860do != null) {
            int max = this.f2861do.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f2860do.getIntrinsicWidth();
                int intrinsicHeight = this.f2860do.getIntrinsicHeight();
                int i = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i2 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f2860do.setBounds(-i, -i2, i, i2);
                float width = ((r0.getWidth() - r0.getPaddingLeft()) - r0.getPaddingRight()) / max;
                int save = canvas.save();
                canvas.translate(r0.getPaddingLeft(), r0.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    this.f2860do.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }
}
