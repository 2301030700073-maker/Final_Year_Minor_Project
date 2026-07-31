package io.reactivex.rxjava3.internal.operators.completable;

import com.grack.nanojson.JsonBuilder;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import java.util.ArrayList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CompletableToSingle extends Single {
    public final ArrayList completionValue;
    public final CompletableObserveOn source;

    public CompletableToSingle(CompletableObserveOn completableObserveOn, ArrayList arrayList) {
        this.source = completableObserveOn;
        this.completionValue = arrayList;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void subscribeActual(SingleObserver singleObserver) {
        this.source.subscribe(new JsonBuilder((Single) this, singleObserver, 15));
    }
}
