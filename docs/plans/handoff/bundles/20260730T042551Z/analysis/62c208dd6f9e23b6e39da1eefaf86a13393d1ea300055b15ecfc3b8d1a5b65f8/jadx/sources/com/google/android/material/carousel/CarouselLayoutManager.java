package com.google.android.material.carousel;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.api.Api;
import com.google.android.material.carousel.CarouselLayoutManager;
import com.google.android.material.carousel.Cif;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC2732f7;
import defpackage.AbstractC2791g7;
import defpackage.C0244Gt;
import defpackage.C0315Kc;
import defpackage.C0791c7;
import defpackage.C2615d7;
import defpackage.C2673e7;
import defpackage.C2785g1;
import defpackage.G8;
import defpackage.InterfaceC0132Br;
import defpackage.O2;
import defpackage.V1;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public class CarouselLayoutManager extends RecyclerView.Cclass implements RecyclerView.Creturn.Cif {

    /* renamed from: break, reason: not valid java name */
    public int f10711break;

    /* renamed from: case, reason: not valid java name */
    public int f10712case;

    /* renamed from: catch, reason: not valid java name */
    public int f10713catch;

    /* renamed from: class, reason: not valid java name */
    public int f10714class;

    /* renamed from: do, reason: not valid java name */
    public final View.OnLayoutChangeListener f10715do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f10716do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public com.google.android.material.carousel.Cfor f10717do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public com.google.android.material.carousel.Cif f10718do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AbstractC2732f7 f10719do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AbstractC2791g7 f10720do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public HashMap f10721do;

    /* renamed from: else, reason: not valid java name */
    public int f10722else;

    /* renamed from: goto, reason: not valid java name */
    public int f10723goto;

    /* renamed from: this, reason: not valid java name */
    public int f10724this;

    /* renamed from: com.google.android.material.carousel.CarouselLayoutManager$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final float f10725do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final View f10726do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cfor f10727do;

        /* renamed from: if, reason: not valid java name */
        public final float f10728if;

        public Cdo(View view, float f, float f2, Cfor cfor) {
            this.f10726do = view;
            this.f10725do = f;
            this.f10728if = f2;
            this.f10727do = cfor;
        }
    }

    /* renamed from: com.google.android.material.carousel.CarouselLayoutManager$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        public final Cif.C0067if f10729do;

        /* renamed from: if, reason: not valid java name */
        public final Cif.C0067if f10730if;

        public Cfor(Cif.C0067if c0067if, Cif.C0067if c0067if2) {
            if (!(c0067if.f10759do <= c0067if2.f10759do)) {
                throw new IllegalArgumentException();
            }
            this.f10729do = c0067if;
            this.f10730if = c0067if2;
        }
    }

    /* renamed from: com.google.android.material.carousel.CarouselLayoutManager$if, reason: invalid class name */
    public static class Cif extends RecyclerView.Ccatch {

        /* renamed from: do, reason: not valid java name */
        public final Paint f10731do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public List<Cif.C0067if> f10732do;

        public Cif() {
            Paint paint = new Paint();
            this.f10731do = paint;
            this.f10732do = DesugarCollections.unmodifiableList(new ArrayList());
            paint.setStrokeWidth(5.0f);
            paint.setColor(-65281);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Ccatch
        /* renamed from: case */
        public final void mo4375case(Canvas canvas, RecyclerView recyclerView) {
            Paint paint = this.f10731do;
            paint.setStrokeWidth(recyclerView.getResources().getDimension(R.dimen.m3_carousel_debug_keyline_width));
            for (Cif.C0067if c0067if : this.f10732do) {
                paint.setColor(G8.m710if(c0067if.f10762for, -65281, -16776961));
                if (((CarouselLayoutManager) recyclerView.f7312do).i0()) {
                    canvas.drawLine(c0067if.f10763if, ((CarouselLayoutManager) recyclerView.f7312do).f10719do.mo6420this(), c0067if.f10763if, ((CarouselLayoutManager) recyclerView.f7312do).f10719do.mo6419new(), paint);
                } else {
                    canvas.drawLine(((CarouselLayoutManager) recyclerView.f7312do).f10719do.mo6411case(), c0067if.f10763if, ((CarouselLayoutManager) recyclerView.f7312do).f10719do.mo6415else(), c0067if.f10763if, paint);
                }
            }
        }
    }

    public CarouselLayoutManager() {
        C0244Gt c0244Gt = new C0244Gt();
        this.f10716do = new Cif();
        this.f10724this = 0;
        this.f10715do = new View.OnLayoutChangeListener() { // from class: b7
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
                carouselLayoutManager.getClass();
                if (i == i5 && i2 == i6 && i3 == i7 && i4 == i8) {
                    return;
                }
                view.post(new Y1(carouselLayoutManager, 5));
            }
        };
        this.f10713catch = -1;
        this.f10714class = 0;
        this.f10720do = c0244Gt;
        p0();
        r0(0);
    }

    public static float e0(float f, Cfor cfor) {
        Cif.C0067if c0067if = cfor.f10729do;
        float f2 = c0067if.f10764new;
        Cif.C0067if c0067if2 = cfor.f10730if;
        return C2785g1.m6709do(f2, c0067if2.f10764new, c0067if.f10763if, c0067if2.f10763if, f);
    }

    public static Cfor h0(float f, List list, boolean z) {
        float f2 = Float.MAX_VALUE;
        float f3 = Float.MAX_VALUE;
        float f4 = Float.MAX_VALUE;
        float f5 = -3.4028235E38f;
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < list.size(); i5++) {
            Cif.C0067if c0067if = (Cif.C0067if) list.get(i5);
            float f6 = z ? c0067if.f10763if : c0067if.f10759do;
            float abs = Math.abs(f6 - f);
            if (f6 <= f && abs <= f2) {
                i = i5;
                f2 = abs;
            }
            if (f6 > f && abs <= f3) {
                i3 = i5;
                f3 = abs;
            }
            if (f6 <= f4) {
                i2 = i5;
                f4 = f6;
            }
            if (f6 > f5) {
                i4 = i5;
                f5 = f6;
            }
        }
        if (i == -1) {
            i = i2;
        }
        if (i3 == -1) {
            i3 = i4;
        }
        return new Cfor((Cif.C0067if) list.get(i), (Cif.C0067if) list.get(i3));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final boolean F(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
        int g0;
        if (this.f10717do == null || (g0 = g0(RecyclerView.Cclass.m4380implements(view), d0(RecyclerView.Cclass.m4380implements(view)))) == 0) {
            return false;
        }
        int i = this.f10712case;
        int i2 = this.f10722else;
        int i3 = this.f10723goto;
        int i4 = i + g0;
        if (i4 < i2) {
            g0 = i2 - i;
        } else if (i4 > i3) {
            g0 = i3 - i;
        }
        int g02 = g0(RecyclerView.Cclass.m4380implements(view), this.f10717do.m5729if(i + g0, i2, i3));
        if (i0()) {
            recyclerView.scrollBy(g02, 0);
            return true;
        }
        recyclerView.scrollBy(0, g02);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final int H(int i, RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic) {
        if (i0()) {
            return q0(i, cimport, cstatic);
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void I(int i) {
        this.f10713catch = i;
        if (this.f10717do == null) {
            return;
        }
        this.f10712case = f0(i, d0(i));
        this.f10724this = C0315Kc.m1182throw(i, 0, Math.max(0, m4387abstract() - 1));
        t0(this.f10717do);
        G();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final int J(int i, RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic) {
        if (mo4316case()) {
            return q0(i, cimport, cstatic);
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void S(RecyclerView recyclerView, int i) {
        C0791c7 c0791c7 = new C0791c7(this, recyclerView.getContext());
        ((RecyclerView.Creturn) c0791c7).f7426do = i;
        T(c0791c7);
    }

    public final void V(View view, int i, Cdo cdo) {
        float f = this.f10718do.f10745do / 2.0f;
        m4390if(view, false, i);
        float f2 = cdo.f10728if;
        this.f10719do.mo6410break(view, (int) (f2 - f), (int) (f2 + f));
        s0(view, cdo.f10725do, cdo.f10727do);
    }

    public final float W(float f, float f2) {
        return j0() ? f - f2 : f + f2;
    }

    public final void X(int i, RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic) {
        float a0 = a0(i);
        while (i < cstatic.m4449if()) {
            Cdo m0 = m0(cimport, a0, i);
            float f = m0.f10728if;
            Cfor cfor = m0.f10727do;
            if (k0(f, cfor)) {
                return;
            }
            a0 = W(a0, this.f10718do.f10745do);
            if (!l0(f, cfor)) {
                V(m0.f10726do, -1, m0);
            }
            i++;
        }
    }

    public final void Y(int i, RecyclerView.Cimport cimport) {
        float a0 = a0(i);
        while (i >= 0) {
            Cdo m0 = m0(cimport, a0, i);
            float f = m0.f10728if;
            Cfor cfor = m0.f10727do;
            if (l0(f, cfor)) {
                return;
            }
            float f2 = this.f10718do.f10745do;
            a0 = j0() ? a0 + f2 : a0 - f2;
            if (!k0(f, cfor)) {
                V(m0.f10726do, 0, m0);
            }
            i--;
        }
    }

    public final float Z(View view, float f, Cfor cfor) {
        Cif.C0067if c0067if = cfor.f10729do;
        float f2 = c0067if.f10763if;
        Cif.C0067if c0067if2 = cfor.f10730if;
        float m6709do = C2785g1.m6709do(f2, c0067if2.f10763if, c0067if.f10759do, c0067if2.f10759do, f);
        if (c0067if2 != this.f10718do.m5732if()) {
            if (cfor.f10729do != this.f10718do.m5733new()) {
                return m6709do;
            }
        }
        float mo6418if = this.f10719do.mo6418if((RecyclerView.LayoutParams) view.getLayoutParams()) / this.f10718do.f10745do;
        return m6709do + (((1.0f - c0067if2.f10762for) + mo6418if) * (f - c0067if2.f10759do));
    }

    public final float a0(int i) {
        return W(this.f10719do.mo6417goto() - this.f10712case, this.f10718do.f10745do * i);
    }

    public final void b0(RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic) {
        while (m4395throws() > 0) {
            View m4394switch = m4394switch(0);
            Rect rect = new Rect();
            super.mo4389finally(rect, m4394switch);
            float centerX = i0() ? rect.centerX() : rect.centerY();
            if (!l0(centerX, h0(centerX, this.f10718do.f10747do, true))) {
                break;
            } else {
                D(m4394switch, cimport);
            }
        }
        while (m4395throws() - 1 >= 0) {
            View m4394switch2 = m4394switch(m4395throws() - 1);
            Rect rect2 = new Rect();
            super.mo4389finally(rect2, m4394switch2);
            float centerX2 = i0() ? rect2.centerX() : rect2.centerY();
            if (!k0(centerX2, h0(centerX2, this.f10718do.f10747do, true))) {
                break;
            } else {
                D(m4394switch2, cimport);
            }
        }
        if (m4395throws() == 0) {
            Y(this.f10724this - 1, cimport);
            X(this.f10724this, cimport, cstatic);
        } else {
            int m4380implements = RecyclerView.Cclass.m4380implements(m4394switch(0));
            int m4380implements2 = RecyclerView.Cclass.m4380implements(m4394switch(m4395throws() - 1));
            Y(m4380implements - 1, cimport);
            X(m4380implements2 + 1, cimport, cstatic);
        }
    }

    public final int c0() {
        return i0() ? ((RecyclerView.Cclass) this).f7384new : ((RecyclerView.Cclass) this).f7386try;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: case */
    public final boolean mo4316case() {
        return !i0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: catch */
    public final int mo4317catch(RecyclerView.Cstatic cstatic) {
        if (m4395throws() == 0 || this.f10717do == null || m4387abstract() <= 1) {
            return 0;
        }
        return (int) (((RecyclerView.Cclass) this).f7384new * (this.f10717do.f10739do.f10745do / (this.f10723goto - this.f10722else)));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: class */
    public final int mo4304class(RecyclerView.Cstatic cstatic) {
        return this.f10712case;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: const */
    public final int mo4305const(RecyclerView.Cstatic cstatic) {
        return this.f10723goto - this.f10722else;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final boolean d() {
        return true;
    }

    public final com.google.android.material.carousel.Cif d0(int i) {
        com.google.android.material.carousel.Cif cif;
        HashMap hashMap = this.f10721do;
        return (hashMap == null || (cif = (com.google.android.material.carousel.Cif) hashMap.get(Integer.valueOf(C0315Kc.m1182throw(i, 0, Math.max(0, m4387abstract() + (-1)))))) == null) ? this.f10717do.f10739do : cif;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Creturn.Cif
    /* renamed from: do */
    public final PointF mo4318do(int i) {
        if (this.f10717do == null) {
            return null;
        }
        int f0 = f0(i, d0(i)) - this.f10712case;
        return i0() ? new PointF(f0, 0.0f) : new PointF(0.0f, f0);
    }

    public final int f0(int i, com.google.android.material.carousel.Cif cif) {
        if (!j0()) {
            return (int) ((cif.f10745do / 2.0f) + ((i * cif.f10745do) - cif.m5730do().f10759do));
        }
        float c0 = c0() - cif.m5731for().f10759do;
        float f = cif.f10745do;
        return (int) ((c0 - (i * f)) - (f / 2.0f));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: final */
    public final int mo4319final(RecyclerView.Cstatic cstatic) {
        if (m4395throws() == 0 || this.f10717do == null || m4387abstract() <= 1) {
            return 0;
        }
        return (int) (((RecyclerView.Cclass) this).f7386try * (this.f10717do.f10739do.f10745do / (this.f10723goto - this.f10722else)));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: finally */
    public final void mo4389finally(Rect rect, View view) {
        super.mo4389finally(rect, view);
        float centerY = rect.centerY();
        if (i0()) {
            centerY = rect.centerX();
        }
        float e0 = e0(centerY, h0(centerY, this.f10718do.f10747do, true));
        float width = i0() ? (rect.width() - e0) / 2.0f : 0.0f;
        float height = i0() ? 0.0f : (rect.height() - e0) / 2.0f;
        rect.set((int) (rect.left + width), (int) (rect.top + height), (int) (rect.right - width), (int) (rect.bottom - height));
    }

    public final int g0(int i, com.google.android.material.carousel.Cif cif) {
        int i2 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        for (Cif.C0067if c0067if : cif.f10747do.subList(cif.f10746do, cif.f10748if + 1)) {
            float f = cif.f10745do;
            float f2 = (f / 2.0f) + (i * f);
            int c0 = (j0() ? (int) ((c0() - c0067if.f10759do) - f2) : (int) (f2 - c0067if.f10759do)) - this.f10712case;
            if (Math.abs(i2) > Math.abs(c0)) {
                i2 = c0;
            }
        }
        return i2;
    }

    public final boolean i0() {
        return this.f10719do.f12835do == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void j(RecyclerView recyclerView) {
        AbstractC2791g7 abstractC2791g7 = this.f10720do;
        Context context = recyclerView.getContext();
        float f = abstractC2791g7.f13072do;
        if (f <= 0.0f) {
            f = context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_min);
        }
        abstractC2791g7.f13072do = f;
        float f2 = abstractC2791g7.f13073if;
        if (f2 <= 0.0f) {
            f2 = context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_max);
        }
        abstractC2791g7.f13073if = f2;
        p0();
        recyclerView.addOnLayoutChangeListener(this.f10715do);
    }

    public final boolean j0() {
        return i0() && m4388continue() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void k(RecyclerView recyclerView) {
        recyclerView.removeOnLayoutChangeListener(this.f10715do);
    }

    public final boolean k0(float f, Cfor cfor) {
        float e0 = e0(f, cfor) / 2.0f;
        float f2 = j0() ? f + e0 : f - e0;
        return !j0() ? f2 <= ((float) c0()) : f2 >= 0.0f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0026, code lost:
    
        if (r9 != 1) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x002f, code lost:
    
        if (j0() != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0032, code lost:
    
        if (r9 == 1) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x003b, code lost:
    
        if (j0() != false) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0046 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0047  */
    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View l(android.view.View r6, int r7, androidx.recyclerview.widget.RecyclerView.Cimport r8, androidx.recyclerview.widget.RecyclerView.Cstatic r9) {
        /*
            r5 = this;
            int r9 = r5.m4395throws()
            r0 = 0
            if (r9 != 0) goto L8
            return r0
        L8:
            f7 r9 = r5.f10719do
            int r9 = r9.f12835do
            r1 = 1
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = -1
            if (r7 == r1) goto L43
            r4 = 2
            if (r7 == r4) goto L41
            r4 = 17
            if (r7 == r4) goto L35
            r4 = 33
            if (r7 == r4) goto L32
            r4 = 66
            if (r7 == r4) goto L29
            r4 = 130(0x82, float:1.82E-43)
            if (r7 == r4) goto L26
            goto L3e
        L26:
            if (r9 != r1) goto L3e
            goto L41
        L29:
            if (r9 != 0) goto L3e
            boolean r7 = r5.j0()
            if (r7 == 0) goto L41
            goto L43
        L32:
            if (r9 != r1) goto L3e
            goto L43
        L35:
            if (r9 != 0) goto L3e
            boolean r7 = r5.j0()
            if (r7 == 0) goto L43
            goto L41
        L3e:
            r7 = -2147483648(0xffffffff80000000, float:-0.0)
            goto L44
        L41:
            r7 = 1
            goto L44
        L43:
            r7 = -1
        L44:
            if (r7 != r2) goto L47
            return r0
        L47:
            r9 = 0
            if (r7 != r3) goto L81
            int r6 = androidx.recyclerview.widget.RecyclerView.Cclass.m4380implements(r6)
            if (r6 != 0) goto L51
            return r0
        L51:
            android.view.View r6 = r5.m4394switch(r9)
            int r6 = androidx.recyclerview.widget.RecyclerView.Cclass.m4380implements(r6)
            int r6 = r6 - r1
            if (r6 < 0) goto L70
            int r7 = r5.m4387abstract()
            if (r6 < r7) goto L63
            goto L70
        L63:
            float r7 = r5.a0(r6)
            com.google.android.material.carousel.CarouselLayoutManager$do r6 = r5.m0(r8, r7, r6)
            android.view.View r7 = r6.f10726do
            r5.V(r7, r9, r6)
        L70:
            boolean r6 = r5.j0()
            if (r6 == 0) goto L7c
            int r6 = r5.m4395throws()
            int r9 = r6 + (-1)
        L7c:
            android.view.View r6 = r5.m4394switch(r9)
            goto Lc2
        L81:
            int r6 = androidx.recyclerview.widget.RecyclerView.Cclass.m4380implements(r6)
            int r7 = r5.m4387abstract()
            int r7 = r7 - r1
            if (r6 != r7) goto L8d
            return r0
        L8d:
            int r6 = r5.m4395throws()
            int r6 = r6 - r1
            android.view.View r6 = r5.m4394switch(r6)
            int r6 = androidx.recyclerview.widget.RecyclerView.Cclass.m4380implements(r6)
            int r6 = r6 + r1
            if (r6 < 0) goto Lb1
            int r7 = r5.m4387abstract()
            if (r6 < r7) goto La4
            goto Lb1
        La4:
            float r7 = r5.a0(r6)
            com.google.android.material.carousel.CarouselLayoutManager$do r6 = r5.m0(r8, r7, r6)
            android.view.View r7 = r6.f10726do
            r5.V(r7, r3, r6)
        Lb1:
            boolean r6 = r5.j0()
            if (r6 == 0) goto Lb8
            goto Lbe
        Lb8:
            int r6 = r5.m4395throws()
            int r9 = r6 + (-1)
        Lbe:
            android.view.View r6 = r5.m4394switch(r9)
        Lc2:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.carousel.CarouselLayoutManager.l(android.view.View, int, androidx.recyclerview.widget.RecyclerView$import, androidx.recyclerview.widget.RecyclerView$static):android.view.View");
    }

    public final boolean l0(float f, Cfor cfor) {
        float W = W(f, e0(f, cfor) / 2.0f);
        return !j0() ? W >= 0.0f : W <= ((float) c0());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void m(AccessibilityEvent accessibilityEvent) {
        super.m(accessibilityEvent);
        if (m4395throws() > 0) {
            accessibilityEvent.setFromIndex(RecyclerView.Cclass.m4380implements(m4394switch(0)));
            accessibilityEvent.setToIndex(RecyclerView.Cclass.m4380implements(m4394switch(m4395throws() - 1)));
        }
    }

    public final Cdo m0(RecyclerView.Cimport cimport, float f, int i) {
        View m4436new = cimport.m4436new(i);
        n0(m4436new);
        float W = W(f, this.f10718do.f10745do / 2.0f);
        Cfor h0 = h0(W, this.f10718do.f10747do, false);
        return new Cdo(m4436new, W, Z(m4436new, W, h0), h0);
    }

    public final void n0(View view) {
        if (!(view instanceof InterfaceC0132Br)) {
            throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        Rect rect = new Rect();
        m4392new(rect, view);
        int i = rect.left + rect.right + 0;
        int i2 = rect.top + rect.bottom + 0;
        com.google.android.material.carousel.Cfor cfor = this.f10717do;
        view.measure(RecyclerView.Cclass.m4378default(i0(), ((RecyclerView.Cclass) this).f7384new, ((RecyclerView.Cclass) this).f7381if, m4393protected() + m4391interface() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + i, (int) ((cfor == null || this.f10719do.f12835do != 0) ? ((ViewGroup.MarginLayoutParams) layoutParams).width : cfor.f10739do.f10745do)), RecyclerView.Cclass.m4378default(mo4316case(), ((RecyclerView.Cclass) this).f7386try, ((RecyclerView.Cclass) this).f7379for, m4397volatile() + m4396transient() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + i2, (int) ((cfor == null || this.f10719do.f12835do != 1) ? ((ViewGroup.MarginLayoutParams) layoutParams).height : cfor.f10739do.f10745do)));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: native */
    public final RecyclerView.LayoutParams mo4308native() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r5v27 com.google.android.material.carousel.for, still in use, count: 3, list:
          (r5v27 com.google.android.material.carousel.for) from 0x0586: MOVE (r18v2 com.google.android.material.carousel.for) = (r5v27 com.google.android.material.carousel.for) (LINE:1415)
          (r5v27 com.google.android.material.carousel.for) from 0x04ee: PHI (r5v39 com.google.android.material.carousel.for) = (r5v27 com.google.android.material.carousel.for), (r5v42 com.google.android.material.carousel.for) binds: [B:215:0x04e6, B:234:0x0570] A[DONT_GENERATE, DONT_INLINE]
          (r5v27 com.google.android.material.carousel.for) from 0x057f: PHI (r5v47 com.google.android.material.carousel.for) = (r5v39 com.google.android.material.carousel.for), (r5v27 com.google.android.material.carousel.for) binds: [B:240:0x057f, B:146:0x04c3] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:91)
        	at jadx.core.utils.InsnRemover.addAndUnbind(InsnRemover.java:57)
        	at jadx.core.dex.visitors.ModVisitor.removeStep(ModVisitor.java:447)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    public final void o0(androidx.recyclerview.widget.RecyclerView.Cimport r31) {
        /*
            Method dump skipped, instructions count: 1761
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.carousel.CarouselLayoutManager.o0(androidx.recyclerview.widget.RecyclerView$import):void");
    }

    public final void p0() {
        this.f10717do = null;
        G();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void q(int i, int i2) {
        u0();
    }

    public final int q0(int i, RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic) {
        if (m4395throws() == 0 || i == 0) {
            return 0;
        }
        if (this.f10717do == null) {
            o0(cimport);
        }
        int i2 = this.f10712case;
        int i3 = this.f10722else;
        int i4 = this.f10723goto;
        int i5 = i2 + i;
        if (i5 < i3) {
            i = i3 - i2;
        } else if (i5 > i4) {
            i = i4 - i2;
        }
        this.f10712case = i2 + i;
        t0(this.f10717do);
        float f = this.f10718do.f10745do / 2.0f;
        float a0 = a0(RecyclerView.Cclass.m4380implements(m4394switch(0)));
        Rect rect = new Rect();
        float f2 = j0() ? this.f10718do.m5731for().f10763if : this.f10718do.m5730do().f10763if;
        float f3 = Float.MAX_VALUE;
        for (int i6 = 0; i6 < m4395throws(); i6++) {
            View m4394switch = m4394switch(i6);
            float W = W(a0, f);
            Cfor h0 = h0(W, this.f10718do.f10747do, false);
            float Z = Z(m4394switch, W, h0);
            super.mo4389finally(rect, m4394switch);
            s0(m4394switch, W, h0);
            this.f10719do.mo6413class(f, Z, rect, m4394switch);
            float abs = Math.abs(f2 - Z);
            if (abs < f3) {
                this.f10713catch = RecyclerView.Cclass.m4380implements(m4394switch);
                f3 = abs;
            }
            a0 = W(a0, this.f10718do.f10745do);
        }
        b0(cimport, cstatic);
        return i;
    }

    public final void r0(int i) {
        AbstractC2732f7 c2673e7;
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(V1.m2494case("invalid orientation:", i));
        }
        mo4320for(null);
        AbstractC2732f7 abstractC2732f7 = this.f10719do;
        if (abstractC2732f7 == null || i != abstractC2732f7.f12835do) {
            if (i == 0) {
                c2673e7 = new C2673e7(this);
            } else {
                if (i != 1) {
                    throw new IllegalArgumentException("invalid orientation");
                }
                c2673e7 = new C2615d7(this);
            }
            this.f10719do = c2673e7;
            p0();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void s0(View view, float f, Cfor cfor) {
        if (view instanceof InterfaceC0132Br) {
            Cif.C0067if c0067if = cfor.f10729do;
            float f2 = c0067if.f10762for;
            Cif.C0067if c0067if2 = cfor.f10730if;
            float m6709do = C2785g1.m6709do(f2, c0067if2.f10762for, c0067if.f10759do, c0067if2.f10759do, f);
            float height = view.getHeight();
            float width = view.getWidth();
            RectF mo6416for = this.f10719do.mo6416for(height, width, C2785g1.m6709do(0.0f, height / 2.0f, 0.0f, 1.0f, m6709do), C2785g1.m6709do(0.0f, width / 2.0f, 0.0f, 1.0f, m6709do));
            float Z = Z(view, f, cfor);
            RectF rectF = new RectF(Z - (mo6416for.width() / 2.0f), Z - (mo6416for.height() / 2.0f), (mo6416for.width() / 2.0f) + Z, (mo6416for.height() / 2.0f) + Z);
            RectF rectF2 = new RectF(this.f10719do.mo6411case(), this.f10719do.mo6420this(), this.f10719do.mo6415else(), this.f10719do.mo6419new());
            this.f10720do.getClass();
            this.f10719do.mo6414do(mo6416for, rectF, rectF2);
            this.f10719do.mo6412catch(mo6416for, rectF, rectF2);
            ((InterfaceC0132Br) view).mo235if(mo6416for);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: super */
    public final int mo4311super(RecyclerView.Cstatic cstatic) {
        return this.f10712case;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void t(int i, int i2) {
        u0();
    }

    public final void t0(com.google.android.material.carousel.Cfor cfor) {
        int i = this.f10723goto;
        int i2 = this.f10722else;
        if (i <= i2) {
            this.f10718do = j0() ? cfor.m5727do() : cfor.m5728for();
        } else {
            this.f10718do = cfor.m5729if(this.f10712case, i2, i);
        }
        List<Cif.C0067if> list = this.f10718do.f10747do;
        Cif cif = this.f10716do;
        cif.getClass();
        cif.f10732do = DesugarCollections.unmodifiableList(list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: throw */
    public final int mo4312throw(RecyclerView.Cstatic cstatic) {
        return this.f10723goto - this.f10722else;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: try */
    public final boolean mo4323try() {
        return i0();
    }

    public final void u0() {
        int m4387abstract = m4387abstract();
        int i = this.f10711break;
        if (m4387abstract == i || this.f10717do == null) {
            return;
        }
        C0244Gt c0244Gt = (C0244Gt) this.f10720do;
        if ((i < c0244Gt.f1274do && m4387abstract() >= c0244Gt.f1274do) || (i >= c0244Gt.f1274do && m4387abstract() < c0244Gt.f1274do)) {
            p0();
        }
        this.f10711break = m4387abstract;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void v(RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic) {
        if (cstatic.m4449if() <= 0 || c0() <= 0.0f) {
            B(cimport);
            this.f10724this = 0;
            return;
        }
        boolean j0 = j0();
        boolean z = this.f10717do == null;
        if (z) {
            o0(cimport);
        }
        com.google.android.material.carousel.Cfor cfor = this.f10717do;
        boolean j02 = j0();
        com.google.android.material.carousel.Cif m5727do = j02 ? cfor.m5727do() : cfor.m5728for();
        float f = (j02 ? m5727do.m5731for() : m5727do.m5730do()).f10759do;
        float f2 = m5727do.f10745do / 2.0f;
        int mo6417goto = (int) (this.f10719do.mo6417goto() - (j0() ? f + f2 : f - f2));
        com.google.android.material.carousel.Cfor cfor2 = this.f10717do;
        boolean j03 = j0();
        com.google.android.material.carousel.Cif m5728for = j03 ? cfor2.m5728for() : cfor2.m5727do();
        Cif.C0067if m5730do = j03 ? m5728for.m5730do() : m5728for.m5731for();
        int m4449if = (int) (((((cstatic.m4449if() - 1) * m5728for.f10745do) * (j03 ? -1.0f : 1.0f)) - (m5730do.f10759do - this.f10719do.mo6417goto())) + (this.f10719do.mo6421try() - m5730do.f10759do) + (j03 ? -m5730do.f10758case : m5730do.f10761else));
        int min = j03 ? Math.min(0, m4449if) : Math.max(0, m4449if);
        this.f10722else = j0 ? min : mo6417goto;
        if (j0) {
            min = mo6417goto;
        }
        this.f10723goto = min;
        if (z) {
            this.f10712case = mo6417goto;
            com.google.android.material.carousel.Cfor cfor3 = this.f10717do;
            int m4387abstract = m4387abstract();
            int i = this.f10722else;
            int i2 = this.f10723goto;
            boolean j04 = j0();
            float f3 = cfor3.f10739do.f10745do;
            HashMap hashMap = new HashMap();
            int i3 = 0;
            for (int i4 = 0; i4 < m4387abstract; i4++) {
                int i5 = j04 ? (m4387abstract - i4) - 1 : i4;
                float f4 = i5 * f3 * (j04 ? -1 : 1);
                float f5 = i2 - cfor3.f10742if;
                List<com.google.android.material.carousel.Cif> list = cfor3.f10743if;
                if (f4 > f5 || i4 >= m4387abstract - list.size()) {
                    hashMap.put(Integer.valueOf(i5), list.get(C0315Kc.m1182throw(i3, 0, list.size() - 1)));
                    i3++;
                }
            }
            int i6 = 0;
            for (int i7 = m4387abstract - 1; i7 >= 0; i7--) {
                int i8 = j04 ? (m4387abstract - i7) - 1 : i7;
                float f6 = i8 * f3 * (j04 ? -1 : 1);
                float f7 = i + cfor3.f10738do;
                List<com.google.android.material.carousel.Cif> list2 = cfor3.f10740do;
                if (f6 < f7 || i7 < list2.size()) {
                    hashMap.put(Integer.valueOf(i8), list2.get(C0315Kc.m1182throw(i6, 0, list2.size() - 1)));
                    i6++;
                }
            }
            this.f10721do = hashMap;
            int i9 = this.f10713catch;
            if (i9 != -1) {
                this.f10712case = f0(i9, d0(i9));
            }
        }
        int i10 = this.f10712case;
        int i11 = this.f10722else;
        int i12 = this.f10723goto;
        int i13 = i10 + 0;
        this.f10712case = (i13 < i11 ? i11 - i10 : i13 > i12 ? i12 - i10 : 0) + i10;
        this.f10724this = C0315Kc.m1182throw(this.f10724this, 0, cstatic.m4449if());
        t0(this.f10717do);
        m4398while(cimport);
        b0(cimport, cstatic);
        this.f10711break = m4387abstract();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void w(RecyclerView.Cstatic cstatic) {
        if (m4395throws() == 0) {
            this.f10724this = 0;
        } else {
            this.f10724this = RecyclerView.Cclass.m4380implements(m4394switch(0));
        }
    }

    @SuppressLint({"UnknownNullness"})
    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f10716do = new Cif();
        this.f10724this = 0;
        this.f10715do = new View.OnLayoutChangeListener() { // from class: b7
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i3, int i22, int i32, int i4, int i5, int i6, int i7, int i8) {
                CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
                carouselLayoutManager.getClass();
                if (i3 == i5 && i22 == i6 && i32 == i7 && i4 == i8) {
                    return;
                }
                view.post(new Y1(carouselLayoutManager, 5));
            }
        };
        this.f10713catch = -1;
        this.f10714class = 0;
        this.f10720do = new C0244Gt();
        p0();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.f2515this);
            this.f10714class = obtainStyledAttributes.getInt(0, 0);
            p0();
            r0(obtainStyledAttributes.getInt(0, 0));
            obtainStyledAttributes.recycle();
        }
    }
}
