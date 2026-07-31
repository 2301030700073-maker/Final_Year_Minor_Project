package org.schabi.newpipe.player.playqueue;

import androidx.compose.ui.node.Owner;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.schedulers.Schedulers;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.player.playqueue.AbstractInfoPlayQueue;
import org.schabi.newpipe.util.ExtractorHelper;
import org.schabi.newpipe.util.ExtractorHelper$$ExternalSyntheticLambda5;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class PlaylistPlayQueue extends AbstractInfoPlayQueue {
    @Override // org.schabi.newpipe.player.playqueue.PlayQueue
    public final void fetch() {
        boolean z = this.isInitial;
        int i = this.serviceId;
        String str = this.baseUrl;
        if (z) {
            try {
                ExtractorHelper.getPlaylistInfo(i, str, false).subscribeOn(Schedulers.IO).subscribe(new SingleObserveOn.ObserveOnSingleObserver(new AbstractInfoPlayQueue.AnonymousClass1(this, 0), AndroidSchedulers.mainThread()));
                return;
            } catch (NullPointerException e) {
                throw e;
            } catch (Throwable th) {
                throw Owner.CC.m(th, "subscribeActual failed", th);
            }
        }
        Page page = this.nextPage;
        ExtractorHelper.checkServiceId(i);
        int i2 = 1;
        try {
            new SingleAmb(new ExtractorHelper$$ExternalSyntheticLambda5(i, str, page, i2), 3).subscribeOn(Schedulers.IO).subscribe(new SingleObserveOn.ObserveOnSingleObserver(new AbstractInfoPlayQueue.AnonymousClass1(this, i2), AndroidSchedulers.mainThread()));
        } catch (NullPointerException e2) {
            throw e2;
        } catch (Throwable th2) {
            throw Owner.CC.m(th2, "subscribeActual failed", th2);
        }
    }

    @Override // org.schabi.newpipe.player.playqueue.AbstractInfoPlayQueue
    public final String getTag() {
        return "PlaylistPlayQueue@" + Integer.toHexString(hashCode());
    }
}
