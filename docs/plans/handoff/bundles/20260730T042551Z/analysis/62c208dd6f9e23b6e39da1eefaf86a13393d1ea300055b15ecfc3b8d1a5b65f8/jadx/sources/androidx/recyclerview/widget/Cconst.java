package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.os.Trace;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.C2626dI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* renamed from: androidx.recyclerview.widget.const, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cconst implements Runnable {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f7599do;

    /* renamed from: if, reason: not valid java name */
    public long f7601if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final ThreadLocal<Cconst> f7598do = new ThreadLocal<>();

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f7597do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<RecyclerView> f7600do = new ArrayList<>();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ArrayList<Cfor> f7602if = new ArrayList<>();

    /* renamed from: androidx.recyclerview.widget.const$do, reason: invalid class name */
    public class Cdo implements Comparator<Cfor> {
        /* JADX WARN: Code restructure failed: missing block: B:10:0x0022, code lost:
        
            r1 = -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:?, code lost:
        
            return r1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0020, code lost:
        
            if (r0 != false) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0017, code lost:
        
            if (r0 == null) goto L18;
         */
        @Override // java.util.Comparator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int compare(androidx.recyclerview.widget.Cconst.Cfor r7, androidx.recyclerview.widget.Cconst.Cfor r8) {
            /*
                r6 = this;
                androidx.recyclerview.widget.const$for r7 = (androidx.recyclerview.widget.Cconst.Cfor) r7
                androidx.recyclerview.widget.const$for r8 = (androidx.recyclerview.widget.Cconst.Cfor) r8
                androidx.recyclerview.widget.RecyclerView r0 = r7.f7604do
                r1 = 1
                r2 = 0
                if (r0 != 0) goto Lc
                r3 = 1
                goto Ld
            Lc:
                r3 = 0
            Ld:
                androidx.recyclerview.widget.RecyclerView r4 = r8.f7604do
                if (r4 != 0) goto L13
                r4 = 1
                goto L14
            L13:
                r4 = 0
            L14:
                r5 = -1
                if (r3 == r4) goto L1a
                if (r0 != 0) goto L22
                goto L23
            L1a:
                boolean r0 = r7.f7605do
                boolean r3 = r8.f7605do
                if (r0 == r3) goto L25
                if (r0 == 0) goto L23
            L22:
                r1 = -1
            L23:
                r2 = r1
                goto L36
            L25:
                int r0 = r8.f7603do
                int r1 = r7.f7603do
                int r0 = r0 - r1
                if (r0 == 0) goto L2e
                r2 = r0
                goto L36
            L2e:
                int r7 = r7.f7607if
                int r8 = r8.f7607if
                int r7 = r7 - r8
                if (r7 == 0) goto L36
                r2 = r7
            L36:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.Cconst.Cdo.compare(java.lang.Object, java.lang.Object):int");
        }
    }

    /* renamed from: androidx.recyclerview.widget.const$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        public int f7603do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public RecyclerView f7604do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f7605do;

        /* renamed from: for, reason: not valid java name */
        public int f7606for;

        /* renamed from: if, reason: not valid java name */
        public int f7607if;
    }

    @SuppressLint({"VisibleForTests"})
    /* renamed from: androidx.recyclerview.widget.const$if, reason: invalid class name */
    public static class Cif implements RecyclerView.Cclass.Cfor {

        /* renamed from: do, reason: not valid java name */
        public int f7608do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int[] f7609do;

        /* renamed from: for, reason: not valid java name */
        public int f7610for;

        /* renamed from: if, reason: not valid java name */
        public int f7611if;

        /* renamed from: do, reason: not valid java name */
        public final void m4498do(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i2 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i3 = this.f7610for * 2;
            int[] iArr = this.f7609do;
            if (iArr == null) {
                int[] iArr2 = new int[4];
                this.f7609do = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i3 >= iArr.length) {
                int[] iArr3 = new int[i3 * 2];
                this.f7609do = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            }
            int[] iArr4 = this.f7609do;
            iArr4[i3] = i;
            iArr4[i3 + 1] = i2;
            this.f7610for++;
        }

        /* renamed from: if, reason: not valid java name */
        public final void m4499if(RecyclerView recyclerView, boolean z) {
            this.f7610for = 0;
            int[] iArr = this.f7609do;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.Cclass cclass = recyclerView.f7312do;
            if (recyclerView.f7323do == null || cclass == null || !cclass.f7385new) {
                return;
            }
            if (!z) {
                if (!(!recyclerView.f7356new || recyclerView.f7361this || recyclerView.f7327do.m4508else())) {
                    cclass.mo4322this(this.f7608do, this.f7611if, recyclerView.f7319do, this);
                }
            } else if (!recyclerView.f7327do.m4508else()) {
                cclass.mo4315break(recyclerView.f7323do.mo1023for(), this);
            }
            int i = this.f7610for;
            if (i > cclass.f7373do) {
                cclass.f7373do = i;
                cclass.f7387try = z;
                recyclerView.f7316do.m4432final();
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static RecyclerView.Cdefault m4495for(RecyclerView recyclerView, int i, long j) {
        boolean z;
        int m4526goto = recyclerView.f7328do.m4526goto();
        int i2 = 0;
        while (true) {
            if (i2 >= m4526goto) {
                z = false;
                break;
            }
            RecyclerView.Cdefault m4335implements = RecyclerView.m4335implements(recyclerView.f7328do.m4524else(i2));
            if (m4335implements.f7396do == i && !m4335implements.m4412else()) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            return null;
        }
        RecyclerView.Cimport cimport = recyclerView.f7316do;
        try {
            recyclerView.f();
            RecyclerView.Cdefault m4428class = cimport.m4428class(j, i);
            if (m4428class != null) {
                if (!m4428class.m4407case() || m4428class.m4412else()) {
                    cimport.m4430do(m4428class, false);
                } else {
                    cimport.m4437this(m4428class.f7398do);
                }
            }
            return m4428class;
        } finally {
            recyclerView.g(false);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4496do(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow()) {
            int[] iArr = RecyclerView.f7292try;
            if (this.f7599do == 0) {
                this.f7599do = recyclerView.m4361synchronized();
                recyclerView.post(this);
            }
        }
        Cif cif = recyclerView.f7325do;
        cif.f7608do = i;
        cif.f7611if = i2;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m4497if(long j) {
        Cfor cfor;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        Cfor cfor2;
        ArrayList<RecyclerView> arrayList = this.f7600do;
        int size = arrayList.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView3 = arrayList.get(i2);
            if (recyclerView3.getWindowVisibility() == 0) {
                Cif cif = recyclerView3.f7325do;
                cif.m4499if(recyclerView3, false);
                i += cif.f7610for;
            }
        }
        ArrayList<Cfor> arrayList2 = this.f7602if;
        arrayList2.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView4 = arrayList.get(i4);
            if (recyclerView4.getWindowVisibility() == 0) {
                Cif cif2 = recyclerView4.f7325do;
                int abs = Math.abs(cif2.f7611if) + Math.abs(cif2.f7608do);
                for (int i5 = 0; i5 < cif2.f7610for * 2; i5 += 2) {
                    if (i3 >= arrayList2.size()) {
                        cfor2 = new Cfor();
                        arrayList2.add(cfor2);
                    } else {
                        cfor2 = arrayList2.get(i3);
                    }
                    int[] iArr = cif2.f7609do;
                    int i6 = iArr[i5 + 1];
                    cfor2.f7605do = i6 <= abs;
                    cfor2.f7603do = abs;
                    cfor2.f7607if = i6;
                    cfor2.f7604do = recyclerView4;
                    cfor2.f7606for = iArr[i5];
                    i3++;
                }
            }
        }
        Collections.sort(arrayList2, f7597do);
        for (int i7 = 0; i7 < arrayList2.size() && (recyclerView = (cfor = arrayList2.get(i7)).f7604do) != null; i7++) {
            RecyclerView.Cdefault m4495for = m4495for(recyclerView, cfor.f7606for, cfor.f7605do ? Long.MAX_VALUE : j);
            if (m4495for != null && m4495for.f7403do != null && m4495for.m4407case() && !m4495for.m4412else() && (recyclerView2 = m4495for.f7403do.get()) != null) {
                if (recyclerView2.f7361this && recyclerView2.f7328do.m4526goto() != 0) {
                    Ccatch ccatch = recyclerView2.f7324do;
                    if (ccatch != null) {
                        ccatch.m4488goto();
                    }
                    RecyclerView.Cclass cclass = recyclerView2.f7312do;
                    RecyclerView.Cimport cimport = recyclerView2.f7316do;
                    if (cclass != null) {
                        cclass.B(cimport);
                        recyclerView2.f7312do.C(cimport);
                    }
                    cimport.f7419do.clear();
                    cimport.m4431else();
                }
                Cif cif3 = recyclerView2.f7325do;
                cif3.m4499if(recyclerView2, true);
                if (cif3.f7610for != 0) {
                    try {
                        int i8 = C2626dI.f12469do;
                        Trace.beginSection("RV Nested Prefetch");
                        RecyclerView.Cstatic cstatic = recyclerView2.f7319do;
                        RecyclerView.Ctry ctry = recyclerView2.f7323do;
                        cstatic.f7449new = 1;
                        cstatic.f7451try = ctry.mo1023for();
                        cstatic.f7448if = false;
                        cstatic.f7446for = false;
                        cstatic.f7450new = false;
                        for (int i9 = 0; i9 < cif3.f7610for * 2; i9 += 2) {
                            m4495for(recyclerView2, cif3.f7609do[i9], j);
                        }
                        Trace.endSection();
                        cfor.f7605do = false;
                        cfor.f7603do = 0;
                        cfor.f7607if = 0;
                        cfor.f7604do = null;
                        cfor.f7606for = 0;
                    } catch (Throwable th) {
                        int i10 = C2626dI.f12469do;
                        Trace.endSection();
                        throw th;
                    }
                }
            }
            cfor.f7605do = false;
            cfor.f7603do = 0;
            cfor.f7607if = 0;
            cfor.f7604do = null;
            cfor.f7606for = 0;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            int i = C2626dI.f12469do;
            Trace.beginSection("RV Prefetch");
            ArrayList<RecyclerView> arrayList = this.f7600do;
            if (arrayList.isEmpty()) {
                this.f7599do = 0L;
                Trace.endSection();
                return;
            }
            int size = arrayList.size();
            long j = 0;
            for (int i2 = 0; i2 < size; i2++) {
                RecyclerView recyclerView = arrayList.get(i2);
                if (recyclerView.getWindowVisibility() == 0) {
                    j = Math.max(recyclerView.getDrawingTime(), j);
                }
            }
            if (j == 0) {
                this.f7599do = 0L;
                Trace.endSection();
            } else {
                m4497if(TimeUnit.MILLISECONDS.toNanos(j) + this.f7601if);
                this.f7599do = 0L;
                Trace.endSection();
            }
        } catch (Throwable th) {
            this.f7599do = 0L;
            int i3 = C2626dI.f12469do;
            Trace.endSection();
            throw th;
        }
    }
}
