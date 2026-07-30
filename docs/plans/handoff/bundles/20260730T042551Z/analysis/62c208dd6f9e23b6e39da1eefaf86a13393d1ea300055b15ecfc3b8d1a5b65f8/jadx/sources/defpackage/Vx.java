package defpackage;

import android.os.Handler;
import com.facebook.GraphRequest;
import com.facebook.internal.Validate;
import defpackage.C0324Kl;
import java.io.FilterOutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class Vx extends FilterOutputStream implements Iz {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f4267for = 0;

    /* renamed from: do, reason: not valid java name */
    public final long f4268do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0324Kl f4269do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Kz f4270do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Map<GraphRequest, Kz> f4271do;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public long f4272for;

    /* renamed from: if, reason: not valid java name */
    public final long f4273if;

    /* renamed from: new, reason: not valid java name */
    public long f4274new;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Vx(FilterOutputStream filterOutputStream, C0324Kl c0324Kl, HashMap hashMap, long j) {
        super(filterOutputStream);
        C0173Do.m401try(hashMap, "progressMap");
        this.f4269do = c0324Kl;
        this.f4271do = hashMap;
        this.f4268do = j;
        C3756th c3756th = C3756th.f15751do;
        Validate.sdkInitialized();
        this.f4273if = C3756th.f15748do.get();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        super.close();
        Iterator<Kz> it = this.f4271do.values().iterator();
        while (it.hasNext()) {
            it.next().m1231do();
        }
        m2673for();
    }

    @Override // defpackage.Iz
    /* renamed from: do */
    public final void mo996do(GraphRequest graphRequest) {
        this.f4270do = graphRequest != null ? this.f4271do.get(graphRequest) : null;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m2673for() {
        if (this.f4272for > this.f4274new) {
            C0324Kl c0324Kl = this.f4269do;
            Iterator it = c0324Kl.f1876if.iterator();
            while (it.hasNext()) {
                C0324Kl.Cdo cdo = (C0324Kl.Cdo) it.next();
                if (cdo instanceof C0324Kl.Cif) {
                    Handler handler = c0324Kl.f1874do;
                    if ((handler == null ? null : Boolean.valueOf(handler.post(new RunnableC2786g2(1, cdo, this)))) == null) {
                        ((C0324Kl.Cif) cdo).m1206do();
                    }
                }
            }
            this.f4274new = this.f4272for;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m2674if(long j) {
        Kz kz = this.f4270do;
        if (kz != null) {
            long j2 = kz.f1905if + j;
            kz.f1905if = j2;
            if (j2 >= kz.f1904for + kz.f1901do || j2 >= kz.f1906new) {
                kz.m1231do();
            }
        }
        long j3 = this.f4272for + j;
        this.f4272for = j3;
        if (j3 >= this.f4274new + this.f4273if || j3 >= this.f4268do) {
            m2673for();
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr) {
        C0173Do.m401try(bArr, "buffer");
        ((FilterOutputStream) this).out.write(bArr);
        m2674if(bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        C0173Do.m401try(bArr, "buffer");
        ((FilterOutputStream) this).out.write(bArr, i, i2);
        m2674if(i2);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) {
        ((FilterOutputStream) this).out.write(i);
        m2674if(1L);
    }
}
