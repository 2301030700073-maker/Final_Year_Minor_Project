package c.b.b;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class I0 implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public int f3125a = -1;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3126b;

    /* renamed from: c, reason: collision with root package name */
    public Iterator f3127c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ K0 f3128d;

    public I0(K0 k0, D0 d0) {
        this.f3128d = k0;
    }

    public final Iterator a() {
        if (this.f3127c == null) {
            this.f3127c = this.f3128d.f3132c.entrySet().iterator();
        }
        return this.f3127c;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f3125a + 1 >= this.f3128d.f3131b.size()) {
            return !this.f3128d.f3132c.isEmpty() && a().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public Object next() {
        this.f3126b = true;
        int i = this.f3125a + 1;
        this.f3125a = i;
        return i < this.f3128d.f3131b.size() ? (Map.Entry) this.f3128d.f3131b.get(this.f3125a) : (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public void remove() {
        if (!this.f3126b) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f3126b = false;
        this.f3128d.c();
        if (this.f3125a >= this.f3128d.f3131b.size()) {
            a().remove();
            return;
        }
        K0 k0 = this.f3128d;
        int i = this.f3125a;
        this.f3125a = i - 1;
        k0.j(i);
    }
}
