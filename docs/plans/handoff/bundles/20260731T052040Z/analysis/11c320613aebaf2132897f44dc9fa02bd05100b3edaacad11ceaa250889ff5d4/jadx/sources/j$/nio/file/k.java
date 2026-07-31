package j$.nio.file;

import java.io.UncheckedIOException;
import java.nio.file.DirectoryIteratorException;
import java.util.Iterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class k implements Iterator {
    public final /* synthetic */ Iterator a;

    public k(Iterator it) {
        this.a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        try {
            return this.a.hasNext();
        } catch (DirectoryIteratorException e) {
            throw new UncheckedIOException(e.getCause());
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        try {
            return (Path) this.a.next();
        } catch (DirectoryIteratorException e) {
            throw new UncheckedIOException(e.getCause());
        }
    }
}
