package io.reactivex.rxjava3.internal.operators.single;

import com.grack.nanojson.JsonBuilder;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.functions.Function;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SingleOnErrorReturn extends Single {
    public final Single source;
    public final Object value;
    public final Function valueSupplier;

    public SingleOnErrorReturn(Single single, Function function, Object obj) {
        this.source = single;
        this.valueSupplier = function;
        this.value = obj;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void subscribeActual(SingleObserver singleObserver) {
        this.source.subscribe(new JsonBuilder((Single) this, singleObserver, 23));
    }
}
