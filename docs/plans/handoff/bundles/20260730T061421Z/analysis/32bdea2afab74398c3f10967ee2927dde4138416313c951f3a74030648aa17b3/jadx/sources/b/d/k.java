package b.d;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public abstract class k implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public int f642a;

    /* renamed from: b, reason: collision with root package name */
    public int f643b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f644c;

    public k(int i) {
        this.f642a = i;
    }

    public abstract Object a(int i);

    public abstract void b(int i);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f643b < this.f642a;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object a2 = a(this.f643b);
        this.f643b++;
        this.f644c = true;
        return a2;
    }

    @Override // java.util.Iterator
    public void remove() {
        if (!this.f644c) {
            throw new IllegalStateException();
        }
        int i = this.f643b - 1;
        this.f643b = i;
        b(i);
        this.f642a--;
        this.f644c = false;
    }
}
