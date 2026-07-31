package j$.util;

import j$.util.function.IntConsumer$CC;
import j$.util.stream.o5;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final /* synthetic */ class h0 implements IntConsumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ Consumer b;

    public /* synthetic */ h0(Consumer consumer, int i) {
        this.a = i;
        this.b = consumer;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        int i2 = this.a;
        Consumer consumer = this.b;
        switch (i2) {
            case 0:
                consumer.accept(Integer.valueOf(i));
                break;
            default:
                ((o5) consumer).accept(i);
                break;
        }
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        switch (this.a) {
        }
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }
}
