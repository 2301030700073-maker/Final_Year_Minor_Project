package io.reactivex.rxjava3.internal.operators.single;

import com.grack.nanojson.JsonBuilder;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SingleDoOnEvent extends Single {
    public final /* synthetic */ int $r8$classId;
    public final Object onEvent;
    public final Single source;

    public /* synthetic */ SingleDoOnEvent(Single single, Object obj, int i) {
        this.$r8$classId = i;
        this.source = single;
        this.onEvent = obj;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void subscribeActual(SingleObserver singleObserver) {
        int i = this.$r8$classId;
        Single single = this.source;
        switch (i) {
            case 0:
                single.subscribe(new JsonBuilder((Single) this, singleObserver, 19));
                break;
            default:
                ((SingleAmb) single).subscribe(new JsonBuilder((Single) this, singleObserver, 20));
                break;
        }
    }
}
