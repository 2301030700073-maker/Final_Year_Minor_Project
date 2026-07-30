package c.b.a.c.j;

import java.util.Objects;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public final c f3074a = new c();

    public boolean a(Exception exc) {
        c cVar = this.f3074a;
        Objects.requireNonNull(cVar);
        c.b.a.c.b.a.S(exc, "Exception must not be null");
        synchronized (cVar.f3076a) {
            if (cVar.f3078c) {
                return false;
            }
            cVar.f3078c = true;
            cVar.f3077b.a(cVar);
            return true;
        }
    }
}
