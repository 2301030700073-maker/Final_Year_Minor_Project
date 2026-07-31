package j$.nio.file;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class n implements Iterator {
    public int a = 0;
    public final /* synthetic */ j$.desugar.sun.nio.fs.n b;

    public n(j$.desugar.sun.nio.fs.n nVar) {
        this.b = nVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.a < this.b.c.size();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.a >= this.b.c.size()) {
            throw new NoSuchElementException();
        }
        j$.desugar.sun.nio.fs.n name = this.b.getName(this.a);
        this.a++;
        return name;
    }
}
