package org.schabi.newpipe.local.feed.service;

import android.content.Context;
import android.content.SharedPreferences;
import coil3.network.okhttp.internal.CallsKt$await$2$1;
import io.reactivex.rxjava3.core.Notification;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.operators.single.SingleOnErrorReturn;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.channel.ChannelInfo;
import org.schabi.newpipe.extractor.channel.tabs.ChannelTabInfo;
import org.schabi.newpipe.extractor.feed.FeedInfo;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeFeedExtractor;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.local.feed.service.FeedLoadService;
import org.schabi.newpipe.util.ExtractorHelper;
import org.schabi.newpipe.util.ExtractorHelper$$ExternalSyntheticLambda4;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedLoadManager$startLoading$8 implements SingleObserver, Function {
    public final Object $defaultSharedPreferences;
    public boolean $useFeedExtractor;
    public final Object this$0;

    public FeedLoadManager$startLoading$8(FeedLoadManager feedLoadManager, boolean z, SharedPreferences sharedPreferences) {
        this.this$0 = feedLoadManager;
        this.$useFeedExtractor = z;
        this.$defaultSharedPreferences = sharedPreferences;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v13, types: [org.schabi.newpipe.extractor.Info, org.schabi.newpipe.extractor.ListInfo, org.schabi.newpipe.extractor.feed.FeedInfo] */
    /* JADX WARN: Type inference failed for: r8v21, types: [java.util.List] */
    @Override // io.reactivex.rxjava3.functions.Function
    public Object apply(Object obj) {
        ChannelInfo channelInfo;
        ArrayList arrayList;
        List relatedItems;
        char c;
        int i;
        YoutubeFeedExtractor feedExtractor;
        SubscriptionEntity subscriptionEntity = (SubscriptionEntity) obj;
        subscriptionEntity.getClass();
        FeedLoadManager feedLoadManager = (FeedLoadManager) this.this$0;
        boolean z = this.$useFeedExtractor;
        SharedPreferences sharedPreferences = (SharedPreferences) this.$defaultSharedPreferences;
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        final CallsKt$await$2$1 callsKt$await$2$1 = new CallsKt$await$2$1(ref$ObjectRef, 5);
        try {
            ArrayList arrayList2 = new ArrayList();
            if (!z || (feedExtractor = Utility.getService(subscriptionEntity.serviceId).getFeedExtractor(subscriptionEntity.url)) == null) {
                channelInfo = null;
                arrayList = null;
            } else {
                ?? info = FeedInfo.getInfo(feedExtractor);
                arrayList2.addAll(info.getErrors());
                ?? relatedItems2 = info.getRelatedItems();
                channelInfo = info;
                arrayList = relatedItems2;
            }
            if (channelInfo == null) {
                final int i2 = 1;
                Single channelInfo2 = ExtractorHelper.getChannelInfo(subscriptionEntity.serviceId, subscriptionEntity.url, true);
                boolean z2 = false;
                final boolean z3 = false ? 1 : 0;
                Object blockingGet = new SingleOnErrorReturn(channelInfo2, new Function() { // from class: org.schabi.newpipe.local.feed.service.FeedLoadManager$$ExternalSyntheticLambda1
                    @Override // io.reactivex.rxjava3.functions.Function
                    public final Object apply(Object obj2) {
                        int i3 = z3;
                        CallsKt$await$2$1 callsKt$await$2$12 = callsKt$await$2$1;
                        Throwable th = (Throwable) obj2;
                        switch (i3) {
                            case 0:
                                th.getClass();
                                callsKt$await$2$12.invoke(th);
                                throw null;
                            default:
                                th.getClass();
                                callsKt$await$2$12.invoke(th);
                                throw null;
                        }
                    }
                }, null).blockingGet();
                blockingGet.getClass();
                channelInfo = (ChannelInfo) blockingGet;
                arrayList2.addAll(channelInfo.getErrors());
                List tabs = channelInfo.getTabs();
                tabs.getClass();
                ArrayList arrayList3 = new ArrayList();
                for (Object obj2 : tabs) {
                    Context context = feedLoadManager.context;
                    List contentFilters = ((ListLinkHandler) obj2).getContentFilters();
                    if (!contentFilters.isEmpty()) {
                        String str = (String) contentFilters.get(z2 ? 1 : 0);
                        str.getClass();
                        switch (str.hashCode()) {
                            case -903148681:
                                if (str.equals("shorts")) {
                                    c = 0;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -865716088:
                                if (str.equals("tracks")) {
                                    c = 1;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -816678056:
                                if (str.equals("videos")) {
                                    c = 2;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -439267705:
                                if (str.equals("livestreams")) {
                                    c = 3;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 102974396:
                                if (str.equals("likes")) {
                                    c = 4;
                                    break;
                                }
                                c = 65535;
                                break;
                            default:
                                c = 65535;
                                break;
                        }
                        switch (c) {
                            case 0:
                                i = R.string.fetch_channel_tabs_shorts;
                                break;
                            case 1:
                                i = R.string.fetch_channel_tabs_tracks;
                                break;
                            case 2:
                                i = R.string.fetch_channel_tabs_videos;
                                break;
                            case 3:
                                i = R.string.fetch_channel_tabs_livestreams;
                                break;
                            case 4:
                                i = R.string.fetch_channel_tabs_likes;
                                break;
                            default:
                                i = -1;
                                break;
                        }
                        if (i == -1) {
                            z2 = false;
                        } else {
                            Set<String> stringSet = sharedPreferences.getStringSet(context.getString(R.string.feed_fetch_channel_tabs_key), null);
                            z2 = stringSet == null ? true : stringSet.contains(context.getString(i));
                        }
                    }
                    if (z2) {
                        arrayList3.add(obj2);
                    }
                    z2 = false;
                }
                ArrayList arrayList4 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10));
                Iterator it = arrayList3.iterator();
                while (it.hasNext()) {
                    ListLinkHandler listLinkHandler = (ListLinkHandler) it.next();
                    arrayList4.add(new Pair(new SingleOnErrorReturn(ExtractorHelper.getChannelTab(subscriptionEntity.serviceId, listLinkHandler, true), new Function() { // from class: org.schabi.newpipe.local.feed.service.FeedLoadManager$$ExternalSyntheticLambda1
                        @Override // io.reactivex.rxjava3.functions.Function
                        public final Object apply(Object obj22) {
                            int i3 = i2;
                            CallsKt$await$2$1 callsKt$await$2$12 = callsKt$await$2$1;
                            Throwable th = (Throwable) obj22;
                            switch (i3) {
                                case 0:
                                    th.getClass();
                                    callsKt$await$2$12.invoke(th);
                                    throw null;
                                default:
                                    th.getClass();
                                    callsKt$await$2$12.invoke(th);
                                    throw null;
                            }
                        }
                    }, null).blockingGet(), listLinkHandler));
                }
                ArrayList arrayList5 = new ArrayList();
                Iterator it2 = arrayList4.iterator();
                while (it2.hasNext()) {
                    Pair pair = (Pair) it2.next();
                    Object component1 = pair.component1();
                    component1.getClass();
                    ChannelTabInfo channelTabInfo = (ChannelTabInfo) component1;
                    ListLinkHandler listLinkHandler2 = (ListLinkHandler) pair.component2();
                    arrayList2.addAll(channelTabInfo.getErrors());
                    if (!channelTabInfo.getRelatedItems().isEmpty() || channelTabInfo.getNextPage() == null) {
                        relatedItems = channelTabInfo.getRelatedItems();
                        relatedItems.getClass();
                    } else {
                        int i3 = subscriptionEntity.serviceId;
                        Page nextPage = channelTabInfo.getNextPage();
                        ExtractorHelper.checkServiceId(i3);
                        Object blockingGet2 = new SingleAmb(new ExtractorHelper$$ExternalSyntheticLambda4(i3, listLinkHandler2, nextPage, 0), 3).blockingGet();
                        blockingGet2.getClass();
                        ListExtractor.InfoItemsPage infoItemsPage = (ListExtractor.InfoItemsPage) blockingGet2;
                        arrayList2.addAll(infoItemsPage.errors);
                        relatedItems = infoItemsPage.itemsList;
                        relatedItems.getClass();
                    }
                    CollectionsKt__MutableCollectionsKt.addAll(relatedItems, arrayList5);
                }
                arrayList = new ArrayList();
                Iterator it3 = arrayList5.iterator();
                while (it3.hasNext()) {
                    Object next = it3.next();
                    if (next instanceof StreamInfoItem) {
                        arrayList.add(next);
                    }
                }
            }
            arrayList.getClass();
            return new Notification(new FeedUpdateInfo(subscriptionEntity, channelInfo, arrayList, arrayList2));
        } catch (Throwable th) {
            th = th;
            String str2 = subscriptionEntity.serviceId + ":" + subscriptionEntity.url;
            long j = subscriptionEntity.uid;
            Throwable th2 = (Throwable) ref$ObjectRef.element;
            if (th2 != null) {
                th = th2;
            }
            return new Notification(new NotificationLite.ErrorNotification(new FeedLoadService.RequestException(str2, th, j)));
        }
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onError(Throwable th) {
        if (this.$useFeedExtractor) {
            MathKt.onError(th);
        } else {
            ((SingleObserver) this.this$0).onError(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onSubscribe(Disposable disposable) {
        SingleObserver singleObserver = (SingleObserver) this.this$0;
        try {
            ((Consumer) this.$defaultSharedPreferences).accept(disposable);
            singleObserver.onSubscribe(disposable);
        } catch (Throwable th) {
            AppKt.throwIfFatal(th);
            this.$useFeedExtractor = true;
            disposable.dispose();
            singleObserver.onSubscribe(EmptyDisposable.INSTANCE);
            singleObserver.onError(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onSuccess(Object obj) {
        if (this.$useFeedExtractor) {
            return;
        }
        ((SingleObserver) this.this$0).onSuccess(obj);
    }

    public FeedLoadManager$startLoading$8(SingleObserver singleObserver, Consumer consumer) {
        this.this$0 = singleObserver;
        this.$defaultSharedPreferences = consumer;
    }
}
