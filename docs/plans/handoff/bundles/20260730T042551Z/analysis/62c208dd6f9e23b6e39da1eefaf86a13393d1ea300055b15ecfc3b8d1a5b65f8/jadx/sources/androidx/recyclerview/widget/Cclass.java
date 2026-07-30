package androidx.recyclerview.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.ConnectionResult;
import defpackage.C3385nL;
import defpackage.QK;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* renamed from: androidx.recyclerview.widget.class, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cclass extends RecyclerView.Ccatch implements RecyclerView.Csuper {

    /* renamed from: for, reason: not valid java name */
    public static final int[] f7562for = {R.attr.state_pressed};

    /* renamed from: new, reason: not valid java name */
    public static final int[] f7563new = new int[0];

    /* renamed from: break, reason: not valid java name */
    public int f7564break;

    /* renamed from: case, reason: not valid java name */
    public final int f7565case;

    /* renamed from: do, reason: not valid java name */
    public float f7569do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f7570do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ValueAnimator f7571do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Drawable f7572do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final StateListDrawable f7573do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public RecyclerView f7574do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f7575do;

    /* renamed from: else, reason: not valid java name */
    public int f7578else;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final int f7580for;

    /* renamed from: goto, reason: not valid java name */
    public int f7581goto;

    /* renamed from: if, reason: not valid java name */
    public float f7582if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final int f7583if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Drawable f7584if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final StateListDrawable f7585if;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final int f7588new;

    /* renamed from: super, reason: not valid java name */
    public int f7589super;

    /* renamed from: this, reason: not valid java name */
    public int f7590this;

    /* renamed from: try, reason: not valid java name */
    public final int f7591try;

    /* renamed from: catch, reason: not valid java name */
    public int f7566catch = 0;

    /* renamed from: class, reason: not valid java name */
    public int f7567class = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f7576do = false;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f7586if = false;

    /* renamed from: const, reason: not valid java name */
    public int f7568const = 0;

    /* renamed from: final, reason: not valid java name */
    public int f7579final = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f7577do = new int[2];

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final int[] f7587if = new int[2];

    /* renamed from: androidx.recyclerview.widget.class$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Cclass cclass = Cclass.this;
            int i = cclass.f7589super;
            ValueAnimator valueAnimator = cclass.f7571do;
            if (i == 1) {
                valueAnimator.cancel();
            } else if (i != 2) {
                return;
            }
            cclass.f7589super = 3;
            valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
            valueAnimator.setDuration(500);
            valueAnimator.start();
        }
    }

    /* renamed from: androidx.recyclerview.widget.class$for, reason: invalid class name */
    public class Cfor extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7594do = false;

        public Cfor() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f7594do = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (this.f7594do) {
                this.f7594do = false;
                return;
            }
            Cclass cclass = Cclass.this;
            if (((Float) cclass.f7571do.getAnimatedValue()).floatValue() == 0.0f) {
                cclass.f7589super = 0;
                cclass.m4494this(0);
            } else {
                cclass.f7589super = 2;
                cclass.f7574do.invalidate();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.class$if, reason: invalid class name */
    public class Cif extends RecyclerView.Cthrow {
        public Cif() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Cthrow
        /* renamed from: if */
        public final void mo4458if(RecyclerView recyclerView, int i, int i2) {
            int computeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
            int computeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
            Cclass cclass = Cclass.this;
            int computeVerticalScrollRange = cclass.f7574do.computeVerticalScrollRange();
            int i3 = cclass.f7567class;
            int i4 = computeVerticalScrollRange - i3;
            int i5 = cclass.f7570do;
            cclass.f7576do = i4 > 0 && i3 >= i5;
            int computeHorizontalScrollRange = cclass.f7574do.computeHorizontalScrollRange();
            int i6 = cclass.f7566catch;
            boolean z = computeHorizontalScrollRange - i6 > 0 && i6 >= i5;
            cclass.f7586if = z;
            boolean z2 = cclass.f7576do;
            if (!z2 && !z) {
                if (cclass.f7568const != 0) {
                    cclass.m4494this(0);
                    return;
                }
                return;
            }
            if (z2) {
                float f = i3;
                cclass.f7581goto = (int) ((((f / 2.0f) + computeVerticalScrollOffset) * f) / computeVerticalScrollRange);
                cclass.f7578else = Math.min(i3, (i3 * i3) / computeVerticalScrollRange);
            }
            if (cclass.f7586if) {
                float f2 = computeHorizontalScrollOffset;
                float f3 = i6;
                cclass.f7564break = (int) ((((f3 / 2.0f) + f2) * f3) / computeHorizontalScrollRange);
                cclass.f7590this = Math.min(i6, (i6 * i6) / computeHorizontalScrollRange);
            }
            int i7 = cclass.f7568const;
            if (i7 == 0 || i7 == 1) {
                cclass.m4494this(1);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.class$new, reason: invalid class name */
    public class Cnew implements ValueAnimator.AnimatorUpdateListener {
        public Cnew() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            Cclass cclass = Cclass.this;
            cclass.f7573do.setAlpha(floatValue);
            cclass.f7572do.setAlpha(floatValue);
            cclass.f7574do.invalidate();
        }
    }

    public Cclass(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f7571do = ofFloat;
        this.f7589super = 0;
        Cdo cdo = new Cdo();
        this.f7575do = cdo;
        Cif cif = new Cif();
        this.f7573do = stateListDrawable;
        this.f7572do = drawable;
        this.f7585if = stateListDrawable2;
        this.f7584if = drawable2;
        this.f7580for = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f7588new = Math.max(i, drawable.getIntrinsicWidth());
        this.f7591try = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.f7565case = Math.max(i, drawable2.getIntrinsicWidth());
        this.f7570do = i2;
        this.f7583if = i3;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        ofFloat.addListener(new Cfor());
        ofFloat.addUpdateListener(new Cnew());
        RecyclerView recyclerView2 = this.f7574do;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            RecyclerView.Cclass cclass = recyclerView2.f7312do;
            if (cclass != null) {
                cclass.mo4320for("Cannot remove item decoration during a scroll  or layout");
            }
            ArrayList<RecyclerView.Ccatch> arrayList = recyclerView2.f7350if;
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                recyclerView2.setWillNotDraw(recyclerView2.getOverScrollMode() == 2);
            }
            recyclerView2.d();
            recyclerView2.requestLayout();
            RecyclerView recyclerView3 = this.f7574do;
            recyclerView3.f7342for.remove(this);
            if (recyclerView3.f7320do == this) {
                recyclerView3.f7320do = null;
            }
            ArrayList arrayList2 = this.f7574do.f7364try;
            if (arrayList2 != null) {
                arrayList2.remove(cif);
            }
            this.f7574do.removeCallbacks(cdo);
        }
        this.f7574do = recyclerView;
        if (recyclerView != null) {
            recyclerView.m4362this(this);
            this.f7574do.f7342for.add(this);
            this.f7574do.m4341break(cif);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public final void m4491break() {
        int i = this.f7589super;
        ValueAnimator valueAnimator = this.f7571do;
        if (i != 0) {
            if (i != 3) {
                return;
            } else {
                valueAnimator.cancel();
            }
        }
        this.f7589super = 1;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        valueAnimator.setDuration(500L);
        valueAnimator.setStartDelay(0L);
        valueAnimator.start();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ccatch
    /* renamed from: case */
    public final void mo4375case(Canvas canvas, RecyclerView recyclerView) {
        if (this.f7566catch != this.f7574do.getWidth() || this.f7567class != this.f7574do.getHeight()) {
            this.f7566catch = this.f7574do.getWidth();
            this.f7567class = this.f7574do.getHeight();
            m4494this(0);
            return;
        }
        if (this.f7589super != 0) {
            if (this.f7576do) {
                int i = this.f7566catch;
                int i2 = this.f7580for;
                int i3 = i - i2;
                int i4 = this.f7581goto;
                int i5 = this.f7578else;
                int i6 = i4 - (i5 / 2);
                StateListDrawable stateListDrawable = this.f7573do;
                stateListDrawable.setBounds(0, 0, i2, i5);
                int i7 = this.f7567class;
                int i8 = this.f7588new;
                Drawable drawable = this.f7572do;
                drawable.setBounds(0, 0, i8, i7);
                RecyclerView recyclerView2 = this.f7574do;
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                if (recyclerView2.getLayoutDirection() == 1) {
                    drawable.draw(canvas);
                    canvas.translate(i2, i6);
                    canvas.scale(-1.0f, 1.0f);
                    stateListDrawable.draw(canvas);
                    canvas.scale(-1.0f, 1.0f);
                    canvas.translate(-i2, -i6);
                } else {
                    canvas.translate(i3, 0.0f);
                    drawable.draw(canvas);
                    canvas.translate(0.0f, i6);
                    stateListDrawable.draw(canvas);
                    canvas.translate(-i3, -i6);
                }
            }
            if (this.f7586if) {
                int i9 = this.f7567class;
                int i10 = this.f7591try;
                int i11 = i9 - i10;
                int i12 = this.f7564break;
                int i13 = this.f7590this;
                int i14 = i12 - (i13 / 2);
                StateListDrawable stateListDrawable2 = this.f7585if;
                stateListDrawable2.setBounds(0, 0, i13, i10);
                int i15 = this.f7566catch;
                int i16 = this.f7565case;
                Drawable drawable2 = this.f7584if;
                drawable2.setBounds(0, 0, i15, i16);
                canvas.translate(0.0f, i11);
                drawable2.draw(canvas);
                canvas.translate(i14, 0.0f);
                stateListDrawable2.draw(canvas);
                canvas.translate(-i14, -i11);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Csuper
    /* renamed from: do */
    public final boolean mo4450do(MotionEvent motionEvent) {
        int i = this.f7568const;
        if (i == 1) {
            boolean m4493goto = m4493goto(motionEvent.getX(), motionEvent.getY());
            boolean m4492else = m4492else(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() == 0 && (m4493goto || m4492else)) {
                if (m4492else) {
                    this.f7579final = 1;
                    this.f7582if = (int) motionEvent.getX();
                } else if (m4493goto) {
                    this.f7579final = 2;
                    this.f7569do = (int) motionEvent.getY();
                }
                m4494this(2);
                return true;
            }
        } else if (i == 2) {
            return true;
        }
        return false;
    }

    /* renamed from: else, reason: not valid java name */
    public final boolean m4492else(float f, float f2) {
        if (f2 >= this.f7567class - this.f7591try) {
            int i = this.f7564break;
            int i2 = this.f7590this;
            if (f >= i - (i2 / 2) && f <= (i2 / 2) + i) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00bc, code lost:
    
        if (r9 >= 0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0114, code lost:
    
        if (r5 >= 0) goto L49;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.Csuper
    /* renamed from: for */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo4451for(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.Cclass.mo4451for(android.view.MotionEvent):void");
    }

    /* renamed from: goto, reason: not valid java name */
    public final boolean m4493goto(float f, float f2) {
        RecyclerView recyclerView = this.f7574do;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        boolean z = recyclerView.getLayoutDirection() == 1;
        int i = this.f7580for;
        if (z) {
            if (f > i) {
                return false;
            }
        } else if (f < this.f7566catch - i) {
            return false;
        }
        int i2 = this.f7581goto;
        int i3 = this.f7578else / 2;
        return f2 >= ((float) (i2 - i3)) && f2 <= ((float) (i3 + i2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Csuper
    /* renamed from: if */
    public final void mo4452if() {
    }

    /* renamed from: this, reason: not valid java name */
    public final void m4494this(int i) {
        Cdo cdo = this.f7575do;
        StateListDrawable stateListDrawable = this.f7573do;
        if (i == 2 && this.f7568const != 2) {
            stateListDrawable.setState(f7562for);
            this.f7574do.removeCallbacks(cdo);
        }
        if (i == 0) {
            this.f7574do.invalidate();
        } else {
            m4491break();
        }
        if (this.f7568const == 2 && i != 2) {
            stateListDrawable.setState(f7563new);
            this.f7574do.removeCallbacks(cdo);
            this.f7574do.postDelayed(cdo, 1200);
        } else if (i == 1) {
            this.f7574do.removeCallbacks(cdo);
            this.f7574do.postDelayed(cdo, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
        }
        this.f7568const = i;
    }
}
