package org.schabi.newpipe.player.ui;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.collection.LruCache;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.video.VideoSize;
import io.reactivex.rxjava3.disposables.Disposable;
import j$.util.Collection;
import j$.util.Objects;
import j$.util.Optional;
import j$.util.stream.Collectors;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.io.CloseableKt;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import okio.Options;
import org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda0;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.PlayerBinding;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.StreamSegment;
import org.schabi.newpipe.fragments.detail.VideoDetailFragment;
import org.schabi.newpipe.fragments.list.BaseListFragment;
import org.schabi.newpipe.info_list.StreamSegmentAdapter;
import org.schabi.newpipe.ktx.AnimationType;
import org.schabi.newpipe.player.PlayQueueActivity;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda3;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda48;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.event.PlayerServiceEventListener;
import org.schabi.newpipe.player.gesture.BasePlayerGestureListener;
import org.schabi.newpipe.player.gesture.MainPlayerGestureListener;
import org.schabi.newpipe.player.helper.PlayerHelper;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.playqueue.PlayQueueAdapter;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;
import org.schabi.newpipe.player.playqueue.PlayQueueItemBuilder;
import org.schabi.newpipe.player.playqueue.PlayQueueItemHolder;
import org.schabi.newpipe.util.DeviceUtils;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda0;
import org.schabi.newpipe.views.player.PlayerFastSeekOverlay;
import us.shandian.giga.service.DownloadManager$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class MainPlayerUi extends VideoPlayerUi implements View.OnLayoutChangeListener {
    public boolean areSegmentsVisible;
    public boolean fragmentIsVisible;
    public boolean isFullscreen;
    public boolean isQueueVisible;
    public boolean isVerticalVideo;
    public ItemTouchHelper itemTouchHelper;
    public PlayQueueAdapter playQueueAdapter;
    public StreamSegmentAdapter segmentAdapter;
    public AnonymousClass1 settingsContentObserver;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: org.schabi.newpipe.player.ui.MainPlayerUi$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends ContentObserver {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(Object obj, Handler handler, int i) {
            super(handler);
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    ((MainPlayerUi) obj).setupScreenRotationButton();
                    break;
                default:
                    VideoDetailFragment videoDetailFragment = (VideoDetailFragment) obj;
                    LinkedList linkedList = VideoDetailFragment.stack;
                    AppCompatActivity appCompatActivity = videoDetailFragment.activity;
                    if (appCompatActivity != null && !PlayerHelper.globalScreenOrientationLocked(appCompatActivity)) {
                        videoDetailFragment.activity.setRequestedOrientation(-1);
                        break;
                    }
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: org.schabi.newpipe.player.ui.MainPlayerUi$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends RecyclerView.OnScrollListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass2(Object obj, int i) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            PlayQueue playQueue;
            if (i2 > 0) {
                RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
                int childCount = layoutManager.getChildCount();
                int itemCount = layoutManager.getItemCount();
                int i3 = 0;
                if (layoutManager instanceof LinearLayoutManager) {
                    LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                    View findOneVisibleChild = linearLayoutManager.findOneVisibleChild(0, linearLayoutManager.getChildCount(), false);
                    i3 = findOneVisibleChild != null ? RecyclerView.LayoutManager.getPosition(findOneVisibleChild) : -1;
                } else if (layoutManager instanceof StaggeredGridLayoutManager) {
                    StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
                    int i4 = staggeredGridLayoutManager.mSpanCount;
                    int[] iArr = new int[i4];
                    for (int i5 = 0; i5 < staggeredGridLayoutManager.mSpanCount; i5++) {
                        LruCache lruCache = staggeredGridLayoutManager.mSpans[i5];
                        boolean z = ((StaggeredGridLayoutManager) lruCache.lock).mReverseLayout;
                        ArrayList arrayList = (ArrayList) lruCache.map;
                        iArr[i5] = z ? lruCache.findOnePartiallyOrCompletelyVisibleChild(arrayList.size() - 1, -1, true, false) : lruCache.findOnePartiallyOrCompletelyVisibleChild(0, arrayList.size(), true, false);
                    }
                    if (i4 > 0) {
                        i3 = iArr[0];
                    }
                }
                if (childCount + i3 >= itemCount) {
                    int i6 = this.$r8$classId;
                    Object obj = this.this$0;
                    switch (i6) {
                        case 0:
                            MainPlayerUi mainPlayerUi = (MainPlayerUi) obj;
                            PlayQueue playQueue2 = mainPlayerUi.player.playQueue;
                            if (playQueue2 != null && !playQueue2.isComplete()) {
                                playQueue2.fetch();
                                break;
                            } else {
                                PlayerBinding playerBinding = mainPlayerUi.binding;
                                if (playerBinding != null) {
                                    playerBinding.itemsList.clearOnScrollListeners();
                                    break;
                                }
                            }
                            break;
                        case 1:
                            BaseListFragment baseListFragment = (BaseListFragment) obj;
                            if (baseListFragment.hasMoreItems() && !baseListFragment.isLoading.get()) {
                                baseListFragment.loadMoreItems();
                                break;
                            }
                            break;
                        default:
                            PlayQueueActivity playQueueActivity = (PlayQueueActivity) obj;
                            Player player = playQueueActivity.player;
                            if (player != null && (playQueue = player.playQueue) != null && !playQueue.isComplete()) {
                                playQueueActivity.player.playQueue.fetch();
                                break;
                            } else {
                                playQueueActivity.queueControlBinding.playQueue.clearOnScrollListeners();
                                break;
                            }
                            break;
                    }
                }
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: org.schabi.newpipe.player.ui.MainPlayerUi$3, reason: invalid class name */
    public final class AnonymousClass3 implements PlayQueueItemBuilder.OnSelectedListener {
        public /* synthetic */ AnonymousClass3() {
        }

        @Override // org.schabi.newpipe.player.playqueue.PlayQueueItemBuilder.OnSelectedListener
        public void held(PlayQueueItem playQueueItem, View view) {
            MainPlayerUi mainPlayerUi = MainPlayerUi.this;
            Player player = mainPlayerUi.player;
            PlayQueue playQueue = player.playQueue;
            AppCompatActivity appCompatActivity = (AppCompatActivity) mainPlayerUi.getParentActivity().orElse(null);
            if (playQueue == null || appCompatActivity == null || playQueue.indexOf(playQueueItem) == -1) {
                return;
            }
            Options.Companion.openPopupMenu(player.playQueue, playQueueItem, view, true, appCompatActivity.getSupportFragmentManager(), mainPlayerUi.context);
        }

        @Override // org.schabi.newpipe.player.playqueue.PlayQueueItemBuilder.OnSelectedListener
        public void onStartDrag(PlayQueueItemHolder playQueueItemHolder) {
            ItemTouchHelper itemTouchHelper = MainPlayerUi.this.itemTouchHelper;
            if (itemTouchHelper != null) {
                itemTouchHelper.startDrag(playQueueItemHolder);
            }
        }

        @Override // org.schabi.newpipe.player.playqueue.PlayQueueItemBuilder.OnSelectedListener
        public void selected(PlayQueueItem playQueueItem) {
            MainPlayerUi.this.player.selectQueueItem(playQueueItem);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: org.schabi.newpipe.player.ui.MainPlayerUi$4, reason: invalid class name */
    public final class AnonymousClass4 extends ItemTouchHelper.SimpleCallback {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ SeekBar.OnSeekBarChangeListener this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(SeekBar.OnSeekBarChangeListener onSeekBarChangeListener, int i) {
            super(3, 8);
            this.$r8$classId = i;
            this.this$0 = onSeekBarChangeListener;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public final int interpolateOutOfBoundsScroll(RecyclerView recyclerView, int i, int i2, int i3, long j) {
            return Cookie.Companion.clamp(Math.abs(super.interpolateOutOfBoundsScroll(recyclerView, i, i2, i3, j)), 10, 25) * ((int) Math.signum(i2));
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public final boolean isItemViewSwipeEnabled() {
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public final boolean isLongPressDragEnabled() {
            return false;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public final boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            if (viewHolder.getItemViewType() != viewHolder2.getItemViewType()) {
                return false;
            }
            int layoutPosition = viewHolder.getLayoutPosition();
            int layoutPosition2 = viewHolder2.getLayoutPosition();
            int i = this.$r8$classId;
            SeekBar.OnSeekBarChangeListener onSeekBarChangeListener = this.this$0;
            switch (i) {
                case 0:
                    PlayQueue playQueue = ((MainPlayerUi) onSeekBarChangeListener).player.playQueue;
                    if (playQueue == null) {
                        return true;
                    }
                    playQueue.move(layoutPosition, layoutPosition2);
                    return true;
                default:
                    Player player = ((PlayQueueActivity) onSeekBarChangeListener).player;
                    if (player == null) {
                        return true;
                    }
                    player.playQueue.move(layoutPosition, layoutPosition2);
                    return true;
            }
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public final void onSwiped(RecyclerView.ViewHolder viewHolder) {
            int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
            int i = this.$r8$classId;
            SeekBar.OnSeekBarChangeListener onSeekBarChangeListener = this.this$0;
            switch (i) {
                case 0:
                    PlayQueue playQueue = ((MainPlayerUi) onSeekBarChangeListener).player.playQueue;
                    if (playQueue != null && bindingAdapterPosition != -1) {
                        playQueue.remove(bindingAdapterPosition);
                        break;
                    }
                    break;
                default:
                    if (bindingAdapterPosition != -1) {
                        ((PlayQueueActivity) onSeekBarChangeListener).player.playQueue.remove(bindingAdapterPosition);
                        break;
                    }
                    break;
            }
        }
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi
    public final BasePlayerGestureListener buildGestureListener() {
        return new MainPlayerGestureListener(this);
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi
    public final float calculateMaxEndScreenThumbnailHeight(Bitmap bitmap) {
        int min;
        PlayerService playerService = this.context;
        int i = playerService.getResources().getDisplayMetrics().heightPixels;
        if (DeviceUtils.isTv(playerService) && !this.isFullscreen) {
            min = Math.min(bitmap.getHeight(), i - (((int) TypedValue.applyDimension(2, 16.0f, playerService.getResources().getDisplayMetrics())) + DeviceUtils.dpToPx(playerService, 85)));
        } else if (DeviceUtils.isTablet(playerService) && isLandscape() && !this.isFullscreen) {
            min = Math.min(bitmap.getHeight(), i - (((int) TypedValue.applyDimension(2, 15.0f, playerService.getResources().getDisplayMetrics())) + DeviceUtils.dpToPx(playerService, 85)));
        } else {
            min = Math.min(bitmap.getHeight(), i);
        }
        return min;
    }

    public final void checkLandscape() {
        boolean isLandscape = isLandscape();
        boolean z = false;
        Player player = this.player;
        boolean z2 = (!isLandscape || this.isFullscreen || player.isAudioOnly) ? false : true;
        int i = player.currentState;
        if (i != 128 && i != 126) {
            z = true;
        }
        if (z2 && z && !DeviceUtils.isTablet(this.context)) {
            toggleFullscreen();
        }
    }

    public final void closeItemsList() {
        if (this.isQueueVisible || this.areSegmentsVisible) {
            int i = 0;
            this.isQueueVisible = false;
            this.areSegmentsVisible = false;
            ItemTouchHelper itemTouchHelper = this.itemTouchHelper;
            if (itemTouchHelper != null) {
                itemTouchHelper.attachToRecyclerView(null);
            }
            PlayerBinding playerBinding = this.binding;
            AppKt.animate(playerBinding.itemsListPanel, false, 300L, AnimationType.SLIDE_AND_ALPHA, 0L, new MainPlayerUi$$ExternalSyntheticLambda3(this, i));
            playerBinding.itemsListClose.clearFocus();
            playerBinding.playPauseButton.requestFocus();
        }
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi
    public final void deinitListeners() {
        super.deinitListeners();
        PlayerBinding playerBinding = this.binding;
        playerBinding.queueButton.setOnClickListener(null);
        playerBinding.segmentsButton.setOnClickListener(null);
        playerBinding.addToPlaylistButton.setOnClickListener(null);
        this.context.getContentResolver().unregisterContentObserver(this.settingsContentObserver);
        playerBinding.rootView.removeOnLayoutChangeListener(this);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void destroy() {
        PlayerBinding playerBinding = this.binding;
        playerBinding.endScreen.setImageDrawable(null);
        PlayerFastSeekOverlay playerFastSeekOverlay = playerBinding.fastSeekOverlay;
        playerFastSeekOverlay.seekSecondsSupplier = new KoinApplicationKt$$ExternalSyntheticLambda0(14);
        playerFastSeekOverlay.performListener = null;
        deinitListeners();
        if (this.isFullscreen) {
            toggleFullscreen();
        }
        removeViewFromParent();
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi, org.schabi.newpipe.player.ui.PlayerUi
    public final void destroyPlayer() {
        clearVideoSurface();
        PlayQueueAdapter playQueueAdapter = this.playQueueAdapter;
        if (playQueueAdapter != null) {
            playQueueAdapter.playQueueItemBuilder.onItemClickListener = null;
            Disposable disposable = playQueueAdapter.playQueueReactor;
            if (disposable != null) {
                disposable.dispose();
            }
            playQueueAdapter.playQueueReactor = null;
        }
    }

    public final int getNearestStreamSegmentPosition(long j) {
        Iterator it = ((List) this.player.getCurrentStreamInfo().map(new ListHelper$$ExternalSyntheticLambda0(4)).orElse(Collections.EMPTY_LIST)).iterator();
        int i = 0;
        while (it.hasNext() && ((StreamSegment) it.next()).getStartTimeSeconds() * 1000 <= j) {
            i++;
        }
        return Math.max(0, i - 1);
    }

    public final Optional getParentActivity() {
        return getParentContext().filter(new Player$$ExternalSyntheticLambda48(12)).map(new ListHelper$$ExternalSyntheticLambda0(7));
    }

    public final Optional getParentContext() {
        return Optional.ofNullable(this.binding.rootView.getParent()).filter(new Player$$ExternalSyntheticLambda48(11)).map(new ListHelper$$ExternalSyntheticLambda0(5));
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi
    public final void hideSystemUIIfNeeded() {
        Optional.ofNullable(this.player.fragmentListener).ifPresent(new Player$$ExternalSyntheticLambda3(12));
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi
    public final void initListeners() {
        super.initListeners();
        PlayerBinding playerBinding = this.binding;
        int i = 1;
        int i2 = 0;
        playerBinding.screenRotationButton.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, new MainPlayerUi$$ExternalSyntheticLambda3(this, i), i2));
        playerBinding.queueButton.setOnClickListener(new MainPlayerUi$$ExternalSyntheticLambda8(this, i2));
        playerBinding.segmentsButton.setOnClickListener(new MainPlayerUi$$ExternalSyntheticLambda8(this, 4));
        playerBinding.addToPlaylistButton.setOnClickListener(new MainPlayerUi$$ExternalSyntheticLambda8(this, i));
        this.settingsContentObserver = new AnonymousClass1(this, new Handler(Looper.getMainLooper()), i2);
        this.context.getContentResolver().registerContentObserver(Settings.System.getUriFor("accelerometer_rotation"), false, this.settingsContentObserver);
        playerBinding.rootView.addOnLayoutChangeListener(this);
        playerBinding.moreOptionsButton.setOnLongClickListener(new MainPlayerUi$$ExternalSyntheticLambda11(this, i2));
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi, org.schabi.newpipe.player.ui.PlayerUi
    public final void initPlayback() {
        super.initPlayback();
        PlayQueueAdapter playQueueAdapter = this.playQueueAdapter;
        if (playQueueAdapter != null) {
            Disposable disposable = playQueueAdapter.playQueueReactor;
            if (disposable != null) {
                disposable.dispose();
            }
            playQueueAdapter.playQueueReactor = null;
        }
        Player player = this.player;
        PlayQueue playQueue = player.playQueue;
        Objects.requireNonNull(playQueue);
        this.playQueueAdapter = new PlayQueueAdapter(playQueue);
        this.segmentAdapter = new StreamSegmentAdapter(new AnonymousClass3());
        player.useVideoAndSubtitles(this.fragmentIsVisible);
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi
    public final boolean isAnyListViewOpen() {
        return this.isQueueVisible || this.areSegmentsVisible;
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi
    public final boolean isFullscreen() {
        return this.isFullscreen;
    }

    public final boolean isLandscape() {
        return DeviceUtils.isLandscape((Context) getParentContext().orElse(this.player.service));
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onBroadcastReceived(Intent intent) {
        boolean equals = "android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction());
        Player player = this.player;
        if (equals) {
            updateEndScreenThumbnail(player.currentThumbnail);
        }
        if ("android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction())) {
            closeItemsList();
            return;
        }
        if ("org.schabi.newpipe.player.MainPlayer..player.MainPlayer.PLAY_PAUSE".equals(intent.getAction())) {
            if (this.fragmentIsVisible) {
                return;
            }
            onFragmentStopped();
        } else if ("org.schabi.newpipe.VideoDetailFragment.ACTION_VIDEO_FRAGMENT_STOPPED".equals(intent.getAction())) {
            this.fragmentIsVisible = false;
            onFragmentStopped();
        } else if ("org.schabi.newpipe.VideoDetailFragment.ACTION_VIDEO_FRAGMENT_RESUMED".equals(intent.getAction())) {
            this.fragmentIsVisible = true;
            player.useVideoAndSubtitles(true);
            if (isControlsVisible()) {
                return;
            }
            hideSystemUIIfNeeded();
        }
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi, org.schabi.newpipe.player.ui.PlayerUi
    public final void onCompleted() {
        super.onCompleted();
        if (this.isFullscreen) {
            toggleFullscreen();
        }
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onFragmentListenerSet() {
        this.fragmentIsVisible = true;
        boolean z = this.isFullscreen;
        PlayerBinding playerBinding = this.binding;
        if (!z) {
            playerBinding.playbackControlRoot.setPadding(0, 0, 0, 0);
        }
        playerBinding.itemsListPanel.setPadding(0, 0, 0, 0);
        Optional.ofNullable(this.player.fragmentListener).ifPresent(new Player$$ExternalSyntheticLambda3(14));
    }

    public final void onFragmentStopped() {
        Player player = this.player;
        if (player.isPlaying() || player.isLoading()) {
            int minimizeOnExitAction = PlayerHelper.getMinimizeOnExitAction(this.context);
            int i = 0;
            if (minimizeOnExitAction == 1) {
                player.useVideoAndSubtitles(false);
            } else if (minimizeOnExitAction != 2) {
                player.pause();
            } else {
                getParentActivity().ifPresent(new MainPlayerUi$$ExternalSyntheticLambda16(this, i));
            }
        }
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi
    public final boolean onKeyDown(int i) {
        if (i != 62 || !this.isFullscreen) {
            return super.onKeyDown(i);
        }
        Player player = this.player;
        player.playPause();
        if (!player.isPlaying()) {
            return true;
        }
        hideControls(0L, 0L);
        return true;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i == i5 && i2 == i6 && i3 == i7 && i4 == i8) {
            return;
        }
        int i9 = i4 - i2;
        int min = (int) (Math.min(i3 - i, i9) * 0.75d);
        int i10 = MainActivity.$r8$clinit;
        PlayerBinding playerBinding = this.binding;
        ProgressBar progressBar = playerBinding.volumeProgressBar;
        RelativeLayout relativeLayout = playerBinding.itemsListPanel;
        progressBar.setMax(min);
        playerBinding.brightnessProgressBar.setMax(min);
        if (this.player.audioReactor != null) {
            float streamVolume = r1.audioManager.getStreamVolume(3) / r0.audioReactor.audioManager.getStreamMaxVolume(3);
            playerBinding.volumeProgressBar.setProgress((int) (r0.getMax() * streamVolume));
        }
        relativeLayout.getLayoutParams().height = i9 - relativeLayout.getTop();
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi, org.schabi.newpipe.player.ui.PlayerUi
    public final void onMetadataChanged(StreamInfo streamInfo) {
        super.onMetadataChanged(streamInfo);
        showHideKodiButton();
        if (this.areSegmentsVisible) {
            if (!this.segmentAdapter.setItems(streamInfo)) {
                closeItemsList();
                return;
            }
            int nearestStreamSegmentPosition = getNearestStreamSegmentPosition(this.player.simpleExoPlayer.getCurrentPosition());
            this.segmentAdapter.selectSegmentAt(nearestStreamSegmentPosition);
            this.binding.itemsList.scrollToPosition(nearestStreamSegmentPosition);
        }
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onPlayQueueEdited() {
        showOrHideButtons();
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi
    public final void onPlaybackSpeedClicked() {
        getParentActivity().ifPresent(new MainPlayerUi$$ExternalSyntheticLambda16(this, 1));
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi, org.schabi.newpipe.player.ui.PlayerUi
    public final void onPlaying() {
        super.onPlaying();
        checkLandscape();
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi, org.schabi.newpipe.player.ui.PlayerUi
    public final void onUpdateProgress(int i, int i2, int i3) {
        super.onUpdateProgress(i, i2, i3);
        if (this.areSegmentsVisible) {
            this.segmentAdapter.selectSegmentAt(getNearestStreamSegmentPosition(i));
        }
        if (this.isQueueVisible) {
            updateQueueTime(i);
        }
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi, org.schabi.newpipe.player.ui.PlayerUi
    public final void onVideoSizeChanged(VideoSize videoSize) {
        super.onVideoSizeChanged(videoSize);
        this.isVerticalVideo = videoSize.width < videoSize.height;
        PlayerService playerService = this.context;
        if (PlayerHelper.globalScreenOrientationLocked(playerService) && this.isFullscreen && isLandscape() == this.isVerticalVideo && !DeviceUtils.isTv(playerService) && !DeviceUtils.isTablet(playerService)) {
            Optional.ofNullable(this.player.fragmentListener).ifPresent(new Player$$ExternalSyntheticLambda3(13));
        }
        setupScreenRotationButton();
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi
    public final void removeViewFromParent() {
        PlayerBinding playerBinding = this.binding;
        ViewParent parent = playerBinding.rootView.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(playerBinding.rootView);
        }
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void setupAfterIntent() {
        Player player = this.player;
        PlayerService playerService = player.service;
        if (PreferenceManager.getDefaultSharedPreferences(playerService).getBoolean(playerService.getString(R.string.start_main_player_fullscreen_key), false) && DeviceUtils.isTablet(playerService) && PlayerHelper.globalScreenOrientationLocked(playerService)) {
            Optional.ofNullable(player.fragmentListener).ifPresent(new Player$$ExternalSyntheticLambda3(13));
        }
        boolean isMuted = player.isMuted();
        PlayerBinding playerBinding = this.binding;
        AppCompatImageButton appCompatImageButton = playerBinding.switchMute;
        int i = isMuted ? R.drawable.ic_volume_off : R.drawable.ic_volume_up;
        PlayerService playerService2 = this.context;
        appCompatImageButton.setImageDrawable(Cookie.Companion.getDrawable(playerService2, i));
        AppKt.animateRotation(0, playerBinding.moreOptionsButton);
        closeItemsList();
        showHideKodiButton();
        AppCompatImageButton appCompatImageButton2 = playerBinding.fullScreenButton;
        AppCompatImageButton appCompatImageButton3 = playerBinding.moreOptionsButton;
        LinearLayout linearLayout = playerBinding.topControls;
        appCompatImageButton2.setVisibility(8);
        setupScreenRotationButton();
        playerBinding.resizeTextView.setVisibility(0);
        playerBinding.rootView.findViewById(R.id.metadataView).setVisibility(0);
        appCompatImageButton3.setVisibility(0);
        linearLayout.setOrientation(1);
        playerBinding.primaryControls.getLayoutParams().width = -1;
        playerBinding.secondaryControls.setVisibility(4);
        appCompatImageButton3.setImageDrawable(Cookie.Companion.getDrawable(playerService2, R.drawable.ic_expand_more));
        playerBinding.share.setVisibility(0);
        playerBinding.openInBrowser.setVisibility(0);
        playerBinding.switchMute.setVisibility(0);
        playerBinding.playerCloseButton.setVisibility(this.isFullscreen ? 8 : 0);
        linearLayout.setClickable(true);
        linearLayout.setFocusable(true);
        playerBinding.metadataView.setVisibility(this.isFullscreen ? 0 : 8);
        playerBinding.audioTrackTextView.setMaxWidth(Log.LOG_LEVEL_OFF);
        Resources resources = playerService2.getResources();
        setupElementsSize(resources.getDimensionPixelSize(R.dimen.player_main_buttons_min_width), resources.getDimensionPixelSize(R.dimen.player_main_top_padding), resources.getDimensionPixelSize(R.dimen.player_main_controls_padding), resources.getDimensionPixelSize(R.dimen.player_main_buttons_padding));
        playerBinding.rootView.setVisibility(0);
        playerBinding.playPauseButton.requestFocus();
        setResizeMode(player.prefs.getInt(player.context.getString(R.string.last_resize_mode), 0));
        playerBinding.rootView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        playerBinding.playPauseButton.requestFocus();
        if (player.getPlayWhenReady()) {
            player.play();
        } else {
            player.pause();
        }
    }

    public final void setupScreenRotationButton() {
        PlayerBinding playerBinding = this.binding;
        AppCompatImageButton appCompatImageButton = playerBinding.screenRotationButton;
        PlayerService playerService = this.context;
        appCompatImageButton.setVisibility((PlayerHelper.globalScreenOrientationLocked(playerService) || this.isVerticalVideo || DeviceUtils.isTablet(playerService)) ? 0 : 8);
        playerBinding.screenRotationButton.setImageDrawable(Cookie.Companion.getDrawable(playerService, this.isFullscreen ? R.drawable.ic_fullscreen_exit : R.drawable.ic_fullscreen));
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi
    public final void setupSubtitleView(float f) {
        this.binding.subtitleView.setFractionalTextSize(f * 0.0533f);
    }

    public final void showHideKodiButton() {
        int i;
        PlayQueue playQueue = this.player.playQueue;
        AppCompatImageButton appCompatImageButton = this.binding.playWithKodi;
        if (playQueue != null && playQueue.getItem() != null) {
            if (CloseableKt.shouldShowPlayWithKodi(this.context, playQueue.getItem().getServiceId())) {
                i = 0;
                appCompatImageButton.setVisibility(i);
            }
        }
        i = 8;
        appCompatImageButton.setVisibility(i);
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi
    public final void showOrHideButtons() {
        super.showOrHideButtons();
        Player player = this.player;
        PlayQueue playQueue = player.playQueue;
        if (playQueue == null) {
            return;
        }
        boolean isEmpty = playQueue.getStreams().isEmpty();
        boolean booleanValue = ((Boolean) player.getCurrentStreamInfo().map(new ListHelper$$ExternalSyntheticLambda0(4)).map(new ListHelper$$ExternalSyntheticLambda0(6)).orElse(Boolean.TRUE)).booleanValue();
        PlayerBinding playerBinding = this.binding;
        AppCompatImageButton appCompatImageButton = playerBinding.queueButton;
        AppCompatImageButton appCompatImageButton2 = playerBinding.segmentsButton;
        appCompatImageButton.setVisibility(!isEmpty ? 0 : 8);
        playerBinding.queueButton.setAlpha(!isEmpty ? 1.0f : 0.0f);
        appCompatImageButton2.setVisibility(booleanValue ? 8 : 0);
        appCompatImageButton2.setAlpha(booleanValue ? 0.0f : 1.0f);
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi
    public final void showSystemUIPartially() {
        if (this.isFullscreen) {
            getParentActivity().map(new ListHelper$$ExternalSyntheticLambda0(3)).ifPresent(new Player$$ExternalSyntheticLambda3(11));
        }
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void smoothStopForImmediateReusing() {
        hideControls(0L, 0L);
        closeItemsList();
    }

    public final void toggleFullscreen() {
        int i = MainActivity.$r8$clinit;
        Player player = this.player;
        PlayerServiceEventListener playerServiceEventListener = (PlayerServiceEventListener) Optional.ofNullable(player.fragmentListener).orElse(null);
        if (playerServiceEventListener == null || player.exoPlayerIsNull()) {
            return;
        }
        boolean z = this.isFullscreen;
        this.isFullscreen = !z;
        PlayerBinding playerBinding = this.binding;
        if (z) {
            playerBinding.playbackControlRoot.setPadding(0, 0, 0, 0);
        } else {
            hideControls(0L, 0L);
        }
        playerServiceEventListener.onFullscreenStateChanged(this.isFullscreen);
        playerBinding.metadataView.setVisibility(this.isFullscreen ? 0 : 8);
        playerBinding.playerCloseButton.setVisibility(this.isFullscreen ? 8 : 0);
        setupScreenRotationButton();
    }

    public final void updateQueueTime(int i) {
        PlayQueue playQueue = this.player.playQueue;
        if (playQueue == null) {
            return;
        }
        int index = playQueue.getIndex();
        List streams = playQueue.getStreams();
        long longValue = ((Long) Collection.EL.stream(streams.subList(0, index)).collect(Collectors.summingLong(new DownloadManager$$ExternalSyntheticLambda0(4)))).longValue() * 1000;
        long longValue2 = ((Long) Collection.EL.stream(streams.subList(index, streams.size())).collect(Collectors.summingLong(new DownloadManager$$ExternalSyntheticLambda0(4)))).longValue() * 1000;
        this.binding.itemsListHeaderDuration.setText(PlayerHelper.getTimeString(i + longValue) + "/" + PlayerHelper.getTimeString(longValue + longValue2));
    }
}
