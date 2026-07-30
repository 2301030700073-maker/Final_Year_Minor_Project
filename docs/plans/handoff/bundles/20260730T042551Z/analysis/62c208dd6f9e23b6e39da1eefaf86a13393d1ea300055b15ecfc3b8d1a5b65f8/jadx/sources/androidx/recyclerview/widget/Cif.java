package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.C3385nL;
import defpackage.QK;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* renamed from: androidx.recyclerview.widget.if, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cif {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f7649do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0042if f7651do;

    /* renamed from: do, reason: not valid java name */
    public int f7648do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f7650do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f7652do = new ArrayList();

    /* renamed from: androidx.recyclerview.widget.if$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public long f7653do = 0;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Cdo f7654do;

        /* renamed from: case, reason: not valid java name */
        public final boolean m4531case(int i) {
            if (i >= 64) {
                m4534for();
                return this.f7654do.m4531case(i - 64);
            }
            long j = 1 << i;
            long j2 = this.f7653do;
            boolean z = (j2 & j) != 0;
            long j3 = j2 & (~j);
            this.f7653do = j3;
            long j4 = j - 1;
            this.f7653do = (j3 & j4) | Long.rotateRight((~j4) & j3, 1);
            Cdo cdo = this.f7654do;
            if (cdo != null) {
                if (cdo.m4537new(0)) {
                    m4535goto(63);
                }
                this.f7654do.m4531case(0);
            }
            return z;
        }

        /* renamed from: do, reason: not valid java name */
        public final void m4532do(int i) {
            if (i < 64) {
                this.f7653do &= ~(1 << i);
                return;
            }
            Cdo cdo = this.f7654do;
            if (cdo != null) {
                cdo.m4532do(i - 64);
            }
        }

        /* renamed from: else, reason: not valid java name */
        public final void m4533else() {
            this.f7653do = 0L;
            Cdo cdo = this.f7654do;
            if (cdo != null) {
                cdo.m4533else();
            }
        }

        /* renamed from: for, reason: not valid java name */
        public final void m4534for() {
            if (this.f7654do == null) {
                this.f7654do = new Cdo();
            }
        }

        /* renamed from: goto, reason: not valid java name */
        public final void m4535goto(int i) {
            if (i < 64) {
                this.f7653do |= 1 << i;
            } else {
                m4534for();
                this.f7654do.m4535goto(i - 64);
            }
        }

        /* renamed from: if, reason: not valid java name */
        public final int m4536if(int i) {
            Cdo cdo = this.f7654do;
            if (cdo == null) {
                return i >= 64 ? Long.bitCount(this.f7653do) : Long.bitCount(this.f7653do & ((1 << i) - 1));
            }
            if (i < 64) {
                return Long.bitCount(this.f7653do & ((1 << i) - 1));
            }
            return Long.bitCount(this.f7653do) + cdo.m4536if(i - 64);
        }

        /* renamed from: new, reason: not valid java name */
        public final boolean m4537new(int i) {
            if (i < 64) {
                return (this.f7653do & (1 << i)) != 0;
            }
            m4534for();
            return this.f7654do.m4537new(i - 64);
        }

        public final String toString() {
            if (this.f7654do == null) {
                return Long.toBinaryString(this.f7653do);
            }
            return this.f7654do.toString() + "xx" + Long.toBinaryString(this.f7653do);
        }

        /* renamed from: try, reason: not valid java name */
        public final void m4538try(int i, boolean z) {
            if (i >= 64) {
                m4534for();
                this.f7654do.m4538try(i - 64, z);
                return;
            }
            long j = this.f7653do;
            boolean z2 = (Long.MIN_VALUE & j) != 0;
            long j2 = (1 << i) - 1;
            this.f7653do = ((j & (~j2)) << 1) | (j & j2);
            if (z) {
                m4535goto(i);
            } else {
                m4532do(i);
            }
            if (z2 || this.f7654do != null) {
                m4534for();
                this.f7654do.m4538try(0, z2);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.if$if, reason: invalid class name and collision with other inner class name */
    public interface InterfaceC0042if {
    }

    public Cif(Cstatic cstatic) {
        this.f7651do = cstatic;
    }

    /* renamed from: break, reason: not valid java name */
    public final boolean m4520break(View view) {
        return this.f7652do.contains(view);
    }

    /* renamed from: case, reason: not valid java name */
    public final int m4521case(int i) {
        if (i < 0) {
            return -1;
        }
        int m4567do = ((Cstatic) this.f7651do).m4567do();
        int i2 = i;
        while (i2 < m4567do) {
            Cdo cdo = this.f7650do;
            int m4536if = i - (i2 - cdo.m4536if(i2));
            if (m4536if == 0) {
                while (cdo.m4537new(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += m4536if;
        }
        return -1;
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m4522catch(View view) {
        if (this.f7652do.remove(view)) {
            Cstatic cstatic = (Cstatic) this.f7651do;
            cstatic.getClass();
            RecyclerView.Cdefault m4335implements = RecyclerView.m4335implements(view);
            if (m4335implements != null) {
                int i = m4335implements.f7407else;
                RecyclerView recyclerView = cstatic.f7676do;
                if (recyclerView.b()) {
                    m4335implements.f7409goto = i;
                    recyclerView.f7297case.add(m4335implements);
                } else {
                    WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                    m4335implements.f7398do.setImportantForAccessibility(i);
                }
                m4335implements.f7407else = 0;
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4523do(View view, boolean z, int i) {
        InterfaceC0042if interfaceC0042if = this.f7651do;
        int m4567do = i < 0 ? ((Cstatic) interfaceC0042if).m4567do() : m4521case(i);
        this.f7650do.m4538try(m4567do, z);
        if (z) {
            m4529this(view);
        }
        RecyclerView recyclerView = ((Cstatic) interfaceC0042if).f7676do;
        recyclerView.addView(view, m4567do);
        RecyclerView.m4335implements(view);
        ArrayList arrayList = recyclerView.f7355new;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                ((RecyclerView.Cconst) recyclerView.f7355new.get(size)).mo4404do(view);
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final View m4524else(int i) {
        return ((Cstatic) this.f7651do).f7676do.getChildAt(i);
    }

    /* renamed from: for, reason: not valid java name */
    public final void m4525for(int i) {
        int m4521case = m4521case(i);
        this.f7650do.m4531case(m4521case);
        Cstatic cstatic = (Cstatic) this.f7651do;
        View childAt = cstatic.f7676do.getChildAt(m4521case);
        RecyclerView recyclerView = cstatic.f7676do;
        if (childAt != null) {
            RecyclerView.Cdefault m4335implements = RecyclerView.m4335implements(childAt);
            if (m4335implements != null) {
                if (m4335implements.m4408catch() && !m4335implements.m4418super()) {
                    throw new IllegalArgumentException("called detach on an already detached child " + m4335implements + recyclerView.m4348finally());
                }
                m4335implements.m4416if(256);
            }
        } else {
            int[] iArr = RecyclerView.f7292try;
        }
        recyclerView.detachViewFromParent(m4521case);
    }

    /* renamed from: goto, reason: not valid java name */
    public final int m4526goto() {
        return ((Cstatic) this.f7651do).m4567do();
    }

    /* renamed from: if, reason: not valid java name */
    public final void m4527if(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        InterfaceC0042if interfaceC0042if = this.f7651do;
        int m4567do = i < 0 ? ((Cstatic) interfaceC0042if).m4567do() : m4521case(i);
        this.f7650do.m4538try(m4567do, z);
        if (z) {
            m4529this(view);
        }
        Cstatic cstatic = (Cstatic) interfaceC0042if;
        cstatic.getClass();
        RecyclerView.Cdefault m4335implements = RecyclerView.m4335implements(view);
        RecyclerView recyclerView = cstatic.f7676do;
        if (m4335implements != null) {
            if (!m4335implements.m4408catch() && !m4335implements.m4418super()) {
                throw new IllegalArgumentException("Called attach on a child which is not detached: " + m4335implements + recyclerView.m4348finally());
            }
            m4335implements.f7413try &= -257;
        }
        recyclerView.attachViewToParent(view, m4567do, layoutParams);
    }

    /* renamed from: new, reason: not valid java name */
    public final View m4528new(int i) {
        return ((Cstatic) this.f7651do).f7676do.getChildAt(m4521case(i));
    }

    /* renamed from: this, reason: not valid java name */
    public final void m4529this(View view) {
        this.f7652do.add(view);
        Cstatic cstatic = (Cstatic) this.f7651do;
        cstatic.getClass();
        RecyclerView.Cdefault m4335implements = RecyclerView.m4335implements(view);
        if (m4335implements != null) {
            int i = m4335implements.f7409goto;
            View view2 = m4335implements.f7398do;
            if (i != -1) {
                m4335implements.f7407else = i;
            } else {
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                m4335implements.f7407else = view2.getImportantForAccessibility();
            }
            RecyclerView recyclerView = cstatic.f7676do;
            if (recyclerView.b()) {
                m4335implements.f7409goto = 4;
                recyclerView.f7297case.add(m4335implements);
            } else {
                WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
                view2.setImportantForAccessibility(4);
            }
        }
    }

    public final String toString() {
        return this.f7650do.toString() + ", hidden list:" + this.f7652do.size();
    }

    /* renamed from: try, reason: not valid java name */
    public final int m4530try() {
        return ((Cstatic) this.f7651do).m4567do() - this.f7652do.size();
    }
}
