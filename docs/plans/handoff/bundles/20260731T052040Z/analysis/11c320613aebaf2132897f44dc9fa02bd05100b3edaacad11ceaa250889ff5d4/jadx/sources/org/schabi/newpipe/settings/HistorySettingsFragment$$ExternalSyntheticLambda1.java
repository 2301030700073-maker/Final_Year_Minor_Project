package org.schabi.newpipe.settings;

import android.content.Context;
import android.content.DialogInterface;
import androidx.compose.ui.node.Owner;
import coil3.decode.StaticImageDecoderKt$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.internal.schedulers.IoScheduler;
import io.reactivex.rxjava3.schedulers.Schedulers;
import j$.util.Objects;
import org.schabi.newpipe.database.history.dao.SearchHistoryDAO_Impl;
import org.schabi.newpipe.database.history.dao.StreamHistoryDAO_Impl;
import org.schabi.newpipe.database.stream.dao.StreamDAO_Impl;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.local.feed.FeedViewModel$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class HistorySettingsFragment$$ExternalSyntheticLambda1 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ CompositeDisposable f$0;
    public final /* synthetic */ Context f$1;
    public final /* synthetic */ PlaylistHeaderBinding f$2;

    public /* synthetic */ HistorySettingsFragment$$ExternalSyntheticLambda1(CompositeDisposable compositeDisposable, Context context, PlaylistHeaderBinding playlistHeaderBinding, int i) {
        this.$r8$classId = i;
        this.f$0 = compositeDisposable;
        this.f$1 = context;
        this.f$2 = playlistHeaderBinding;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.$r8$classId;
        int i3 = 4;
        PlaylistHeaderBinding playlistHeaderBinding = this.f$2;
        Context context = this.f$1;
        CompositeDisposable compositeDisposable = this.f$0;
        switch (i2) {
            case 0:
                compositeDisposable.add(HistorySettingsFragment.getDeletePlaybackStatesDisposable(context, playlistHeaderBinding));
                StreamHistoryDAO_Impl streamHistoryDAO_Impl = (StreamHistoryDAO_Impl) playlistHeaderBinding.playlistDescription;
                Objects.requireNonNull(streamHistoryDAO_Impl);
                SingleAmb singleAmb = new SingleAmb(new StaticImageDecoderKt$$ExternalSyntheticLambda0(streamHistoryDAO_Impl, 6), 3);
                IoScheduler ioScheduler = Schedulers.IO;
                SingleObserveOn subscribeOn = singleAmb.subscribeOn(ioScheduler);
                Scheduler mainThread = AndroidSchedulers.mainThread();
                ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new HistorySettingsFragment$$ExternalSyntheticLambda7(context, 6), new HistorySettingsFragment$$ExternalSyntheticLambda7(context, 1));
                try {
                    subscribeOn.subscribe(new SingleObserveOn.ObserveOnSingleObserver(consumerSingleObserver, mainThread));
                    compositeDisposable.add(consumerSingleObserver);
                    StreamDAO_Impl streamDAO_Impl = (StreamDAO_Impl) playlistHeaderBinding.uploaderLayout;
                    Objects.requireNonNull(streamDAO_Impl);
                    SingleObserveOn subscribeOn2 = new SingleAmb(new StaticImageDecoderKt$$ExternalSyntheticLambda0(streamDAO_Impl, 7), 3).subscribeOn(ioScheduler);
                    Scheduler mainThread2 = AndroidSchedulers.mainThread();
                    ConsumerSingleObserver consumerSingleObserver2 = new ConsumerSingleObserver(new FeedViewModel$$ExternalSyntheticLambda0(24), new HistorySettingsFragment$$ExternalSyntheticLambda7(context, 4));
                    try {
                        subscribeOn2.subscribe(new SingleObserveOn.ObserveOnSingleObserver(consumerSingleObserver2, mainThread2));
                        compositeDisposable.add(consumerSingleObserver2);
                        return;
                    } catch (NullPointerException e) {
                        throw e;
                    } catch (Throwable th) {
                        throw Owner.CC.m(th, "subscribeActual failed", th);
                    }
                } catch (NullPointerException e2) {
                    throw e2;
                } catch (Throwable th2) {
                    throw Owner.CC.m(th2, "subscribeActual failed", th2);
                }
            case 1:
                compositeDisposable.add(HistorySettingsFragment.getDeletePlaybackStatesDisposable(context, playlistHeaderBinding));
                return;
            default:
                int i4 = HistorySettingsFragment.$r8$clinit;
                SearchHistoryDAO_Impl searchHistoryDAO_Impl = (SearchHistoryDAO_Impl) playlistHeaderBinding.playlistDescriptionReadMore;
                Objects.requireNonNull(searchHistoryDAO_Impl);
                SingleObserveOn subscribeOn3 = new SingleAmb(new StaticImageDecoderKt$$ExternalSyntheticLambda0(searchHistoryDAO_Impl, i3), 3).subscribeOn(Schedulers.IO);
                Scheduler mainThread3 = AndroidSchedulers.mainThread();
                ConsumerSingleObserver consumerSingleObserver3 = new ConsumerSingleObserver(new HistorySettingsFragment$$ExternalSyntheticLambda7(context, 0), new HistorySettingsFragment$$ExternalSyntheticLambda7(context, 5));
                try {
                    subscribeOn3.subscribe(new SingleObserveOn.ObserveOnSingleObserver(consumerSingleObserver3, mainThread3));
                    compositeDisposable.add(consumerSingleObserver3);
                    return;
                } catch (NullPointerException e3) {
                    throw e3;
                } catch (Throwable th3) {
                    throw Owner.CC.m(th3, "subscribeActual failed", th3);
                }
        }
    }
}
