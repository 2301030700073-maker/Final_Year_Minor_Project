package io.reactivex.rxjava3.internal.operators.single;

import com.grack.nanojson.JsonBuilder;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.functions.Function;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SingleMap extends Single {
    public final /* synthetic */ int $r8$classId;
    public final Function mapper;
    public final Single source;

    public /* synthetic */ SingleMap(Single single, Function function, int i) {
        this.$r8$classId = i;
        this.mapper = function;
        this.source = single;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void subscribeActual(SingleObserver singleObserver) {
        int i = this.$r8$classId;
        Function function = this.mapper;
        Single single = this.source;
        switch (i) {
            case 0:
                single.subscribe(new JsonBuilder(singleObserver, function, 22));
                break;
            default:
                single.subscribe(new SingleFlatMap$SingleFlatMapCallback(singleObserver, function));
                break;
        }
    }
}
