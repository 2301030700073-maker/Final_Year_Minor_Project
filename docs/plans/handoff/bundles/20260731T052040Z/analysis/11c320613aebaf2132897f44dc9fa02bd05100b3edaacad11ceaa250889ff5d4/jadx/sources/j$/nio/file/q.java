package j$.nio.file;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class q implements Iterator {
    public int a = 0;
    public final /* synthetic */ j$.desugar.sun.nio.fs.n b;

    public q(j$.desugar.sun.nio.fs.n nVar) {
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
