package com.google.android.material.carousel;

import android.view.animation.LinearInterpolator;
import com.google.android.material.carousel.Cif;
import defpackage.AbstractC2791g7;
import defpackage.C2785g1;
import defpackage.Cpublic;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.google.android.material.carousel.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor {

    /* renamed from: do, reason: not valid java name */
    public final float f10738do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f10739do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<Cif> f10740do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final float[] f10741do;

    /* renamed from: if, reason: not valid java name */
    public final float f10742if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final List<Cif> f10743if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final float[] f10744if;

    public Cfor(Cif cif, ArrayList arrayList, ArrayList arrayList2) {
        this.f10739do = cif;
        this.f10740do = DesugarCollections.unmodifiableList(arrayList);
        this.f10743if = DesugarCollections.unmodifiableList(arrayList2);
        float f = ((Cif) arrayList.get(arrayList.size() - 1)).m5732if().f10759do - cif.m5732if().f10759do;
        this.f10738do = f;
        float f2 = cif.m5733new().f10759do - ((Cif) arrayList2.get(arrayList2.size() - 1)).m5733new().f10759do;
        this.f10742if = f2;
        this.f10741do = m5725new(f, arrayList, true);
        this.f10744if = m5725new(f2, arrayList2, false);
    }

    /* renamed from: case, reason: not valid java name */
    public static Cif m5724case(Cif cif, float f, float f2, boolean z, float f3) {
        int i;
        List<Cif.C0067if> list = cif.f10747do;
        ArrayList arrayList = new ArrayList(list);
        float f4 = cif.f10745do;
        Cif.Cdo cdo = new Cif.Cdo(f4, f2);
        Iterator<Cif.C0067if> it = list.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (it.next().f10760do) {
                i2++;
            }
        }
        float size = f / (list.size() - i2);
        float f5 = z ? f : 0.0f;
        int i3 = 0;
        while (i3 < arrayList.size()) {
            Cif.C0067if c0067if = (Cif.C0067if) arrayList.get(i3);
            if (c0067if.f10760do) {
                i = i3;
                cdo.m5736if(c0067if.f10763if, c0067if.f10762for, c0067if.f10764new, false, true, c0067if.f10765try, 0.0f, 0.0f);
            } else {
                i = i3;
                boolean z2 = i >= cif.f10746do && i <= cif.f10748if;
                float f6 = c0067if.f10764new - size;
                float m6713do = AbstractC2791g7.m6713do(f6, f4, f3);
                float f7 = (f6 / 2.0f) + f5;
                float f8 = f7 - c0067if.f10763if;
                cdo.m5736if(f7, m6713do, f6, z2, false, c0067if.f10765try, z ? f8 : 0.0f, z ? 0.0f : f8);
                f5 += f6;
            }
            i3 = i + 1;
        }
        return cdo.m5737new();
    }

    /* renamed from: new, reason: not valid java name */
    public static float[] m5725new(float f, ArrayList arrayList, boolean z) {
        int size = arrayList.size();
        float[] fArr = new float[size];
        int i = 1;
        while (i < size) {
            int i2 = i - 1;
            Cif cif = (Cif) arrayList.get(i2);
            Cif cif2 = (Cif) arrayList.get(i);
            fArr[i] = i == size + (-1) ? 1.0f : fArr[i2] + ((z ? cif2.m5732if().f10759do - cif.m5732if().f10759do : cif.m5733new().f10759do - cif2.m5733new().f10759do) / f);
            i++;
        }
        return fArr;
    }

    /* renamed from: try, reason: not valid java name */
    public static Cif m5726try(Cif cif, int i, int i2, float f, int i3, int i4, float f2) {
        ArrayList arrayList = new ArrayList(cif.f10747do);
        arrayList.add(i2, (Cif.C0067if) arrayList.remove(i));
        Cif.Cdo cdo = new Cif.Cdo(cif.f10745do, f2);
        float f3 = f;
        int i5 = 0;
        while (i5 < arrayList.size()) {
            Cif.C0067if c0067if = (Cif.C0067if) arrayList.get(i5);
            float f4 = c0067if.f10764new;
            cdo.m5736if((f4 / 2.0f) + f3, c0067if.f10762for, f4, i5 >= i3 && i5 <= i4, c0067if.f10760do, c0067if.f10765try, 0.0f, 0.0f);
            f3 += c0067if.f10764new;
            i5++;
        }
        return cdo.m5737new();
    }

    /* renamed from: do, reason: not valid java name */
    public final Cif m5727do() {
        return this.f10743if.get(r0.size() - 1);
    }

    /* renamed from: for, reason: not valid java name */
    public final Cif m5728for() {
        return this.f10740do.get(r0.size() - 1);
    }

    /* renamed from: if, reason: not valid java name */
    public final Cif m5729if(float f, float f2, float f3) {
        float m6709do;
        List<Cif> list;
        float[] fArr;
        float[] fArr2;
        float f4 = this.f10738do;
        float f5 = f2 + f4;
        float f6 = this.f10742if;
        float f7 = f3 - f6;
        float f8 = m5728for().m5730do().f10758case;
        float f9 = m5727do().m5731for().f10761else;
        if (f4 == f8) {
            f5 += f8;
        }
        if (f6 == f9) {
            f7 -= f9;
        }
        if (f < f5) {
            m6709do = C2785g1.m6709do(1.0f, 0.0f, f2, f5, f);
            list = this.f10740do;
            fArr = this.f10741do;
        } else {
            if (f <= f7) {
                return this.f10739do;
            }
            m6709do = C2785g1.m6709do(0.0f, 1.0f, f7, f3, f);
            list = this.f10743if;
            fArr = this.f10744if;
        }
        int size = list.size();
        float f10 = fArr[0];
        int i = 1;
        while (true) {
            if (i >= size) {
                fArr2 = new float[]{0.0f, 0.0f, 0.0f};
                break;
            }
            float f11 = fArr[i];
            if (m6709do <= f11) {
                fArr2 = new float[]{C2785g1.m6709do(0.0f, 1.0f, f10, f11, m6709do), i - 1, i};
                break;
            }
            i++;
            f10 = f11;
        }
        Cif cif = list.get((int) fArr2[1]);
        Cif cif2 = list.get((int) fArr2[2]);
        float f12 = fArr2[0];
        if (cif.f10745do != cif2.f10745do) {
            throw new IllegalArgumentException("Keylines being linearly interpolated must have the same item size.");
        }
        List<Cif.C0067if> list2 = cif.f10747do;
        int size2 = list2.size();
        List<Cif.C0067if> list3 = cif2.f10747do;
        if (size2 != list3.size()) {
            throw new IllegalArgumentException("Keylines being linearly interpolated must have the same number of keylines.");
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list2.size(); i2++) {
            Cif.C0067if c0067if = list2.get(i2);
            Cif.C0067if c0067if2 = list3.get(i2);
            float f13 = c0067if.f10759do;
            float f14 = c0067if2.f10759do;
            LinearInterpolator linearInterpolator = C2785g1.f13028do;
            float m7823for = Cpublic.m7823for(f14, f13, f12, f13);
            float f15 = c0067if2.f10763if;
            float f16 = c0067if.f10763if;
            float m7823for2 = Cpublic.m7823for(f15, f16, f12, f16);
            float f17 = c0067if2.f10762for;
            float f18 = c0067if.f10762for;
            float m7823for3 = Cpublic.m7823for(f17, f18, f12, f18);
            float f19 = c0067if2.f10764new;
            float f20 = c0067if.f10764new;
            arrayList.add(new Cif.C0067if(m7823for, m7823for2, m7823for3, Cpublic.m7823for(f19, f20, f12, f20), false, 0.0f, 0.0f, 0.0f));
        }
        return new Cif(cif.f10745do, arrayList, C2785g1.m6710if(f12, cif.f10746do, cif2.f10746do), C2785g1.m6710if(f12, cif.f10748if, cif2.f10748if));
    }
}
