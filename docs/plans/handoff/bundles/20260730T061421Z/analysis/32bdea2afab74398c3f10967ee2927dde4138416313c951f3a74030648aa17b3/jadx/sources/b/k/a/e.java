package b.k.a;

import android.util.Log;
import b.d.o;
import b.j.B;
import b.j.D;
import java.util.Objects;

/* loaded from: classes.dex */
public class e extends B {

    /* renamed from: d, reason: collision with root package name */
    public static final D f1014d = new d();

    /* renamed from: c, reason: collision with root package name */
    public o f1015c = new o();

    @Override // b.j.B
    public void a() {
        if (this.f1015c.h() > 0) {
            b bVar = (b) this.f1015c.i(0);
            Objects.requireNonNull(bVar);
            if (!f.c(3)) {
                throw null;
            }
            Log.d("LoaderManager", "  Destroying: " + bVar);
            throw null;
        }
        o oVar = this.f1015c;
        int i = oVar.f660d;
        Object[] objArr = oVar.f659c;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        oVar.f660d = 0;
        oVar.f657a = false;
    }
}
