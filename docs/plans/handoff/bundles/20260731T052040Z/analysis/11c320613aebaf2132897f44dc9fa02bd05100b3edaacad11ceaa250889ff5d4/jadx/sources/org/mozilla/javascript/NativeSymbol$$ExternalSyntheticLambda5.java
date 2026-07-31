package org.mozilla.javascript;

import j$.util.function.Function$CC;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class NativeSymbol$$ExternalSyntheticLambda5 implements java.util.function.Function {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ NativeSymbol$$ExternalSyntheticLambda5(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ java.util.function.Function mo646andThen(java.util.function.Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        Object js_description;
        List lambda$groupBy$0;
        AtomicInteger lambda$count$0;
        switch (this.$r8$classId) {
            case 0:
                js_description = NativeSymbol.js_description((Scriptable) obj);
                return js_description;
            case 1:
                lambda$groupBy$0 = AbstractEcmaObjectOperations.lambda$groupBy$0(obj);
                return lambda$groupBy$0;
            default:
                lambda$count$0 = NativeConsole.lambda$count$0((String) obj);
                return lambda$count$0;
        }
    }

    public /* synthetic */ java.util.function.Function compose(java.util.function.Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$compose(this, function);
    }
}
