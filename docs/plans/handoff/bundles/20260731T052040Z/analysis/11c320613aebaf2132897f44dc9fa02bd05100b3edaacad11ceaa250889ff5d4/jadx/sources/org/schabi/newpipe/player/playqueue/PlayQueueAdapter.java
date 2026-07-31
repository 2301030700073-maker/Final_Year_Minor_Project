package org.schabi.newpipe.player.playqueue;

import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFromPublisher$PublisherSubscriber;
import java.util.List;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.reactivestreams.Subscriber;
import org.schabi.newpipe.R;
import org.schabi.newpipe.local.holder.PlaylistItemHolder$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.playqueue.PlayQueueEvent;
import org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda42;
import org.schabi.newpipe.util.FallbackViewHolder;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.util.ServiceHelper;
import org.schabi.newpipe.util.image.ImageStrategy;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class PlayQueueAdapter extends RecyclerView.Adapter {
    public static final String TAG = PlayQueueAdapter.class.toString();
    public final PlayQueue playQueue;
    public final PlayQueueItemBuilder playQueueItemBuilder;
    public Disposable playQueueReactor;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class HFHolder extends RecyclerView.ViewHolder {
    }

    public PlayQueueAdapter(PlayQueue playQueue) {
        if (playQueue.broadcastReceiver == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Play Queue has not been initialized.");
            throw null;
        }
        this.playQueueItemBuilder = new PlayQueueItemBuilder();
        this.playQueue = playQueue;
        Flowable flowable = playQueue.broadcastReceiver;
        flowable.getClass();
        try {
            flowable.subscribe((Subscriber) new ObservableFromPublisher$PublisherSubscriber(new Observer() { // from class: org.schabi.newpipe.player.playqueue.PlayQueueAdapter.1
                @Override // io.reactivex.rxjava3.core.Observer
                public final void onComplete() {
                    PlayQueueAdapter playQueueAdapter = PlayQueueAdapter.this;
                    Disposable disposable = playQueueAdapter.playQueueReactor;
                    if (disposable != null) {
                        disposable.dispose();
                    }
                    playQueueAdapter.playQueueReactor = null;
                }

                @Override // io.reactivex.rxjava3.core.Observer
                public final void onNext(Object obj) {
                    PlayQueueEvent playQueueEvent = (PlayQueueEvent) obj;
                    PlayQueueAdapter playQueueAdapter = PlayQueueAdapter.this;
                    if (playQueueAdapter.playQueueReactor != null) {
                        int ordinal = playQueueEvent.type().ordinal();
                        if (ordinal == 1) {
                            PlayQueueEvent.SelectEvent selectEvent = (PlayQueueEvent.SelectEvent) playQueueEvent;
                            playQueueAdapter.notifyItemChanged(selectEvent.getOldIndex());
                            playQueueAdapter.notifyItemChanged(selectEvent.getNewIndex());
                            return;
                        }
                        if (ordinal == 2) {
                            playQueueAdapter.notifyItemRangeInserted(playQueueAdapter.playQueue.size(), ((PlayQueueEvent.AppendEvent) playQueueEvent).getAmount());
                            return;
                        }
                        if (ordinal == 3) {
                            PlayQueueEvent.RemoveEvent removeEvent = (PlayQueueEvent.RemoveEvent) playQueueEvent;
                            playQueueAdapter.notifyItemRemoved(removeEvent.getRemoveIndex());
                            playQueueAdapter.notifyItemChanged(removeEvent.getQueueIndex());
                        } else if (ordinal == 4) {
                            PlayQueueEvent.MoveEvent moveEvent = (PlayQueueEvent.MoveEvent) playQueueEvent;
                            playQueueAdapter.notifyItemMoved(moveEvent.getFromIndex(), moveEvent.getToIndex());
                        } else if (ordinal != 6) {
                            if (ordinal != 7) {
                                playQueueAdapter.notifyDataSetChanged();
                                return;
                            }
                            PlayQueueEvent.ErrorEvent errorEvent = (PlayQueueEvent.ErrorEvent) playQueueEvent;
                            playQueueAdapter.notifyItemChanged(errorEvent.getErrorIndex());
                            playQueueAdapter.notifyItemChanged(errorEvent.getQueueIndex());
                        }
                    }
                }

                @Override // io.reactivex.rxjava3.core.Observer
                public final void onSubscribe(Disposable disposable) {
                    PlayQueueAdapter playQueueAdapter = PlayQueueAdapter.this;
                    Disposable disposable2 = playQueueAdapter.playQueueReactor;
                    if (disposable2 != null) {
                        disposable2.dispose();
                    }
                    playQueueAdapter.playQueueReactor = disposable;
                }

                @Override // io.reactivex.rxjava3.core.Observer
                public final void onError(Throwable th) {
                }
            }));
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            AppKt.throwIfFatal(th);
            MathKt.onError(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.playQueue.getStreams().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        boolean z = viewHolder instanceof PlayQueueItemHolder;
        PlayQueue playQueue = this.playQueue;
        if (!z) {
            if (viewHolder instanceof HFHolder) {
                playQueue.getStreams().size();
                return;
            }
            return;
        }
        PlayQueueItemHolder playQueueItemHolder = (PlayQueueItemHolder) viewHolder;
        PlayQueueItem playQueueItem = (PlayQueueItem) playQueue.getStreams().get(i);
        PlayQueueItemBuilder playQueueItemBuilder = this.playQueueItemBuilder;
        playQueueItemBuilder.getClass();
        if (!TextUtils.isEmpty(playQueueItem.getTitle())) {
            playQueueItemHolder.itemVideoTitleView.setText(playQueueItem.getTitle());
        }
        TextView textView = playQueueItemHolder.itemAdditionalDetailsView;
        View view = playQueueItemHolder.itemRoot;
        textView.setText(Localization.concatenateStrings(playQueueItem.getUploader(), ServiceHelper.getNameOfServiceById(playQueueItem.getServiceId())));
        long duration = playQueueItem.getDuration();
        TextView textView2 = playQueueItemHolder.itemDurationView;
        int i2 = 8;
        if (duration > 0) {
            textView2.setText(Localization.getDurationString(playQueueItem.getDuration()));
        } else {
            textView2.setVisibility(8);
        }
        ImageView imageView = playQueueItemHolder.itemThumbnailView;
        List thumbnails = playQueueItem.getThumbnails();
        imageView.getClass();
        thumbnails.getClass();
        Cookie.Companion.loadImageDefault(imageView, ImageStrategy.choosePreferredImage(thumbnails), R.drawable.placeholder_thumbnail_video, true);
        view.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(playQueueItemBuilder, playQueueItem, 13));
        view.setOnLongClickListener(new PlaylistItemHolder$$ExternalSyntheticLambda1(playQueueItemBuilder, playQueueItem, i2));
        playQueueItemHolder.itemHandle.setOnTouchListener(new PlayQueueItemBuilder$$ExternalSyntheticLambda2(playQueueItemBuilder, playQueueItemHolder, 0));
        playQueueItemHolder.itemView.setSelected(playQueue.getIndex() == i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 0) {
            return new PlayQueueItemHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.play_queue_item, viewGroup, false));
        }
        if (i == 1) {
            return new HFHolder(null);
        }
        Log.e(TAG, "Attempting to create view holder with undefined type: " + i);
        return new FallbackViewHolder(new View(viewGroup.getContext()));
    }
}
