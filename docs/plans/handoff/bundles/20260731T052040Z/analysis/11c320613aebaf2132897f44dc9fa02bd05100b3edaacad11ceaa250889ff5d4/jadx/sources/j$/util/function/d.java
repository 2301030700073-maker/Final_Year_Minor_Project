package j$.util.function;

import j$.nio.file.m;
import j$.util.Map;
import j$.util.Objects;
import j$.util.stream.Collectors;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Function;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final /* synthetic */ class d implements Function, BiConsumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ Function b;
    public final /* synthetic */ Function c;

    public /* synthetic */ d(Function function, Function function2, int i) {
        this.a = i;
        this.b = function;
        this.c = function2;
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        Set set = Collectors.a;
        Object apply = this.b.apply(obj2);
        Object requireNonNull = Objects.requireNonNull(this.c.apply(obj2));
        Object putIfAbsent = Map.EL.putIfAbsent((java.util.Map) obj, apply, requireNonNull);
        if (putIfAbsent == null) {
            return;
        }
        m.i("Duplicate key %s (attempted merging values %s and %s)", new Object[]{apply, putIfAbsent, requireNonNull});
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo646andThen(Function function) {
        switch (this.a) {
        }
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        switch (this.a) {
            case 0:
                return this.c.apply(this.b.apply(obj));
            default:
                return this.b.apply(this.c.apply(obj));
        }
    }

    public /* synthetic */ Function compose(Function function) {
        switch (this.a) {
        }
        return Function$CC.$default$compose(this, function);
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }
}
