package j$.util.stream;

import j$.time.AbstractC2959a;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.t, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3086t implements DoubleConsumer {
    public final /* synthetic */ InterfaceC3079r2 a;

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.a.accept(d);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2959a.a(this, doubleConsumer);
    }
}
