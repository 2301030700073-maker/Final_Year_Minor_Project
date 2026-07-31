package org.schabi.newpipe.local.subscription.dialog;

import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupDialogViewModel;
import org.schabi.newpipe.local.subscription.item.PickerSubscriptionItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedGroupDialogViewModel$subscriptionsFlowable$1 implements BiFunction, Function {
    public final /* synthetic */ int $r8$classId;
    public static final FeedGroupDialogViewModel$subscriptionsFlowable$1 INSTANCE$1 = new FeedGroupDialogViewModel$subscriptionsFlowable$1(1);
    public static final FeedGroupDialogViewModel$subscriptionsFlowable$1 INSTANCE = new FeedGroupDialogViewModel$subscriptionsFlowable$1(0);
    public static final FeedGroupDialogViewModel$subscriptionsFlowable$1 INSTANCE$2 = new FeedGroupDialogViewModel$subscriptionsFlowable$1(2);

    public /* synthetic */ FeedGroupDialogViewModel$subscriptionsFlowable$1(int i) {
        this.$r8$classId = i;
    }

    @Override // io.reactivex.rxjava3.functions.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.$r8$classId) {
            case 0:
                String str = (String) obj;
                boolean booleanValue = ((Boolean) obj2).booleanValue();
                str.getClass();
                return new FeedGroupDialogViewModel.Filter(str, booleanValue);
            default:
                List list = (List) obj;
                List list2 = (List) obj2;
                list.getClass();
                list2.getClass();
                return new Pair(list, CollectionsKt.toSet(list2));
        }
    }

    @Override // io.reactivex.rxjava3.functions.Function
    public Object apply(Object obj) {
        List list = (List) obj;
        list.getClass();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new PickerSubscriptionItem((SubscriptionEntity) it.next()));
        }
        return arrayList;
    }
}
