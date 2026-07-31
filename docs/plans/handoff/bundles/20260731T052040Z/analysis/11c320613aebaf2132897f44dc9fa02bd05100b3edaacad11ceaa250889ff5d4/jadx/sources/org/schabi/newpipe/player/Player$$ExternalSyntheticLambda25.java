package org.schabi.newpipe.player;

import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.EmptyCompletableObserver;
import io.reactivex.rxjava3.internal.operators.completable.CompletableFromAction;
import io.reactivex.rxjava3.internal.operators.completable.CompletablePeek;
import io.reactivex.rxjava3.schedulers.Schedulers;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import okhttp3.ConnectionPool;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.local.feed.FeedViewModel$$ExternalSyntheticLambda0;
import org.schabi.newpipe.local.history.HistoryRecordManager$$ExternalSyntheticLambda18;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Player$$ExternalSyntheticLambda25 implements Consumer {
    public final /* synthetic */ Player f$0;
    public final /* synthetic */ long f$1;

    public /* synthetic */ Player$$ExternalSyntheticLambda25(Player player, long j) {
        this.f$0 = player;
        this.f$1 = j;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        StreamInfo streamInfo = (StreamInfo) obj;
        Player player = this.f$0;
        if (player.prefs.getBoolean(player.context.getString(R.string.enable_watch_history_key), true)) {
            CompositeDisposable compositeDisposable = player.databaseUpdateDisposable;
            PlaylistHeaderBinding playlistHeaderBinding = player.recordManager;
            playlistHeaderBinding.getClass();
            CompletablePeek completablePeek = new CompletablePeek(new CompletableFromAction(new HistoryRecordManager$$ExternalSyntheticLambda18(this.f$1, playlistHeaderBinding, streamInfo), 0).subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread()), Functions.EMPTY_CONSUMER, new FeedViewModel$$ExternalSyntheticLambda0(19));
            EmptyCompletableObserver emptyCompletableObserver = new EmptyCompletableObserver();
            try {
                completablePeek.subscribe(new ConnectionPool(emptyCompletableObserver, 16));
                compositeDisposable.add(emptyCompletableObserver);
            } catch (NullPointerException e) {
                throw e;
            } catch (Throwable th) {
                AppKt.throwIfFatal(th);
                MathKt.onError(th);
                NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
                nullPointerException.initCause(th);
                throw nullPointerException;
            }
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
