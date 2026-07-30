package j$.util.stream;

import j$.util.Spliterator;
import j$.util.stream.IntStream;
import java.util.Iterator;
import java.util.stream.BaseStream;
import java.util.stream.DoubleStream;
import java.util.stream.LongStream;

/* renamed from: j$.util.stream.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3022g implements InterfaceC3032i {
    public final /* synthetic */ BaseStream a;

    private /* synthetic */ C3022g(BaseStream baseStream) {
        this.a = baseStream;
    }

    public static /* synthetic */ InterfaceC3032i k(BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C3027h ? ((C3027h) baseStream).a : baseStream instanceof DoubleStream ? F.k((DoubleStream) baseStream) : baseStream instanceof java.util.stream.IntStream ? IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) baseStream) : baseStream instanceof LongStream ? C3063o0.k((LongStream) baseStream) : baseStream instanceof java.util.stream.Stream ? C3006c3.k((java.util.stream.Stream) baseStream) : new C3022g(baseStream);
    }

    @Override // j$.util.stream.InterfaceC3032i, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        if (obj instanceof C3022g) {
            obj = ((C3022g) obj).a;
        }
        return this.a.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.util.stream.InterfaceC3032i
    public final /* synthetic */ boolean isParallel() {
        return this.a.isParallel();
    }

    @Override // j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* synthetic */ Iterator iterator() {
        return this.a.iterator();
    }

    @Override // j$.util.stream.InterfaceC3032i
    public final /* synthetic */ InterfaceC3032i onClose(Runnable runnable) {
        return k(this.a.onClose(runnable));
    }

    @Override // j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* synthetic */ InterfaceC3032i parallel() {
        return k(this.a.parallel());
    }

    @Override // j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* synthetic */ InterfaceC3032i sequential() {
        return k(this.a.sequential());
    }

    @Override // j$.util.stream.InterfaceC3032i
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.f0.a(this.a.spliterator());
    }

    @Override // j$.util.stream.InterfaceC3032i
    public final /* synthetic */ InterfaceC3032i unordered() {
        return k(this.a.unordered());
    }
}
