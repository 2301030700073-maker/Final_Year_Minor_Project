package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MaybePeek extends AbstractMaybeWithUpstream {
    public final /* synthetic */ int $r8$classId;
    public final Object onErrorCall;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ MaybePeek(Maybe maybe, Object obj, int i) {
        super(maybe);
        this.$r8$classId = i;
        this.onErrorCall = obj;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public final void subscribeActual(MaybeObserver maybeObserver) {
        int i = this.$r8$classId;
        Maybe maybe = this.source;
        switch (i) {
            case 0:
                maybe.subscribe(new MaybeMap.MapMaybeObserver(maybeObserver, this, 3));
                break;
            default:
                maybe.subscribe(new MaybeMap.MapMaybeObserver(maybeObserver, (Predicate) this.onErrorCall, 2));
                break;
        }
    }
}
