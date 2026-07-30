package j$.util.stream;

import j$.util.Spliterator;
import j$.util.stream.IntStream;
import j$.util.stream.Stream;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.stream.BaseStream;

/* renamed from: j$.util.stream.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3027h implements BaseStream {
    public final /* synthetic */ InterfaceC3032i a;

    private /* synthetic */ C3027h(InterfaceC3032i interfaceC3032i) {
        this.a = interfaceC3032i;
    }

    public static /* synthetic */ BaseStream k(InterfaceC3032i interfaceC3032i) {
        if (interfaceC3032i == null) {
            return null;
        }
        return interfaceC3032i instanceof C3022g ? ((C3022g) interfaceC3032i).a : interfaceC3032i instanceof H ? G.k((H) interfaceC3032i) : interfaceC3032i instanceof IntStream ? IntStream.Wrapper.convert((IntStream) interfaceC3032i) : interfaceC3032i instanceof InterfaceC3073q0 ? C3068p0.k((InterfaceC3073q0) interfaceC3032i) : interfaceC3032i instanceof Stream ? Stream.Wrapper.convert((Stream) interfaceC3032i) : new C3027h(interfaceC3032i);
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC3032i interfaceC3032i = this.a;
        if (obj instanceof C3027h) {
            obj = ((C3027h) obj).a;
        }
        return interfaceC3032i.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.a.isParallel();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ Iterator iterator() {
        return this.a.iterator();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return k(this.a.onClose(runnable));
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ BaseStream parallel() {
        return k(this.a.parallel());
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ BaseStream sequential() {
        return k(this.a.sequential());
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return Spliterator.Wrapper.convert(this.a.spliterator());
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return k(this.a.unordered());
    }
}
