package j$.nio.file;

import j$.lang.Iterable;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.function.Consumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class v implements Iterable, Iterable {
    public final Iterable a;

    public v(Iterable iterable) {
        this.a = iterable;
    }

    @Override // java.lang.Iterable, j$.lang.Iterable
    public final void forEach(Consumer consumer) {
        Iterable.EL.forEach(this.a, new t(consumer, 1));
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new w(this.a.iterator());
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Spliterator spliterator() {
        j$.util.Spliterator spliteratorUnknownSize;
        spliteratorUnknownSize = Spliterators.spliteratorUnknownSize(iterator(), 0);
        return Spliterator.Wrapper.convert(spliteratorUnknownSize);
    }

    @Override // java.lang.Iterable, j$.lang.Iterable, j$.util.Collection
    public final /* synthetic */ j$.util.Spliterator spliterator() {
        j$.util.Spliterator spliteratorUnknownSize;
        spliteratorUnknownSize = Spliterators.spliteratorUnknownSize(iterator(), 0);
        return spliteratorUnknownSize;
    }
}
