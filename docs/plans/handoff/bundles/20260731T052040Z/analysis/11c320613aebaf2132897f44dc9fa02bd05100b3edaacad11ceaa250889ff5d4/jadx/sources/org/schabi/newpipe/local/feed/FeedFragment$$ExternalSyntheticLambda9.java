package org.schabi.newpipe.local.feed;

import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.net.Uri;
import android.util.Pair;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.preference.PreferenceManager;
import androidx.room.Room;
import androidx.sqlite.SQLite;
import com.google.android.exoplayer2.ui.TrackSelectionDialogBuilder;
import com.google.android.exoplayer2.ui.TrackSelectionView;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeCallbackObserver;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeEmpty;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeFromCallable;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeObserveOn;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.jvm.internal.Intrinsics;
import net.newpipe.app.AppKt;
import okhttp3.Dispatcher;
import okhttp3.internal.connection.RealConnectionPool;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.App;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.LocalItem;
import org.schabi.newpipe.database.playlist.PlaylistLocalItem;
import org.schabi.newpipe.database.playlist.PlaylistMetadataEntry;
import org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity;
import org.schabi.newpipe.download.DownloadDialog;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.exceptions.ReCaptchaException;
import org.schabi.newpipe.extractor.services.peertube.PeertubeInstance;
import org.schabi.newpipe.extractor.stream.Stream;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.fragments.detail.VideoDetailFragment;
import org.schabi.newpipe.local.LocalItemListAdapter;
import org.schabi.newpipe.local.bookmark.BookmarkFragment;
import org.schabi.newpipe.local.dialog.PlaylistAppendDialog$$ExternalSyntheticLambda5;
import org.schabi.newpipe.local.dialog.PlaylistCreationDialog;
import org.schabi.newpipe.local.feed.FeedFragment;
import org.schabi.newpipe.local.playlist.LocalPlaylistManager$$ExternalSyntheticLambda7;
import org.schabi.newpipe.player.ui.VideoPlayerUi;
import org.schabi.newpipe.settings.BackupRestoreSettingsFragment;
import org.schabi.newpipe.settings.PeertubeInstanceListFragment;
import org.schabi.newpipe.settings.SelectChannelFragment;
import org.schabi.newpipe.settings.SelectFeedGroupFragment;
import org.schabi.newpipe.settings.SelectKioskFragment;
import org.schabi.newpipe.settings.SelectPlaylistFragment;
import org.schabi.newpipe.settings.tabs.AddTabDialog$ChooseTabListItem;
import org.schabi.newpipe.settings.tabs.ChooseTabsFragment;
import org.schabi.newpipe.settings.tabs.ChooseTabsFragment$$ExternalSyntheticLambda4;
import org.schabi.newpipe.settings.tabs.Tab;
import org.schabi.newpipe.streams.io.StoredFileHelper;
import org.schabi.newpipe.views.NewPipeEditText;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class FeedFragment$$ExternalSyntheticLambda9 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ FeedFragment$$ExternalSyntheticLambda9(SharedPreferences sharedPreferences, FeedFragment feedFragment) {
        this.$r8$classId = 7;
        this.f$1 = sharedPreferences;
        this.f$0 = feedFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.$r8$classId;
        final String str = null;
        final int i3 = 1;
        final int i4 = 0;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        switch (i2) {
            case 0:
                FeedFragment feedFragment = (FeedFragment) obj2;
                boolean[] zArr = (boolean[]) obj;
                FeedViewModel feedViewModel = feedFragment.viewModel;
                if (feedViewModel == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                    throw null;
                }
                boolean z = zArr[0];
                feedViewModel.showPlayedItems.onNext(Boolean.valueOf(z));
                App app = feedViewModel.application;
                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(app);
                defaultSharedPreferences.getClass();
                SharedPreferences.Editor edit = defaultSharedPreferences.edit();
                edit.getClass();
                edit.putBoolean(app.getString(R.string.feed_show_watched_items_key), z);
                edit.apply();
                FeedViewModel feedViewModel2 = feedFragment.viewModel;
                if (feedViewModel2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                    throw null;
                }
                boolean z2 = zArr[1];
                feedViewModel2.showPartiallyPlayedItems.onNext(Boolean.valueOf(z2));
                App app2 = feedViewModel2.application;
                SharedPreferences defaultSharedPreferences2 = PreferenceManager.getDefaultSharedPreferences(app2);
                defaultSharedPreferences2.getClass();
                SharedPreferences.Editor edit2 = defaultSharedPreferences2.edit();
                edit2.getClass();
                edit2.putBoolean(app2.getString(R.string.feed_show_partially_watched_items_key), z2);
                edit2.apply();
                FeedViewModel feedViewModel3 = feedFragment.viewModel;
                if (feedViewModel3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                    throw null;
                }
                boolean z3 = zArr[2];
                feedViewModel3.showFutureItems.onNext(Boolean.valueOf(z3));
                App app3 = feedViewModel3.application;
                SharedPreferences defaultSharedPreferences3 = PreferenceManager.getDefaultSharedPreferences(app3);
                defaultSharedPreferences3.getClass();
                SharedPreferences.Editor edit3 = defaultSharedPreferences3.edit();
                edit3.getClass();
                edit3.putBoolean(app3.getString(R.string.feed_show_future_items_key), z3);
                edit3.apply();
                return;
            case 1:
                ((TrackSelectionDialogBuilder) obj2).lambda$setUpDialogView$1((TrackSelectionView) obj, dialogInterface, i);
                return;
            case 2:
                DownloadDialog downloadDialog = (DownloadDialog) obj2;
                StoredFileHelper storedFileHelper = (StoredFileHelper) obj;
                int i5 = DownloadDialog.$r8$clinit;
                dialogInterface.dismiss();
                downloadDialog.downloadManager.forgetMission(storedFileHelper);
                downloadDialog.continueSelectedDownload(storedFileHelper);
                return;
            case 3:
                VideoDetailFragment videoDetailFragment = (VideoDetailFragment) obj2;
                LinkedList linkedList = VideoDetailFragment.stack;
                videoDetailFragment.startOnExternalPlayer(videoDetailFragment.activity, videoDetailFragment.currentInfo, (Stream) ((ArrayList) obj).get(((AlertDialog) dialogInterface).mAlert.mListView.getCheckedItemPosition()));
                return;
            case 4:
                VideoDetailFragment videoDetailFragment2 = (VideoDetailFragment) obj2;
                LinkedList linkedList2 = VideoDetailFragment.stack;
                videoDetailFragment2.startOnExternalPlayer(videoDetailFragment2.activity, videoDetailFragment2.currentInfo, (Stream) ((List) obj).get(((AlertDialog) dialogInterface).mAlert.mListView.getCheckedItemPosition()));
                return;
            case 5:
                BookmarkFragment bookmarkFragment = (BookmarkFragment) obj2;
                PlaylistLocalItem playlistLocalItem = (PlaylistLocalItem) obj;
                int i6 = BookmarkFragment.$r8$clinit;
                LocalItemListAdapter localItemListAdapter = bookmarkFragment.itemListAdapter;
                if (localItemListAdapter == null) {
                    return;
                }
                ArrayList arrayList = localItemListAdapter.localItems;
                int indexOf = arrayList.indexOf(playlistLocalItem);
                if (indexOf != -1) {
                    arrayList.remove(indexOf);
                    localItemListAdapter.notifyItemRemoved((localItemListAdapter.hasHeader() ? 1 : 0) + indexOf);
                } else {
                    localItemListAdapter.notifyDataSetChanged();
                }
                if (playlistLocalItem instanceof PlaylistMetadataEntry) {
                    bookmarkFragment.deletedItems.add(new Pair(Long.valueOf(playlistLocalItem.getUid()), LocalItem.LocalItemType.PLAYLIST_LOCAL_ITEM));
                } else if (playlistLocalItem instanceof PlaylistRemoteEntity) {
                    bookmarkFragment.deletedItems.add(new Pair(Long.valueOf(((PlaylistRemoteEntity) playlistLocalItem).uid), LocalItem.LocalItemType.PLAYLIST_REMOTE_ITEM));
                }
                RealConnectionPool realConnectionPool = bookmarkFragment.debounceSaver;
                if (realConnectionPool != null) {
                    realConnectionPool.setHasChangesToSave();
                    bookmarkFragment.saveImmediate();
                    return;
                }
                return;
            case 6:
                PlaylistCreationDialog playlistCreationDialog = (PlaylistCreationDialog) obj2;
                String obj3 = ((NewPipeEditText) ((TokenData) obj).builder).getText().toString();
                Dispatcher dispatcher = new Dispatcher(AppKt.getInstance(playlistCreationDialog.requireContext()));
                Toast makeText = Toast.makeText(playlistCreationDialog.getActivity(), R.string.playlist_creation_success, 0);
                List list = playlistCreationDialog.streamEntities;
                try {
                    (list.isEmpty() ? MaybeEmpty.INSTANCE : new MaybeFromCallable(new LocalPlaylistManager$$ExternalSyntheticLambda7(dispatcher, list, obj3, i4)).subscribeOn(Schedulers.IO)).subscribe(new MaybeObserveOn.ObserveOnMaybeObserver(new MaybeCallbackObserver(new PlaylistAppendDialog$$ExternalSyntheticLambda5(makeText, 1), Functions.ON_ERROR_MISSING, Functions.EMPTY_ACTION), AndroidSchedulers.mainThread()));
                    return;
                } catch (NullPointerException e) {
                    throw e;
                } catch (Throwable th) {
                    throw Owner.CC.m(th, "subscribeActual failed", th);
                }
            case 7:
                FeedFragment.Companion companion = FeedFragment.Companion;
                SharedPreferences.Editor edit4 = ((SharedPreferences) obj).edit();
                edit4.getClass();
                edit4.putBoolean(((FeedFragment) obj2).getString(R.string.feed_use_dedicated_fetch_method_key), false);
                edit4.apply();
                return;
            case 8:
                BackupRestoreSettingsFragment backupRestoreSettingsFragment = (BackupRestoreSettingsFragment) obj2;
                int i7 = BackupRestoreSettingsFragment.$r8$clinit;
                dialogInterface.dismiss();
                backupRestoreSettingsFragment.defaultPreferences.edit().putString(backupRestoreSettingsFragment.importExportDataPathKey, ((Uri) obj).toString()).apply();
                SQLite.restartApp(backupRestoreSettingsFragment.requireActivity());
                return;
            case 9:
                PeertubeInstanceListFragment peertubeInstanceListFragment = (PeertubeInstanceListFragment) obj2;
                peertubeInstanceListFragment.sharedPreferences.edit().remove(peertubeInstanceListFragment.savedInstanceListKey).apply();
                Context requireContext = peertubeInstanceListFragment.requireContext();
                PeertubeInstance peertubeInstance = PeertubeInstance.DEFAULT_INSTANCE;
                Room.selectInstance(peertubeInstance, requireContext);
                peertubeInstanceListFragment.selectedInstance = peertubeInstance;
                peertubeInstanceListFragment.sharedPreferences.edit().putBoolean("key_main_page_change", true).apply();
                peertubeInstanceListFragment.instanceListAdapter.submitList(Room.getInstanceList((Context) obj));
                return;
            case 10:
                final PeertubeInstanceListFragment peertubeInstanceListFragment2 = (PeertubeInstanceListFragment) obj2;
                String trim = ((NewPipeEditText) ((TokenData) obj).builder).getText().toString().trim();
                if (!trim.startsWith("http")) {
                    trim = "https://".concat(trim);
                }
                String replaceAll = trim.replaceAll("/$", "");
                if (replaceAll.startsWith("https://")) {
                    Iterator<Object> it = peertubeInstanceListFragment2.instanceListAdapter.getCurrentList().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            str = replaceAll;
                        } else if (((PeertubeInstance) it.next()).url.equals(replaceAll)) {
                            Toast.makeText(peertubeInstanceListFragment2.getActivity(), R.string.peertube_instance_add_exists, 0).show();
                        }
                    }
                } else {
                    Toast.makeText(peertubeInstanceListFragment2.getActivity(), R.string.peertube_instance_add_https_only, 0).show();
                }
                if (str == null) {
                    return;
                }
                ((ProgressBar) peertubeInstanceListFragment2.binding.lazyDecoderFactories).setVisibility(0);
                SingleObserveOn subscribeOn = new SingleAmb(new Callable() { // from class: org.schabi.newpipe.settings.PeertubeInstanceListFragment$$ExternalSyntheticLambda3
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        String str2 = str;
                        PeertubeInstance peertubeInstance2 = new PeertubeInstance(str2);
                        try {
                            String str3 = (String) Utility.downloader.get(str2.concat("/api/v1/config")).mHiddenViews;
                            if (Utils.isBlank(str3)) {
                                throw new Exception("unable to configure instance ".concat(str2));
                            }
                            try {
                            } catch (JsonParserException | ParsingException e2) {
                                e = e2;
                            }
                            try {
                                peertubeInstance2.name = (String) Parser.getInstanceOf((JsonObject) JsonParser.object().from(str3), "instance.name", String.class);
                                return peertubeInstance2;
                            } catch (ParsingException e3) {
                                e = e3;
                                throw new Exception("unable to parse instance config", e);
                            }
                        } catch (IOException | ReCaptchaException e4) {
                            throw new Exception("unable to configure instance ".concat(str2), e4);
                        }
                    }
                }, 3).subscribeOn(Schedulers.IO);
                Scheduler mainThread = AndroidSchedulers.mainThread();
                ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer() { // from class: org.schabi.newpipe.settings.PeertubeInstanceListFragment$$ExternalSyntheticLambda4
                    @Override // io.reactivex.rxjava3.functions.Consumer
                    public final void accept(Object obj4) {
                        int i8 = i4;
                        PeertubeInstanceListFragment peertubeInstanceListFragment3 = peertubeInstanceListFragment2;
                        switch (i8) {
                            case 0:
                                ((ProgressBar) peertubeInstanceListFragment3.binding.lazyDecoderFactories).setVisibility(8);
                                ArrayList arrayList2 = new ArrayList(peertubeInstanceListFragment3.instanceListAdapter.getCurrentList());
                                arrayList2.add((PeertubeInstance) obj4);
                                peertubeInstanceListFragment3.instanceListAdapter.submitList(arrayList2);
                                break;
                            default:
                                ((ProgressBar) peertubeInstanceListFragment3.binding.lazyDecoderFactories).setVisibility(8);
                                Toast.makeText(peertubeInstanceListFragment3.getActivity(), R.string.peertube_instance_add_fail, 0).show();
                                break;
                        }
                    }
                }, new Consumer() { // from class: org.schabi.newpipe.settings.PeertubeInstanceListFragment$$ExternalSyntheticLambda4
                    @Override // io.reactivex.rxjava3.functions.Consumer
                    public final void accept(Object obj4) {
                        int i8 = i3;
                        PeertubeInstanceListFragment peertubeInstanceListFragment3 = peertubeInstanceListFragment2;
                        switch (i8) {
                            case 0:
                                ((ProgressBar) peertubeInstanceListFragment3.binding.lazyDecoderFactories).setVisibility(8);
                                ArrayList arrayList2 = new ArrayList(peertubeInstanceListFragment3.instanceListAdapter.getCurrentList());
                                arrayList2.add((PeertubeInstance) obj4);
                                peertubeInstanceListFragment3.instanceListAdapter.submitList(arrayList2);
                                break;
                            default:
                                ((ProgressBar) peertubeInstanceListFragment3.binding.lazyDecoderFactories).setVisibility(8);
                                Toast.makeText(peertubeInstanceListFragment3.getActivity(), R.string.peertube_instance_add_fail, 0).show();
                                break;
                        }
                    }
                });
                try {
                    subscribeOn.subscribe(new SingleObserveOn.ObserveOnSingleObserver(consumerSingleObserver, mainThread));
                    peertubeInstanceListFragment2.disposables.add(consumerSingleObserver);
                    return;
                } catch (NullPointerException e2) {
                    throw e2;
                } catch (Throwable th2) {
                    throw Owner.CC.m(th2, "subscribeActual failed", th2);
                }
            default:
                ChooseTabsFragment chooseTabsFragment = (ChooseTabsFragment) obj2;
                int i8 = ((AddTabDialog$ChooseTabListItem[]) obj)[i].tabId;
                Tab.Type typeFrom = Tab.typeFrom(i8);
                if (typeFrom == null) {
                    ErrorInfo errorInfo = new ErrorInfo(new IllegalStateException(Modifier.CC.m(i8, "Tab id not found: ")), UserAction.SOMETHING_ELSE, "Choosing tabs on settings", (Integer) null, 24);
                    ErrorUtil.Companion.getClass();
                    ErrorUtil.Companion.showSnackbar(chooseTabsFragment, errorInfo);
                    return;
                }
                switch (typeFrom.ordinal()) {
                    case 6:
                        SelectKioskFragment selectKioskFragment = new SelectKioskFragment();
                        selectKioskFragment.onSelectedListener = new ChooseTabsFragment$$ExternalSyntheticLambda4(chooseTabsFragment);
                        selectKioskFragment.show(chooseTabsFragment.getParentFragmentManager(), "select_kiosk");
                        return;
                    case 7:
                        SelectChannelFragment selectChannelFragment = new SelectChannelFragment();
                        selectChannelFragment.onSelectedListener = new ChooseTabsFragment$$ExternalSyntheticLambda4(chooseTabsFragment);
                        selectChannelFragment.show(chooseTabsFragment.getParentFragmentManager(), "select_channel");
                        return;
                    case 8:
                        SelectPlaylistFragment selectPlaylistFragment = new SelectPlaylistFragment();
                        selectPlaylistFragment.onSelectedListener = new VideoPlayerUi.AnonymousClass1(chooseTabsFragment, 16);
                        selectPlaylistFragment.show(chooseTabsFragment.getParentFragmentManager(), "select_playlist");
                        return;
                    case 9:
                        SelectFeedGroupFragment selectFeedGroupFragment = new SelectFeedGroupFragment();
                        selectFeedGroupFragment.onSelectedListener = new ChooseTabsFragment$$ExternalSyntheticLambda4(chooseTabsFragment);
                        selectFeedGroupFragment.show(chooseTabsFragment.getParentFragmentManager(), "select_feed_group");
                        return;
                    default:
                        chooseTabsFragment.addTab(typeFrom.getTab());
                        return;
                }
        }
    }

    public /* synthetic */ FeedFragment$$ExternalSyntheticLambda9(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }
}
