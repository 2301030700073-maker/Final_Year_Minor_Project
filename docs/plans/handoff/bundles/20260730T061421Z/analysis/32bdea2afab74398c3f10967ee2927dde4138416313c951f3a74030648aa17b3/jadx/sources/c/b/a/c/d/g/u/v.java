package c.b.a.c.d.g.u;

import android.util.SparseArray;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class v {

    /* renamed from: d, reason: collision with root package name */
    public static final Map f2927d = new WeakHashMap();
    public static final Object e = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Object f2928a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final SparseArray f2929b = new SparseArray();

    /* renamed from: c, reason: collision with root package name */
    public final SparseArray f2930c = new SparseArray();

    public final void a() {
        synchronized (this.f2928a) {
            this.f2930c.clear();
            for (int i = 0; i < this.f2929b.size(); i++) {
                ((c.b.a.c.d.g.q) this.f2929b.valueAt(i)).a(null);
            }
        }
    }

    public final void b(Object obj) {
        synchronized (this.f2928a) {
            for (int i = 0; i < this.f2929b.size(); i++) {
                BasePendingResult basePendingResult = (BasePendingResult) ((c.b.a.c.d.g.q) this.f2929b.valueAt(i));
                synchronized (basePendingResult.f3377a) {
                    if (!basePendingResult.j && !basePendingResult.i) {
                        BasePendingResult.e(basePendingResult.g);
                        basePendingResult.j = true;
                        basePendingResult.f(basePendingResult.c(Status.g));
                    }
                }
            }
        }
        synchronized (e) {
            f2927d.remove(obj);
        }
    }
}
