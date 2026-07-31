package org.schabi.newpipe.player.playqueue;

import android.util.Log;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import j$.util.Collection;
import j$.util.stream.Collectors;
import java.util.List;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.ListInfo;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda48;
import org.schabi.newpipe.player.playqueue.PlayQueueEvent;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public abstract class AbstractInfoPlayQueue extends PlayQueue {
    final String baseUrl;
    public transient Disposable fetchReactor;
    private boolean isComplete;
    boolean isInitial;
    Page nextPage;
    final int serviceId;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: org.schabi.newpipe.player.playqueue.AbstractInfoPlayQueue$1, reason: invalid class name */
    public final class AnonymousClass1 implements SingleObserver {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ AbstractInfoPlayQueue this$0;

        public /* synthetic */ AnonymousClass1(AbstractInfoPlayQueue abstractInfoPlayQueue, int i) {
            this.$r8$classId = i;
            this.this$0 = abstractInfoPlayQueue;
        }

        private final void onError$org$schabi$newpipe$player$playqueue$AbstractInfoPlayQueue$1(Throwable th) {
            AbstractInfoPlayQueue abstractInfoPlayQueue = this.this$0;
            Log.e(abstractInfoPlayQueue.getTag(), "Error fetching more playlist, marking playlist as complete.", th);
            abstractInfoPlayQueue.isComplete = true;
            synchronized (abstractInfoPlayQueue) {
                abstractInfoPlayQueue.broadcast(new PlayQueueEvent.AppendEvent(0));
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public final void onError(Throwable th) {
            switch (this.$r8$classId) {
                case 0:
                    onError$org$schabi$newpipe$player$playqueue$AbstractInfoPlayQueue$1(th);
                    return;
                default:
                    AbstractInfoPlayQueue abstractInfoPlayQueue = this.this$0;
                    Log.e(abstractInfoPlayQueue.getTag(), "Error fetching more playlist, marking playlist as complete.", th);
                    abstractInfoPlayQueue.isComplete = true;
                    synchronized (abstractInfoPlayQueue) {
                        abstractInfoPlayQueue.broadcast(new PlayQueueEvent.AppendEvent(0));
                    }
                    return;
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public final void onSubscribe(Disposable disposable) {
            Disposable disposable2;
            Disposable disposable3;
            int i = this.$r8$classId;
            AbstractInfoPlayQueue abstractInfoPlayQueue = this.this$0;
            switch (i) {
                case 0:
                    if (abstractInfoPlayQueue.isComplete || !abstractInfoPlayQueue.isInitial || ((disposable2 = abstractInfoPlayQueue.fetchReactor) != null && !disposable2.isDisposed())) {
                        disposable.dispose();
                        break;
                    } else {
                        abstractInfoPlayQueue.fetchReactor = disposable;
                        break;
                    }
                    break;
                default:
                    if (!abstractInfoPlayQueue.isComplete && !abstractInfoPlayQueue.isInitial && ((disposable3 = abstractInfoPlayQueue.fetchReactor) == null || disposable3.isDisposed())) {
                        abstractInfoPlayQueue.fetchReactor = disposable;
                        break;
                    } else {
                        disposable.dispose();
                        break;
                    }
                    break;
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public final void onSuccess(Object obj) {
            int i = this.$r8$classId;
            int i2 = 27;
            int i3 = 4;
            AbstractInfoPlayQueue abstractInfoPlayQueue = this.this$0;
            switch (i) {
                case 0:
                    ListInfo listInfo = (ListInfo) obj;
                    abstractInfoPlayQueue.isInitial = false;
                    if (!listInfo.hasNextPage()) {
                        abstractInfoPlayQueue.isComplete = true;
                    }
                    abstractInfoPlayQueue.nextPage = listInfo.getNextPage();
                    abstractInfoPlayQueue.append(AbstractInfoPlayQueue.extractListItems((List) Collection.EL.stream(listInfo.getRelatedItems()).filter(new Player$$ExternalSyntheticLambda48(i3)).map(new Utils$$ExternalSyntheticLambda1(i2)).collect(Collectors.toList())));
                    abstractInfoPlayQueue.fetchReactor.dispose();
                    abstractInfoPlayQueue.fetchReactor = null;
                    break;
                default:
                    ListExtractor.InfoItemsPage infoItemsPage = (ListExtractor.InfoItemsPage) obj;
                    if (!Page.isValid(infoItemsPage.nextPage)) {
                        abstractInfoPlayQueue.isComplete = true;
                    }
                    abstractInfoPlayQueue.nextPage = infoItemsPage.nextPage;
                    abstractInfoPlayQueue.append(AbstractInfoPlayQueue.extractListItems((List) Collection.EL.stream(infoItemsPage.itemsList).filter(new Player$$ExternalSyntheticLambda48(i3)).map(new Utils$$ExternalSyntheticLambda1(i2)).collect(Collectors.toList())));
                    abstractInfoPlayQueue.fetchReactor.dispose();
                    abstractInfoPlayQueue.fetchReactor = null;
                    break;
            }
        }
    }

    public AbstractInfoPlayQueue(ListInfo listInfo, int i) {
        this(listInfo.getServiceId(), listInfo.getUrl(), listInfo.getNextPage(), (List) Collection.EL.stream(listInfo.getRelatedItems()).filter(new Player$$ExternalSyntheticLambda48(4)).map(new Utils$$ExternalSyntheticLambda1(27)).collect(Collectors.toList()), i);
    }

    public static List extractListItems(List list) {
        return (List) Collection.EL.stream(list).map(new ListHelper$$ExternalSyntheticLambda0(1)).collect(Collectors.toList());
    }

    @Override // org.schabi.newpipe.player.playqueue.PlayQueue
    public final void dispose() {
        super.dispose();
        Disposable disposable = this.fetchReactor;
        if (disposable != null) {
            disposable.dispose();
        }
        this.fetchReactor = null;
    }

    public abstract String getTag();

    @Override // org.schabi.newpipe.player.playqueue.PlayQueue
    public final boolean isComplete() {
        return this.isComplete;
    }

    public AbstractInfoPlayQueue(int i, String str, Page page, List list, int i2) {
        super(i2, extractListItems(list));
        this.baseUrl = str;
        this.nextPage = page;
        this.serviceId = i;
        boolean isEmpty = list.isEmpty();
        this.isInitial = isEmpty;
        this.isComplete = (isEmpty || Page.isValid(page)) ? false : true;
    }
}
