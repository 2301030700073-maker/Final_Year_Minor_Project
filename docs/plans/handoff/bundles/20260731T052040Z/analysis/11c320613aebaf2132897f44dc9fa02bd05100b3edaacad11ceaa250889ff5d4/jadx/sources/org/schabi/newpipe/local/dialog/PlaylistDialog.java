package org.schabi.newpipe.local.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.Window;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.RunnableDisposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableElementAtMaybe;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeCallbackObserver;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeMap;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeObserveOn;
import io.reactivex.rxjava3.schedulers.Schedulers;
import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.function.Consumer;
import kotlinx.coroutines.rx3.RxConvertKt$$ExternalSyntheticLambda0;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import org.schabi.newpipe.QueueItemMenuUtil$$ExternalSyntheticLambda1;
import org.schabi.newpipe.database.AppDatabase;
import org.schabi.newpipe.database.playlist.dao.PlaylistDAO_Impl;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticLambda1;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda10;
import org.schabi.newpipe.local.feed.FeedViewModel$$ExternalSyntheticLambda0;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda28;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda48;
import org.schabi.newpipe.util.SavedState;
import org.schabi.newpipe.util.StateSaver;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class PlaylistDialog extends DialogFragment implements StateSaver.WriteRead {
    public SavedState savedState;
    public List streamEntities;

    public static MaybeCallbackObserver createCorrespondingDialog(Context context, List list, Consumer consumer) {
        AppDatabase appKt = AppKt.getInstance(context);
        appKt.streamDAO();
        PlaylistDAO_Impl playlistDAO = appKt.playlistDAO();
        appKt.playlistStreamDAO();
        MaybeObserveOn subscribeOn = new MaybeMap(new FlowableElementAtMaybe(Cookie.Companion.createFlowable(playlistDAO.__db, false, new String[]{"playlists"}, new FeedFragment$$ExternalSyntheticLambda10(1))), new FeedViewModel$$ExternalSyntheticLambda0(16), 0).subscribeOn(Schedulers.IO);
        Scheduler mainThread = AndroidSchedulers.mainThread();
        MaybeCallbackObserver maybeCallbackObserver = new MaybeCallbackObserver(new RxConvertKt$$ExternalSyntheticLambda0(consumer, list, 24), Functions.ON_ERROR_MISSING, Functions.EMPTY_ACTION);
        try {
            subscribeOn.subscribe(new MaybeObserveOn.ObserveOnMaybeObserver(maybeCallbackObserver, mainThread));
            return maybeCallbackObserver;
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            throw Owner.CC.m(th, "subscribeActual failed", th);
        }
    }

    public static void showForPlayQueue(Player player, FragmentManager fragmentManager) {
        List list = (List) Stream.CC.of(player.playQueue).filter(new Player$$ExternalSyntheticLambda48(6)).flatMap(new Player$$ExternalSyntheticLambda28(2)).map(new Utils$$ExternalSyntheticLambda1(28)).collect(Collectors.toList());
        if (list.isEmpty()) {
            new RunnableDisposable(Functions.EMPTY_RUNNABLE);
        } else {
            createCorrespondingDialog(player.context, list, new QueueItemMenuUtil$$ExternalSyntheticLambda1(fragmentManager, 1));
        }
    }

    @Override // org.schabi.newpipe.util.StateSaver.WriteRead
    public final String generateSuffix() {
        List list = this.streamEntities;
        return Modifier.CC.m(".", list == null ? 0 : list.size(), ".list");
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.savedState = StateSaver.tryToRestore(bundle, this);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog onCreateDialog = super.onCreateDialog(bundle);
        Window window = onCreateDialog.getWindow();
        if (window != null) {
            window.requestFeature(1);
        }
        return onCreateDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        StateSaver.onDestroy(this.savedState);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (getActivity() != null) {
            this.savedState = StateSaver.tryToSave(getActivity().isChangingConfigurations(), this.savedState, bundle, this);
        }
    }

    @Override // org.schabi.newpipe.util.StateSaver.WriteRead
    public final void readFrom(Queue queue) {
        this.streamEntities = (List) queue.poll();
    }

    @Override // org.schabi.newpipe.util.StateSaver.WriteRead
    public final void writeTo(LinkedList linkedList) {
        linkedList.add(this.streamEntities);
    }
}
