package b.b.g;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class O extends K {

    /* renamed from: d, reason: collision with root package name */
    public final SeekBar f471d;
    public Drawable e;
    public ColorStateList f;
    public PorterDuff.Mode g;
    public boolean h;
    public boolean i;

    public O(SeekBar seekBar) {
        super(seekBar);
        this.f = null;
        this.g = null;
        this.h = false;
        this.i = false;
        this.f471d = seekBar;
    }

    @Override // b.b.g.K
    public void a(AttributeSet attributeSet, int i) {
        int[] iArr = b.b.b.g;
        super.a(attributeSet, i);
        a1 o = a1.o(this.f471d.getContext(), attributeSet, iArr, i, 0);
        SeekBar seekBar = this.f471d;
        b.e.i.q.C(seekBar, seekBar.getContext(), iArr, attributeSet, o.f513b, i, 0);
        Drawable f = o.f(0);
        if (f != null) {
            this.f471d.setThumb(f);
        }
        Drawable e = o.e(1);
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.e = e;
        if (e != null) {
            e.setCallback(this.f471d);
            e.setLayoutDirection(b.e.i.q.i(this.f471d));
            if (e.isStateful()) {
                e.setState(this.f471d.getDrawableState());
            }
            c();
        }
        this.f471d.invalidate();
        if (o.m(3)) {
            this.g = C0055j0.d(o.h(3, -1), this.g);
            this.i = true;
        }
        if (o.m(2)) {
            this.f = o.b(2);
            this.h = true;
        }
        o.f513b.recycle();
        c();
    }

    public final void c() {
        if (this.e != null) {
            if (this.h || this.i) {
                Drawable mutate = this.e.mutate();
                this.e = mutate;
                if (this.h) {
                    mutate.setTintList(this.f);
                }
                if (this.i) {
                    this.e.setTintMode(this.g);
                }
                if (this.e.isStateful()) {
                    this.e.setState(this.f471d.getDrawableState());
                }
            }
        }
    }

    public void d(Canvas canvas) {
        if (this.e != null) {
            int max = this.f471d.getMax();
            if (max > 1) {
                int intrinsicWidth = this.e.getIntrinsicWidth();
                int intrinsicHeight = this.e.getIntrinsicHeight();
                int i = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i2 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.e.setBounds(-i, -i2, i, i2);
                float width = ((this.f471d.getWidth() - this.f471d.getPaddingLeft()) - this.f471d.getPaddingRight()) / max;
                int save = canvas.save();
                canvas.translate(this.f471d.getPaddingLeft(), this.f471d.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    this.e.draw(canvas);
                    canvas.translate(width, RecentsState.NO_OFFSET);
                }
                canvas.restoreToCount(save);
            }
        }
    }
}
