package org.schabi.newpipe.local.dialog;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableObserveOn;
import io.reactivex.rxjava3.internal.subscribers.LambdaSubscriber;
import io.reactivex.rxjava3.schedulers.Schedulers;
import j$.util.Collection;
import java.util.List;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;
import kotlinx.coroutines.rx3.RxConvertKt$$ExternalSyntheticLambda0;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import okhttp3.Dispatcher;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.playlist.dao.PlaylistStreamDAO_Impl;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.local.LocalItemListAdapter;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda48;
import us.shandian.giga.ui.common.Deleter$$ExternalSyntheticLambda4;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PlaylistAppendDialog extends PlaylistDialog {
    public LocalItemListAdapter playlistAdapter;
    public final CompositeDisposable playlistDisposables = new CompositeDisposable();
    public TextView playlistDuplicateIndicator;
    public RecyclerView playlistRecyclerView;

    /* renamed from: $r8$lambda$32Imcs3GYaB-AK9Bg8ybmEKtLfQ, reason: not valid java name */
    public static void m871$r8$lambda$32Imcs3GYaBAK9Bg8ybmEKtLfQ(PlaylistAppendDialog playlistAppendDialog, List list) {
        LocalItemListAdapter localItemListAdapter = playlistAppendDialog.playlistAdapter;
        if (localItemListAdapter == null || playlistAppendDialog.playlistRecyclerView == null || playlistAppendDialog.playlistDuplicateIndicator == null) {
            return;
        }
        localItemListAdapter.clearStreamItemList();
        playlistAppendDialog.playlistAdapter.addItems(list);
        playlistAppendDialog.playlistRecyclerView.setVisibility(0);
        playlistAppendDialog.playlistDuplicateIndicator.setVisibility(Collection.EL.stream(list).anyMatch(new Player$$ExternalSyntheticLambda48(5)) ? 0 : 8);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.dialog_playlists, viewGroup);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        CompositeDisposable compositeDisposable = this.playlistDisposables;
        compositeDisposable.dispose();
        LocalItemListAdapter localItemListAdapter = this.playlistAdapter;
        if (localItemListAdapter != null) {
            localItemListAdapter.localItemBuilder.builder = null;
        }
        compositeDisposable.clear();
        this.playlistRecyclerView = null;
        this.playlistAdapter = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        Dispatcher dispatcher = new Dispatcher(AppKt.getInstance(requireContext()));
        LocalItemListAdapter localItemListAdapter = new LocalItemListAdapter(getActivity());
        this.playlistAdapter = localItemListAdapter;
        int i = 23;
        localItemListAdapter.localItemBuilder.builder = new RxConvertKt$$ExternalSyntheticLambda0(this, dispatcher, i);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.playlist_list);
        this.playlistRecyclerView = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        this.playlistRecyclerView.setAdapter(this.playlistAdapter);
        this.playlistDuplicateIndicator = (TextView) view.findViewById(R.id.playlist_duplicate);
        view.findViewById(R.id.newPlaylist).setOnClickListener(new Deleter$$ExternalSyntheticLambda4(this, 5));
        String url = ((StreamEntity) this.streamEntities.get(0)).getUrl();
        PlaylistStreamDAO_Impl playlistStreamDAO_Impl = (PlaylistStreamDAO_Impl) dispatcher.runningSyncCalls;
        playlistStreamDAO_Impl.getClass();
        url.getClass();
        FlowableObserveOn observeOn = Cookie.Companion.createFlowable(playlistStreamDAO_Impl.__db, true, new String[]{"streams", "playlists", "playlist_stream_join"}, new StringsKt__IndentKt$$ExternalSyntheticLambda0(url, i)).subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread());
        LambdaSubscriber lambdaSubscriber = new LambdaSubscriber(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(this, 13), Functions.ON_ERROR_MISSING);
        observeOn.subscribe((FlowableSubscriber) lambdaSubscriber);
        this.playlistDisposables.add(lambdaSubscriber);
    }
}
