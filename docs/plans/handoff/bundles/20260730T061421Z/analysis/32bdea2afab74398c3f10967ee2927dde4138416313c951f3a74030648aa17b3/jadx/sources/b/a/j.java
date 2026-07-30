package b.a;

import b.i.b.J;
import b.i.b.X;
import java.util.ArrayDeque;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f223a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayDeque f224b = new ArrayDeque();

    public j(Runnable runnable) {
        this.f223a = runnable;
    }

    public void a() {
        Iterator descendingIterator = this.f224b.descendingIterator();
        while (descendingIterator.hasNext()) {
            h hVar = (h) descendingIterator.next();
            if (hVar.f219a) {
                X x = ((J) hVar).f858c;
                x.C(true);
                if (x.h.f219a) {
                    x.V();
                    return;
                } else {
                    x.g.a();
                    return;
                }
            }
        }
        Runnable runnable = this.f223a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
