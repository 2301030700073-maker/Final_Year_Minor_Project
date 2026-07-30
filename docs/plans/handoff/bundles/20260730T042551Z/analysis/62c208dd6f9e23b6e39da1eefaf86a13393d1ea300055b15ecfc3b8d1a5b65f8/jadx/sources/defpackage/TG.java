package defpackage;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public final class TG {

    /* renamed from: do, reason: not valid java name */
    public float f3633do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PG f3634do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public WeakReference<Cif> f3637do;

    /* renamed from: if, reason: not valid java name */
    public float f3639if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TextPaint f3636do = new TextPaint(1);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f3635do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f3638do = true;

    /* renamed from: TG$do, reason: invalid class name */
    public class Cdo extends AbstractC3134j6 {
        public Cdo() {
        }

        @Override // defpackage.AbstractC3134j6
        /* renamed from: class */
        public final void mo1840class(int i) {
            TG tg = TG.this;
            tg.f3638do = true;
            Cif cif = tg.f3637do.get();
            if (cif != null) {
                cif.mo1511if();
            }
        }

        @Override // defpackage.AbstractC3134j6
        /* renamed from: const */
        public final void mo1841const(Typeface typeface, boolean z) {
            if (z) {
                return;
            }
            TG tg = TG.this;
            tg.f3638do = true;
            Cif cif = tg.f3637do.get();
            if (cif != null) {
                cif.mo1511if();
            }
        }
    }

    /* renamed from: TG$if, reason: invalid class name */
    public interface Cif {
        int[] getState();

        /* renamed from: if */
        void mo1511if();

        boolean onStateChange(int[] iArr);
    }

    public TG(Cif cif) {
        this.f3637do = new WeakReference<>(null);
        this.f3637do = new WeakReference<>(cif);
    }

    /* renamed from: do, reason: not valid java name */
    public final float m2231do(String str) {
        if (!this.f3638do) {
            return this.f3633do;
        }
        m2233if(str);
        return this.f3633do;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m2232for(PG pg, Context context) {
        if (this.f3634do != pg) {
            this.f3634do = pg;
            if (pg != null) {
                TextPaint textPaint = this.f3636do;
                Cdo cdo = this.f3635do;
                pg.m1755case(context, textPaint, cdo);
                Cif cif = this.f3637do.get();
                if (cif != null) {
                    textPaint.drawableState = cif.getState();
                }
                pg.m1761try(context, textPaint, cdo);
                this.f3638do = true;
            }
            Cif cif2 = this.f3637do.get();
            if (cif2 != null) {
                cif2.mo1511if();
                cif2.onStateChange(cif2.getState());
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m2233if(String str) {
        TextPaint textPaint = this.f3636do;
        this.f3633do = str == null ? 0.0f : textPaint.measureText((CharSequence) str, 0, str.length());
        this.f3639if = str != null ? Math.abs(textPaint.getFontMetrics().ascent) : 0.0f;
        this.f3638do = false;
    }
}
