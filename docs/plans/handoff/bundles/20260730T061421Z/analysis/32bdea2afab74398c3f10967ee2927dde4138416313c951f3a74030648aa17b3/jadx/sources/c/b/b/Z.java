package c.b.b;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class Z extends AbstractC0444b0 {

    /* renamed from: c, reason: collision with root package name */
    public static final Class f3162c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    public Z(Y y) {
        super(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List c(Object obj, long j, int i) {
        W w;
        List list = (List) U0.k(obj, j);
        if (list.isEmpty()) {
            List w2 = list instanceof X ? new W(i) : ((list instanceof InterfaceC0485w0) && (list instanceof O)) ? ((O) list).d(i) : new ArrayList(i);
            U0.r(obj, j, w2);
            return w2;
        }
        if (f3162c.isAssignableFrom(list.getClass())) {
            ArrayList arrayList = new ArrayList(list.size() + i);
            arrayList.addAll(list);
            U0.r(obj, j, arrayList);
            w = arrayList;
        } else {
            if (!(list instanceof R0)) {
                if (!(list instanceof InterfaceC0485w0) || !(list instanceof O)) {
                    return list;
                }
                O o = (O) list;
                if (o.f()) {
                    return list;
                }
                O d2 = o.d(list.size() + i);
                U0.r(obj, j, d2);
                return d2;
            }
            W w3 = new W(list.size() + i);
            w3.addAll(w3.size(), (R0) list);
            U0.r(obj, j, w3);
            w = w3;
        }
        return w;
    }

    @Override // c.b.b.AbstractC0444b0
    public void a(Object obj, long j) {
        Object unmodifiableList;
        List list = (List) U0.k(obj, j);
        if (list instanceof X) {
            unmodifiableList = ((X) list).a();
        } else {
            if (f3162c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof InterfaceC0485w0) && (list instanceof O)) {
                O o = (O) list;
                if (o.f()) {
                    o.b();
                    return;
                }
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        U0.r(obj, j, unmodifiableList);
    }

    @Override // c.b.b.AbstractC0444b0
    public void b(Object obj, Object obj2, long j) {
        List list = (List) U0.k(obj2, j);
        List c2 = c(obj, j, list.size());
        int size = c2.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            c2.addAll(list);
        }
        if (size > 0) {
            list = c2;
        }
        U0.r(obj, j, list);
    }
}
