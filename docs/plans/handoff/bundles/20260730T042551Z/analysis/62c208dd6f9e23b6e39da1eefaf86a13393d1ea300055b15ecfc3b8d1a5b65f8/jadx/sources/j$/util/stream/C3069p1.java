package j$.util.stream;

import j$.time.AbstractC2959a;
import j$.util.function.Consumer$CC;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.p1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3069p1 extends C3064o1 implements C0 {
    C3069p1(long j) {
        super(j);
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ void accept(double d) {
        AbstractC3117z0.z();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ void accept(int i) {
        AbstractC3117z0.G();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC3079r2, j$.util.stream.InterfaceC3075q2, java.util.function.LongConsumer
    public final void accept(long j) {
        int i = this.b;
        long[] jArr = this.a;
        if (i >= jArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(jArr.length)));
        }
        this.b = i + 1;
        jArr[i] = j;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void m(Object obj) {
        l((Long) obj);
    }

    @Override // java.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2959a.c(this, longConsumer);
    }

    @Override // j$.util.stream.C0, j$.util.stream.D0
    public final G0 build() {
        int i = this.b;
        long[] jArr = this.a;
        if (i >= jArr.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.b), Integer.valueOf(jArr.length)));
    }

    @Override // j$.util.stream.D0
    public final /* bridge */ /* synthetic */ I0 build() {
        build();
        return this;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        long[] jArr = this.a;
        if (j != jArr.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(jArr.length)));
        }
        this.b = 0;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void end() {
        int i = this.b;
        long[] jArr = this.a;
        if (i < jArr.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.b), Integer.valueOf(jArr.length)));
        }
    }

    @Override // j$.util.stream.InterfaceC3075q2
    public final /* synthetic */ void l(Long l) {
        AbstractC3117z0.E(this, l);
    }

    @Override // j$.util.stream.C3064o1
    public final String toString() {
        long[] jArr = this.a;
        return String.format("LongFixedNodeBuilder[%d][%s]", Integer.valueOf(jArr.length - this.b), Arrays.toString(jArr));
    }
}
