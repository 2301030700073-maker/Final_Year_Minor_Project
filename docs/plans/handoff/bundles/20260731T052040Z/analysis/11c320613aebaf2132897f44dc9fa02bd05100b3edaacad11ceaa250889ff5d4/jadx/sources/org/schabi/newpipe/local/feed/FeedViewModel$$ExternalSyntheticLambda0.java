package org.schabi.newpipe.local.feed;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.compose.ui.node.Owner;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.Fragment;
import androidx.preference.Preference;
import androidx.sqlite.SQLite;
import androidx.transition.Transition;
import androidx.work.OneTimeWorkRequest;
import androidx.work.impl.WorkManagerImpl;
import coil3.decode.StaticImageDecoderKt;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableSkip;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeCallbackObserver;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeEmpty;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeFromCallable;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeFromSingle$FromSingleObserver;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeJust;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeObserveOn;
import io.reactivex.rxjava3.internal.operators.maybe.MaybePeek;
import io.reactivex.rxjava3.schedulers.Schedulers;
import j$.time.OffsetDateTime;
import j$.time.ZoneOffset;
import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.ArrayList;
import java.util.List;
import kotlin.text.UStringsKt;
import net.newpipe.app.AppKt;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.playlist.PlaylistLocalItem;
import org.schabi.newpipe.database.playlist.PlaylistMetadataEntry;
import org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity;
import org.schabi.newpipe.database.stream.model.StreamStateEntity;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.info_list.dialog.StreamDialogEntry;
import org.schabi.newpipe.local.bookmark.BookmarkFragment;
import org.schabi.newpipe.local.feed.notifications.NotificationWorker;
import org.schabi.newpipe.local.feed.service.FeedLoadService;
import org.schabi.newpipe.local.history.HistoryRecordManager$$ExternalSyntheticLambda20;
import org.schabi.newpipe.local.playlist.LocalPlaylistFragment;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.PlayerIntentType;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.PlayerType;
import org.schabi.newpipe.player.helper.PlayerHolder;
import org.schabi.newpipe.player.playqueue.SinglePlayQueue;
import org.schabi.newpipe.settings.DebugSettingsFragment;
import org.schabi.newpipe.settings.HistorySettingsFragment;
import org.schabi.newpipe.views.CustomCollapsingToolbarLayout;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class FeedViewModel$$ExternalSyntheticLambda0 implements StreamDialogEntry.StreamDialogEntryAction, Consumer, BiFunction, Function, Predicate, OnApplyWindowInsetsListener, Preference.OnPreferenceClickListener {
    public final /* synthetic */ int $r8$classId;

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        switch (this.$r8$classId) {
            case 9:
                int i = BookmarkFragment.$r8$clinit;
                break;
            case 14:
                int i2 = LocalPlaylistFragment.$r8$clinit;
                break;
            case 18:
                Log.e(Player.TAG, "Progress update failure: ", (Throwable) obj);
                break;
            case 19:
                String str = Player.TAG;
                break;
            default:
                int i3 = HistorySettingsFragment.$r8$clinit;
                break;
        }
    }

    @Override // io.reactivex.rxjava3.functions.Function
    public Object apply(Object obj) {
        int i = this.$r8$classId;
        MaybeEmpty maybeEmpty = MaybeEmpty.INSTANCE;
        char c = 1;
        int i2 = 0;
        switch (i) {
            case 11:
                Flowable flowable = (Flowable) obj;
                FeedLoadService.Companion companion = FeedLoadService.Companion;
                flowable.getClass();
                return Flowable.concatArray(new FlowableSkip(flowable, c == true ? 1 : 0), new FlowableSkip(flowable, i2).throttleLatest(1500L));
            case 12:
                List list = (List) obj;
                if (list.isEmpty()) {
                    return maybeEmpty;
                }
                StreamStateEntity streamStateEntity = (StreamStateEntity) list.get(0);
                Objects.requireNonNull(streamStateEntity, "item is null");
                return new MaybeJust(streamStateEntity);
            case 13:
                List list2 = (List) obj;
                if (list2.isEmpty()) {
                    return maybeEmpty;
                }
                StreamStateEntity streamStateEntity2 = (StreamStateEntity) list2.get(0);
                Objects.requireNonNull(streamStateEntity2, "item is null");
                return new MaybeJust(streamStateEntity2);
            case 14:
            default:
                return Boolean.valueOf(((Long) obj).longValue() > 0);
            case 15:
                return LocalPlaylistFragment.m872$r8$lambda$P_u4_HiCmhoZzHplnujqI4PrkI((List) obj);
        }
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        switch (this.$r8$classId) {
            case 20:
                Insets insets = windowInsetsCompat.mImpl.getInsets(128);
                if (!insets.equals(Insets.NONE)) {
                    view.setPadding(insets.left, insets.top, insets.right, insets.bottom);
                    break;
                }
                break;
            default:
                int i = CustomCollapsingToolbarLayout.$r8$clinit;
                break;
        }
        return windowInsetsCompat;
    }

    @Override // org.schabi.newpipe.info_list.dialog.StreamDialogEntry.StreamDialogEntryAction
    public void onClick(Fragment fragment, StreamInfoItem streamInfoItem) {
        final int i = 1;
        final int i2 = 0;
        switch (this.$r8$classId) {
            case 1:
                Transition.Impl26.openUrlInBrowser(fragment.requireContext(), streamInfoItem.getUrl());
                return;
            case 2:
                PlaylistHeaderBinding playlistHeaderBinding = new PlaylistHeaderBinding(fragment.getContext());
                try {
                    try {
                        new MaybePeek(!((SharedPreferences) playlistHeaderBinding.playlistTitleView).getBoolean((String) playlistHeaderBinding.uploaderAvatarView, false) ? MaybeEmpty.INSTANCE : new MaybeFromCallable(new HistoryRecordManager$$ExternalSyntheticLambda20(playlistHeaderBinding, streamInfoItem, OffsetDateTime.now(ZoneOffset.UTC), i2)).subscribeOn(Schedulers.IO), new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(fragment, 12), 0).subscribe(new MaybeFromSingle$FromSingleObserver(new MaybeObserveOn.ObserveOnMaybeObserver(new MaybeCallbackObserver(Functions.EMPTY_CONSUMER, Functions.ON_ERROR_MISSING, Functions.EMPTY_ACTION), AndroidSchedulers.mainThread()), 1));
                        return;
                    } catch (NullPointerException e) {
                        throw e;
                    } catch (Throwable th) {
                        AppKt.throwIfFatal(th);
                        NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
                        nullPointerException.initCause(th);
                        throw nullPointerException;
                    }
                } catch (NullPointerException e2) {
                    throw e2;
                } catch (Throwable th2) {
                    throw Owner.CC.m(th2, "subscribeActual failed", th2);
                }
            case 3:
                final Context applicationContext = fragment.requireContext().getApplicationContext();
                UStringsKt.fetchItemInfoIfSparse(applicationContext, streamInfoItem, new java.util.function.Consumer() { // from class: org.schabi.newpipe.info_list.dialog.StreamDialogDefaultEntry$$ExternalSyntheticLambda14
                    @Override // java.util.function.Consumer
                    /* renamed from: accept */
                    public final void s(Object obj) {
                        int i3 = i;
                        PlayerType playerType = PlayerType.AUDIO;
                        Context context = applicationContext;
                        SinglePlayQueue singlePlayQueue = (SinglePlayQueue) obj;
                        switch (i3) {
                            case 0:
                                PlayerType type = PlayerHolder.getInstance().getType();
                                if (type == null) {
                                    Log.e("NavigationHelper", "Enqueueing next but no player is open; defaulting to background player");
                                } else {
                                    playerType = type;
                                }
                                Toast.makeText(context, R.string.enqueued_next, 0).show();
                                StaticImageDecoderKt.startForegroundService(context, SQLite.getPlayerIntent(context, PlayerService.class, singlePlayQueue, PlayerIntentType.EnqueueNext).putExtra("resume_playback", false).putExtra("player_type", playerType));
                                break;
                            case 1:
                                PlayerType type2 = PlayerHolder.getInstance().getType();
                                if (type2 == null) {
                                    Log.e("NavigationHelper", "Enqueueing but no player is open; defaulting to background player");
                                } else {
                                    playerType = type2;
                                }
                                SQLite.enqueueOnPlayer(context, singlePlayQueue, playerType);
                                break;
                            case 2:
                                SQLite.playOnPopupPlayer(context, singlePlayQueue, true);
                                break;
                            default:
                                SQLite.playOnBackgroundPlayer(context, singlePlayQueue, true);
                                break;
                        }
                    }

                    public /* synthetic */ java.util.function.Consumer andThen(java.util.function.Consumer consumer) {
                        int i3 = i;
                        return Consumer$CC.$default$andThen(this, consumer);
                    }
                });
                return;
            case 4:
                final Context applicationContext2 = fragment.requireContext().getApplicationContext();
                UStringsKt.fetchItemInfoIfSparse(applicationContext2, streamInfoItem, new java.util.function.Consumer() { // from class: org.schabi.newpipe.info_list.dialog.StreamDialogDefaultEntry$$ExternalSyntheticLambda14
                    @Override // java.util.function.Consumer
                    /* renamed from: accept */
                    public final void s(Object obj) {
                        int i3 = i2;
                        PlayerType playerType = PlayerType.AUDIO;
                        Context context = applicationContext2;
                        SinglePlayQueue singlePlayQueue = (SinglePlayQueue) obj;
                        switch (i3) {
                            case 0:
                                PlayerType type = PlayerHolder.getInstance().getType();
                                if (type == null) {
                                    Log.e("NavigationHelper", "Enqueueing next but no player is open; defaulting to background player");
                                } else {
                                    playerType = type;
                                }
                                Toast.makeText(context, R.string.enqueued_next, 0).show();
                                StaticImageDecoderKt.startForegroundService(context, SQLite.getPlayerIntent(context, PlayerService.class, singlePlayQueue, PlayerIntentType.EnqueueNext).putExtra("resume_playback", false).putExtra("player_type", playerType));
                                break;
                            case 1:
                                PlayerType type2 = PlayerHolder.getInstance().getType();
                                if (type2 == null) {
                                    Log.e("NavigationHelper", "Enqueueing but no player is open; defaulting to background player");
                                } else {
                                    playerType = type2;
                                }
                                SQLite.enqueueOnPlayer(context, singlePlayQueue, playerType);
                                break;
                            case 2:
                                SQLite.playOnPopupPlayer(context, singlePlayQueue, true);
                                break;
                            default:
                                SQLite.playOnBackgroundPlayer(context, singlePlayQueue, true);
                                break;
                        }
                    }

                    public /* synthetic */ java.util.function.Consumer andThen(java.util.function.Consumer consumer) {
                        int i3 = i2;
                        return Consumer$CC.$default$andThen(this, consumer);
                    }
                });
                return;
            case 5:
                final Context applicationContext3 = fragment.requireContext().getApplicationContext();
                final int i3 = 3;
                UStringsKt.fetchItemInfoIfSparse(applicationContext3, streamInfoItem, new java.util.function.Consumer() { // from class: org.schabi.newpipe.info_list.dialog.StreamDialogDefaultEntry$$ExternalSyntheticLambda14
                    @Override // java.util.function.Consumer
                    /* renamed from: accept */
                    public final void s(Object obj) {
                        int i32 = i3;
                        PlayerType playerType = PlayerType.AUDIO;
                        Context context = applicationContext3;
                        SinglePlayQueue singlePlayQueue = (SinglePlayQueue) obj;
                        switch (i32) {
                            case 0:
                                PlayerType type = PlayerHolder.getInstance().getType();
                                if (type == null) {
                                    Log.e("NavigationHelper", "Enqueueing next but no player is open; defaulting to background player");
                                } else {
                                    playerType = type;
                                }
                                Toast.makeText(context, R.string.enqueued_next, 0).show();
                                StaticImageDecoderKt.startForegroundService(context, SQLite.getPlayerIntent(context, PlayerService.class, singlePlayQueue, PlayerIntentType.EnqueueNext).putExtra("resume_playback", false).putExtra("player_type", playerType));
                                break;
                            case 1:
                                PlayerType type2 = PlayerHolder.getInstance().getType();
                                if (type2 == null) {
                                    Log.e("NavigationHelper", "Enqueueing but no player is open; defaulting to background player");
                                } else {
                                    playerType = type2;
                                }
                                SQLite.enqueueOnPlayer(context, singlePlayQueue, playerType);
                                break;
                            case 2:
                                SQLite.playOnPopupPlayer(context, singlePlayQueue, true);
                                break;
                            default:
                                SQLite.playOnBackgroundPlayer(context, singlePlayQueue, true);
                                break;
                        }
                    }

                    public /* synthetic */ java.util.function.Consumer andThen(java.util.function.Consumer consumer) {
                        int i32 = i3;
                        return Consumer$CC.$default$andThen(this, consumer);
                    }
                });
                return;
            case 6:
                final Context applicationContext4 = fragment.requireContext().getApplicationContext();
                final int i4 = 2;
                UStringsKt.fetchItemInfoIfSparse(applicationContext4, streamInfoItem, new java.util.function.Consumer() { // from class: org.schabi.newpipe.info_list.dialog.StreamDialogDefaultEntry$$ExternalSyntheticLambda14
                    @Override // java.util.function.Consumer
                    /* renamed from: accept */
                    public final void s(Object obj) {
                        int i32 = i4;
                        PlayerType playerType = PlayerType.AUDIO;
                        Context context = applicationContext4;
                        SinglePlayQueue singlePlayQueue = (SinglePlayQueue) obj;
                        switch (i32) {
                            case 0:
                                PlayerType type = PlayerHolder.getInstance().getType();
                                if (type == null) {
                                    Log.e("NavigationHelper", "Enqueueing next but no player is open; defaulting to background player");
                                } else {
                                    playerType = type;
                                }
                                Toast.makeText(context, R.string.enqueued_next, 0).show();
                                StaticImageDecoderKt.startForegroundService(context, SQLite.getPlayerIntent(context, PlayerService.class, singlePlayQueue, PlayerIntentType.EnqueueNext).putExtra("resume_playback", false).putExtra("player_type", playerType));
                                break;
                            case 1:
                                PlayerType type2 = PlayerHolder.getInstance().getType();
                                if (type2 == null) {
                                    Log.e("NavigationHelper", "Enqueueing but no player is open; defaulting to background player");
                                } else {
                                    playerType = type2;
                                }
                                SQLite.enqueueOnPlayer(context, singlePlayQueue, playerType);
                                break;
                            case 2:
                                SQLite.playOnPopupPlayer(context, singlePlayQueue, true);
                                break;
                            default:
                                SQLite.playOnBackgroundPlayer(context, singlePlayQueue, true);
                                break;
                        }
                    }

                    public /* synthetic */ java.util.function.Consumer andThen(java.util.function.Consumer consumer) {
                        int i32 = i4;
                        return Consumer$CC.$default$andThen(this, consumer);
                    }
                });
                return;
            case 7:
                throw new UnsupportedOperationException("This needs to be implemented manually by using InfoItemDialog.Builder.setAction()");
            default:
                throw new UnsupportedOperationException("This needs to be implemented manually by using InfoItemDialog.Builder.setAction()");
        }
    }

    @Override // androidx.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        switch (this.$r8$classId) {
            case 21:
                int i = DebugSettingsFragment.$r8$clinit;
                throw null;
            case 22:
                int i2 = DebugSettingsFragment.$r8$clinit;
                Context context = preference.mContext;
                NotificationWorker.Companion.getClass();
                context.getClass();
                OneTimeWorkRequest.Builder builder = new OneTimeWorkRequest.Builder(0, NotificationWorker.class);
                builder.tags.add("org.schabi.newpipe_streams_notifications");
                WorkManagerImpl.getInstance$1(context).enqueue((OneTimeWorkRequest) builder.build());
                return true;
            default:
                int i3 = DebugSettingsFragment.$r8$clinit;
                throw new RuntimeException("Dummy");
        }
    }

    @Override // io.reactivex.rxjava3.functions.Predicate
    public boolean test(Object obj) {
        return !((List) obj).isEmpty();
    }

    public /* synthetic */ FeedViewModel$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // io.reactivex.rxjava3.functions.BiFunction
    public Object apply(Object obj, Object obj2) {
        List list = (List) obj;
        List list2 = (List) obj2;
        ArrayList arrayList = new ArrayList(list2.size() + list.size());
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            while (i < list2.size() && ((PlaylistRemoteEntity) list2.get(i)).displayIndex <= ((PlaylistMetadataEntry) list.get(i2)).getDisplayIndex().longValue()) {
                Utility.addItem(arrayList, (PlaylistLocalItem) list2.get(i), arrayList2);
                i++;
            }
            Utility.addItem(arrayList, (PlaylistLocalItem) list.get(i2), arrayList2);
        }
        while (i < list2.size()) {
            Utility.addItem(arrayList, (PlaylistLocalItem) list2.get(i), arrayList2);
            i++;
        }
        Utility.addItemsWithSameIndex(arrayList, arrayList2);
        return arrayList;
    }
}
