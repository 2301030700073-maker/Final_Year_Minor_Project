package defpackage;

import defpackage.C3947wv;
import defpackage.SA;
import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.ArrayList;

/* renamed from: tF, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3732tF {

    /* renamed from: do, reason: not valid java name */
    public int f15667do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public QA f15668do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public SA.Cdo f15669do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SA f15670do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Wy f15671do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f15672do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3337ma f15673do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3599r0 f15674do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3755tg f15675do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3959x6 f15676do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InterfaceC4115zm f15677do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f15678do;

    /* renamed from: for, reason: not valid java name */
    public boolean f15679for;

    /* renamed from: if, reason: not valid java name */
    public boolean f15680if;

    /* renamed from: tF$do, reason: invalid class name */
    public static final class Cdo extends WeakReference<C3732tF> {

        /* renamed from: do, reason: not valid java name */
        public final Object f15681do;

        public Cdo(C3732tF c3732tF, Object obj) {
            super(c3732tF);
            this.f15681do = obj;
        }
    }

    public C3732tF(C3337ma c3337ma, C3599r0 c3599r0, InterfaceC3959x6 interfaceC3959x6, AbstractC3755tg abstractC3755tg, Object obj) {
        this.f15673do = c3337ma;
        this.f15674do = c3599r0;
        this.f15676do = interfaceC3959x6;
        this.f15675do = abstractC3755tg;
        AbstractC4058yo.f16832do.getClass();
        this.f15670do = new SA(c3599r0, c3337ma.f14359do, interfaceC3959x6, abstractC3755tg);
        this.f15672do = obj;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m8232case() {
        Wy wy;
        Socket m8235for;
        synchronized (this.f15673do) {
            wy = this.f15671do;
            m8235for = m8235for(true, false, false);
            if (this.f15671do != null) {
                wy = null;
            }
        }
        SJ.m2130case(m8235for);
        if (wy != null) {
            this.f15675do.getClass();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m8233do(Wy wy, boolean z) {
        if (this.f15671do != null) {
            throw new IllegalStateException();
        }
        this.f15671do = wy;
        this.f15678do = z;
        wy.f4420do.add(new Cdo(this, this.f15672do));
    }

    /* renamed from: else, reason: not valid java name */
    public final void m8234else() {
        Wy wy;
        Socket m8235for;
        synchronized (this.f15673do) {
            wy = this.f15671do;
            m8235for = m8235for(false, true, false);
            if (this.f15671do != null) {
                wy = null;
            }
        }
        SJ.m2130case(m8235for);
        if (wy != null) {
            C3947wv.Cdo cdo = AbstractC4058yo.f16832do;
            InterfaceC3959x6 interfaceC3959x6 = this.f15676do;
            cdo.getClass();
            ((Vy) interfaceC3959x6).m2680try(null);
            this.f15675do.getClass();
            this.f15675do.getClass();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final Socket m8235for(boolean z, boolean z2, boolean z3) {
        Socket socket;
        if (z3) {
            this.f15677do = null;
        }
        boolean z4 = true;
        if (z2) {
            this.f15680if = true;
        }
        Wy wy = this.f15671do;
        if (wy == null) {
            return null;
        }
        if (z) {
            wy.f4424do = true;
        }
        if (this.f15677do != null) {
            return null;
        }
        if (!this.f15680if && !wy.f4424do) {
            return null;
        }
        ArrayList arrayList = wy.f4420do;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (((Reference) arrayList.get(i)).get() == this) {
                arrayList.remove(i);
                if (this.f15671do.f4420do.isEmpty()) {
                    this.f15671do.f4414do = System.nanoTime();
                    C3947wv.Cdo cdo = AbstractC4058yo.f16832do;
                    Wy wy2 = this.f15671do;
                    cdo.getClass();
                    C3337ma c3337ma = this.f15673do;
                    c3337ma.getClass();
                    if (wy2.f4424do || c3337ma.f14355do == 0) {
                        c3337ma.f14357do.remove(wy2);
                    } else {
                        c3337ma.notifyAll();
                        z4 = false;
                    }
                    if (z4) {
                        socket = this.f15671do.f4426if;
                        this.f15671do = null;
                        return socket;
                    }
                }
                socket = null;
                this.f15671do = null;
                return socket;
            }
        }
        throw new IllegalStateException();
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m8236goto(IOException iOException) {
        Wy wy;
        boolean z;
        Socket m8235for;
        synchronized (this.f15673do) {
            try {
                wy = null;
                if (iOException instanceof C3791uF) {
                    int i = ((C3791uF) iOException).f15870for;
                    if (i == 5) {
                        int i2 = this.f15667do + 1;
                        this.f15667do = i2;
                        if (i2 > 1) {
                            this.f15668do = null;
                            z = true;
                        }
                        z = false;
                    } else {
                        if (i != 6) {
                            this.f15668do = null;
                            z = true;
                        }
                        z = false;
                    }
                } else {
                    Wy wy2 = this.f15671do;
                    if (wy2 != null) {
                        if (!(wy2.f4422do != null) || (iOException instanceof C3396na)) {
                            if (wy2.f4413do == 0) {
                                QA qa = this.f15668do;
                                if (qa != null && iOException != null) {
                                    this.f15670do.m2117do(qa, iOException);
                                }
                                this.f15668do = null;
                            }
                            z = true;
                        }
                    }
                    z = false;
                }
                Wy wy3 = this.f15671do;
                m8235for = m8235for(z, false, true);
                if (this.f15671do == null && this.f15678do) {
                    wy = wy3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        SJ.m2130case(m8235for);
        if (wy != null) {
            this.f15675do.getClass();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final synchronized Wy m8237if() {
        return this.f15671do;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0074, code lost:
    
        if ((r0.f3463do < r0.f3464do.size()) == false) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0084 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.Wy m8238new(boolean r18, int r19, int r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3732tF.m8238new(boolean, int, int, int, int):Wy");
    }

    /* renamed from: this, reason: not valid java name */
    public final void m8239this(boolean z, InterfaceC4115zm interfaceC4115zm, IOException iOException) {
        Wy wy;
        Socket m8235for;
        boolean z2;
        this.f15675do.getClass();
        synchronized (this.f15673do) {
            if (interfaceC4115zm != null) {
                if (interfaceC4115zm == this.f15677do) {
                    if (!z) {
                        this.f15671do.f4413do++;
                    }
                    wy = this.f15671do;
                    m8235for = m8235for(z, false, true);
                    if (this.f15671do != null) {
                        wy = null;
                    }
                    z2 = this.f15680if;
                }
            }
            throw new IllegalStateException("expected " + this.f15677do + " but was " + interfaceC4115zm);
        }
        SJ.m2130case(m8235for);
        if (wy != null) {
            this.f15675do.getClass();
        }
        if (iOException != null) {
            C3947wv.Cdo cdo = AbstractC4058yo.f16832do;
            InterfaceC3959x6 interfaceC3959x6 = this.f15676do;
            cdo.getClass();
            ((Vy) interfaceC3959x6).m2680try(iOException);
            this.f15675do.getClass();
            return;
        }
        if (z2) {
            C3947wv.Cdo cdo2 = AbstractC4058yo.f16832do;
            InterfaceC3959x6 interfaceC3959x62 = this.f15676do;
            cdo2.getClass();
            ((Vy) interfaceC3959x62).m2680try(null);
            this.f15675do.getClass();
        }
    }

    public final String toString() {
        Wy m8237if = m8237if();
        return m8237if != null ? m8237if.toString() : this.f15674do.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public final Wy m8240try(int i, int i2, int i3, boolean z, boolean z2, int i4) {
        while (true) {
            Wy m8238new = m8238new(z, i, i2, i3, i4);
            synchronized (this.f15673do) {
                try {
                    if (m8238new.f4413do == 0) {
                        if (!(m8238new.f4422do != null)) {
                            return m8238new;
                        }
                    }
                    if (m8238new.m2787goto(z2)) {
                        return m8238new;
                    }
                    m8232case();
                } finally {
                }
            }
        }
    }
}
