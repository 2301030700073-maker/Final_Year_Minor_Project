package b.e.g;

import android.os.Handler;
import b.b.g.Z;

/* loaded from: classes.dex */
public class c implements n {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Z f711a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Handler f712b;

    public c(Z z, Handler handler) {
        this.f711a = z;
        this.f712b = handler;
    }

    @Override // b.e.g.n
    public void a(Object obj) {
        h hVar = (h) obj;
        if (hVar == null) {
            this.f711a.a(1, this.f712b);
            return;
        }
        int i = hVar.f721b;
        if (i == 0) {
            this.f711a.b(hVar.f720a, this.f712b);
        } else {
            this.f711a.a(i, this.f712b);
        }
    }
}
