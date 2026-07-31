package org.schabi.newpipe.player;

import android.content.SharedPreferences;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.preference.PreferenceManager;
import coil3.Extras;
import coil3.RealImageLoader;
import coil3.SingletonImageLoader;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.request.Disposable;
import coil3.request.ImageRequest;
import coil3.request.ImageRequestsKt;
import coil3.request.ImageRequests_androidKt;
import coil3.request.ImageRequests_androidKt$$ExternalSyntheticLambda0;
import coil3.util.UtilsKt;
import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeCallbackObserver;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeEmpty;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeFromCallable;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeFromSingle$FromSingleObserver;
import io.reactivex.rxjava3.schedulers.Schedulers;
import j$.time.OffsetDateTime;
import j$.time.ZoneOffset;
import j$.util.Optional;
import j$.util.function.Consumer$CC;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.TypeIntrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.local.history.HistoryRecordManager$$ExternalSyntheticLambda9;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.Player.AnonymousClass1;
import org.schabi.newpipe.player.event.PlayerEventListener;
import org.schabi.newpipe.player.helper.PlayerHelper;
import org.schabi.newpipe.player.helper.PlayerHolder;
import org.schabi.newpipe.player.mediaitem.MediaItemTag;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.playqueue.SinglePlayQueue;
import org.schabi.newpipe.util.image.CoilHelper$loadScaledDownThumbnail$request$1;
import org.schabi.newpipe.util.image.ImageStrategy;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class Player$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Player f$0;

    public /* synthetic */ Player$$ExternalSyntheticLambda0(Player player, int i) {
        this.$r8$classId = i;
        this.f$0 = player;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        int i = this.$r8$classId;
        final Player player = this.f$0;
        switch (i) {
            case 0:
                StreamInfo streamInfo = (StreamInfo) obj;
                PlayerHolder.AnonymousClass1 anonymousClass1 = player.fragmentListener;
                if (anonymousClass1 != null) {
                    anonymousClass1.onMetadataUpdate(streamInfo, player.playQueue);
                }
                PlayerEventListener playerEventListener = player.activityListener;
                if (playerEventListener != null) {
                    playerEventListener.onMetadataUpdate(streamInfo, player.playQueue);
                    return;
                }
                return;
            case 1:
                final MediaItemTag mediaItemTag = (MediaItemTag) obj;
                MediaItemTag mediaItemTag2 = player.currentMetadata;
                if (mediaItemTag == mediaItemTag2) {
                    return;
                }
                final StreamInfo streamInfo2 = (StreamInfo) Optional.ofNullable(mediaItemTag2).flatMap(new Player$$ExternalSyntheticLambda28(11)).orElse(null);
                final MediaItemTag.AudioTrack audioTrack = (MediaItemTag.AudioTrack) Optional.ofNullable(player.currentMetadata).flatMap(new Player$$ExternalSyntheticLambda28(8)).orElse(null);
                player.currentMetadata = mediaItemTag;
                if (!mediaItemTag.getErrors().isEmpty()) {
                    ErrorUtil.createNotification(player.context, new ErrorInfo(player.currentMetadata.getErrors(), UserAction.PLAY_STREAM, "Loading failed for [" + player.currentMetadata.getTitle() + "]: " + player.currentMetadata.getStreamUrl(), Integer.valueOf(player.currentMetadata.getServiceId()), player.currentMetadata.getStreamUrl()));
                }
                player.currentMetadata.getMaybeStreamInfo().ifPresent(new Consumer() { // from class: org.schabi.newpipe.player.Player$$ExternalSyntheticLambda35
                    @Override // java.util.function.Consumer
                    /* renamed from: accept */
                    public final void s(Object obj2) {
                        Extras.Builder builder;
                        SinglePlayQueue autoQueueOf;
                        PlayerEventListener playerEventListener2;
                        StreamInfo streamInfo3 = (StreamInfo) obj2;
                        int i2 = 0;
                        Player player2 = Player.this;
                        StreamInfo streamInfo4 = streamInfo2;
                        if (streamInfo4 != null && streamInfo4.getUrl().equals(streamInfo3.getUrl())) {
                            MediaItemTag.AudioTrack audioTrack2 = audioTrack;
                            if ((audioTrack2 == null || ((Boolean) mediaItemTag.getMaybeAudioTrack().map(new Player$$ExternalSyntheticLambda41(audioTrack2, 0)).orElse(Boolean.FALSE)).booleanValue()) && (playerEventListener2 = player2.activityListener) != null) {
                                playerEventListener2.onAudioTrackUpdate();
                                return;
                            }
                            return;
                        }
                        PlayerService playerService = player2.context;
                        if (player2.exoPlayerIsNull()) {
                            return;
                        }
                        PlayQueue playQueue = player2.playQueue;
                        if (playQueue != null && playQueue.getIndex() == player2.playQueue.size() - 1 && player2.getRepeatMode() == 0 && PreferenceManager.getDefaultSharedPreferences(playerService).getBoolean(playerService.getString(R.string.auto_queue_key), false) && (autoQueueOf = PlayerHelper.autoQueueOf(streamInfo3, player2.playQueue.getStreams())) != null) {
                            player2.playQueue.append(autoQueueOf.getStreams());
                        }
                        List thumbnails = streamInfo3.getThumbnails();
                        Disposable disposable = player2.thumbnailDisposable;
                        if (disposable != null) {
                            disposable.dispose();
                        }
                        String str = null;
                        player2.onThumbnailLoaded(null);
                        if (!thumbnails.isEmpty()) {
                            Player.AnonymousClass1 anonymousClass12 = player2.new AnonymousClass1();
                            playerService.getClass();
                            String choosePreferredImage = ImageStrategy.choosePreferredImage(thumbnails);
                            if (choosePreferredImage != null && choosePreferredImage.length() > 0 && ImageStrategy.shouldLoadImages()) {
                                str = choosePreferredImage;
                            }
                            ImageRequest.Builder builder2 = new ImageRequest.Builder(playerService);
                            builder2.data = str;
                            Extras.Key key = ImageRequests_androidKt.transitionFactoryKey;
                            builder2.errorFactory = new ImageRequests_androidKt$$ExternalSyntheticLambda0(R.drawable.placeholder_thumbnail_video, 0);
                            builder2.memoryCacheKey = str;
                            builder2.diskCacheKey = str;
                            builder2.placeholderFactory = new ImageRequests_androidKt$$ExternalSyntheticLambda0(R.drawable.placeholder_thumbnail_video, 3);
                            builder2.target = anonymousClass12;
                            CoilHelper$loadScaledDownThumbnail$request$1[] coilHelper$loadScaledDownThumbnail$request$1Arr = {new CoilHelper$loadScaledDownThumbnail$request$1(playerService)};
                            Extras.Key key2 = ImageRequestsKt.transformationsKey;
                            List list = ArraysKt.toList(coilHelper$loadScaledDownThumbnail$request$1Arr);
                            Object obj3 = builder2.lazyExtras;
                            if (obj3 instanceof Extras.Builder) {
                                builder = (Extras.Builder) obj3;
                            } else if (!(obj3 instanceof Extras)) {
                                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                                return;
                            } else {
                                Extras.Builder builder3 = new Extras.Builder((Extras) obj3);
                                builder2.lazyExtras = builder3;
                                builder = builder3;
                            }
                            Extras.Key key3 = ImageRequestsKt.transformationsKey;
                            List immutableList = UtilsKt.toImmutableList(list);
                            LinkedHashMap linkedHashMap = builder.data;
                            if (immutableList != null) {
                                linkedHashMap.put(key3, immutableList);
                            } else {
                                linkedHashMap.remove(key3);
                            }
                            String joinToString$default = CollectionsKt.joinToString$default(list, null, null, null, new DiskLruCache$$ExternalSyntheticLambda0(new Ref$IntRef(), 27), 31);
                            Map map = builder2.lazyMemoryCacheKeyExtras;
                            if (!Intrinsics.areEqual(map, Boolean.valueOf(builder2.memoryCacheKeyExtrasAreMutable))) {
                                if (!Modifier.CC.m182m((Object) map)) {
                                    _UtilJvmKt$$ExternalSyntheticLambda1.m();
                                    return;
                                }
                                LinkedHashMap linkedHashMap2 = new LinkedHashMap(map);
                                builder2.lazyMemoryCacheKeyExtras = linkedHashMap2;
                                builder2.memoryCacheKeyExtrasAreMutable = true;
                                map = linkedHashMap2;
                            }
                            map.getClass();
                            TypeIntrinsics.asMutableMap(map).put("coil#transformations", joinToString$default);
                            player2.thumbnailDisposable = ((RealImageLoader) SingletonImageLoader.get(playerService)).enqueue(builder2.build());
                        }
                        player2.getCurrentStreamInfo().ifPresent(new Player$$ExternalSyntheticLambda0(player2, 2));
                        player2.getCurrentStreamInfo().ifPresent(new Player$$ExternalSyntheticLambda0(player2, i2));
                        PlayerEventListener playerEventListener3 = player2.activityListener;
                        if (playerEventListener3 != null) {
                            playerEventListener3.onAudioTrackUpdate();
                        }
                        player2.UIs.call(new Player$$ExternalSyntheticLambda1(streamInfo3, 15));
                    }

                    public /* synthetic */ Consumer andThen(Consumer consumer) {
                        return Consumer$CC.$default$andThen(this, consumer);
                    }
                });
                return;
            case 2:
                StreamInfo streamInfo3 = (StreamInfo) obj;
                CompositeDisposable compositeDisposable = player.databaseUpdateDisposable;
                PlaylistHeaderBinding playlistHeaderBinding = player.recordManager;
                Maybe subscribeOn = !((SharedPreferences) playlistHeaderBinding.playlistTitleView).getBoolean((String) playlistHeaderBinding.uploaderAvatarView, false) ? MaybeEmpty.INSTANCE : new MaybeFromCallable(new HistoryRecordManager$$ExternalSyntheticLambda9(playlistHeaderBinding, streamInfo3, OffsetDateTime.now(ZoneOffset.UTC), 0)).subscribeOn(Schedulers.IO);
                MaybeCallbackObserver maybeCallbackObserver = new MaybeCallbackObserver(Functions.EMPTY_CONSUMER, Functions.ON_ERROR_MISSING, Functions.EMPTY_ACTION);
                try {
                    subscribeOn.subscribe(new MaybeFromSingle$FromSingleObserver(maybeCallbackObserver, 1));
                    compositeDisposable.add(maybeCallbackObserver);
                    return;
                } catch (NullPointerException e) {
                    throw e;
                } catch (Throwable th) {
                    throw Owner.CC.m(th, "subscribeActual failed", th);
                }
            default:
                player.getCurrentStreamInfo().ifPresent(new Player$$ExternalSyntheticLambda25(player, (((StreamInfo) obj).getDuration() + 1) * 1000));
                return;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
