package defpackage;

import android.graphics.Path;
import android.graphics.PathMeasure;
import com.db.chart.view.ChartView;
import java.lang.reflect.Array;
import java.util.ArrayList;

/* renamed from: e1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2667e1 {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f12563do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ChartView f12566do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float[] f12569do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f12570do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long[] f12571do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PathMeasure[][] f12572do;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public long[] f12578if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f12567do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f12564do = 1000;

    /* renamed from: do, reason: not valid java name */
    public float f12562do = 1.0f;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public int f12576if = -1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Gy f12565do = new Gy();

    /* renamed from: if, reason: not valid java name */
    public float f12575if = -1.0f;

    /* renamed from: for, reason: not valid java name */
    public float f12573for = -1.0f;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f12568do = false;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public long f12577if = 0;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public long f12574for = 0;

    /* renamed from: e1$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C2667e1 c2667e1 = C2667e1.this;
            ChartView chartView = c2667e1.f12566do;
            if (!chartView.f9161if) {
                ArrayList<AbstractC3665s7> arrayList = chartView.f9153do;
                c2667e1.m6506do(arrayList);
                chartView.f9153do = arrayList;
                c2667e1.f12566do.postInvalidate();
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6506do(ArrayList arrayList) {
        int size = arrayList.size();
        int m8055if = ((AbstractC3665s7) arrayList.get(0)).m8055if();
        long currentTimeMillis = System.currentTimeMillis();
        this.f12577if = currentTimeMillis - this.f12574for;
        for (int i = 0; i < m8055if; i++) {
            long j = currentTimeMillis - this.f12571do[i];
            if (j < 0) {
                this.f12578if[i] = 0;
            } else {
                this.f12578if[i] = j;
            }
        }
        long j2 = this.f12577if;
        long j3 = this.f12564do;
        if (j2 > j3) {
            this.f12577if = j3;
        }
        float[] fArr = new float[2];
        for (int i2 = 0; i2 < size; i2++) {
            for (int i3 = 0; i3 < m8055if; i3++) {
                float f = this.f12578if[i3] / this.f12563do;
                if (this.f12576if != -1) {
                    this.f12565do.getClass();
                    if (Gy.f1278if != 1) {
                        AbstractC3665s7 abstractC3665s7 = (AbstractC3665s7) arrayList.get(i2);
                        this.f12565do.getClass();
                        float m778try = Gy.m778try(f) * this.f12576if * this.f12569do[i2];
                        abstractC3665s7.getClass();
                        if (m778try >= 1.0f) {
                            m778try = 1.0f;
                        }
                        abstractC3665s7.f15396do = m778try;
                    }
                }
                PathMeasure pathMeasure = this.f12572do[i2][i3];
                float length = pathMeasure.getLength();
                this.f12565do.getClass();
                if (!pathMeasure.getPosTan(Gy.m778try(f) * length, fArr, null)) {
                    fArr[0] = ((AbstractC3665s7) arrayList.get(i2)).m8054do(i3).f15219if;
                    fArr[1] = ((AbstractC3665s7) arrayList.get(i2)).m8054do(i3).f15218for;
                }
                AbstractC3606r7 m8054do = ((AbstractC3665s7) arrayList.get(i2)).m8054do(i3);
                float f2 = fArr[0];
                float f3 = fArr[1];
                m8054do.f15219if = f2;
                m8054do.f15218for = f3;
            }
        }
        if (this.f12577if < this.f12564do) {
            this.f12566do.postDelayed(this.f12567do, 20L);
            this.f12577if += 20;
        } else {
            this.f12577if = 0L;
            this.f12574for = 0L;
            this.f12568do = false;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m6507for(int[] iArr) {
        this.f12562do = 0.25f;
        this.f12570do = iArr;
    }

    /* renamed from: if, reason: not valid java name */
    public final ArrayList<AbstractC3665s7> m6508if(ChartView chartView, ArrayList<float[][]> arrayList, ArrayList<float[][]> arrayList2) {
        int size = arrayList.size();
        int length = arrayList.get(0).length;
        this.f12566do = chartView;
        this.f12578if = new long[length];
        int[] iArr = this.f12570do;
        if (iArr == null) {
            this.f12570do = new int[length];
            int i = 0;
            while (true) {
                int[] iArr2 = this.f12570do;
                if (i >= iArr2.length) {
                    break;
                }
                iArr2[i] = i;
                i++;
            }
        } else if (iArr.length != length) {
            throw new IllegalArgumentException("Size of overlap order different than set's entries size.");
        }
        long j = this.f12564do;
        long j2 = length;
        float f = j / j2;
        this.f12563do = (int) (((j - f) * this.f12562do) + f);
        this.f12572do = (PathMeasure[][]) Array.newInstance((Class<?>) PathMeasure.class, size, length);
        for (int i2 = 0; i2 < size; i2++) {
            for (int i3 = 0; i3 < length; i3++) {
                Path path = new Path();
                path.moveTo(arrayList.get(i2)[i3][0], arrayList.get(i2)[i3][1]);
                path.lineTo(arrayList2.get(i2)[i3][0], arrayList2.get(i2)[i3][1]);
                this.f12572do[i2][i3] = new PathMeasure(path, false);
            }
        }
        this.f12571do = new long[length];
        this.f12574for = System.currentTimeMillis();
        for (int i4 = 0; i4 < length; i4++) {
            this.f12571do[this.f12570do[i4]] = (((this.f12564do / j2) * i4) + this.f12574for) - ((long) (this.f12562do * (r9 - r12)));
        }
        this.f12568do = true;
        ArrayList<AbstractC3665s7> arrayList3 = this.f12566do.f9153do;
        m6506do(arrayList3);
        return arrayList3;
    }
}
