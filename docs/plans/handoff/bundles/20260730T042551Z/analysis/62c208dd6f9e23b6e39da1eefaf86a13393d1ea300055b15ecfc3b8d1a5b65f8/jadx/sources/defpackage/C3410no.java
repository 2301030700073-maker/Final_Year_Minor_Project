package defpackage;

import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

/* renamed from: no, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3410no implements A6 {

    /* renamed from: do, reason: not valid java name */
    public final long f14603do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final A6 f14604do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0113Au f14605do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Timer f14606do;

    public C3410no(A6 a6, AI ai, Timer timer, long j) {
        this.f14604do = a6;
        this.f14605do = new C0113Au(ai);
        this.f14603do = j;
        this.f14606do = timer;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m7615do(Vy vy, IOException iOException) {
        Bz bz = vy.f4275do;
        C0113Au c0113Au = this.f14605do;
        if (bz != null) {
            C0237Gm c0237Gm = bz.f296do;
            if (c0237Gm != null) {
                try {
                    c0113Au.m117throw(new URL(c0237Gm.f1227case).toString());
                } catch (MalformedURLException e) {
                    throw new RuntimeException(e);
                }
            }
            String str = bz.f299do;
            if (str != null) {
                c0113Au.m115new(str);
            }
        }
        c0113Au.m109catch(this.f14603do);
        C4122zt.m8828this(this.f14606do, c0113Au, c0113Au);
        ((C3410no) this.f14604do).m7615do(vy, iOException);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m7616if(Vy vy, Tz tz) {
        FirebasePerfOkHttpClient.m6116do(tz, this.f14605do, this.f14603do, this.f14606do.m6126do());
        ((C3410no) this.f14604do).m7616if(vy, tz);
    }
}
