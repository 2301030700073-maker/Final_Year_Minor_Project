package org.schabi.newpipe.local.subscription;

import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.extractor.channel.ChannelInfoItem;
import org.schabi.newpipe.local.subscription.item.ChannelItem;
import org.schabi.newpipe.util.image.ImageStrategy;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SubscriptionViewModel$stateItemsDisposable$1 implements BiFunction, Function {
    public final /* synthetic */ int $r8$classId;
    public static final SubscriptionViewModel$stateItemsDisposable$1 INSTANCE$1 = new SubscriptionViewModel$stateItemsDisposable$1(1);
    public static final SubscriptionViewModel$stateItemsDisposable$1 INSTANCE$2 = new SubscriptionViewModel$stateItemsDisposable$1(2);
    public static final SubscriptionViewModel$stateItemsDisposable$1 INSTANCE = new SubscriptionViewModel$stateItemsDisposable$1(0);

    public /* synthetic */ SubscriptionViewModel$stateItemsDisposable$1(int i) {
        this.$r8$classId = i;
    }

    @Override // io.reactivex.rxjava3.functions.Function
    public Object apply(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                List<SubscriptionEntity> list = (List) obj;
                list.getClass();
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                for (SubscriptionEntity subscriptionEntity : list) {
                    ChannelInfoItem channelInfoItem = new ChannelInfoItem(subscriptionEntity.url, subscriptionEntity.serviceId, subscriptionEntity.name);
                    channelInfoItem.setThumbnails(ImageStrategy.dbUrlToImageList(subscriptionEntity.avatarUrl));
                    Long l = subscriptionEntity.subscriberCount;
                    channelInfoItem.setSubscriberCount(l != null ? l.longValue() : -1L);
                    channelInfoItem.setDescription(subscriptionEntity.description);
                    arrayList.add(new ChannelItem(channelInfoItem, subscriptionEntity.uid));
                }
                return arrayList;
            default:
                Pair pair = (Pair) obj;
                pair.getClass();
                Object component1 = pair.component1();
                component1.getClass();
                List list2 = (List) component1;
                Object component2 = pair.component2();
                component2.getClass();
                Boolean bool = (Boolean) component2;
                Function1 function1 = bool.booleanValue() ? SubscriptionViewModel$feedGroupItemsDisposable$2$1.INSTANCE : SubscriptionViewModel$feedGroupItemsDisposable$2$2.INSTANCE;
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList2.add(function1.invoke(it.next()));
                }
                return new Pair(arrayList2, bool);
        }
    }

    @Override // io.reactivex.rxjava3.functions.BiFunction
    public Object apply(Object obj, Object obj2) {
        List list = (List) obj;
        Boolean bool = (Boolean) obj2;
        list.getClass();
        bool.getClass();
        return new Pair(list, bool);
    }
}
