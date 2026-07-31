package org.schabi.newpipe.player.playqueue;

import androidx.compose.ui.node.Owner;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.player.playqueue.AbstractInfoPlayQueue;
import org.schabi.newpipe.util.ExtractorHelper;
import org.schabi.newpipe.util.ExtractorHelper$$ExternalSyntheticLambda4;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class ChannelTabPlayQueue extends AbstractInfoPlayQueue {
    final ListLinkHandler linkHandler;

    public ChannelTabPlayQueue(int i, ListLinkHandler listLinkHandler, Page page, List list) {
        super(i, listLinkHandler.getUrl(), page, list, 0);
        this.linkHandler = listLinkHandler;
    }

    @Override // org.schabi.newpipe.player.playqueue.PlayQueue
    public final void fetch() {
        boolean z = this.isInitial;
        int i = this.serviceId;
        ListLinkHandler listLinkHandler = this.linkHandler;
        int i2 = 0;
        if (z) {
            try {
                ExtractorHelper.getChannelTab(i, listLinkHandler, false).subscribeOn(Schedulers.IO).subscribe(new SingleObserveOn.ObserveOnSingleObserver(new AbstractInfoPlayQueue.AnonymousClass1(this, i2), AndroidSchedulers.mainThread()));
                return;
            } catch (NullPointerException e) {
                throw e;
            } catch (Throwable th) {
                throw Owner.CC.m(th, "subscribeActual failed", th);
            }
        }
        Page page = this.nextPage;
        ExtractorHelper.checkServiceId(i);
        try {
            new SingleAmb(new ExtractorHelper$$ExternalSyntheticLambda4(i, listLinkHandler, page, i2), 3).subscribeOn(Schedulers.IO).subscribe(new SingleObserveOn.ObserveOnSingleObserver(new AbstractInfoPlayQueue.AnonymousClass1(this, 1), AndroidSchedulers.mainThread()));
        } catch (NullPointerException e2) {
            throw e2;
        } catch (Throwable th2) {
            throw Owner.CC.m(th2, "subscribeActual failed", th2);
        }
    }

    @Override // org.schabi.newpipe.player.playqueue.AbstractInfoPlayQueue
    public final String getTag() {
        return "ChannelTabPlayQueue@" + Integer.toHexString(hashCode());
    }

    public ChannelTabPlayQueue(int i, ListLinkHandler listLinkHandler) {
        this(i, listLinkHandler, null, Collections.EMPTY_LIST);
    }
}
