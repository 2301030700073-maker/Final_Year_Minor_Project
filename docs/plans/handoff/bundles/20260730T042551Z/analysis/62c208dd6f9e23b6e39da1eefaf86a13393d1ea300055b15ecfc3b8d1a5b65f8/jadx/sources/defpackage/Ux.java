package defpackage;

import android.os.Handler;
import com.facebook.GraphRequest;
import java.io.OutputStream;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class Ux extends OutputStream implements Iz {

    /* renamed from: do, reason: not valid java name */
    public Kz f4006do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Handler f4007do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public GraphRequest f4008do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f4009do = new HashMap();

    /* renamed from: for, reason: not valid java name */
    public int f4010for;

    public Ux(Handler handler) {
        this.f4007do = handler;
    }

    @Override // defpackage.Iz
    /* renamed from: do */
    public final void mo996do(GraphRequest graphRequest) {
        this.f4008do = graphRequest;
        this.f4006do = graphRequest != null ? (Kz) this.f4009do.get(graphRequest) : null;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m2486if(long j) {
        GraphRequest graphRequest = this.f4008do;
        if (graphRequest == null) {
            return;
        }
        if (this.f4006do == null) {
            Kz kz = new Kz(this.f4007do, graphRequest);
            this.f4006do = kz;
            this.f4009do.put(graphRequest, kz);
        }
        Kz kz2 = this.f4006do;
        if (kz2 != null) {
            kz2.f1906new += j;
        }
        this.f4010for += (int) j;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        C0173Do.m401try(bArr, "buffer");
        m2486if(bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        C0173Do.m401try(bArr, "buffer");
        m2486if(i2);
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        m2486if(1L);
    }
}
