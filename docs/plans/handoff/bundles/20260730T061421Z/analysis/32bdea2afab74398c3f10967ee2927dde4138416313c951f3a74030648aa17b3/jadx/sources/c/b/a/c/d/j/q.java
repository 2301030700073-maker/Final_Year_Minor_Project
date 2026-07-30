package c.b.a.c.d.j;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public final List f2979a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f2980b;

    public q(Object obj, p pVar) {
        c.b.a.c.b.a.R(obj);
        this.f2980b = obj;
        this.f2979a = new ArrayList();
    }

    public final q a(String str, Object obj) {
        List list = this.f2979a;
        c.b.a.c.b.a.R(str);
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(valueOf.length() + str.length() + 1);
        sb.append(str);
        sb.append("=");
        sb.append(valueOf);
        list.add(sb.toString());
        return this;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append(this.f2980b.getClass().getSimpleName());
        sb.append('{');
        int size = this.f2979a.size();
        for (int i = 0; i < size; i++) {
            sb.append((String) this.f2979a.get(i));
            if (i < size - 1) {
                sb.append(", ");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
