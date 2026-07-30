package j$.util.stream;

import j$.time.AbstractC2959a;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.g0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3023g0 implements LongConsumer {
    public final /* synthetic */ InterfaceC3079r2 a;

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.a.accept(j);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2959a.c(this, longConsumer);
    }
}
