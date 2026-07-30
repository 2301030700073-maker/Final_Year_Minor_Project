package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import com.joeykrim.rootcheck.R;
import defpackage.X4;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public abstract class W4<S extends X4> extends ProgressBar {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f4322do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f4323do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f4324do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cnew f4325do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final S f4326do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2844h1 f4327do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f4328do;

    /* renamed from: for, reason: not valid java name */
    public int f4329for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f4330for;

    /* renamed from: if, reason: not valid java name */
    public final boolean f4331if;

    /* renamed from: new, reason: not valid java name */
    public final int f4332new;

    /* renamed from: try, reason: not valid java name */
    public final int f4333try;

    /* renamed from: W4$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            W4 w4 = W4.this;
            if (w4.f4332new > 0) {
                SystemClock.uptimeMillis();
            }
            w4.setVisibility(0);
        }
    }

    /* renamed from: W4$for, reason: invalid class name */
    public class Cfor extends X0 {
        public Cfor() {
        }

        @Override // defpackage.X0
        /* renamed from: do, reason: not valid java name */
        public final void mo2708do(Drawable drawable) {
            W4 w4 = W4.this;
            w4.setIndeterminate(false);
            w4.mo2706new(w4.f4329for, w4.f4328do);
        }
    }

    /* renamed from: W4$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            W4 w4 = W4.this;
            boolean z = false;
            ((AbstractC0558Ve) w4.getCurrentDrawable()).m2660for(false, false, true);
            if ((w4.getProgressDrawable() == null || !w4.getProgressDrawable().isVisible()) && (w4.getIndeterminateDrawable() == null || !w4.getIndeterminateDrawable().isVisible())) {
                z = true;
            }
            if (z) {
                w4.setVisibility(4);
            }
            w4.getClass();
        }
    }

    /* renamed from: W4$new, reason: invalid class name */
    public class Cnew extends X0 {
        public Cnew() {
        }

        @Override // defpackage.X0
        /* renamed from: do */
        public final void mo2708do(Drawable drawable) {
            W4 w4 = W4.this;
            if (w4.f4330for) {
                return;
            }
            w4.setVisibility(w4.f4333try);
        }
    }

    public W4(Context context, AttributeSet attributeSet, int i, int i2) {
        super(C2775fs.m6683do(context, attributeSet, i, R.style.Widget_MaterialComponents_ProgressIndicator), attributeSet, i);
        this.f4330for = false;
        this.f4333try = 4;
        this.f4322do = new Cdo();
        this.f4324do = new Cif();
        this.f4323do = new Cfor();
        this.f4325do = new Cnew();
        Context context2 = getContext();
        this.f4326do = mo2703do(context2, attributeSet);
        TypedArray m3115new = C0682aH.m3115new(context2, attributeSet, O2.f2504new, i, i2, new int[0]);
        m3115new.getInt(6, -1);
        this.f4332new = Math.min(m3115new.getInt(4, -1), 1000);
        m3115new.recycle();
        this.f4327do = new C2844h1();
        this.f4331if = true;
    }

    /* renamed from: do, reason: not valid java name */
    public abstract S mo2703do(Context context, AttributeSet attributeSet);

    @Override // android.widget.ProgressBar
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public final C0821ce<S> getProgressDrawable() {
        return (C0821ce) super.getProgressDrawable();
    }

    @Override // android.widget.ProgressBar
    public final Drawable getCurrentDrawable() {
        return isIndeterminate() ? getIndeterminateDrawable() : getProgressDrawable();
    }

    @Override // android.widget.ProgressBar
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public final C0150Cn<S> getIndeterminateDrawable() {
        return (C0150Cn) super.getIndeterminateDrawable();
    }

    @Override // android.view.View
    public final void invalidate() {
        super.invalidate();
        if (getCurrentDrawable() != null) {
            getCurrentDrawable().invalidateSelf();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void mo2706new(int i, boolean z) {
        if (!isIndeterminate()) {
            super.setProgress(i);
            if (getProgressDrawable() == null || z) {
                return;
            }
            getProgressDrawable().jumpToCurrentState();
            return;
        }
        if (getProgressDrawable() != null) {
            this.f4329for = i;
            this.f4328do = z;
            this.f4330for = true;
            if (getIndeterminateDrawable().isVisible()) {
                ContentResolver contentResolver = getContext().getContentResolver();
                this.f4327do.getClass();
                if (Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f) != 0.0f) {
                    getIndeterminateDrawable().f416do.mo217for();
                    return;
                }
            }
            this.f4323do.mo2708do(getIndeterminateDrawable());
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getProgressDrawable() != null && getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().f416do.mo218if(this.f4323do);
        }
        C0821ce<S> progressDrawable = getProgressDrawable();
        Cnew cnew = this.f4325do;
        if (progressDrawable != null) {
            C0821ce<S> progressDrawable2 = getProgressDrawable();
            if (((AbstractC0558Ve) progressDrawable2).f4169do == null) {
                ((AbstractC0558Ve) progressDrawable2).f4169do = new ArrayList();
            }
            if (!((AbstractC0558Ve) progressDrawable2).f4169do.contains(cnew)) {
                ((AbstractC0558Ve) progressDrawable2).f4169do.add(cnew);
            }
        }
        if (getIndeterminateDrawable() != null) {
            C0150Cn<S> indeterminateDrawable = getIndeterminateDrawable();
            if (((AbstractC0558Ve) indeterminateDrawable).f4169do == null) {
                ((AbstractC0558Ve) indeterminateDrawable).f4169do = new ArrayList();
            }
            if (!((AbstractC0558Ve) indeterminateDrawable).f4169do.contains(cnew)) {
                ((AbstractC0558Ve) indeterminateDrawable).f4169do.add(cnew);
            }
        }
        if (m2707try()) {
            if (this.f4332new > 0) {
                SystemClock.uptimeMillis();
            }
            setVisibility(0);
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.f4324do);
        removeCallbacks(this.f4322do);
        ((AbstractC0558Ve) getCurrentDrawable()).m2660for(false, false, false);
        C0150Cn<S> indeterminateDrawable = getIndeterminateDrawable();
        Cnew cnew = this.f4325do;
        if (indeterminateDrawable != null) {
            getIndeterminateDrawable().m2662try(cnew);
            getIndeterminateDrawable().f416do.mo220try();
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().m2662try(cnew);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        int save = canvas.save();
        if (getPaddingLeft() != 0 || getPaddingTop() != 0) {
            canvas.translate(getPaddingLeft(), getPaddingTop());
        }
        if (getPaddingRight() != 0 || getPaddingBottom() != 0) {
            canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
        }
        getCurrentDrawable().draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final synchronized void onMeasure(int i, int i2) {
        AbstractC0763bf<S> abstractC0763bf = null;
        if (isIndeterminate()) {
            if (getIndeterminateDrawable() != null) {
                abstractC0763bf = getIndeterminateDrawable().f418do;
            }
        } else if (getProgressDrawable() != null) {
            abstractC0763bf = getProgressDrawable().f8571do;
        }
        if (abstractC0763bf == null) {
            return;
        }
        setMeasuredDimension(abstractC0763bf.mo574case() < 0 ? View.getDefaultSize(getSuggestedMinimumWidth(), i) : abstractC0763bf.mo574case() + getPaddingLeft() + getPaddingRight(), abstractC0763bf.mo582try() < 0 ? View.getDefaultSize(getSuggestedMinimumHeight(), i2) : abstractC0763bf.mo582try() + getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        boolean z = i == 0;
        if (this.f4331if) {
            ((AbstractC0558Ve) getCurrentDrawable()).m2660for(m2707try(), false, z);
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (this.f4331if) {
            ((AbstractC0558Ve) getCurrentDrawable()).m2660for(m2707try(), false, false);
        }
    }

    @Override // android.widget.ProgressBar
    public final synchronized void setIndeterminate(boolean z) {
        if (z == isIndeterminate()) {
            return;
        }
        AbstractC0558Ve abstractC0558Ve = (AbstractC0558Ve) getCurrentDrawable();
        if (abstractC0558Ve != null) {
            abstractC0558Ve.m2660for(false, false, false);
        }
        super.setIndeterminate(z);
        AbstractC0558Ve abstractC0558Ve2 = (AbstractC0558Ve) getCurrentDrawable();
        if (abstractC0558Ve2 != null) {
            abstractC0558Ve2.m2660for(m2707try(), false, false);
        }
        if ((abstractC0558Ve2 instanceof C0150Cn) && m2707try()) {
            ((C0150Cn) abstractC0558Ve2).f416do.mo219new();
        }
        this.f4330for = false;
    }

    @Override // android.widget.ProgressBar
    public final void setIndeterminateDrawable(Drawable drawable) {
        if (drawable == null) {
            super.setIndeterminateDrawable(null);
        } else {
            if (!(drawable instanceof C0150Cn)) {
                throw new IllegalArgumentException("Cannot set framework drawable as indeterminate drawable.");
            }
            ((AbstractC0558Ve) drawable).m2660for(false, false, false);
            super.setIndeterminateDrawable(drawable);
        }
    }

    @Override // android.widget.ProgressBar
    public final synchronized void setProgress(int i) {
        if (isIndeterminate()) {
            return;
        }
        mo2706new(i, false);
    }

    @Override // android.widget.ProgressBar
    public final void setProgressDrawable(Drawable drawable) {
        if (drawable == null) {
            super.setProgressDrawable(null);
        } else {
            if (!(drawable instanceof C0821ce)) {
                throw new IllegalArgumentException("Cannot set framework drawable as progress drawable.");
            }
            C0821ce c0821ce = (C0821ce) drawable;
            c0821ce.m2660for(false, false, false);
            super.setProgressDrawable(c0821ce);
            c0821ce.setLevel((int) ((getProgress() / getMax()) * 10000.0f));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0024, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0022, code lost:
    
        if (getWindowVisibility() == 0) goto L14;
     */
    /* renamed from: try, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m2707try() {
        /*
            r4 = this;
            java.util.WeakHashMap<android.view.View, nL> r0 = defpackage.QK.f2909do
            boolean r0 = r4.isAttachedToWindow()
            r1 = 0
            if (r0 == 0) goto L34
            int r0 = r4.getWindowVisibility()
            if (r0 != 0) goto L34
            r0 = r4
        L10:
            int r2 = r0.getVisibility()
            r3 = 1
            if (r2 == 0) goto L18
            goto L26
        L18:
            android.view.ViewParent r0 = r0.getParent()
            if (r0 != 0) goto L28
            int r0 = r4.getWindowVisibility()
            if (r0 != 0) goto L26
        L24:
            r0 = 1
            goto L2d
        L26:
            r0 = 0
            goto L2d
        L28:
            boolean r2 = r0 instanceof android.view.View
            if (r2 != 0) goto L31
            goto L24
        L2d:
            if (r0 == 0) goto L34
            r1 = 1
            goto L34
        L31:
            android.view.View r0 = (android.view.View) r0
            goto L10
        L34:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.W4.m2707try():boolean");
    }
}
