package com.db.chart.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.RelativeLayout;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC3606r7;
import defpackage.AbstractC3665s7;
import defpackage.C2667e1;
import defpackage.C3645ro;
import defpackage.Cpublic;
import defpackage.Gy;
import defpackage.InterfaceC0465Qv;
import defpackage.J4;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class ChartView extends RelativeLayout {

    /* renamed from: break, reason: not valid java name */
    public int f9141break;

    /* renamed from: case, reason: not valid java name */
    public int f9142case;

    /* renamed from: catch, reason: not valid java name */
    public int f9143catch;

    /* renamed from: class, reason: not valid java name */
    public int f9144class;

    /* renamed from: do, reason: not valid java name */
    public float f9145do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InterfaceC0465Qv f9146do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View.OnClickListener f9147do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f9148do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f9149do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f9150do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final com.db.chart.view.Cif f9151do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C2667e1 f9152do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ArrayList<AbstractC3665s7> f9153do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9154do;

    /* renamed from: else, reason: not valid java name */
    public int f9155else;

    /* renamed from: for, reason: not valid java name */
    public float f9156for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f9157for;

    /* renamed from: goto, reason: not valid java name */
    public int f9158goto;

    /* renamed from: if, reason: not valid java name */
    public float f9159if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ArrayList<ArrayList<Region>> f9160if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f9161if;

    /* renamed from: new, reason: not valid java name */
    public int f9162new;

    /* renamed from: this, reason: not valid java name */
    public int f9163this;

    /* renamed from: try, reason: not valid java name */
    public int f9164try;

    /* renamed from: com.db.chart.view.ChartView$do, reason: invalid class name */
    public class Cdo implements ViewTreeObserver.OnPreDrawListener {
        public Cdo() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        @SuppressLint({"NewApi"})
        public final boolean onPreDraw() {
            float m5241try;
            float m5241try2;
            char c;
            ChartView chartView = ChartView.this;
            chartView.getViewTreeObserver().removeOnPreDrawListener(this);
            Cif.m5242do(chartView.f9149do);
            int paddingTop = chartView.getPaddingTop();
            Cfor cfor = chartView.f9150do;
            int i = 2;
            chartView.f9162new = (cfor.m5245if() / 2) + paddingTop;
            chartView.f9164try = chartView.getMeasuredHeight() - chartView.getPaddingBottom();
            chartView.f9142case = chartView.getPaddingLeft();
            int measuredWidth = chartView.getMeasuredWidth() - chartView.getPaddingRight();
            chartView.f9155else = measuredWidth;
            chartView.f9145do = chartView.f9164try;
            chartView.f9159if = chartView.f9142case;
            chartView.f9156for = measuredWidth;
            cfor.m5244for();
            com.db.chart.view.Cif cif = chartView.f9151do;
            cif.m5244for();
            boolean z = ((com.db.chart.view.Cdo) cfor).f9185do;
            float f = 0.0f;
            ChartView chartView2 = ((com.db.chart.view.Cdo) cfor).f9182do;
            float f2 = (z ? (chartView2.f9149do.f9166do / 2.0f) + 0.0f : 0.0f) + chartView2.f9142case;
            Cif cif2 = chartView2.f9149do;
            if (z) {
                f2 += cif2.f9166do / 2.0f;
            }
            if (((com.db.chart.view.Cdo) cfor).f9188for == 2) {
                Iterator<String> it = ((com.db.chart.view.Cdo) cfor).f9184do.iterator();
                float f3 = 0.0f;
                while (it.hasNext()) {
                    float measureText = cif2.f9170for.measureText(it.next());
                    if (measureText > f3) {
                        f3 = measureText;
                    }
                }
                f2 += f3 + ((com.db.chart.view.Cdo) cfor).f9181do;
            }
            if (f2 > chartView2.f9159if) {
                chartView2.f9159if = f2;
            }
            char c2 = 1;
            float m5245if = (((com.db.chart.view.Cdo) cfor).f9188for == 1 || 0.0f >= ((float) (cfor.m5245if() / 2))) ? chartView2.f9164try : chartView2.f9164try - (cfor.m5245if() / 2);
            if (m5245if < chartView2.f9145do) {
                chartView2.f9145do = m5245if;
            }
            int i2 = ((com.db.chart.view.Cdo) cif).f9188for;
            char c3 = 0;
            ChartView chartView3 = ((com.db.chart.view.Cdo) cif).f9182do;
            float measureText2 = i2 != 1 ? chartView3.f9149do.f9170for.measureText(((com.db.chart.view.Cdo) cif).f9184do.get(0)) / 2.0f : 0.0f;
            if (measureText2 > chartView3.f9159if) {
                chartView3.f9159if = measureText2;
            }
            int i3 = ((com.db.chart.view.Cdo) cif).f9191if;
            Cif cif3 = chartView3.f9149do;
            float measureText3 = i3 > 0 ? cif3.f9170for.measureText(((com.db.chart.view.Cdo) cif).f9184do.get(i3 - 1)) : 0.0f;
            int i4 = ((com.db.chart.view.Cdo) cif).f9188for;
            if (i4 != 1) {
                float f4 = ((com.db.chart.view.Cdo) cif).f9194new + 0.0f;
                float f5 = measureText3 / 2.0f;
                if (f4 < f5) {
                    f = f5 - f4;
                }
            }
            float f6 = chartView3.f9155else - f;
            if (f6 < chartView3.f9156for) {
                chartView3.f9156for = f6;
            }
            float f7 = chartView3.f9164try;
            if (((com.db.chart.view.Cdo) cif).f9185do) {
                f7 -= cif3.f9166do;
            }
            if (i4 == 2) {
                f7 -= cif.m5245if() + ((com.db.chart.view.Cdo) cif).f9181do;
            }
            if (f7 < chartView3.f9145do) {
                chartView3.f9145do = f7;
            }
            cfor.m5246case();
            cif.m5250case();
            int m8055if = chartView.f9153do.get(0).m8055if();
            Iterator<AbstractC3665s7> it2 = chartView.f9153do.iterator();
            while (it2.hasNext()) {
                AbstractC3665s7 next = it2.next();
                for (int i5 = 0; i5 < m8055if; i5++) {
                    AbstractC3606r7 m8054do = next.m8054do(i5);
                    ArrayList<AbstractC3606r7> arrayList = next.f15397do;
                    float m5251else = cif.m5251else(i5, arrayList.get(i5).f15213do);
                    float m5247else = cfor.m5247else(i5, arrayList.get(i5).f15213do);
                    m8054do.f15219if = m5251else;
                    m8054do.f15218for = m5247else;
                }
            }
            chartView.mo5227else(chartView.f9153do);
            chartView.f9160if = chartView.mo5228for(chartView.f9153do);
            C2667e1 c2667e1 = chartView.f9152do;
            if (c2667e1 != null) {
                c2667e1.f12565do.getClass();
                Gy.f1278if = 0;
                ArrayList<AbstractC3665s7> arrayList2 = chartView.f9153do;
                float f8 = c2667e1.f12575if;
                if (f8 != -1.0f) {
                    float f9 = chartView.f9159if;
                    m5241try = Cpublic.m7823for(chartView.f9156for, f9, f8, f9);
                } else {
                    m5241try = chartView.m5241try();
                }
                float f10 = c2667e1.f12573for;
                if (f10 != -1.0f) {
                    float f11 = chartView.f9145do;
                    m5241try2 = f11 - ((f11 - chartView.f9162new) * f10);
                } else {
                    m5241try2 = chartView.m5241try();
                }
                int size = arrayList2.size();
                int m8055if2 = arrayList2.get(0).m8055if();
                c2667e1.f12569do = new float[size];
                ArrayList<float[][]> arrayList3 = new ArrayList<>(size);
                ArrayList<float[][]> arrayList4 = new ArrayList<>(size);
                int i6 = 0;
                while (i6 < size) {
                    c2667e1.f12569do[i6] = arrayList2.get(i6).f15396do;
                    int[] iArr = new int[i];
                    iArr[c2] = i;
                    iArr[c3] = m8055if2;
                    Class cls = Float.TYPE;
                    float[][] fArr = (float[][]) Array.newInstance((Class<?>) cls, iArr);
                    int[] iArr2 = new int[i];
                    iArr2[c2] = i;
                    iArr2[c3] = m8055if2;
                    float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) cls, iArr2);
                    int i7 = 0;
                    while (i7 < m8055if2) {
                        if (c2667e1.f12575if == -1.0f && chartView.f9157for == i) {
                            fArr[i7][c3] = arrayList2.get(i6).m8054do(i7).f15219if;
                        } else {
                            fArr[i7][c3] = m5241try;
                        }
                        if (c2667e1.f12573for == -1.0f) {
                            c = 1;
                            if (chartView.f9157for == 1) {
                                fArr[i7][1] = arrayList2.get(i6).m8054do(i7).f15218for;
                                fArr2[i7][0] = arrayList2.get(i6).m8054do(i7).f15219if;
                                fArr2[i7][1] = arrayList2.get(i6).m8054do(i7).f15218for;
                                i7++;
                                i = 2;
                                c3 = 0;
                            }
                        } else {
                            c = 1;
                        }
                        fArr[i7][c] = m5241try2;
                        fArr2[i7][0] = arrayList2.get(i6).m8054do(i7).f15219if;
                        fArr2[i7][1] = arrayList2.get(i6).m8054do(i7).f15218for;
                        i7++;
                        i = 2;
                        c3 = 0;
                    }
                    arrayList3.add(fArr);
                    arrayList4.add(fArr2);
                    i6++;
                    i = 2;
                    c3 = 0;
                    c2 = 1;
                }
                c2667e1.f12565do.getClass();
                chartView.f9153do = Gy.f1278if == 0 ? c2667e1.m6508if(chartView, arrayList3, arrayList4) : c2667e1.m6508if(chartView, arrayList4, arrayList3);
            }
            chartView.setLayerType(1, null);
            chartView.f9154do = true;
            return true;
        }
    }

    /* renamed from: com.db.chart.view.ChartView$if, reason: invalid class name */
    public class Cif {

        /* renamed from: do, reason: not valid java name */
        public float f9166do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f9167do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Paint f9168do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Typeface f9169do;

        /* renamed from: for, reason: not valid java name */
        public Paint f9170for;

        /* renamed from: if, reason: not valid java name */
        public float f9171if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public int f9172if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public Paint f9173if;

        public Cif(ChartView chartView, TypedArray typedArray) {
            this.f9167do = typedArray.getColor(1, -16777216);
            this.f9166do = typedArray.getDimension(2, chartView.getResources().getDimension(R.dimen.axis_thickness));
            this.f9172if = typedArray.getColor(5, -16777216);
            this.f9171if = typedArray.getDimension(4, chartView.getResources().getDimension(R.dimen.font_size));
            String string = typedArray.getString(11);
            if (string != null) {
                this.f9169do = Typeface.createFromAsset(chartView.getResources().getAssets(), string);
            }
        }

        /* renamed from: do, reason: not valid java name */
        public static void m5242do(Cif cif) {
            cif.getClass();
            Paint paint = new Paint();
            cif.f9168do = paint;
            paint.setColor(cif.f9167do);
            cif.f9168do.setStyle(Paint.Style.STROKE);
            cif.f9168do.setStrokeWidth(cif.f9166do);
            cif.f9168do.setAntiAlias(true);
            Paint paint2 = new Paint();
            cif.f9170for = paint2;
            paint2.setColor(cif.f9172if);
            cif.f9170for.setStyle(Paint.Style.FILL_AND_STROKE);
            cif.f9170for.setAntiAlias(true);
            cif.f9170for.setTextSize(cif.f9171if);
            cif.f9170for.setTypeface(cif.f9169do);
        }
    }

    public ChartView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9148do = new Cdo();
        Resources.Theme theme = context.getTheme();
        int[] iArr = C3645ro.f15325if;
        theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        this.f9151do = new com.db.chart.view.Cif(this);
        context.getTheme().obtainStyledAttributes(attributeSet, iArr, 0, 0);
        this.f9150do = new Cfor(this);
        this.f9149do = new Cif(this, context.getTheme().obtainStyledAttributes(attributeSet, iArr, 0, 0));
        this.f9154do = false;
        this.f9163this = -1;
        this.f9158goto = -1;
        this.f9161if = false;
        this.f9153do = new ArrayList<>();
        this.f9160if = new ArrayList<>();
        this.f9141break = 4;
        this.f9143catch = 5;
        this.f9144class = 5;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m5235if(Paint paint, float f, AbstractC3606r7 abstractC3606r7) {
        int i = (int) (f * 255.0f);
        int[] iArr = abstractC3606r7.f15217do;
        int i2 = iArr[0];
        if (i >= i2) {
            i = i2;
        }
        paint.setShadowLayer(0.0f, 0.0f, 0.0f, Color.argb(i, iArr[1], iArr[2], iArr[3]));
    }

    /* renamed from: break, reason: not valid java name */
    public final void m5236break(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Step can't be lower or equal to 0");
        }
        if (this.f9157for == 2) {
            this.f9150do.f9186else = i;
        } else {
            this.f9151do.f9186else = i;
        }
    }

    /* renamed from: case */
    public abstract void mo5226case(Canvas canvas, ArrayList<AbstractC3665s7> arrayList);

    /* renamed from: catch */
    public void mo5234catch() {
        Iterator<AbstractC3665s7> it = this.f9153do.iterator();
        while (it.hasNext()) {
            it.next().f15398do = true;
        }
        getViewTreeObserver().addOnPreDrawListener(this.f9148do);
        postInvalidate();
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5237do(J4 j4) {
        if (!this.f9153do.isEmpty() && j4.m8055if() != this.f9153do.get(0).m8055if()) {
            new IllegalArgumentException();
        }
        this.f9153do.add(j4);
    }

    /* renamed from: else */
    public void mo5227else(ArrayList<AbstractC3665s7> arrayList) {
    }

    /* renamed from: for */
    public ArrayList<ArrayList<Region>> mo5228for(ArrayList<AbstractC3665s7> arrayList) {
        return this.f9160if;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m5238goto() {
        if (this.f9157for == 2) {
            ((com.db.chart.view.Cdo) this.f9151do).f9194new = 1.0f;
        } else {
            ((com.db.chart.view.Cdo) this.f9150do).f9194new = 1.0f;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m5239new() {
        if (this.f9157for == 2) {
            this.f9151do.getClass();
        } else {
            this.f9150do.getClass();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        setWillNotDraw(false);
        Cif.m5242do(this.f9149do);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Cif cif = this.f9149do;
        cif.f9168do = null;
        cif.f9170for = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0055  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x0040 -> B:53:0x0050). Please report as a decompilation issue!!! */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onDraw(android.graphics.Canvas r24) {
        /*
            Method dump skipped, instructions count: 406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.db.chart.view.ChartView.onDraw(android.graphics.Canvas):void");
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode == Integer.MIN_VALUE) {
            i = 200;
        }
        if (mode2 == Integer.MIN_VALUE) {
            i2 = 100;
        }
        setMeasuredDimension(i, i2);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        InterfaceC0465Qv interfaceC0465Qv;
        ArrayList<ArrayList<Region>> arrayList;
        C2667e1 c2667e1 = this.f9152do;
        if (c2667e1 == null || !c2667e1.f12568do) {
            if (motionEvent.getAction() == 0 && this.f9146do != null && (arrayList = this.f9160if) != null) {
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    int size2 = this.f9160if.get(i).size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        if (this.f9160if.get(i).get(i2).contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                            this.f9163this = i;
                            this.f9158goto = i2;
                        }
                    }
                }
            } else if (motionEvent.getAction() == 1) {
                int i3 = this.f9163this;
                if (i3 == -1 || this.f9158goto == -1) {
                    View.OnClickListener onClickListener = this.f9147do;
                    if (onClickListener != null) {
                        onClickListener.onClick(this);
                    }
                } else {
                    if (this.f9160if.get(i3).get(this.f9158goto).contains((int) motionEvent.getX(), (int) motionEvent.getY()) && (interfaceC0465Qv = this.f9146do) != null) {
                        int i4 = this.f9163this;
                        Region region = this.f9160if.get(this.f9163this).get(this.f9158goto);
                        new Rect(new Rect(region.getBounds().left - getPaddingLeft(), region.getBounds().top - getPaddingTop(), region.getBounds().right - getPaddingLeft(), region.getBounds().bottom - getPaddingTop()));
                        interfaceC0465Qv.mo96do(i4);
                    }
                    this.f9163this = -1;
                    this.f9158goto = -1;
                }
            }
        }
        return true;
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f9147do = onClickListener;
    }

    /* renamed from: this, reason: not valid java name */
    public final void m5240this(int i) {
        this.f9157for = i;
        if (i == 2) {
            ((com.db.chart.view.Cdo) this.f9150do).f9193if = true;
        } else {
            ((com.db.chart.view.Cdo) this.f9151do).f9193if = true;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final float m5241try() {
        return this.f9157for == 2 ? this.f9150do.m5247else(0, 0.0d) : this.f9151do.m5251else(0, 0.0d);
    }
}
