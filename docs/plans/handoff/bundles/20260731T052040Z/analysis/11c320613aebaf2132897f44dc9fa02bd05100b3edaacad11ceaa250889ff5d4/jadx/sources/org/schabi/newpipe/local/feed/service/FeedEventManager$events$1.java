package org.schabi.newpipe.local.feed.service;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeConcatArray;
import java.util.Collections;
import java.util.List;
import kotlin.collections.CollectionsKt;
import org.schabi.newpipe.local.feed.service.FeedEventManager;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedEventManager$events$1 implements Predicate, Function {
    public static final FeedEventManager$events$1 INSTANCE = new FeedEventManager$events$1(0);
    public static final FeedEventManager$events$1 INSTANCE$1 = new FeedEventManager$events$1(1);
    public static final FeedEventManager$events$1 INSTANCE$2 = new FeedEventManager$events$1(2);
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ FeedEventManager$events$1(int i) {
        this.$r8$classId = i;
    }

    @Override // io.reactivex.rxjava3.functions.Function
    public Object apply(Object obj) {
        List list = (List) obj;
        list.getClass();
        List mutableList = CollectionsKt.toMutableList((Iterable) list);
        Collections.shuffle(mutableList);
        int i = Flowable.BUFFER_SIZE;
        return new MaybeConcatArray(mutableList, 2);
    }

    @Override // io.reactivex.rxjava3.functions.Predicate
    public boolean test(Object obj) {
        boolean z;
        switch (this.$r8$classId) {
            case 0:
                ((FeedEventManager.Event) obj).getClass();
                z = FeedEventManager.ignoreUpstream.get();
                break;
            default:
                List list = (List) obj;
                list.getClass();
                z = list.isEmpty();
                break;
        }
        return !z;
    }
}
