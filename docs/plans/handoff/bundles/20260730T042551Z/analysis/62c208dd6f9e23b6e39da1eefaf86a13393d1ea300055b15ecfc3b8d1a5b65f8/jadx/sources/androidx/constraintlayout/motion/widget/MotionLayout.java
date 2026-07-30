package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.constraintlayout.motion.widget.Cdo;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.Cdo;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import androidx.core.widget.NestedScrollView;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.AbstractInterpolatorC4063yt;
import defpackage.C0093Aa;
import defpackage.C0112At;
import defpackage.C0174Dp;
import defpackage.C0181Ea;
import defpackage.C0203Fa;
import defpackage.C0389Nl;
import defpackage.C0606Xi;
import defpackage.C0683aI;
import defpackage.C0701ad;
import defpackage.C0743bI;
import defpackage.C2688eM;
import defpackage.C2710em;
import defpackage.C2789g5;
import defpackage.C2917iF;
import defpackage.C3379nF;
import defpackage.C3754tf;
import defpackage.C3945wt;
import defpackage.C4004xt;
import defpackage.C4122zt;
import defpackage.EL;
import defpackage.InterfaceC0829cm;
import defpackage.InterfaceC3769tu;
import defpackage.InterpolatorC0134Bt;
import defpackage.N4;
import defpackage.O2;
import defpackage.ZH;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class MotionLayout extends ConstraintLayout implements InterfaceC3769tu {

    /* renamed from: catch, reason: not valid java name */
    public static boolean f6057catch;

    /* renamed from: break, reason: not valid java name */
    public float f6058break;

    /* renamed from: break, reason: not valid java name and collision with other field name */
    public int f6059break;

    /* renamed from: break, reason: not valid java name and collision with other field name */
    public boolean f6060break;

    /* renamed from: case, reason: not valid java name */
    public float f6061case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public boolean f6062case;

    /* renamed from: catch, reason: not valid java name and collision with other field name */
    public float f6063catch;

    /* renamed from: catch, reason: not valid java name and collision with other field name */
    public int f6064catch;

    /* renamed from: class, reason: not valid java name */
    public int f6065class;

    /* renamed from: const, reason: not valid java name */
    public int f6066const;

    /* renamed from: default, reason: not valid java name */
    public int f6067default;

    /* renamed from: do, reason: not valid java name */
    public float f6068do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f6069do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0174Dp f6070do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RectF f6071do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f6072do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Interpolator f6073do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ccase f6074do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cfor f6075do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f6076do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cnew f6077do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public androidx.constraintlayout.motion.widget.Cdo f6078do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3379nF f6079do;

    /* renamed from: else, reason: not valid java name */
    public float f6080else;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public boolean f6081else;

    /* renamed from: extends, reason: not valid java name */
    public int f6082extends;

    /* renamed from: final, reason: not valid java name */
    public int f6083final;

    /* renamed from: for, reason: not valid java name */
    public float f6084for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public long f6085for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public ArrayList<MotionHelper> f6086for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f6087for;

    /* renamed from: goto, reason: not valid java name */
    public float f6088goto;

    /* renamed from: goto, reason: not valid java name and collision with other field name */
    public boolean f6089goto;

    /* renamed from: if, reason: not valid java name */
    public float f6090if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public long f6091if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ArrayList<MotionHelper> f6092if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final HashMap<View, C4004xt> f6093if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f6094if;

    /* renamed from: import, reason: not valid java name */
    public int f6095import;

    /* renamed from: native, reason: not valid java name */
    public int f6096native;

    /* renamed from: new, reason: not valid java name */
    public float f6097new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public long f6098new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public ArrayList<Celse> f6099new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f6100new;

    /* renamed from: public, reason: not valid java name */
    public int f6101public;

    /* renamed from: return, reason: not valid java name */
    public int f6102return;

    /* renamed from: static, reason: not valid java name */
    public int f6103static;

    /* renamed from: super, reason: not valid java name */
    public int f6104super;

    /* renamed from: switch, reason: not valid java name */
    public int f6105switch;

    /* renamed from: this, reason: not valid java name */
    public float f6106this;

    /* renamed from: this, reason: not valid java name and collision with other field name */
    public boolean f6107this;

    /* renamed from: throw, reason: not valid java name */
    public int f6108throw;

    /* renamed from: throws, reason: not valid java name */
    public int f6109throws;

    /* renamed from: try, reason: not valid java name */
    public float f6110try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public final ArrayList<Integer> f6111try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public boolean f6112try;

    /* renamed from: while, reason: not valid java name */
    public int f6113while;

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$case, reason: invalid class name */
    public class Ccase {

        /* renamed from: do, reason: not valid java name */
        public float f6114do = Float.NaN;

        /* renamed from: if, reason: not valid java name */
        public float f6117if = Float.NaN;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f6115do = -1;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public int f6118if = -1;

        public Ccase() {
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f6119do;

        public Cdo(View view) {
            this.f6119do = view;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f6119do.setNestedScrollingEnabled(true);
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$else, reason: invalid class name */
    public interface Celse {
        /* renamed from: do */
        void mo3572do();

        /* renamed from: for */
        void mo3573for();

        /* renamed from: if */
        void mo3574if();

        /* renamed from: new */
        void mo3575new();
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$for, reason: invalid class name */
    public class Cfor {

        /* renamed from: do, reason: not valid java name */
        public int f6120do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Paint f6121do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Path f6122do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public float[] f6125do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final int[] f6126do;

        /* renamed from: for, reason: not valid java name */
        public final Paint f6127for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public final float[] f6128for;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final Paint f6130if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final float[] f6131if;

        /* renamed from: new, reason: not valid java name */
        public final Paint f6132new;

        /* renamed from: try, reason: not valid java name */
        public final Paint f6133try;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Rect f6123do = new Rect();

        /* renamed from: if, reason: not valid java name */
        public final int f6129if = 1;

        public Cfor() {
            Paint paint = new Paint();
            this.f6121do = paint;
            paint.setAntiAlias(true);
            paint.setColor(-21965);
            paint.setStrokeWidth(2.0f);
            paint.setStyle(Paint.Style.STROKE);
            Paint paint2 = new Paint();
            this.f6130if = paint2;
            paint2.setAntiAlias(true);
            paint2.setColor(-2067046);
            paint2.setStrokeWidth(2.0f);
            paint2.setStyle(Paint.Style.STROKE);
            Paint paint3 = new Paint();
            this.f6127for = paint3;
            paint3.setAntiAlias(true);
            paint3.setColor(-13391360);
            paint3.setStrokeWidth(2.0f);
            paint3.setStyle(Paint.Style.STROKE);
            Paint paint4 = new Paint();
            this.f6132new = paint4;
            paint4.setAntiAlias(true);
            paint4.setColor(-13391360);
            paint4.setTextSize(MotionLayout.this.getContext().getResources().getDisplayMetrics().density * 12.0f);
            this.f6128for = new float[8];
            Paint paint5 = new Paint();
            this.f6133try = paint5;
            paint5.setAntiAlias(true);
            paint3.setPathEffect(new DashPathEffect(new float[]{4.0f, 8.0f}, 0.0f));
            this.f6131if = new float[100];
            this.f6126do = new int[50];
        }

        /* renamed from: case, reason: not valid java name */
        public final void m3592case(Paint paint, String str) {
            paint.getTextBounds(str, 0, str.length(), this.f6123do);
        }

        /* renamed from: do, reason: not valid java name */
        public final void m3593do(Canvas canvas, int i, int i2, C4004xt c4004xt) {
            int i3;
            int i4;
            Paint paint;
            float f;
            float f2;
            int i5;
            Paint paint2 = this.f6127for;
            int[] iArr = this.f6126do;
            int i6 = 4;
            if (i == 4) {
                boolean z = false;
                boolean z2 = false;
                for (int i7 = 0; i7 < this.f6120do; i7++) {
                    int i8 = iArr[i7];
                    if (i8 == 1) {
                        z = true;
                    }
                    if (i8 == 2) {
                        z2 = true;
                    }
                }
                if (z) {
                    float[] fArr = this.f6125do;
                    canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], paint2);
                }
                if (z2) {
                    m3595if(canvas);
                }
            }
            if (i == 2) {
                float[] fArr2 = this.f6125do;
                canvas.drawLine(fArr2[0], fArr2[1], fArr2[fArr2.length - 2], fArr2[fArr2.length - 1], paint2);
            }
            if (i == 3) {
                m3595if(canvas);
            }
            canvas.drawLines(this.f6125do, this.f6121do);
            View view = c4004xt.f16628do;
            if (view != null) {
                i3 = view.getWidth();
                i4 = c4004xt.f16628do.getHeight();
            } else {
                i3 = 0;
                i4 = 0;
            }
            int i9 = 1;
            while (i9 < i2 - 1) {
                if (i == i6 && iArr[i9 - 1] == 0) {
                    i5 = i9;
                } else {
                    int i10 = i9 * 2;
                    float[] fArr3 = this.f6131if;
                    float f3 = fArr3[i10];
                    float f4 = fArr3[i10 + 1];
                    this.f6122do.reset();
                    this.f6122do.moveTo(f3, f4 + 10.0f);
                    this.f6122do.lineTo(f3 + 10.0f, f4);
                    this.f6122do.lineTo(f3, f4 - 10.0f);
                    this.f6122do.lineTo(f3 - 10.0f, f4);
                    this.f6122do.close();
                    int i11 = i9 - 1;
                    c4004xt.f16629do.get(i11);
                    Paint paint3 = this.f6133try;
                    if (i == i6) {
                        int i12 = iArr[i11];
                        if (i12 == 1) {
                            m3596new(canvas, f3 - 0.0f, f4 - 0.0f);
                        } else if (i12 == 2) {
                            m3594for(canvas, f3 - 0.0f, f4 - 0.0f);
                        } else if (i12 == 3) {
                            paint = paint3;
                            f = f4;
                            f2 = f3;
                            i5 = i9;
                            m3597try(canvas, f3 - 0.0f, f4 - 0.0f, i3, i4);
                            canvas.drawPath(this.f6122do, paint);
                        }
                        paint = paint3;
                        f = f4;
                        f2 = f3;
                        i5 = i9;
                        canvas.drawPath(this.f6122do, paint);
                    } else {
                        paint = paint3;
                        f = f4;
                        f2 = f3;
                        i5 = i9;
                    }
                    if (i == 2) {
                        m3596new(canvas, f2 - 0.0f, f - 0.0f);
                    }
                    if (i == 3) {
                        m3594for(canvas, f2 - 0.0f, f - 0.0f);
                    }
                    if (i == 6) {
                        m3597try(canvas, f2 - 0.0f, f - 0.0f, i3, i4);
                    }
                    canvas.drawPath(this.f6122do, paint);
                }
                i9 = i5 + 1;
                i6 = 4;
            }
            float[] fArr4 = this.f6125do;
            if (fArr4.length > 1) {
                float f5 = fArr4[0];
                float f6 = fArr4[1];
                Paint paint4 = this.f6130if;
                canvas.drawCircle(f5, f6, 8.0f, paint4);
                float[] fArr5 = this.f6125do;
                canvas.drawCircle(fArr5[fArr5.length - 2], fArr5[fArr5.length - 1], 8.0f, paint4);
            }
        }

        /* renamed from: for, reason: not valid java name */
        public final void m3594for(Canvas canvas, float f, float f2) {
            float[] fArr = this.f6125do;
            float f3 = fArr[0];
            float f4 = fArr[1];
            float f5 = fArr[fArr.length - 2];
            float f6 = fArr[fArr.length - 1];
            float min = Math.min(f3, f5);
            float max = Math.max(f4, f6);
            float min2 = f - Math.min(f3, f5);
            float max2 = Math.max(f4, f6) - f2;
            String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + (((int) (((min2 * 100.0f) / Math.abs(f5 - f3)) + 0.5d)) / 100.0f);
            Paint paint = this.f6132new;
            m3592case(paint, str);
            Rect rect = this.f6123do;
            canvas.drawText(str, ((min2 / 2.0f) - (rect.width() / 2)) + min, f2 - 20.0f, paint);
            float min3 = Math.min(f3, f5);
            Paint paint2 = this.f6127for;
            canvas.drawLine(f, f2, min3, f2, paint2);
            String str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + (((int) (((max2 * 100.0f) / Math.abs(f6 - f4)) + 0.5d)) / 100.0f);
            m3592case(paint, str2);
            canvas.drawText(str2, f + 5.0f, max - ((max2 / 2.0f) - (rect.height() / 2)), paint);
            canvas.drawLine(f, f2, f, Math.max(f4, f6), paint2);
        }

        /* renamed from: if, reason: not valid java name */
        public final void m3595if(Canvas canvas) {
            float[] fArr = this.f6125do;
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[fArr.length - 2];
            float f4 = fArr[fArr.length - 1];
            float min = Math.min(f, f3);
            float max = Math.max(f2, f4);
            float max2 = Math.max(f, f3);
            float max3 = Math.max(f2, f4);
            Paint paint = this.f6127for;
            canvas.drawLine(min, max, max2, max3, paint);
            canvas.drawLine(Math.min(f, f3), Math.min(f2, f4), Math.min(f, f3), Math.max(f2, f4), paint);
        }

        /* renamed from: new, reason: not valid java name */
        public final void m3596new(Canvas canvas, float f, float f2) {
            float[] fArr = this.f6125do;
            float f3 = fArr[0];
            float f4 = fArr[1];
            float f5 = fArr[fArr.length - 2];
            float f6 = fArr[fArr.length - 1];
            float hypot = (float) Math.hypot(f3 - f5, f4 - f6);
            float f7 = f5 - f3;
            float f8 = f6 - f4;
            float f9 = (((f2 - f4) * f8) + ((f - f3) * f7)) / (hypot * hypot);
            float f10 = f3 + (f7 * f9);
            float f11 = f4 + (f9 * f8);
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f10, f11);
            float hypot2 = (float) Math.hypot(f10 - f, f11 - f2);
            String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + (((int) ((hypot2 * 100.0f) / hypot)) / 100.0f);
            Paint paint = this.f6132new;
            m3592case(paint, str);
            canvas.drawTextOnPath(str, path, (hypot2 / 2.0f) - (this.f6123do.width() / 2), -20.0f, paint);
            canvas.drawLine(f, f2, f10, f11, this.f6127for);
        }

        /* renamed from: try, reason: not valid java name */
        public final void m3597try(Canvas canvas, float f, float f2, int i, int i2) {
            StringBuilder sb = new StringBuilder(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            MotionLayout motionLayout = MotionLayout.this;
            sb.append(((int) ((((f - (i / 2)) * 100.0f) / (motionLayout.getWidth() - i)) + 0.5d)) / 100.0f);
            String sb2 = sb.toString();
            Paint paint = this.f6132new;
            m3592case(paint, sb2);
            Rect rect = this.f6123do;
            canvas.drawText(sb2, ((f / 2.0f) - (rect.width() / 2)) + 0.0f, f2 - 20.0f, paint);
            float min = Math.min(0.0f, 1.0f);
            Paint paint2 = this.f6127for;
            canvas.drawLine(f, f2, min, f2, paint2);
            String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + (((int) ((((f2 - (i2 / 2)) * 100.0f) / (motionLayout.getHeight() - i2)) + 0.5d)) / 100.0f);
            m3592case(paint, str);
            canvas.drawText(str, f + 5.0f, 0.0f - ((f2 / 2.0f) - (rect.height() / 2)), paint);
            canvas.drawLine(f, f2, f, Math.max(0.0f, 1.0f), paint2);
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$if, reason: invalid class name */
    public class Cif extends AbstractInterpolatorC4063yt {

        /* renamed from: for, reason: not valid java name */
        public float f6136for;

        /* renamed from: do, reason: not valid java name */
        public float f6134do = 0.0f;

        /* renamed from: if, reason: not valid java name */
        public float f6137if = 0.0f;

        public Cif() {
        }

        @Override // defpackage.AbstractInterpolatorC4063yt
        /* renamed from: do, reason: not valid java name */
        public final float mo3598do() {
            return MotionLayout.this.f6068do;
        }

        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            float f2 = this.f6134do;
            MotionLayout motionLayout = MotionLayout.this;
            if (f2 > 0.0f) {
                float f3 = this.f6136for;
                if (f2 / f3 < f) {
                    f = f2 / f3;
                }
                motionLayout.f6068do = f2 - (f3 * f);
                return ((f2 * f) - (((f3 * f) * f) / 2.0f)) + this.f6137if;
            }
            float f4 = this.f6136for;
            if ((-f2) / f4 < f) {
                f = (-f2) / f4;
            }
            motionLayout.f6068do = (f4 * f) + f2;
            return (((f4 * f) * f) / 2.0f) + (f2 * f) + this.f6137if;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$new, reason: invalid class name */
    public class Cnew {

        /* renamed from: do, reason: not valid java name */
        public int f6138do;

        /* renamed from: if, reason: not valid java name */
        public int f6142if;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C0203Fa f6139do = new C0203Fa();

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public C0203Fa f6143if = new C0203Fa();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public androidx.constraintlayout.widget.Cdo f6141do = null;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public androidx.constraintlayout.widget.Cdo f6144if = null;

        public Cnew() {
        }

        /* renamed from: for, reason: not valid java name */
        public static C0181Ea m3599for(C0203Fa c0203Fa, View view) {
            if (((C0181Ea) c0203Fa).f811do == view) {
                return c0203Fa;
            }
            ArrayList<C0181Ea> arrayList = ((C2688eM) c0203Fa).f12669if;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                C0181Ea c0181Ea = arrayList.get(i);
                if (c0181Ea.f811do == view) {
                    return c0181Ea;
                }
            }
            return null;
        }

        /* renamed from: if, reason: not valid java name */
        public static void m3600if(C0203Fa c0203Fa, C0203Fa c0203Fa2) {
            ArrayList<C0181Ea> arrayList = ((C2688eM) c0203Fa).f12669if;
            HashMap<C0181Ea, C0181Ea> hashMap = new HashMap<>();
            hashMap.put(c0203Fa, c0203Fa2);
            ((C2688eM) c0203Fa2).f12669if.clear();
            c0203Fa2.mo480this(c0203Fa, hashMap);
            Iterator<C0181Ea> it = arrayList.iterator();
            while (it.hasNext()) {
                C0181Ea next = it.next();
                C0181Ea n4 = next instanceof N4 ? new N4() : next instanceof C0389Nl ? new C0389Nl() : next instanceof C0606Xi ? new C0606Xi() : next instanceof InterfaceC0829cm ? new C2710em() : new C0181Ea();
                ((C2688eM) c0203Fa2).f12669if.add(n4);
                C0181Ea c0181Ea = n4.f808do;
                if (c0181Ea != null) {
                    ((C2688eM) c0181Ea).f12669if.remove(n4);
                    n4.f808do = null;
                }
                n4.f808do = c0203Fa2;
                hashMap.put(next, n4);
            }
            Iterator<C0181Ea> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                C0181Ea next2 = it2.next();
                hashMap.get(next2).mo480this(next2, hashMap);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: case, reason: not valid java name */
        public final void m3601case(C0203Fa c0203Fa, androidx.constraintlayout.widget.Cdo cdo) {
            SparseArray<C0181Ea> sparseArray = new SparseArray<>();
            Constraints.LayoutParams layoutParams = new Constraints.LayoutParams();
            sparseArray.clear();
            sparseArray.put(0, c0203Fa);
            MotionLayout motionLayout = MotionLayout.this;
            sparseArray.put(motionLayout.getId(), c0203Fa);
            Iterator<C0181Ea> it = ((C2688eM) c0203Fa).f12669if.iterator();
            while (it.hasNext()) {
                C0181Ea next = it.next();
                sparseArray.put(((View) next.f811do).getId(), next);
            }
            Iterator<C0181Ea> it2 = ((C2688eM) c0203Fa).f12669if.iterator();
            while (it2.hasNext()) {
                C0181Ea next2 = it2.next();
                View view = (View) next2.f811do;
                int id = view.getId();
                HashMap<Integer, Cdo.C0033do> hashMap = cdo.f6349if;
                if (hashMap.containsKey(Integer.valueOf(id))) {
                    hashMap.get(Integer.valueOf(id)).m3654do(layoutParams);
                }
                next2.m474private(cdo.m3648else(view.getId()).f6352do.f6375do);
                next2.m466extends(cdo.m3648else(view.getId()).f6352do.f6391if);
                if (view instanceof ConstraintHelper) {
                    ConstraintHelper constraintHelper = (ConstraintHelper) view;
                    int id2 = constraintHelper.getId();
                    HashMap<Integer, Cdo.C0033do> hashMap2 = cdo.f6349if;
                    if (hashMap2.containsKey(Integer.valueOf(id2))) {
                        Cdo.C0033do c0033do = hashMap2.get(Integer.valueOf(id2));
                        if (next2 instanceof C2710em) {
                            constraintHelper.mo3564catch(c0033do, (C2710em) next2, layoutParams, sparseArray);
                        }
                    }
                    if (view instanceof Barrier) {
                        ((Barrier) view).m3632while();
                    }
                }
                layoutParams.resolveLayoutDirection(motionLayout.getLayoutDirection());
                MotionLayout motionLayout2 = MotionLayout.this;
                boolean z = MotionLayout.f6057catch;
                motionLayout2.m3637if(false, view, next2, layoutParams, sparseArray);
                if (cdo.m3648else(view.getId()).f6353do.f6425if == 1) {
                    next2.f845import = view.getVisibility();
                } else {
                    next2.f845import = cdo.m3648else(view.getId()).f6353do.f6422do;
                }
            }
            Iterator<C0181Ea> it3 = ((C2688eM) c0203Fa).f12669if.iterator();
            while (it3.hasNext()) {
                C0181Ea next3 = it3.next();
                if (next3 instanceof EL) {
                    ConstraintHelper constraintHelper2 = (ConstraintHelper) next3.f811do;
                    InterfaceC0829cm interfaceC0829cm = (InterfaceC0829cm) next3;
                    constraintHelper2.getClass();
                    interfaceC0829cm.mo4934do();
                    for (int i = 0; i < constraintHelper2.f6241for; i++) {
                        interfaceC0829cm.mo4935for(sparseArray.get(constraintHelper2.f6239do[i]));
                    }
                    EL el = (EL) interfaceC0829cm;
                    for (int i2 = 0; i2 < el.f12708return; i2++) {
                        C0181Ea c0181Ea = ((C2710em) el).f12707for[i2];
                    }
                }
            }
        }

        /* renamed from: do, reason: not valid java name */
        public final void m3602do() {
            MotionLayout motionLayout = MotionLayout.this;
            int childCount = motionLayout.getChildCount();
            HashMap<View, C4004xt> hashMap = motionLayout.f6093if;
            hashMap.clear();
            for (int i = 0; i < childCount; i++) {
                View childAt = motionLayout.getChildAt(i);
                hashMap.put(childAt, new C4004xt(childAt));
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt2 = motionLayout.getChildAt(i2);
                C4004xt c4004xt = hashMap.get(childAt2);
                if (c4004xt != null) {
                    if (this.f6141do != null) {
                        C0181Ea m3599for = m3599for(this.f6139do, childAt2);
                        if (m3599for != null) {
                            androidx.constraintlayout.widget.Cdo cdo = this.f6141do;
                            C0112At c0112At = c4004xt.f16627do;
                            c0112At.f146do = 0.0f;
                            c0112At.f153if = 0.0f;
                            c4004xt.m8677try(c0112At);
                            float m484while = m3599for.m484while();
                            float m470import = m3599for.m470import();
                            float m481throw = m3599for.m481throw();
                            float m462const = m3599for.m462const();
                            c0112At.f151for = m484while;
                            c0112At.f155new = m470import;
                            c0112At.f157try = m481throw;
                            c0112At.f145case = m462const;
                            Cdo.C0033do m3648else = cdo.m3648else(c4004xt.f16626do);
                            c0112At.m106do(m3648else);
                            c4004xt.f16625do = m3648else.f6351do.f6357do;
                            c4004xt.f16632do.m8594goto(m3599for, cdo, c4004xt.f16626do);
                        } else if (motionLayout.f6104super != 0) {
                            C0701ad.m3137do();
                            C0701ad.m3138for(childAt2);
                            childAt2.getClass();
                        }
                    }
                    if (this.f6144if != null) {
                        C0181Ea m3599for2 = m3599for(this.f6143if, childAt2);
                        if (m3599for2 != null) {
                            androidx.constraintlayout.widget.Cdo cdo2 = this.f6144if;
                            C0112At c0112At2 = c4004xt.f16644if;
                            c0112At2.f146do = 1.0f;
                            c0112At2.f153if = 1.0f;
                            c4004xt.m8677try(c0112At2);
                            float m484while2 = m3599for2.m484while();
                            float m470import2 = m3599for2.m470import();
                            float m481throw2 = m3599for2.m481throw();
                            float m462const2 = m3599for2.m462const();
                            c0112At2.f151for = m484while2;
                            c0112At2.f155new = m470import2;
                            c0112At2.f157try = m481throw2;
                            c0112At2.f145case = m462const2;
                            c0112At2.m106do(cdo2.m3648else(c4004xt.f16626do));
                            c4004xt.f16647if.m8594goto(m3599for2, cdo2, c4004xt.f16626do);
                        } else if (motionLayout.f6104super != 0) {
                            C0701ad.m3137do();
                            C0701ad.m3138for(childAt2);
                            childAt2.getClass();
                        }
                    }
                }
            }
        }

        /* renamed from: new, reason: not valid java name */
        public final void m3603new(androidx.constraintlayout.widget.Cdo cdo, androidx.constraintlayout.widget.Cdo cdo2) {
            this.f6141do = cdo;
            this.f6144if = cdo2;
            this.f6139do = new C0203Fa();
            C0203Fa c0203Fa = new C0203Fa();
            this.f6143if = c0203Fa;
            C0203Fa c0203Fa2 = this.f6139do;
            boolean z = MotionLayout.f6057catch;
            MotionLayout motionLayout = MotionLayout.this;
            C0203Fa c0203Fa3 = ((ConstraintLayout) motionLayout).f6245do;
            C2789g5.Cif cif = c0203Fa3.f1062do;
            c0203Fa2.f1062do = cif;
            c0203Fa2.f1061do.f4884do = cif;
            C2789g5.Cif cif2 = c0203Fa3.f1062do;
            c0203Fa.f1062do = cif2;
            c0203Fa.f1061do.f4884do = cif2;
            ((C2688eM) c0203Fa2).f12669if.clear();
            ((C2688eM) this.f6143if).f12669if.clear();
            C0203Fa c0203Fa4 = this.f6139do;
            C0203Fa c0203Fa5 = ((ConstraintLayout) motionLayout).f6245do;
            m3600if(c0203Fa5, c0203Fa4);
            m3600if(c0203Fa5, this.f6143if);
            if (motionLayout.f6097new > 0.5d) {
                if (cdo != null) {
                    m3601case(this.f6139do, cdo);
                }
                m3601case(this.f6143if, cdo2);
            } else {
                m3601case(this.f6143if, cdo2);
                if (cdo != null) {
                    m3601case(this.f6139do, cdo);
                }
            }
            this.f6139do.f1067new = motionLayout.m3634case();
            this.f6139do.m620transient();
            this.f6143if.f1067new = motionLayout.m3634case();
            this.f6143if.m620transient();
            ViewGroup.LayoutParams layoutParams = motionLayout.getLayoutParams();
            if (layoutParams != null) {
                int i = layoutParams.width;
                C0181Ea.Cdo cdo3 = C0181Ea.Cdo.WRAP_CONTENT;
                if (i == -2) {
                    this.f6139do.m468finally(cdo3);
                    this.f6143if.m468finally(cdo3);
                }
                if (layoutParams.height == -2) {
                    this.f6139do.m473package(cdo3);
                    this.f6143if.m473package(cdo3);
                }
            }
        }

        /* renamed from: try, reason: not valid java name */
        public final void m3604try() {
            MotionLayout motionLayout = MotionLayout.this;
            int i = motionLayout.f6066const;
            int i2 = motionLayout.f6083final;
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            motionLayout.f6109throws = mode;
            motionLayout.f6067default = mode2;
            int i3 = ((ConstraintLayout) motionLayout).f6245do.f1060default;
            if (motionLayout.f6064catch == motionLayout.f6059break) {
                motionLayout.m3639this(this.f6143if, i3, i, i2);
                if (this.f6141do != null) {
                    motionLayout.m3639this(this.f6139do, i3, i, i2);
                }
            } else {
                if (this.f6141do != null) {
                    motionLayout.m3639this(this.f6139do, i3, i, i2);
                }
                motionLayout.m3639this(this.f6143if, i3, i, i2);
            }
            int i4 = 0;
            boolean z = true;
            if (((motionLayout.getParent() instanceof MotionLayout) && mode == 1073741824 && mode2 == 1073741824) ? false : true) {
                motionLayout.f6109throws = mode;
                motionLayout.f6067default = mode2;
                if (motionLayout.f6064catch == motionLayout.f6059break) {
                    motionLayout.m3639this(this.f6143if, i3, i, i2);
                    if (this.f6141do != null) {
                        motionLayout.m3639this(this.f6139do, i3, i, i2);
                    }
                } else {
                    if (this.f6141do != null) {
                        motionLayout.m3639this(this.f6139do, i3, i, i2);
                    }
                    motionLayout.m3639this(this.f6143if, i3, i, i2);
                }
                motionLayout.f6101public = this.f6139do.m481throw();
                motionLayout.f6102return = this.f6139do.m462const();
                motionLayout.f6103static = this.f6143if.m481throw();
                int m462const = this.f6143if.m462const();
                motionLayout.f6105switch = m462const;
                motionLayout.f6089goto = (motionLayout.f6101public == motionLayout.f6103static && motionLayout.f6102return == m462const) ? false : true;
            }
            int i5 = motionLayout.f6101public;
            int i6 = motionLayout.f6102return;
            int i7 = motionLayout.f6109throws;
            if (i7 == Integer.MIN_VALUE || i7 == 0) {
                i5 = (int) ((motionLayout.f6063catch * (motionLayout.f6103static - i5)) + i5);
            }
            int i8 = i5;
            int i9 = motionLayout.f6067default;
            int i10 = (i9 == Integer.MIN_VALUE || i9 == 0) ? (int) ((motionLayout.f6063catch * (motionLayout.f6105switch - i6)) + i6) : i6;
            C0203Fa c0203Fa = this.f6139do;
            motionLayout.m3636goto(i, i2, i8, c0203Fa.f1072try || this.f6143if.f1072try, c0203Fa.f1059case || this.f6143if.f1059case, i10);
            int childCount = motionLayout.getChildCount();
            motionLayout.f6077do.m3602do();
            motionLayout.f6100new = true;
            int width = motionLayout.getWidth();
            int height = motionLayout.getHeight();
            Cdo.C0031do c0031do = motionLayout.f6078do.f6154do;
            int i11 = c0031do != null ? c0031do.f6175goto : -1;
            HashMap<View, C4004xt> hashMap = motionLayout.f6093if;
            if (i11 != -1) {
                for (int i12 = 0; i12 < childCount; i12++) {
                    C4004xt c4004xt = hashMap.get(motionLayout.getChildAt(i12));
                    if (c4004xt != null) {
                        c4004xt.f16640for = i11;
                    }
                }
            }
            for (int i13 = 0; i13 < childCount; i13++) {
                C4004xt c4004xt2 = hashMap.get(motionLayout.getChildAt(i13));
                if (c4004xt2 != null) {
                    motionLayout.f6078do.m3613new(c4004xt2);
                    c4004xt2.m8672case(width, height, System.nanoTime());
                }
            }
            Cdo.C0031do c0031do2 = motionLayout.f6078do.f6154do;
            float f = c0031do2 != null ? c0031do2.f6166do : 0.0f;
            if (f != 0.0f) {
                boolean z2 = ((double) f) < 0.0d;
                float abs = Math.abs(f);
                float f2 = Float.MAX_VALUE;
                float f3 = -3.4028235E38f;
                int i14 = 0;
                float f4 = Float.MAX_VALUE;
                float f5 = -3.4028235E38f;
                while (true) {
                    if (i14 >= childCount) {
                        z = false;
                        break;
                    }
                    C4004xt c4004xt3 = hashMap.get(motionLayout.getChildAt(i14));
                    if (!Float.isNaN(c4004xt3.f16625do)) {
                        break;
                    }
                    C0112At c0112At = c4004xt3.f16644if;
                    float f6 = c0112At.f151for;
                    float f7 = c0112At.f155new;
                    float f8 = z2 ? f7 - f6 : f7 + f6;
                    f4 = Math.min(f4, f8);
                    f5 = Math.max(f5, f8);
                    i14++;
                }
                if (!z) {
                    while (i4 < childCount) {
                        C4004xt c4004xt4 = hashMap.get(motionLayout.getChildAt(i4));
                        C0112At c0112At2 = c4004xt4.f16644if;
                        float f9 = c0112At2.f151for;
                        float f10 = c0112At2.f155new;
                        float f11 = z2 ? f10 - f9 : f10 + f9;
                        c4004xt4.f16639for = 1.0f / (1.0f - abs);
                        c4004xt4.f16642if = abs - (((f11 - f4) * abs) / (f5 - f4));
                        i4++;
                    }
                    return;
                }
                for (int i15 = 0; i15 < childCount; i15++) {
                    C4004xt c4004xt5 = hashMap.get(motionLayout.getChildAt(i15));
                    if (!Float.isNaN(c4004xt5.f16625do)) {
                        f2 = Math.min(f2, c4004xt5.f16625do);
                        f3 = Math.max(f3, c4004xt5.f16625do);
                    }
                }
                while (i4 < childCount) {
                    C4004xt c4004xt6 = hashMap.get(motionLayout.getChildAt(i4));
                    if (!Float.isNaN(c4004xt6.f16625do)) {
                        c4004xt6.f16639for = 1.0f / (1.0f - abs);
                        if (z2) {
                            c4004xt6.f16642if = abs - (((f3 - c4004xt6.f16625do) / (f3 - f2)) * abs);
                        } else {
                            c4004xt6.f16642if = abs - (((c4004xt6.f16625do - f2) * abs) / (f3 - f2));
                        }
                    }
                    i4++;
                }
            }
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: do, reason: not valid java name */
        public static final Ctry f6145do = new Ctry();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public VelocityTracker f6146do;
    }

    public MotionLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6068do = 0.0f;
        this.f6059break = -1;
        this.f6064catch = -1;
        this.f6065class = -1;
        this.f6066const = 0;
        this.f6083final = 0;
        this.f6094if = true;
        this.f6093if = new HashMap<>();
        this.f6069do = 0L;
        this.f6090if = 1.0f;
        this.f6084for = 0.0f;
        this.f6097new = 0.0f;
        this.f6110try = 0.0f;
        this.f6100new = false;
        this.f6104super = 0;
        this.f6112try = false;
        this.f6079do = new C3379nF();
        this.f6076do = new Cif();
        this.f6062case = false;
        this.f6081else = false;
        this.f6092if = null;
        this.f6086for = null;
        this.f6099new = null;
        this.f6095import = 0;
        this.f6098new = -1L;
        this.f6106this = 0.0f;
        this.f6096native = 0;
        this.f6058break = 0.0f;
        this.f6089goto = false;
        this.f6070do = new C0174Dp();
        this.f6107this = false;
        this.f6082extends = 1;
        this.f6077do = new Cnew();
        this.f6060break = false;
        this.f6071do = new RectF();
        this.f6072do = null;
        this.f6111try = new ArrayList<>();
        m3589switch(attributeSet);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0060, code lost:
    
        if ((((r16 * r12) - (((r3 * r12) * r12) / 2.0f)) + r1) > 1.0f) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0073, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0074, code lost:
    
        if (r2 == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0076, code lost:
    
        r1 = r14.f6097new;
        r2 = r14.f6078do.m3615try();
        r7.f6134do = r16;
        r7.f6137if = r1;
        r7.f6136for = r2;
        r14.f6073do = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0088, code lost:
    
        r1 = r14.f6079do;
        r2 = r14.f6097new;
        r5 = r14.f6090if;
        r6 = r14.f6078do.m3615try();
        r3 = r14.f6078do.f6154do;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0098, code lost:
    
        if (r3 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009a, code lost:
    
        r3 = r3.f6169do;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x009c, code lost:
    
        if (r3 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009e, code lost:
    
        r7 = r3.f8372else;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a3, code lost:
    
        r1.m7560if(r2, r15, r16, r5, r6, r7);
        r14.f6068do = 0.0f;
        r1 = r14.f6064catch;
        r14.f6110try = r8;
        r14.f6064catch = r1;
        r14.f6073do = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a2, code lost:
    
        r7 = 0.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0070, code lost:
    
        if ((((((r3 * r6) * r6) / 2.0f) + (r16 * r6)) + r1) < 0.0f) goto L30;
     */
    /* renamed from: abstract, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3576abstract(float r15, float r16, int r17) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.m3576abstract(float, float, int):void");
    }

    @Override // defpackage.InterfaceC3710su
    /* renamed from: catch */
    public final void mo3372catch(View view, int i, int i2, int[] iArr, int i3) {
        Cdo.C0031do c0031do;
        boolean z;
        C0743bI c0743bI;
        float f;
        C0743bI c0743bI2;
        C0743bI c0743bI3;
        int i4;
        androidx.constraintlayout.motion.widget.Cdo cdo = this.f6078do;
        if (cdo == null || (c0031do = cdo.f6154do) == null || !(!c0031do.f6178if)) {
            return;
        }
        if (!z || (c0743bI3 = c0031do.f6169do) == null || (i4 = c0743bI3.f8384try) == -1 || view.getId() == i4) {
            androidx.constraintlayout.motion.widget.Cdo cdo2 = this.f6078do;
            if (cdo2 != null) {
                Cdo.C0031do c0031do2 = cdo2.f6154do;
                if ((c0031do2 == null || (c0743bI2 = c0031do2.f6169do) == null) ? false : c0743bI2.f8379if) {
                    float f2 = this.f6084for;
                    if ((f2 == 1.0f || f2 == 0.0f) && view.canScrollVertically(-1)) {
                        return;
                    }
                }
            }
            if (c0031do.f6169do != null) {
                C0743bI c0743bI4 = this.f6078do.f6154do.f6169do;
                if ((c0743bI4.f8373else & 1) != 0) {
                    float f3 = i;
                    float f4 = i2;
                    MotionLayout motionLayout = c0743bI4.f8369do;
                    motionLayout.m3587return(c0743bI4.f8381new, motionLayout.f6097new, c0743bI4.f8377if, c0743bI4.f8367do, c0743bI4.f8371do);
                    float f5 = c0743bI4.f8374for;
                    float[] fArr = c0743bI4.f8371do;
                    if (f5 != 0.0f) {
                        if (fArr[0] == 0.0f) {
                            fArr[0] = 1.0E-7f;
                        }
                        f = (f3 * f5) / fArr[0];
                    } else {
                        if (fArr[1] == 0.0f) {
                            fArr[1] = 1.0E-7f;
                        }
                        f = (f4 * c0743bI4.f8380new) / fArr[1];
                    }
                    float f6 = this.f6097new;
                    if ((f6 <= 0.0f && f < 0.0f) || (f6 >= 1.0f && f > 0.0f)) {
                        view.setNestedScrollingEnabled(false);
                        view.post(new Cdo(view));
                        return;
                    }
                }
            }
            float f7 = this.f6084for;
            long nanoTime = System.nanoTime();
            float f8 = i;
            this.f6061case = f8;
            float f9 = i2;
            this.f6080else = f9;
            this.f6088goto = (float) ((nanoTime - this.f6085for) * 1.0E-9d);
            this.f6085for = nanoTime;
            Cdo.C0031do c0031do3 = this.f6078do.f6154do;
            if (c0031do3 != null && (c0743bI = c0031do3.f6169do) != null) {
                MotionLayout motionLayout2 = c0743bI.f8369do;
                float f10 = motionLayout2.f6097new;
                if (!c0743bI.f8370do) {
                    c0743bI.f8370do = true;
                    motionLayout2.m3580extends(f10);
                }
                c0743bI.f8369do.m3587return(c0743bI.f8381new, f10, c0743bI.f8377if, c0743bI.f8367do, c0743bI.f8371do);
                float f11 = c0743bI.f8374for;
                float[] fArr2 = c0743bI.f8371do;
                if (Math.abs((c0743bI.f8380new * fArr2[1]) + (f11 * fArr2[0])) < 0.01d) {
                    fArr2[0] = 0.01f;
                    fArr2[1] = 0.01f;
                }
                float f12 = c0743bI.f8374for;
                float max = Math.max(Math.min(f10 + (f12 != 0.0f ? (f8 * f12) / fArr2[0] : (f9 * c0743bI.f8380new) / fArr2[1]), 1.0f), 0.0f);
                if (max != motionLayout2.f6097new) {
                    motionLayout2.m3580extends(max);
                }
            }
            if (f7 != this.f6084for) {
                iArr[0] = i;
                iArr[1] = i2;
            }
            m3582import(false);
            if (iArr[0] == 0 && iArr[1] == 0) {
                return;
            }
            this.f6062case = true;
        }
    }

    @Override // defpackage.InterfaceC3710su
    /* renamed from: class */
    public final void mo3373class(View view, int i) {
        C0743bI c0743bI;
        androidx.constraintlayout.motion.widget.Cdo cdo = this.f6078do;
        if (cdo == null) {
            return;
        }
        float f = this.f6061case;
        float f2 = this.f6088goto;
        float f3 = f / f2;
        float f4 = this.f6080else / f2;
        Cdo.C0031do c0031do = cdo.f6154do;
        if (c0031do == null || (c0743bI = c0031do.f6169do) == null) {
            return;
        }
        c0743bI.f8370do = false;
        MotionLayout motionLayout = c0743bI.f8369do;
        float f5 = motionLayout.f6097new;
        motionLayout.m3587return(c0743bI.f8381new, f5, c0743bI.f8377if, c0743bI.f8367do, c0743bI.f8371do);
        float f6 = c0743bI.f8374for;
        float[] fArr = c0743bI.f8371do;
        float f7 = f6 != 0.0f ? (f3 * f6) / fArr[0] : (f4 * c0743bI.f8380new) / fArr[1];
        if (!Float.isNaN(f7)) {
            f5 += f7 / 3.0f;
        }
        if (f5 != 0.0f) {
            boolean z = f5 != 1.0f;
            int i2 = c0743bI.f8375for;
            if ((i2 != 3) && z) {
                motionLayout.m3576abstract(((double) f5) >= 0.5d ? 1.0f : 0.0f, f7, i2);
            }
        }
    }

    @Override // defpackage.InterfaceC3769tu
    /* renamed from: const */
    public final void mo3374const(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (this.f6062case || i != 0 || i2 != 0) {
            iArr[0] = iArr[0] + i3;
            iArr[1] = iArr[1] + i4;
        }
        this.f6062case = false;
    }

    /* renamed from: continue, reason: not valid java name */
    public final void m3577continue(int i) {
        C2917iF c2917iF;
        if (!isAttachedToWindow()) {
            if (this.f6074do == null) {
                this.f6074do = new Ccase();
            }
            this.f6074do.f6118if = i;
            return;
        }
        androidx.constraintlayout.motion.widget.Cdo cdo = this.f6078do;
        if (cdo != null && (c2917iF = cdo.f6155do) != null) {
            int i2 = this.f6064catch;
            float f = -1;
            C2917iF.Cdo cdo2 = c2917iF.f13446do.get(i);
            if (cdo2 == null) {
                i2 = i;
            } else {
                ArrayList<C2917iF.Cif> arrayList = cdo2.f13448do;
                int i3 = cdo2.f13449if;
                if (f != -1.0f && f != -1.0f) {
                    Iterator<C2917iF.Cif> it = arrayList.iterator();
                    C2917iF.Cif cif = null;
                    while (true) {
                        if (it.hasNext()) {
                            C2917iF.Cif next = it.next();
                            if (next.m6888do(f, f)) {
                                if (i2 == next.f13451do) {
                                    break;
                                } else {
                                    cif = next;
                                }
                            }
                        } else if (cif != null) {
                            i2 = cif.f13451do;
                        }
                    }
                } else if (i3 != i2) {
                    Iterator<C2917iF.Cif> it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        if (i2 == it2.next().f13451do) {
                            break;
                        }
                    }
                    i2 = i3;
                }
            }
            if (i2 != -1) {
                i = i2;
            }
        }
        int i4 = this.f6064catch;
        if (i4 == i) {
            return;
        }
        if (this.f6059break == i) {
            m3590throw(0.0f);
            return;
        }
        if (this.f6065class == i) {
            m3590throw(1.0f);
            return;
        }
        this.f6065class = i;
        if (i4 != -1) {
            m3584package(i4, i);
            m3590throw(1.0f);
            this.f6097new = 0.0f;
            m3590throw(1.0f);
            return;
        }
        this.f6112try = false;
        this.f6110try = 1.0f;
        this.f6084for = 0.0f;
        this.f6097new = 0.0f;
        this.f6091if = System.nanoTime();
        this.f6069do = System.nanoTime();
        this.f6087for = false;
        this.f6073do = null;
        androidx.constraintlayout.motion.widget.Cdo cdo3 = this.f6078do;
        this.f6090if = (cdo3.f6154do != null ? r6.f6165case : cdo3.f6148do) / 1000.0f;
        this.f6059break = -1;
        cdo3.m3605break(-1, this.f6065class);
        this.f6078do.m3606case();
        int childCount = getChildCount();
        HashMap<View, C4004xt> hashMap = this.f6093if;
        hashMap.clear();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            hashMap.put(childAt, new C4004xt(childAt));
        }
        this.f6100new = true;
        androidx.constraintlayout.widget.Cdo m3612if = this.f6078do.m3612if(i);
        Cnew cnew = this.f6077do;
        cnew.m3603new(null, m3612if);
        cnew.m3604try();
        invalidate();
        cnew.m3602do();
        int childCount2 = getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            View childAt2 = getChildAt(i6);
            C4004xt c4004xt = hashMap.get(childAt2);
            if (c4004xt != null) {
                C0112At c0112At = c4004xt.f16627do;
                c0112At.f146do = 0.0f;
                c0112At.f153if = 0.0f;
                float x = childAt2.getX();
                float y = childAt2.getY();
                float width = childAt2.getWidth();
                float height = childAt2.getHeight();
                c0112At.f151for = x;
                c0112At.f155new = y;
                c0112At.f157try = width;
                c0112At.f145case = height;
                C3945wt c3945wt = c4004xt.f16632do;
                c3945wt.getClass();
                childAt2.getX();
                childAt2.getY();
                childAt2.getWidth();
                childAt2.getHeight();
                c3945wt.f16424new = childAt2.getVisibility();
                c3945wt.f16415do = childAt2.getVisibility() != 0 ? 0.0f : childAt2.getAlpha();
                c3945wt.f16422if = childAt2.getElevation();
                c3945wt.f16419for = childAt2.getRotation();
                c3945wt.f16423new = childAt2.getRotationX();
                c3945wt.f16426try = childAt2.getRotationY();
                c3945wt.f16411case = childAt2.getScaleX();
                c3945wt.f16417else = childAt2.getScaleY();
                c3945wt.f16421goto = childAt2.getPivotX();
                c3945wt.f16425this = childAt2.getPivotY();
                c3945wt.f16410break = childAt2.getTranslationX();
                c3945wt.f16412catch = childAt2.getTranslationY();
                c3945wt.f16413class = childAt2.getTranslationZ();
            }
        }
        int width2 = getWidth();
        int height2 = getHeight();
        for (int i7 = 0; i7 < childCount; i7++) {
            C4004xt c4004xt2 = hashMap.get(getChildAt(i7));
            this.f6078do.m3613new(c4004xt2);
            c4004xt2.m8672case(width2, height2, System.nanoTime());
        }
        Cdo.C0031do c0031do = this.f6078do.f6154do;
        float f2 = c0031do != null ? c0031do.f6166do : 0.0f;
        if (f2 != 0.0f) {
            float f3 = Float.MAX_VALUE;
            float f4 = -3.4028235E38f;
            for (int i8 = 0; i8 < childCount; i8++) {
                C0112At c0112At2 = hashMap.get(getChildAt(i8)).f16644if;
                float f5 = c0112At2.f155new + c0112At2.f151for;
                f3 = Math.min(f3, f5);
                f4 = Math.max(f4, f5);
            }
            for (int i9 = 0; i9 < childCount; i9++) {
                C4004xt c4004xt3 = hashMap.get(getChildAt(i9));
                C0112At c0112At3 = c4004xt3.f16644if;
                float f6 = c0112At3.f151for;
                float f7 = c0112At3.f155new;
                c4004xt3.f16639for = 1.0f / (1.0f - f2);
                c4004xt3.f16642if = f2 - ((((f6 + f7) - f3) * f2) / (f4 - f3));
            }
        }
        this.f6084for = 0.0f;
        this.f6097new = 0.0f;
        this.f6100new = true;
        invalidate();
    }

    /* renamed from: default, reason: not valid java name */
    public final void m3578default() {
        ArrayList<Celse> arrayList = this.f6099new;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        ArrayList<Integer> arrayList2 = this.f6111try;
        Iterator<Integer> it = arrayList2.iterator();
        while (it.hasNext()) {
            Integer next = it.next();
            ArrayList<Celse> arrayList3 = this.f6099new;
            if (arrayList3 != null) {
                Iterator<Celse> it2 = arrayList3.iterator();
                while (it2.hasNext()) {
                    Celse next2 = it2.next();
                    next.intValue();
                    next2.mo3573for();
                }
            }
        }
        arrayList2.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0362  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0317  */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void dispatchDraw(android.graphics.Canvas r35) {
        /*
            Method dump skipped, instructions count: 1173
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.dispatchDraw(android.graphics.Canvas):void");
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    /* renamed from: else, reason: not valid java name */
    public final void mo3579else(int i) {
        ((ConstraintLayout) this).f6244do = null;
    }

    /* renamed from: extends, reason: not valid java name */
    public final void m3580extends(float f) {
        if (!isAttachedToWindow()) {
            if (this.f6074do == null) {
                this.f6074do = new Ccase();
            }
            this.f6074do.f6114do = f;
            return;
        }
        if (f <= 0.0f) {
            this.f6064catch = this.f6059break;
            if (this.f6097new == 0.0f) {
                m3581finally(4);
            }
        } else if (f >= 1.0f) {
            this.f6064catch = this.f6065class;
            if (this.f6097new == 1.0f) {
                m3581finally(4);
            }
        } else {
            this.f6064catch = -1;
            m3581finally(3);
        }
        if (this.f6078do == null) {
            return;
        }
        this.f6087for = true;
        this.f6110try = f;
        this.f6084for = f;
        this.f6091if = -1L;
        this.f6069do = -1L;
        this.f6073do = null;
        this.f6100new = true;
        invalidate();
    }

    @Override // defpackage.InterfaceC3710su
    /* renamed from: final */
    public final void mo3377final(View view, int i, int i2, int i3, int i4, int i5) {
    }

    /* renamed from: finally, reason: not valid java name */
    public final void m3581finally(int i) {
        if (i == 4 && this.f6064catch == -1) {
            return;
        }
        int i2 = this.f6082extends;
        this.f6082extends = i;
        if (i2 == 3 && i == 3) {
            m3583native();
        }
        int m8819catch = C4122zt.m8819catch(i2);
        if (m8819catch != 0 && m8819catch != 1) {
            if (m8819catch == 2 && i == 4) {
                m3586public();
                return;
            }
            return;
        }
        if (i == 3) {
            m3583native();
        }
        if (i == 4) {
            m3586public();
        }
    }

    /* renamed from: import, reason: not valid java name */
    public final void m3582import(boolean z) {
        float f;
        boolean z2;
        int i;
        float interpolation;
        boolean z3;
        if (this.f6091if == -1) {
            this.f6091if = System.nanoTime();
        }
        float f2 = this.f6097new;
        if (f2 > 0.0f && f2 < 1.0f) {
            this.f6064catch = -1;
        }
        boolean z4 = false;
        if (this.f6081else || (this.f6100new && (z || this.f6110try != f2))) {
            float signum = Math.signum(this.f6110try - f2);
            long nanoTime = System.nanoTime();
            Interpolator interpolator = this.f6073do;
            if (interpolator instanceof AbstractInterpolatorC4063yt) {
                f = 0.0f;
            } else {
                f = (((nanoTime - this.f6091if) * signum) * 1.0E-9f) / this.f6090if;
                this.f6068do = f;
            }
            float f3 = this.f6097new + f;
            if (this.f6087for) {
                f3 = this.f6110try;
            }
            if ((signum <= 0.0f || f3 < this.f6110try) && (signum > 0.0f || f3 > this.f6110try)) {
                z2 = false;
            } else {
                f3 = this.f6110try;
                this.f6100new = false;
                z2 = true;
            }
            this.f6097new = f3;
            this.f6084for = f3;
            this.f6091if = nanoTime;
            if (interpolator != null && !z2) {
                if (this.f6112try) {
                    interpolation = interpolator.getInterpolation((nanoTime - this.f6069do) * 1.0E-9f);
                    this.f6097new = interpolation;
                    this.f6091if = nanoTime;
                    Interpolator interpolator2 = this.f6073do;
                    if (interpolator2 instanceof AbstractInterpolatorC4063yt) {
                        float mo3598do = ((AbstractInterpolatorC4063yt) interpolator2).mo3598do();
                        this.f6068do = mo3598do;
                        if (Math.abs(mo3598do) * this.f6090if <= 1.0E-5f) {
                            this.f6100new = false;
                        }
                        if (mo3598do > 0.0f && interpolation >= 1.0f) {
                            this.f6097new = 1.0f;
                            this.f6100new = false;
                            interpolation = 1.0f;
                        }
                        if (mo3598do < 0.0f && interpolation <= 0.0f) {
                            this.f6097new = 0.0f;
                            this.f6100new = false;
                            f3 = 0.0f;
                        }
                    }
                } else {
                    interpolation = interpolator.getInterpolation(f3);
                    Interpolator interpolator3 = this.f6073do;
                    if (interpolator3 instanceof AbstractInterpolatorC4063yt) {
                        this.f6068do = ((AbstractInterpolatorC4063yt) interpolator3).mo3598do();
                    } else {
                        this.f6068do = ((interpolator3.getInterpolation(f3 + f) - interpolation) * signum) / f;
                    }
                }
                f3 = interpolation;
            }
            if (Math.abs(this.f6068do) > 1.0E-5f) {
                m3581finally(3);
            }
            if ((signum > 0.0f && f3 >= this.f6110try) || (signum <= 0.0f && f3 <= this.f6110try)) {
                f3 = this.f6110try;
                this.f6100new = false;
            }
            if (f3 >= 1.0f || f3 <= 0.0f) {
                this.f6100new = false;
                m3581finally(4);
            }
            int childCount = getChildCount();
            this.f6081else = false;
            long nanoTime2 = System.nanoTime();
            this.f6063catch = f3;
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                C4004xt c4004xt = this.f6093if.get(childAt);
                if (c4004xt != null) {
                    this.f6081else = c4004xt.m8676new(f3, nanoTime2, childAt, this.f6070do) | this.f6081else;
                }
            }
            boolean z5 = (signum > 0.0f && f3 >= this.f6110try) || (signum <= 0.0f && f3 <= this.f6110try);
            if (!this.f6081else && !this.f6100new && z5) {
                m3581finally(4);
            }
            if (this.f6089goto) {
                requestLayout();
            }
            this.f6081else = (!z5) | this.f6081else;
            if (f3 > 0.0f || (i = this.f6059break) == -1 || this.f6064catch == i) {
                z4 = false;
            } else {
                this.f6064catch = i;
                this.f6078do.m3612if(i).m3647do(this);
                m3581finally(4);
                z4 = true;
            }
            if (f3 >= 1.0d) {
                int i3 = this.f6064catch;
                int i4 = this.f6065class;
                if (i3 != i4) {
                    this.f6064catch = i4;
                    this.f6078do.m3612if(i4).m3647do(this);
                    m3581finally(4);
                    z4 = true;
                }
            }
            if (this.f6081else || this.f6100new) {
                invalidate();
            } else if ((signum > 0.0f && f3 == 1.0f) || (signum < 0.0f && f3 == 0.0f)) {
                m3581finally(4);
            }
            if ((!this.f6081else && this.f6100new && signum > 0.0f && f3 == 1.0f) || (signum < 0.0f && f3 == 0.0f)) {
                m3591throws();
            }
        }
        float f4 = this.f6097new;
        if (f4 < 1.0f) {
            if (f4 <= 0.0f) {
                int i5 = this.f6064catch;
                int i6 = this.f6059break;
                z3 = i5 == i6 ? z4 : true;
                this.f6064catch = i6;
            }
            this.f6060break |= z4;
            if (z4 && !this.f6107this) {
                requestLayout();
            }
            this.f6084for = this.f6097new;
        }
        int i7 = this.f6064catch;
        int i8 = this.f6065class;
        z3 = i7 == i8 ? z4 : true;
        this.f6064catch = i8;
        z4 = z3;
        this.f6060break |= z4;
        if (z4) {
            requestLayout();
        }
        this.f6084for = this.f6097new;
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return super.isAttachedToWindow();
    }

    /* renamed from: native, reason: not valid java name */
    public final void m3583native() {
        ArrayList<Celse> arrayList;
        ArrayList<Celse> arrayList2 = this.f6099new;
        if (arrayList2 == null || arrayList2.isEmpty() || this.f6058break == this.f6084for) {
            return;
        }
        if (this.f6096native != -1 && (arrayList = this.f6099new) != null) {
            Iterator<Celse> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().mo3572do();
            }
        }
        this.f6096native = -1;
        this.f6058break = this.f6084for;
        ArrayList<Celse> arrayList3 = this.f6099new;
        if (arrayList3 != null) {
            Iterator<Celse> it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                it2.next().mo3574if();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        int i;
        super.onAttachedToWindow();
        androidx.constraintlayout.motion.widget.Cdo cdo = this.f6078do;
        int i2 = 0;
        if (cdo != null && (i = this.f6064catch) != -1) {
            androidx.constraintlayout.widget.Cdo m3612if = cdo.m3612if(i);
            androidx.constraintlayout.motion.widget.Cdo cdo2 = this.f6078do;
            int i3 = 0;
            while (true) {
                SparseArray<androidx.constraintlayout.widget.Cdo> sparseArray = cdo2.f6149do;
                boolean z = true;
                if (i3 < sparseArray.size()) {
                    int keyAt = sparseArray.keyAt(i3);
                    SparseIntArray sparseIntArray = cdo2.f6150do;
                    int i4 = sparseIntArray.get(keyAt);
                    int size = sparseIntArray.size();
                    while (true) {
                        if (i4 <= 0) {
                            z = false;
                            break;
                        } else {
                            if (i4 == keyAt) {
                                break;
                            }
                            int i5 = size - 1;
                            if (size < 0) {
                                break;
                            }
                            i4 = sparseIntArray.get(i4);
                            size = i5;
                        }
                    }
                    if (z) {
                        break;
                    }
                    cdo2.m3614this(keyAt);
                    i3++;
                } else {
                    for (int i6 = 0; i6 < sparseArray.size(); i6++) {
                        androidx.constraintlayout.widget.Cdo valueAt = sparseArray.valueAt(i6);
                        valueAt.getClass();
                        int childCount = getChildCount();
                        for (int i7 = 0; i7 < childCount; i7++) {
                            View childAt = getChildAt(i7);
                            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                            int id = childAt.getId();
                            if (valueAt.f6348do && id == -1) {
                                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                            }
                            HashMap<Integer, Cdo.C0033do> hashMap = valueAt.f6349if;
                            if (!hashMap.containsKey(Integer.valueOf(id))) {
                                hashMap.put(Integer.valueOf(id), new Cdo.C0033do());
                            }
                            Cdo.C0033do c0033do = hashMap.get(Integer.valueOf(id));
                            if (!c0033do.f6352do.f6393if) {
                                c0033do.m3656if(id, layoutParams);
                                boolean z2 = childAt instanceof ConstraintHelper;
                                Cdo.Cif cif = c0033do.f6352do;
                                if (z2) {
                                    ConstraintHelper constraintHelper = (ConstraintHelper) childAt;
                                    cif.f6378do = Arrays.copyOf(constraintHelper.f6239do, constraintHelper.f6241for);
                                    if (childAt instanceof Barrier) {
                                        Barrier barrier = (Barrier) childAt;
                                        N4 n4 = barrier.f6232do;
                                        cif.f6418try = n4.f2299new;
                                        cif.d = barrier.f6233new;
                                        cif.e = n4.f2301switch;
                                    }
                                }
                                cif.f6393if = true;
                            }
                            Cdo.Cnew cnew = c0033do.f6353do;
                            if (!cnew.f6423do) {
                                cnew.f6422do = childAt.getVisibility();
                                cnew.f6421do = childAt.getAlpha();
                                cnew.f6423do = true;
                            }
                            Cdo.Ctry ctry = c0033do.f6354do;
                            if (!ctry.f6431do) {
                                ctry.f6431do = true;
                                ctry.f6430do = childAt.getRotation();
                                ctry.f6435if = childAt.getRotationX();
                                ctry.f6433for = childAt.getRotationY();
                                ctry.f6437new = childAt.getScaleX();
                                ctry.f6439try = childAt.getScaleY();
                                float pivotX = childAt.getPivotX();
                                float pivotY = childAt.getPivotY();
                                if (pivotX != 0.0d || pivotY != 0.0d) {
                                    ctry.f6428case = pivotX;
                                    ctry.f6432else = pivotY;
                                }
                                ctry.f6434goto = childAt.getTranslationX();
                                ctry.f6438this = childAt.getTranslationY();
                                ctry.f6427break = childAt.getTranslationZ();
                                if (ctry.f6436if) {
                                    ctry.f6429catch = childAt.getElevation();
                                }
                            }
                        }
                    }
                }
            }
            if (m3612if != null) {
                m3612if.m3651if(this);
            }
            this.f6059break = this.f6064catch;
        }
        m3591throws();
        Ccase ccase = this.f6074do;
        if (ccase != null) {
            int i8 = ccase.f6115do;
            MotionLayout motionLayout = MotionLayout.this;
            if (i8 != -1 || ccase.f6118if != -1) {
                if (i8 == -1) {
                    motionLayout.m3577continue(ccase.f6118if);
                } else {
                    int i9 = ccase.f6118if;
                    if (i9 == -1) {
                        motionLayout.m3581finally(2);
                        motionLayout.f6064catch = i8;
                        motionLayout.f6059break = -1;
                        motionLayout.f6065class = -1;
                        C0093Aa c0093Aa = ((ConstraintLayout) motionLayout).f6244do;
                        if (c0093Aa != null) {
                            float f = -1;
                            int i10 = c0093Aa.f92do;
                            SparseArray<C0093Aa.Cdo> sparseArray2 = c0093Aa.f93do;
                            ConstraintLayout constraintLayout = c0093Aa.f94do;
                            if (i10 == i8) {
                                C0093Aa.Cdo valueAt2 = i8 == -1 ? sparseArray2.valueAt(0) : sparseArray2.get(i10);
                                int i11 = c0093Aa.f95if;
                                if (i11 == -1 || !valueAt2.f99do.get(i11).m77do(f, f)) {
                                    while (true) {
                                        ArrayList<C0093Aa.Cif> arrayList = valueAt2.f99do;
                                        if (i2 >= arrayList.size()) {
                                            i2 = -1;
                                            break;
                                        } else if (arrayList.get(i2).m77do(f, f)) {
                                            break;
                                        } else {
                                            i2++;
                                        }
                                    }
                                    if (c0093Aa.f95if != i2) {
                                        ArrayList<C0093Aa.Cif> arrayList2 = valueAt2.f99do;
                                        androidx.constraintlayout.widget.Cdo cdo3 = i2 == -1 ? null : arrayList2.get(i2).f103do;
                                        if (i2 != -1) {
                                            int i12 = arrayList2.get(i2).f102do;
                                        }
                                        if (cdo3 != null) {
                                            c0093Aa.f95if = i2;
                                            cdo3.m3651if(constraintLayout);
                                        }
                                    }
                                }
                            } else {
                                c0093Aa.f92do = i8;
                                C0093Aa.Cdo cdo4 = sparseArray2.get(i8);
                                while (true) {
                                    ArrayList<C0093Aa.Cif> arrayList3 = cdo4.f99do;
                                    if (i2 >= arrayList3.size()) {
                                        i2 = -1;
                                        break;
                                    } else if (arrayList3.get(i2).m77do(f, f)) {
                                        break;
                                    } else {
                                        i2++;
                                    }
                                }
                                ArrayList<C0093Aa.Cif> arrayList4 = cdo4.f99do;
                                androidx.constraintlayout.widget.Cdo cdo5 = i2 == -1 ? cdo4.f98do : arrayList4.get(i2).f103do;
                                if (i2 != -1) {
                                    int i13 = arrayList4.get(i2).f102do;
                                }
                                if (cdo5 != null) {
                                    c0093Aa.f95if = i2;
                                    cdo5.m3651if(constraintLayout);
                                }
                            }
                        } else {
                            androidx.constraintlayout.motion.widget.Cdo cdo6 = motionLayout.f6078do;
                            if (cdo6 != null) {
                                cdo6.m3612if(i8).m3651if(motionLayout);
                            }
                        }
                    } else {
                        motionLayout.m3584package(i8, i9);
                    }
                }
                motionLayout.m3581finally(2);
            }
            if (Float.isNaN(ccase.f6117if)) {
                if (Float.isNaN(ccase.f6114do)) {
                    return;
                }
                motionLayout.m3580extends(ccase.f6114do);
                return;
            }
            float f2 = ccase.f6114do;
            float f3 = ccase.f6117if;
            if (motionLayout.isAttachedToWindow()) {
                motionLayout.m3580extends(f2);
                motionLayout.m3581finally(3);
                motionLayout.f6068do = f3;
                motionLayout.m3590throw(1.0f);
            } else {
                if (motionLayout.f6074do == null) {
                    motionLayout.f6074do = motionLayout.new Ccase();
                }
                Ccase ccase2 = motionLayout.f6074do;
                ccase2.f6114do = f2;
                ccase2.f6117if = f3;
            }
            ccase.f6114do = Float.NaN;
            ccase.f6117if = Float.NaN;
            ccase.f6115do = -1;
            ccase.f6118if = -1;
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        Cdo.C0031do c0031do;
        C0743bI c0743bI;
        int i;
        RectF m4826do;
        androidx.constraintlayout.motion.widget.Cdo cdo = this.f6078do;
        if (cdo != null && this.f6094if && (c0031do = cdo.f6154do) != null && (!c0031do.f6178if) && (c0743bI = c0031do.f6169do) != null && ((motionEvent.getAction() != 0 || (m4826do = c0743bI.m4826do(this, new RectF())) == null || m4826do.contains(motionEvent.getX(), motionEvent.getY())) && (i = c0743bI.f8384try) != -1)) {
            View view = this.f6072do;
            if (view == null || view.getId() != i) {
                this.f6072do = findViewById(i);
            }
            if (this.f6072do != null) {
                RectF rectF = this.f6071do;
                rectF.set(r0.getLeft(), this.f6072do.getTop(), this.f6072do.getRight(), this.f6072do.getBottom());
                if (rectF.contains(motionEvent.getX(), motionEvent.getY()) && !m3588static(0.0f, 0.0f, this.f6072do, motionEvent)) {
                    return onTouchEvent(motionEvent);
                }
            }
        }
        return false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f6107this = true;
        try {
            if (this.f6078do == null) {
                super.onLayout(z, i, i2, i3, i4);
                return;
            }
            int i5 = i3 - i;
            int i6 = i4 - i2;
            if (this.f6108throw != i5 || this.f6113while != i6) {
                this.f6077do.m3604try();
                invalidate();
                m3582import(true);
            }
            this.f6108throw = i5;
            this.f6113while = i6;
        } finally {
            this.f6107this = false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0053, code lost:
    
        if (((r6 == r9.f6138do && r7 == r9.f6142if) ? false : true) != false) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00ee  */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r18, int r19) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        C0743bI c0743bI;
        androidx.constraintlayout.motion.widget.Cdo cdo = this.f6078do;
        if (cdo != null) {
            boolean m3634case = m3634case();
            cdo.f6163if = m3634case;
            Cdo.C0031do c0031do = cdo.f6154do;
            if (c0031do == null || (c0743bI = c0031do.f6169do) == null) {
                return;
            }
            c0743bI.m4827if(m3634case);
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        Ctry ctry;
        C0743bI c0743bI;
        char c;
        char c2;
        int i;
        char c3;
        char c4;
        char c5;
        char c6;
        RectF rectF;
        View findViewById;
        MotionEvent motionEvent2;
        Cdo.C0031do c0031do;
        int i2;
        Iterator it;
        C0743bI c0743bI2;
        androidx.constraintlayout.motion.widget.Cdo cdo = this.f6078do;
        if (cdo == null || !this.f6094if || !cdo.m3607catch()) {
            return super.onTouchEvent(motionEvent);
        }
        androidx.constraintlayout.motion.widget.Cdo cdo2 = this.f6078do;
        if (cdo2.f6154do != null && !(!r3.f6178if)) {
            return super.onTouchEvent(motionEvent);
        }
        int i3 = this.f6064catch;
        RectF rectF2 = new RectF();
        Ctry ctry2 = cdo2.f6152do;
        MotionLayout motionLayout = cdo2.f6153do;
        if (ctry2 == null) {
            motionLayout.getClass();
            Ctry ctry3 = Ctry.f6145do;
            ctry3.f6146do = VelocityTracker.obtain();
            cdo2.f6152do = ctry3;
        }
        VelocityTracker velocityTracker = cdo2.f6152do.f6146do;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        if (i3 != -1) {
            int action = motionEvent.getAction();
            if (action == 0) {
                cdo2.f6147do = motionEvent.getRawX();
                cdo2.f6159if = motionEvent.getRawY();
                cdo2.f6151do = motionEvent;
                C0743bI c0743bI3 = cdo2.f6154do.f6169do;
                if (c0743bI3 == null) {
                    return true;
                }
                int i4 = c0743bI3.f8366case;
                if (i4 == -1 || (findViewById = motionLayout.findViewById(i4)) == null) {
                    rectF = null;
                } else {
                    rectF2.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
                    rectF = rectF2;
                }
                if (rectF != null && !rectF.contains(cdo2.f6151do.getX(), cdo2.f6151do.getY())) {
                    cdo2.f6151do = null;
                    return true;
                }
                RectF m4826do = cdo2.f6154do.f6169do.m4826do(motionLayout, rectF2);
                if (m4826do == null || m4826do.contains(cdo2.f6151do.getX(), cdo2.f6151do.getY())) {
                    cdo2.f6158do = false;
                } else {
                    cdo2.f6158do = true;
                }
                C0743bI c0743bI4 = cdo2.f6154do.f6169do;
                float f = cdo2.f6147do;
                float f2 = cdo2.f6159if;
                c0743bI4.f8383try = f;
                c0743bI4.f8365case = f2;
                return true;
            }
            if (action == 2) {
                float rawY = motionEvent.getRawY() - cdo2.f6159if;
                float rawX = motionEvent.getRawX() - cdo2.f6147do;
                if ((rawX == 0.0d && rawY == 0.0d) || (motionEvent2 = cdo2.f6151do) == null) {
                    return true;
                }
                if (i3 != -1) {
                    C2917iF c2917iF = cdo2.f6155do;
                    if (c2917iF == null || (i2 = c2917iF.m6887do(i3)) == -1) {
                        i2 = i3;
                    }
                    ArrayList arrayList = new ArrayList();
                    Iterator<Cdo.C0031do> it2 = cdo2.f6156do.iterator();
                    while (it2.hasNext()) {
                        Cdo.C0031do next = it2.next();
                        if (next.f6174for == i2 || next.f6176if == i2) {
                            arrayList.add(next);
                        }
                    }
                    RectF rectF3 = new RectF();
                    Iterator it3 = arrayList.iterator();
                    float f3 = 0.0f;
                    c0031do = null;
                    while (it3.hasNext()) {
                        Cdo.C0031do c0031do2 = (Cdo.C0031do) it3.next();
                        if (c0031do2.f6178if || (c0743bI2 = c0031do2.f6169do) == null) {
                            it = it3;
                        } else {
                            c0743bI2.m4827if(cdo2.f6163if);
                            RectF m4826do2 = c0031do2.f6169do.m4826do(motionLayout, rectF3);
                            if (m4826do2 != null) {
                                it = it3;
                                if (!m4826do2.contains(motionEvent2.getX(), motionEvent2.getY())) {
                                }
                            } else {
                                it = it3;
                            }
                            RectF m4826do3 = c0031do2.f6169do.m4826do(motionLayout, rectF3);
                            if (m4826do3 == null || m4826do3.contains(motionEvent2.getX(), motionEvent2.getY())) {
                                C0743bI c0743bI5 = c0031do2.f6169do;
                                float f4 = ((c0743bI5.f8380new * rawY) + (c0743bI5.f8374for * rawX)) * (c0031do2.f6176if == i3 ? -1.0f : 1.1f);
                                if (f4 > f3) {
                                    f3 = f4;
                                    c0031do = c0031do2;
                                }
                            }
                        }
                        it3 = it;
                    }
                } else {
                    c0031do = cdo2.f6154do;
                }
                if (c0031do != null) {
                    m3585private(c0031do);
                    RectF m4826do4 = cdo2.f6154do.f6169do.m4826do(motionLayout, rectF2);
                    cdo2.f6158do = (m4826do4 == null || m4826do4.contains(cdo2.f6151do.getX(), cdo2.f6151do.getY())) ? false : true;
                    C0743bI c0743bI6 = cdo2.f6154do.f6169do;
                    float f5 = cdo2.f6147do;
                    float f6 = cdo2.f6159if;
                    c0743bI6.f8383try = f5;
                    c0743bI6.f8365case = f6;
                    c0743bI6.f8370do = false;
                }
            }
        }
        Cdo.C0031do c0031do3 = cdo2.f6154do;
        if (c0031do3 != null && (c0743bI = c0031do3.f6169do) != null && !cdo2.f6158do) {
            Ctry ctry4 = cdo2.f6152do;
            VelocityTracker velocityTracker2 = ctry4.f6146do;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
            }
            int action2 = motionEvent.getAction();
            if (action2 != 0) {
                MotionLayout motionLayout2 = c0743bI.f8369do;
                float[] fArr = c0743bI.f8371do;
                if (action2 == 1) {
                    c0743bI.f8370do = false;
                    ctry4.f6146do.computeCurrentVelocity(1000);
                    float xVelocity = ctry4.f6146do.getXVelocity();
                    float yVelocity = ctry4.f6146do.getYVelocity();
                    float f7 = motionLayout2.f6097new;
                    int i5 = c0743bI.f8381new;
                    if (i5 != -1) {
                        motionLayout2.m3587return(i5, f7, c0743bI.f8377if, c0743bI.f8367do, c0743bI.f8371do);
                        c2 = 0;
                        c = 1;
                    } else {
                        float min = Math.min(motionLayout2.getWidth(), motionLayout2.getHeight());
                        c = 1;
                        fArr[1] = c0743bI.f8380new * min;
                        c2 = 0;
                        fArr[0] = min * c0743bI.f8374for;
                    }
                    float f8 = c0743bI.f8374for != 0.0f ? xVelocity / fArr[c2] : yVelocity / fArr[c];
                    float f9 = !Float.isNaN(f8) ? (f8 / 3.0f) + f7 : f7;
                    if (f9 != 0.0f && f9 != 1.0f && (i = c0743bI.f8375for) != 3) {
                        motionLayout2.m3576abstract(((double) f9) < 0.5d ? 0.0f : 1.0f, f8, i);
                        if (0.0f >= f7 || 1.0f <= f7) {
                            motionLayout2.m3581finally(4);
                        }
                    } else if (0.0f >= f9 || 1.0f <= f9) {
                        motionLayout2.m3581finally(4);
                    }
                } else if (action2 == 2) {
                    float rawY2 = motionEvent.getRawY() - c0743bI.f8365case;
                    float rawX2 = motionEvent.getRawX() - c0743bI.f8383try;
                    if (Math.abs((c0743bI.f8380new * rawY2) + (c0743bI.f8374for * rawX2)) > c0743bI.f8364break || c0743bI.f8370do) {
                        float f10 = motionLayout2.f6097new;
                        if (!c0743bI.f8370do) {
                            c0743bI.f8370do = true;
                            motionLayout2.m3580extends(f10);
                        }
                        int i6 = c0743bI.f8381new;
                        if (i6 != -1) {
                            c0743bI.f8369do.m3587return(i6, f10, c0743bI.f8377if, c0743bI.f8367do, c0743bI.f8371do);
                            c4 = 0;
                            c3 = 1;
                        } else {
                            float min2 = Math.min(motionLayout2.getWidth(), motionLayout2.getHeight());
                            c3 = 1;
                            fArr[1] = c0743bI.f8380new * min2;
                            c4 = 0;
                            fArr[0] = min2 * c0743bI.f8374for;
                        }
                        if (Math.abs(((c0743bI.f8380new * fArr[c3]) + (c0743bI.f8374for * fArr[c4])) * c0743bI.f8382this) < 0.01d) {
                            c5 = 0;
                            fArr[0] = 0.01f;
                            c6 = 1;
                            fArr[1] = 0.01f;
                        } else {
                            c5 = 0;
                            c6 = 1;
                        }
                        float max = Math.max(Math.min(f10 + (c0743bI.f8374for != 0.0f ? rawX2 / fArr[c5] : rawY2 / fArr[c6]), 1.0f), 0.0f);
                        if (max != motionLayout2.f6097new) {
                            motionLayout2.m3580extends(max);
                            ctry4.f6146do.computeCurrentVelocity(1000);
                            motionLayout2.f6068do = c0743bI.f8374for != 0.0f ? ctry4.f6146do.getXVelocity() / fArr[0] : ctry4.f6146do.getYVelocity() / fArr[1];
                        } else {
                            motionLayout2.f6068do = 0.0f;
                        }
                        c0743bI.f8383try = motionEvent.getRawX();
                        c0743bI.f8365case = motionEvent.getRawY();
                    }
                }
            } else {
                c0743bI.f8383try = motionEvent.getRawX();
                c0743bI.f8365case = motionEvent.getRawY();
                c0743bI.f8370do = false;
            }
        }
        cdo2.f6147do = motionEvent.getRawX();
        cdo2.f6159if = motionEvent.getRawY();
        if (motionEvent.getAction() != 1 || (ctry = cdo2.f6152do) == null) {
            return true;
        }
        ctry.f6146do.recycle();
        ctry.f6146do = null;
        cdo2.f6152do = null;
        int i7 = this.f6064catch;
        if (i7 == -1) {
            return true;
        }
        cdo2.m3608do(this, i7);
        return true;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.f6099new == null) {
                this.f6099new = new ArrayList<>();
            }
            this.f6099new.add(motionHelper);
            if (motionHelper.f6055do) {
                if (this.f6092if == null) {
                    this.f6092if = new ArrayList<>();
                }
                this.f6092if.add(motionHelper);
            }
            if (motionHelper.f6056if) {
                if (this.f6086for == null) {
                    this.f6086for = new ArrayList<>();
                }
                this.f6086for.add(motionHelper);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList<MotionHelper> arrayList = this.f6092if;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList<MotionHelper> arrayList2 = this.f6086for;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    /* renamed from: package, reason: not valid java name */
    public final void m3584package(int i, int i2) {
        if (!isAttachedToWindow()) {
            if (this.f6074do == null) {
                this.f6074do = new Ccase();
            }
            Ccase ccase = this.f6074do;
            ccase.f6115do = i;
            ccase.f6118if = i2;
            return;
        }
        androidx.constraintlayout.motion.widget.Cdo cdo = this.f6078do;
        if (cdo != null) {
            this.f6059break = i;
            this.f6065class = i2;
            cdo.m3605break(i, i2);
            androidx.constraintlayout.widget.Cdo m3612if = this.f6078do.m3612if(i);
            androidx.constraintlayout.widget.Cdo m3612if2 = this.f6078do.m3612if(i2);
            Cnew cnew = this.f6077do;
            cnew.m3603new(m3612if, m3612if2);
            cnew.m3604try();
            invalidate();
            this.f6097new = 0.0f;
            m3590throw(0.0f);
        }
    }

    /* renamed from: private, reason: not valid java name */
    public final void m3585private(Cdo.C0031do c0031do) {
        C0743bI c0743bI;
        androidx.constraintlayout.motion.widget.Cdo cdo = this.f6078do;
        cdo.f6154do = c0031do;
        if (c0031do != null && (c0743bI = c0031do.f6169do) != null) {
            c0743bI.m4827if(cdo.f6163if);
        }
        m3581finally(2);
        int i = this.f6064catch;
        Cdo.C0031do c0031do2 = this.f6078do.f6154do;
        if (i == (c0031do2 == null ? -1 : c0031do2.f6176if)) {
            this.f6097new = 1.0f;
            this.f6084for = 1.0f;
            this.f6110try = 1.0f;
        } else {
            this.f6097new = 0.0f;
            this.f6084for = 0.0f;
            this.f6110try = 0.0f;
        }
        this.f6091if = (c0031do.f6164break & 1) != 0 ? -1L : System.nanoTime();
        int m3606case = this.f6078do.m3606case();
        androidx.constraintlayout.motion.widget.Cdo cdo2 = this.f6078do;
        Cdo.C0031do c0031do3 = cdo2.f6154do;
        int i2 = c0031do3 != null ? c0031do3.f6176if : -1;
        if (m3606case == this.f6059break && i2 == this.f6065class) {
            return;
        }
        this.f6059break = m3606case;
        this.f6065class = i2;
        cdo2.m3605break(m3606case, i2);
        androidx.constraintlayout.widget.Cdo m3612if = this.f6078do.m3612if(this.f6059break);
        androidx.constraintlayout.widget.Cdo m3612if2 = this.f6078do.m3612if(this.f6065class);
        Cnew cnew = this.f6077do;
        cnew.m3603new(m3612if, m3612if2);
        int i3 = this.f6059break;
        int i4 = this.f6065class;
        cnew.f6138do = i3;
        cnew.f6142if = i4;
        cnew.m3604try();
        cnew.m3604try();
        invalidate();
    }

    /* renamed from: public, reason: not valid java name */
    public final void m3586public() {
        ArrayList<Celse> arrayList = this.f6099new;
        if (arrayList != null && !arrayList.isEmpty() && this.f6096native == -1) {
            this.f6096native = this.f6064catch;
            ArrayList<Integer> arrayList2 = this.f6111try;
            int intValue = !arrayList2.isEmpty() ? arrayList2.get(arrayList2.size() - 1).intValue() : -1;
            int i = this.f6064catch;
            if (intValue != i && i != -1) {
                arrayList2.add(Integer.valueOf(i));
            }
        }
        m3578default();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public final void requestLayout() {
        androidx.constraintlayout.motion.widget.Cdo cdo;
        Cdo.C0031do c0031do;
        if (this.f6089goto || this.f6064catch != -1 || (cdo = this.f6078do) == null || (c0031do = cdo.f6154do) == null || c0031do.f6180this != 0) {
            super.requestLayout();
        }
    }

    /* renamed from: return, reason: not valid java name */
    public final void m3587return(int i, float f, float f2, float f3, float[] fArr) {
        View m3635for = m3635for(i);
        C4004xt c4004xt = this.f6093if.get(m3635for);
        if (c4004xt != null) {
            c4004xt.m8675if(f, f2, f3, fArr);
            m3635for.getY();
        } else {
            if (m3635for == null) {
                return;
            }
            m3635for.getContext().getResources().getResourceName(i);
        }
    }

    /* renamed from: static, reason: not valid java name */
    public final boolean m3588static(float f, float f2, View view, MotionEvent motionEvent) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (m3588static(view.getLeft() + f, view.getTop() + f2, viewGroup.getChildAt(i), motionEvent)) {
                    return true;
                }
            }
        }
        RectF rectF = this.f6071do;
        rectF.set(view.getLeft() + f, view.getTop() + f2, f + view.getRight(), f2 + view.getBottom());
        if (motionEvent.getAction() == 0) {
            if (rectF.contains(motionEvent.getX(), motionEvent.getY()) && view.onTouchEvent(motionEvent)) {
                return true;
            }
        } else if (view.onTouchEvent(motionEvent)) {
            return true;
        }
        return false;
    }

    @Override // defpackage.InterfaceC3710su
    /* renamed from: super */
    public final void mo3385super(View view, View view2, int i, int i2) {
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m3589switch(AttributeSet attributeSet) {
        androidx.constraintlayout.motion.widget.Cdo cdo;
        androidx.constraintlayout.motion.widget.Cdo cdo2;
        f6057catch = isInEditMode();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, O2.L);
            int indexCount = obtainStyledAttributes.getIndexCount();
            boolean z = true;
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 2) {
                    this.f6078do = new androidx.constraintlayout.motion.widget.Cdo(getContext(), this, obtainStyledAttributes.getResourceId(index, -1));
                } else if (index == 1) {
                    this.f6064catch = obtainStyledAttributes.getResourceId(index, -1);
                } else if (index == 4) {
                    this.f6110try = obtainStyledAttributes.getFloat(index, 0.0f);
                    this.f6100new = true;
                } else if (index == 0) {
                    z = obtainStyledAttributes.getBoolean(index, z);
                } else if (index == 5) {
                    if (this.f6104super == 0) {
                        this.f6104super = obtainStyledAttributes.getBoolean(index, false) ? 2 : 0;
                    }
                } else if (index == 3) {
                    this.f6104super = obtainStyledAttributes.getInt(index, 0);
                }
            }
            obtainStyledAttributes.recycle();
            if (!z) {
                this.f6078do = null;
            }
        }
        if (this.f6104super != 0 && (cdo2 = this.f6078do) != null) {
            int m3606case = cdo2.m3606case();
            androidx.constraintlayout.motion.widget.Cdo cdo3 = this.f6078do;
            androidx.constraintlayout.widget.Cdo m3612if = cdo3.m3612if(cdo3.m3606case());
            C0701ad.m3139if(getContext(), m3606case);
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                int id = childAt.getId();
                HashMap<Integer, Cdo.C0033do> hashMap = m3612if.f6349if;
                if ((hashMap.containsKey(Integer.valueOf(id)) ? hashMap.get(Integer.valueOf(id)) : null) == null) {
                    C0701ad.m3138for(childAt);
                }
            }
            Integer[] numArr = (Integer[]) m3612if.f6349if.keySet().toArray(new Integer[0]);
            int length = numArr.length;
            int[] iArr = new int[length];
            for (int i3 = 0; i3 < length; i3++) {
                iArr[i3] = numArr[i3].intValue();
            }
            for (int i4 = 0; i4 < length; i4++) {
                int i5 = iArr[i4];
                C0701ad.m3139if(getContext(), i5);
                findViewById(iArr[i4]);
                int i6 = m3612if.m3648else(i5).f6352do.f6391if;
                int i7 = m3612if.m3648else(i5).f6352do.f6375do;
            }
            SparseIntArray sparseIntArray = new SparseIntArray();
            SparseIntArray sparseIntArray2 = new SparseIntArray();
            Iterator<Cdo.C0031do> it = this.f6078do.f6156do.iterator();
            while (it.hasNext()) {
                Cdo.C0031do next = it.next();
                Cdo.C0031do c0031do = this.f6078do.f6154do;
                Context context = getContext();
                if (next.f6174for != -1) {
                    context.getResources().getResourceEntryName(next.f6174for);
                }
                if (next.f6176if != -1) {
                    context.getResources().getResourceEntryName(next.f6176if);
                }
                int i8 = next.f6174for;
                int i9 = next.f6176if;
                C0701ad.m3139if(getContext(), i8);
                C0701ad.m3139if(getContext(), i9);
                sparseIntArray.get(i8);
                sparseIntArray2.get(i9);
                sparseIntArray.put(i8, i9);
                sparseIntArray2.put(i9, i8);
                this.f6078do.m3612if(i8);
                this.f6078do.m3612if(i9);
            }
        }
        if (this.f6064catch != -1 || (cdo = this.f6078do) == null) {
            return;
        }
        this.f6064catch = cdo.m3606case();
        this.f6059break = this.f6078do.m3606case();
        Cdo.C0031do c0031do2 = this.f6078do.f6154do;
        this.f6065class = c0031do2 != null ? c0031do2.f6176if : -1;
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m3590throw(float f) {
        androidx.constraintlayout.motion.widget.Cdo cdo = this.f6078do;
        if (cdo == null) {
            return;
        }
        float f2 = this.f6097new;
        float f3 = this.f6084for;
        if (f2 != f3 && this.f6087for) {
            this.f6097new = f3;
        }
        float f4 = this.f6097new;
        if (f4 == f) {
            return;
        }
        this.f6112try = false;
        this.f6110try = f;
        this.f6090if = (cdo.f6154do != null ? r3.f6165case : cdo.f6148do) / 1000.0f;
        m3580extends(f);
        androidx.constraintlayout.motion.widget.Cdo cdo2 = this.f6078do;
        Cdo.C0031do c0031do = cdo2.f6154do;
        int i = c0031do.f6179new;
        this.f6073do = i != -2 ? i != -1 ? i != 0 ? i != 1 ? i != 2 ? i != 4 ? i != 5 ? null : new BounceInterpolator() : new AnticipateInterpolator() : new DecelerateInterpolator() : new AccelerateInterpolator() : new AccelerateDecelerateInterpolator() : new InterpolatorC0134Bt(C3754tf.m8290for(c0031do.f6170do)) : AnimationUtils.loadInterpolator(cdo2.f6153do.getContext(), cdo2.f6154do.f6181try);
        this.f6087for = false;
        this.f6069do = System.nanoTime();
        this.f6100new = true;
        this.f6084for = f4;
        this.f6097new = f4;
        invalidate();
    }

    /* renamed from: throws, reason: not valid java name */
    public final void m3591throws() {
        Cdo.C0031do c0031do;
        C0743bI c0743bI;
        View findViewById;
        View findViewById2;
        androidx.constraintlayout.motion.widget.Cdo cdo = this.f6078do;
        if (cdo == null) {
            return;
        }
        if (cdo.m3608do(this, this.f6064catch)) {
            requestLayout();
            return;
        }
        int i = this.f6064catch;
        KeyEvent.Callback callback = null;
        if (i != -1) {
            androidx.constraintlayout.motion.widget.Cdo cdo2 = this.f6078do;
            ArrayList<Cdo.C0031do> arrayList = cdo2.f6156do;
            Iterator<Cdo.C0031do> it = arrayList.iterator();
            while (it.hasNext()) {
                Cdo.C0031do next = it.next();
                if (next.f6177if.size() > 0) {
                    Iterator<Cdo.C0031do.ViewOnClickListenerC0032do> it2 = next.f6177if.iterator();
                    while (it2.hasNext()) {
                        int i2 = it2.next().f6183for;
                        if (i2 != -1 && (findViewById2 = findViewById(i2)) != null) {
                            findViewById2.setOnClickListener(null);
                        }
                    }
                }
            }
            ArrayList<Cdo.C0031do> arrayList2 = cdo2.f6162if;
            Iterator<Cdo.C0031do> it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                Cdo.C0031do next2 = it3.next();
                if (next2.f6177if.size() > 0) {
                    Iterator<Cdo.C0031do.ViewOnClickListenerC0032do> it4 = next2.f6177if.iterator();
                    while (it4.hasNext()) {
                        int i3 = it4.next().f6183for;
                        if (i3 != -1 && (findViewById = findViewById(i3)) != null) {
                            findViewById.setOnClickListener(null);
                        }
                    }
                }
            }
            Iterator<Cdo.C0031do> it5 = arrayList.iterator();
            while (it5.hasNext()) {
                Cdo.C0031do next3 = it5.next();
                if (next3.f6177if.size() > 0) {
                    Iterator<Cdo.C0031do.ViewOnClickListenerC0032do> it6 = next3.f6177if.iterator();
                    while (it6.hasNext()) {
                        it6.next().m3616do(this, i, next3);
                    }
                }
            }
            Iterator<Cdo.C0031do> it7 = arrayList2.iterator();
            while (it7.hasNext()) {
                Cdo.C0031do next4 = it7.next();
                if (next4.f6177if.size() > 0) {
                    Iterator<Cdo.C0031do.ViewOnClickListenerC0032do> it8 = next4.f6177if.iterator();
                    while (it8.hasNext()) {
                        it8.next().m3616do(this, i, next4);
                    }
                }
            }
        }
        if (!this.f6078do.m3607catch() || (c0031do = this.f6078do.f6154do) == null || (c0743bI = c0031do.f6169do) == null) {
            return;
        }
        int i4 = c0743bI.f8381new;
        if (i4 != -1) {
            MotionLayout motionLayout = c0743bI.f8369do;
            KeyEvent.Callback findViewById3 = motionLayout.findViewById(i4);
            if (findViewById3 == null) {
                C0701ad.m3139if(motionLayout.getContext(), c0743bI.f8381new);
            }
            callback = findViewById3;
        }
        if (callback instanceof NestedScrollView) {
            NestedScrollView nestedScrollView = (NestedScrollView) callback;
            nestedScrollView.setOnTouchListener(new ZH());
            nestedScrollView.f6546do = new C0683aI();
        }
    }

    @Override // android.view.View
    public final String toString() {
        Context context = getContext();
        return C0701ad.m3139if(context, this.f6059break) + "->" + C0701ad.m3139if(context, this.f6065class) + " (pos:" + this.f6097new + " Dpos/Dt:" + this.f6068do;
    }

    @Override // defpackage.InterfaceC3710su
    /* renamed from: while */
    public final boolean mo3389while(View view, View view2, int i, int i2) {
        Cdo.C0031do c0031do;
        C0743bI c0743bI;
        androidx.constraintlayout.motion.widget.Cdo cdo = this.f6078do;
        return (cdo == null || (c0031do = cdo.f6154do) == null || (c0743bI = c0031do.f6169do) == null || (c0743bI.f8373else & 2) != 0) ? false : true;
    }

    public MotionLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6068do = 0.0f;
        this.f6059break = -1;
        this.f6064catch = -1;
        this.f6065class = -1;
        this.f6066const = 0;
        this.f6083final = 0;
        this.f6094if = true;
        this.f6093if = new HashMap<>();
        this.f6069do = 0L;
        this.f6090if = 1.0f;
        this.f6084for = 0.0f;
        this.f6097new = 0.0f;
        this.f6110try = 0.0f;
        this.f6100new = false;
        this.f6104super = 0;
        this.f6112try = false;
        this.f6079do = new C3379nF();
        this.f6076do = new Cif();
        this.f6062case = false;
        this.f6081else = false;
        this.f6092if = null;
        this.f6086for = null;
        this.f6099new = null;
        this.f6095import = 0;
        this.f6098new = -1L;
        this.f6106this = 0.0f;
        this.f6096native = 0;
        this.f6058break = 0.0f;
        this.f6089goto = false;
        this.f6070do = new C0174Dp();
        this.f6107this = false;
        this.f6082extends = 1;
        this.f6077do = new Cnew();
        this.f6060break = false;
        this.f6071do = new RectF();
        this.f6072do = null;
        this.f6111try = new ArrayList<>();
        m3589switch(attributeSet);
    }
}
