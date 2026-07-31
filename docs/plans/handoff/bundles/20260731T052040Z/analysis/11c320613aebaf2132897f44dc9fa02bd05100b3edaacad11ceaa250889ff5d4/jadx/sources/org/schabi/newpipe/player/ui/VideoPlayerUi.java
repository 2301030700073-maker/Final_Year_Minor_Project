package org.schabi.newpipe.player.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.CaptioningManager;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.PopupMenu$OnDismissListener;
import androidx.appcompat.widget.PopupMenu$OnMenuItemClickListener;
import androidx.collection.SparseArrayCompat;
import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.MutableLiveData;
import androidx.media.MediaBrowserServiceCompat;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.sqlite.SQLite;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda12;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import coil3.ComponentRegistry;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Tracks;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.MappingTrackSelector;
import com.google.android.exoplayer2.ui.CaptionStyleCompat;
import com.google.android.exoplayer2.ui.SubtitleView;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.video.PlaceholderSurface;
import com.google.android.exoplayer2.video.VideoSize;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import j$.time.OffsetDateTime;
import j$.util.Collection;
import j$.util.Objects;
import j$.util.Optional;
import j$.util.stream.Collectors;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Supplier;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.EmptyList;
import kotlin.random.AbstractPlatformRandom;
import kotlin.random.Random;
import kotlin.ranges.LongRange;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;
import kotlin.text.UStringsKt;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import okio.Options;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.koin.core.scope.Scope$$ExternalSyntheticLambda0;
import org.mozilla.javascript.Token;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.stream.StreamWithState;
import org.schabi.newpipe.database.subscription.SubscriptionDAO_Impl;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.databinding.PlayerBinding;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.channel.ChannelInfoItem;
import org.schabi.newpipe.extractor.localization.TimeAgoParser;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.fragments.list.playlist.PlaylistFragment;
import org.schabi.newpipe.ktx.AnimationType;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda9;
import org.schabi.newpipe.local.feed.FeedState;
import org.schabi.newpipe.local.feed.FeedViewModel;
import org.schabi.newpipe.local.feed.FeedViewModel$$ExternalSyntheticLambda0;
import org.schabi.newpipe.local.feed.item.StreamItem;
import org.schabi.newpipe.local.feed.service.FeedEventManager;
import org.schabi.newpipe.local.feed.service.FeedLoadManager;
import org.schabi.newpipe.local.subscription.SubscriptionFragment;
import org.schabi.newpipe.local.subscription.SubscriptionFragment$$ExternalSyntheticLambda5;
import org.schabi.newpipe.local.subscription.SubscriptionManager;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupDialogViewModel;
import org.schabi.newpipe.player.PlayQueueActivity;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda3;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda48;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.PlayerService$$ExternalSyntheticLambda0;
import org.schabi.newpipe.player.gesture.BasePlayerGestureListener;
import org.schabi.newpipe.player.helper.PlayerHelper;
import org.schabi.newpipe.player.playback.MediaSourceManager;
import org.schabi.newpipe.player.playback.SurfaceHolderCallback;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;
import org.schabi.newpipe.player.playqueue.PlayQueueItemBuilder;
import org.schabi.newpipe.player.playqueue.PlayQueueItemHolder;
import org.schabi.newpipe.player.seekbarpreview.SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda1;
import org.schabi.newpipe.settings.SelectChannelFragment;
import org.schabi.newpipe.settings.SelectFeedGroupFragment;
import org.schabi.newpipe.settings.tabs.AddTabDialog$ChooseTabListItem;
import org.schabi.newpipe.util.DeviceUtils;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda0;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.util.OnClickGesture;
import org.schabi.newpipe.views.ExpandableSurfaceView;
import org.schabi.newpipe.views.FocusAwareSeekBar;
import org.schabi.newpipe.views.NewPipeTextView;
import org.schabi.newpipe.views.player.PlayerFastSeekOverlay;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public abstract class VideoPlayerUi extends PlayerUi implements SeekBar.OnSeekBarChangeListener, PopupMenu$OnMenuItemClickListener, PopupMenu$OnDismissListener {
    public static final float[] PLAYBACK_SPEEDS = {0.5f, 0.75f, 1.0f, 1.25f, 1.5f, 1.75f, 2.0f};
    public final ComponentRegistry.Builder audioTrackPopupMenu;
    public final PlayerBinding binding;
    public final ComponentRegistry.Builder captionPopupMenu;
    public final Handler controlsVisibilityHandler;
    public GestureDetector gestureDetector;
    public boolean isSomePopupMenuVisible;
    public VideoPlayerUi$$ExternalSyntheticLambda22 onLayoutChangeListener;
    public final ComponentRegistry.Builder playbackSpeedPopupMenu;
    public BasePlayerGestureListener playerGestureListener;
    public final ComponentRegistry.Builder qualityPopupMenu;
    public final TimeAgoParser seekbarPreviewThumbnailHolder;
    public SurfaceHolderCallback surfaceHolderCallback;
    public boolean surfaceIsSetup;

    public VideoPlayerUi(Player player, PlayerBinding playerBinding) {
        super(player);
        this.controlsVisibilityHandler = new Handler(Looper.getMainLooper());
        int i = 0;
        this.surfaceIsSetup = false;
        this.isSomePopupMenuVisible = false;
        this.onLayoutChangeListener = null;
        this.seekbarPreviewThumbnailHolder = new TimeAgoParser();
        this.binding = playerBinding;
        PlayerService playerService = this.context;
        CaptioningManager captioningManager = (CaptioningManager) playerService.getSystemService(CaptioningManager.class);
        setupSubtitleView((captioningManager == null || !captioningManager.isEnabled()) ? 1.0f : captioningManager.getFontScale());
        CaptioningManager captioningManager2 = (CaptioningManager) playerService.getSystemService(CaptioningManager.class);
        CaptionStyleCompat createFromCaptionStyle = (captioningManager2 == null || !captioningManager2.isEnabled()) ? CaptionStyleCompat.DEFAULT : CaptionStyleCompat.createFromCaptionStyle(captioningManager2.getUserStyle());
        SubtitleView subtitleView = playerBinding.subtitleView;
        PlayerFastSeekOverlay playerFastSeekOverlay = playerBinding.fastSeekOverlay;
        FocusAwareSeekBar focusAwareSeekBar = playerBinding.playbackSeekBar;
        subtitleView.setApplyEmbeddedStyles(createFromCaptionStyle == CaptionStyleCompat.DEFAULT);
        playerBinding.subtitleView.setStyle(createFromCaptionStyle);
        playerBinding.resizeTextView.setText(PlayerHelper.resizeTypeOf(playerService, playerBinding.surfaceView.getResizeMode()));
        focusAwareSeekBar.getThumb().setColorFilter(new PorterDuffColorFilter(-65536, PorterDuff.Mode.SRC_IN));
        Drawable progressDrawable = focusAwareSeekBar.getProgressDrawable();
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        progressDrawable.setColorFilter(new PorterDuffColorFilter(-65536, mode));
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(playerService, R.style.DarkPopupMenu);
        this.qualityPopupMenu = new ComponentRegistry.Builder(contextThemeWrapper, playerBinding.qualityTextView);
        this.audioTrackPopupMenu = new ComponentRegistry.Builder(contextThemeWrapper, playerBinding.audioTrackTextView);
        this.playbackSpeedPopupMenu = new ComponentRegistry.Builder(playerService, playerBinding.playbackSpeed);
        this.captionPopupMenu = new ComponentRegistry.Builder(contextThemeWrapper, playerBinding.captionTextView);
        playerBinding.progressBarLoadingPanel.getIndeterminateDrawable().setColorFilter(new PorterDuffColorFilter(-1, mode));
        playerBinding.titleTextView.setSelected(true);
        playerBinding.channelTextView.setSelected(true);
        playerBinding.itemsList.setNestedScrollingEnabled(false);
        initListeners();
        playerFastSeekOverlay.seekSecondsSupplier = new Scope$$ExternalSyntheticLambda0(this, 8);
        playerFastSeekOverlay.performListener = new AnonymousClass1(this, i);
        BasePlayerGestureListener basePlayerGestureListener = this.playerGestureListener;
        basePlayerGestureListener.getClass();
        basePlayerGestureListener.doubleTapControls = playerFastSeekOverlay;
    }

    public final void animatePlayButtons(long j, boolean z) {
        PlayerBinding playerBinding = this.binding;
        AppCompatImageButton appCompatImageButton = playerBinding.playPauseButton;
        AnimationType animationType = AnimationType.SCALE_AND_ALPHA;
        AppKt.animate$default(appCompatImageButton, z, j, animationType, 0L, null, 24);
        PlayQueue playQueue = this.player.playQueue;
        if (playQueue == null) {
            return;
        }
        if (!z || playQueue.getIndex() > 0) {
            AppKt.animate$default(playerBinding.playPreviousButton, z, j, animationType, 0L, null, 24);
        }
        if (!z || playQueue.getIndex() + 1 < playQueue.getStreams().size()) {
            AppKt.animate$default(playerBinding.playNextButton, z, j, animationType, 0L, null, 24);
        }
    }

    public abstract BasePlayerGestureListener buildGestureListener();

    public abstract float calculateMaxEndScreenThumbnailHeight(Bitmap bitmap);

    public final void clearVideoSurface() {
        if (this.surfaceHolderCallback != null) {
            this.binding.surfaceView.getHolder().removeCallback(this.surfaceHolderCallback);
            SurfaceHolderCallback surfaceHolderCallback = this.surfaceHolderCallback;
            PlaceholderSurface placeholderSurface = surfaceHolderCallback.placeholderSurface;
            if (placeholderSurface != null) {
                placeholderSurface.release();
                surfaceHolderCallback.placeholderSurface = null;
            }
            this.surfaceHolderCallback = null;
        }
        Optional.ofNullable(this.player.simpleExoPlayer).ifPresent(new Player$$ExternalSyntheticLambda3(16));
        this.surfaceIsSetup = false;
    }

    public void deinitListeners() {
        PlayerBinding playerBinding = this.binding;
        playerBinding.qualityTextView.setOnClickListener(null);
        playerBinding.audioTrackTextView.setOnClickListener(null);
        playerBinding.playbackSpeed.setOnClickListener(null);
        playerBinding.playbackSeekBar.setOnSeekBarChangeListener(null);
        playerBinding.captionTextView.setOnClickListener(null);
        playerBinding.resizeTextView.setOnClickListener(null);
        playerBinding.playbackLiveSync.setOnClickListener(null);
        playerBinding.rootView.setOnTouchListener(null);
        this.playerGestureListener = null;
        this.gestureDetector = null;
        playerBinding.repeatButton.setOnClickListener(null);
        playerBinding.shuffleButton.setOnClickListener(null);
        playerBinding.playPauseButton.setOnClickListener(null);
        playerBinding.playPreviousButton.setOnClickListener(null);
        playerBinding.playNextButton.setOnClickListener(null);
        AppCompatImageButton appCompatImageButton = playerBinding.moreOptionsButton;
        appCompatImageButton.setOnClickListener(null);
        appCompatImageButton.setOnLongClickListener(null);
        AppCompatImageButton appCompatImageButton2 = playerBinding.share;
        appCompatImageButton2.setOnClickListener(null);
        appCompatImageButton2.setOnLongClickListener(null);
        playerBinding.fullScreenButton.setOnClickListener(null);
        playerBinding.screenRotationButton.setOnClickListener(null);
        playerBinding.playWithKodi.setOnClickListener(null);
        playerBinding.openInBrowser.setOnClickListener(null);
        playerBinding.playerCloseButton.setOnClickListener(null);
        playerBinding.switchMute.setOnClickListener(null);
        RelativeLayout relativeLayout = playerBinding.itemsListPanel;
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(relativeLayout, null);
        playerBinding.playbackControlRoot.removeOnLayoutChangeListener(this.onLayoutChangeListener);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public void destroyPlayer() {
        clearVideoSurface();
    }

    public final void hideControls(long j, long j2) {
        int i = MainActivity.$r8$clinit;
        showOrHideButtons();
        Handler handler = this.controlsVisibilityHandler;
        handler.removeCallbacksAndMessages(null);
        handler.postDelayed(new VideoPlayerUi$$ExternalSyntheticLambda9(this, j, 0), j2);
    }

    public void initListeners() {
        PlayerBinding playerBinding = this.binding;
        final int i = 1;
        final int i2 = 0;
        playerBinding.qualityTextView.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, new VideoPlayerUi$$ExternalSyntheticLambda8(this, i), i2));
        playerBinding.audioTrackTextView.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, new VideoPlayerUi$$ExternalSyntheticLambda8(this, 8), i2));
        playerBinding.playbackSpeed.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, new VideoPlayerUi$$ExternalSyntheticLambda8(this, 9), i2));
        playerBinding.playbackSeekBar.setOnSeekBarChangeListener(this);
        playerBinding.captionTextView.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, new VideoPlayerUi$$ExternalSyntheticLambda8(this, 10), i2));
        playerBinding.resizeTextView.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, new VideoPlayerUi$$ExternalSyntheticLambda8(this, 11), i2));
        NewPipeTextView newPipeTextView = playerBinding.playbackLiveSync;
        final Player player = this.player;
        Objects.requireNonNull(player);
        final int i3 = 2;
        newPipeTextView.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, new Runnable() { // from class: org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                int i4 = i3;
                Player player2 = player;
                switch (i4) {
                    case 0:
                        player2.playNext();
                        break;
                    case 1:
                        player2.toggleMute();
                        break;
                    case 2:
                        player2.seekToDefault();
                        break;
                    case 3:
                        player2.playPause();
                        break;
                    default:
                        player2.playPrevious();
                        break;
                }
            }
        }, i2));
        this.playerGestureListener = buildGestureListener();
        this.gestureDetector = new GestureDetector(this.context, this.playerGestureListener);
        playerBinding.rootView.setOnTouchListener(this.playerGestureListener);
        playerBinding.repeatButton.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda27
            public final /* synthetic */ VideoPlayerUi f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i4 = i2;
                VideoPlayerUi videoPlayerUi = this.f$0;
                switch (i4) {
                    case 0:
                        int i5 = MainActivity.$r8$clinit;
                        videoPlayerUi.player.cycleNextRepeatMode();
                        break;
                    default:
                        int i6 = MainActivity.$r8$clinit;
                        videoPlayerUi.player.toggleShuffleModeEnabled();
                        break;
                }
            }
        });
        playerBinding.shuffleButton.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda27
            public final /* synthetic */ VideoPlayerUi f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i4 = i;
                VideoPlayerUi videoPlayerUi = this.f$0;
                switch (i4) {
                    case 0:
                        int i5 = MainActivity.$r8$clinit;
                        videoPlayerUi.player.cycleNextRepeatMode();
                        break;
                    default:
                        int i6 = MainActivity.$r8$clinit;
                        videoPlayerUi.player.toggleShuffleModeEnabled();
                        break;
                }
            }
        });
        final int i4 = 3;
        playerBinding.playPauseButton.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, new Runnable() { // from class: org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                int i42 = i4;
                Player player2 = player;
                switch (i42) {
                    case 0:
                        player2.playNext();
                        break;
                    case 1:
                        player2.toggleMute();
                        break;
                    case 2:
                        player2.seekToDefault();
                        break;
                    case 3:
                        player2.playPause();
                        break;
                    default:
                        player2.playPrevious();
                        break;
                }
            }
        }, i2));
        final int i5 = 4;
        playerBinding.playPreviousButton.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, new Runnable() { // from class: org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                int i42 = i5;
                Player player2 = player;
                switch (i42) {
                    case 0:
                        player2.playNext();
                        break;
                    case 1:
                        player2.toggleMute();
                        break;
                    case 2:
                        player2.seekToDefault();
                        break;
                    case 3:
                        player2.playPause();
                        break;
                    default:
                        player2.playPrevious();
                        break;
                }
            }
        }, i2));
        playerBinding.playNextButton.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, new Runnable() { // from class: org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                int i42 = i2;
                Player player2 = player;
                switch (i42) {
                    case 0:
                        player2.playNext();
                        break;
                    case 1:
                        player2.toggleMute();
                        break;
                    case 2:
                        player2.seekToDefault();
                        break;
                    case 3:
                        player2.playPause();
                        break;
                    default:
                        player2.playPrevious();
                        break;
                }
            }
        }, i2));
        playerBinding.moreOptionsButton.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, new VideoPlayerUi$$ExternalSyntheticLambda8(this, i3), i2));
        AppCompatImageButton appCompatImageButton = playerBinding.share;
        appCompatImageButton.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, new VideoPlayerUi$$ExternalSyntheticLambda8(this, i4), i2));
        appCompatImageButton.setOnLongClickListener(new MainPlayerUi$$ExternalSyntheticLambda11(this, i5));
        playerBinding.fullScreenButton.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, new VideoPlayerUi$$ExternalSyntheticLambda8(this, i5), i2));
        playerBinding.playWithKodi.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, new VideoPlayerUi$$ExternalSyntheticLambda8(this, 5), i2));
        playerBinding.openInBrowser.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, new VideoPlayerUi$$ExternalSyntheticLambda8(this, 6), i2));
        playerBinding.playerCloseButton.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, new VideoPlayerUi$$ExternalSyntheticLambda8(this, 7), i2));
        playerBinding.switchMute.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, new Runnable() { // from class: org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                int i42 = i;
                Player player2 = player;
                switch (i42) {
                    case 0:
                        player2.playNext();
                        break;
                    case 1:
                        player2.toggleMute();
                        break;
                    case 2:
                        player2.seekToDefault();
                        break;
                    case 3:
                        player2.playPause();
                        break;
                    default:
                        player2.playPrevious();
                        break;
                }
            }
        }, i2));
        RelativeLayout relativeLayout = playerBinding.itemsListPanel;
        FeedViewModel$$ExternalSyntheticLambda0 feedViewModel$$ExternalSyntheticLambda0 = new FeedViewModel$$ExternalSyntheticLambda0(20);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(relativeLayout, feedViewModel$$ExternalSyntheticLambda0);
        VideoPlayerUi$$ExternalSyntheticLambda22 videoPlayerUi$$ExternalSyntheticLambda22 = new VideoPlayerUi$$ExternalSyntheticLambda22(this, i2);
        this.onLayoutChangeListener = videoPlayerUi$$ExternalSyntheticLambda22;
        playerBinding.playbackControlRoot.addOnLayoutChangeListener(videoPlayerUi$$ExternalSyntheticLambda22);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public void initPlayback() {
        Player player = this.player;
        boolean shuffleModeEnabled = player.simpleExoPlayer.getShuffleModeEnabled();
        PlayerBinding playerBinding = this.binding;
        playerBinding.shuffleButton.setImageAlpha(shuffleModeEnabled ? 255 : 77);
        int repeatMode = player.simpleExoPlayer.getRepeatMode();
        playerBinding.repeatButton.setImageResource(repeatMode != 1 ? repeatMode != 2 ? com.google.android.exoplayer2.ui.R.drawable.exo_controls_repeat_off : com.google.android.exoplayer2.ui.R.drawable.exo_controls_repeat_all : com.google.android.exoplayer2.ui.R.drawable.exo_controls_repeat_one);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void initPlayer() {
        setupVideoSurfaceIfNeeded();
    }

    public boolean isAnyListViewOpen() {
        return false;
    }

    public final boolean isControlsVisible() {
        PlayerBinding playerBinding = this.binding;
        return playerBinding != null && playerBinding.playbackControlRoot.getVisibility() == 0;
    }

    public boolean isFullscreen() {
        return false;
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onBlocked() {
        hideControls(300L, 0L);
        PlayerBinding playerBinding = this.binding;
        playerBinding.playbackSeekBar.setEnabled(false);
        playerBinding.playbackSeekBar.getThumb().setColorFilter(new PorterDuffColorFilter(-65536, PorterDuff.Mode.SRC_IN));
        RelativeLayout relativeLayout = playerBinding.loadingPanel;
        relativeLayout.setBackgroundColor(-16777216);
        AppKt.animate$default(relativeLayout, true, 0L, null, 0L, null, 28);
        AppKt.animate$default(playerBinding.surfaceForeground, true, 100L, null, 0L, null, 28);
        updatePlayPauseButton(1);
        animatePlayButtons(100L, false);
        playerBinding.rootView.setKeepScreenOn(false);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onBuffering() {
        PlayerBinding playerBinding = this.binding;
        playerBinding.loadingPanel.setBackgroundColor(0);
        playerBinding.loadingPanel.setVisibility(0);
        playerBinding.rootView.setKeepScreenOn(true);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public void onCompleted() {
        PlayerBinding playerBinding = this.binding;
        AppCompatImageButton appCompatImageButton = playerBinding.playPauseButton;
        VideoPlayerUi$$ExternalSyntheticLambda8 videoPlayerUi$$ExternalSyntheticLambda8 = new VideoPlayerUi$$ExternalSyntheticLambda8(this, 0);
        AnimationType animationType = AnimationType.SCALE_AND_ALPHA;
        AppKt.animate(appCompatImageButton, false, 0L, animationType, 0L, videoPlayerUi$$ExternalSyntheticLambda8);
        playerBinding.rootView.setKeepScreenOn(false);
        int max = playerBinding.playbackSeekBar.getMax();
        if (this.player.currentState != 127) {
            playerBinding.playbackSeekBar.setProgress(max);
        }
        playerBinding.playbackCurrentTime.setText(PlayerHelper.getTimeString(max));
        showControls(500L);
        AppKt.animate$default(playerBinding.currentDisplaySeek, false, 200L, animationType, 0L, null, 24);
        playerBinding.loadingPanel.setVisibility(8);
        AppKt.animate$default(playerBinding.surfaceForeground, true, 100L, null, 0L, null, 28);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onCues(List list) {
        this.binding.subtitleView.setCues(list);
    }

    public boolean onKeyDown(int i) {
        if (i == 4) {
            if (!DeviceUtils.isTv(this.context) || !isControlsVisible()) {
                return false;
            }
            hideControls(0L, 0L);
            return true;
        }
        switch (i) {
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                PlayerBinding playerBinding = this.binding;
                if ((!playerBinding.rootView.hasFocus() || playerBinding.playbackControlRoot.hasFocus()) && !isAnyListViewOpen()) {
                    if (this.player.currentState != 123) {
                        if (!isControlsVisible()) {
                            playerBinding.playPauseButton.requestFocus();
                            showControlsThenHide();
                            showSystemUIPartially();
                            break;
                        } else {
                            hideControls(300L, 7000L);
                            break;
                        }
                    }
                }
                break;
        }
        return true;
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public void onMetadataChanged(StreamInfo streamInfo) {
        Player player = this.player;
        int i = 1;
        player.getCurrentStreamInfo().ifPresent(new VideoPlayerUi$$ExternalSyntheticLambda32(this, i));
        PlayerBinding playerBinding = this.binding;
        playerBinding.titleTextView.setText(streamInfo.getName());
        playerBinding.channelTextView.setText(streamInfo.getUploaderName());
        PlayerService playerService = player.context;
        List previewFrames = streamInfo.getPreviewFrames();
        TimeAgoParser timeAgoParser = this.seekbarPreviewThumbnailHolder;
        timeAgoParser.getClass();
        String string = PreferenceManager.getDefaultSharedPreferences(playerService).getString(playerService.getString(R.string.seekbar_preview_thumbnail_key), "");
        if (string.equals(playerService.getString(R.string.seekbar_preview_thumbnail_none))) {
            i = 2;
        } else if (!string.equals(playerService.getString(R.string.seekbar_preview_thumbnail_low_quality))) {
            i = 0;
        }
        int i2 = i;
        UUID randomUUID = UUID.randomUUID();
        timeAgoParser.now = randomUUID;
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        newSingleThreadExecutor.submit(new SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda1(timeAgoParser, i2, previewFrames, randomUUID, 0));
        newSingleThreadExecutor.shutdown();
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onMuteUnmuteChanged(boolean z) {
        this.binding.switchMute.setImageDrawable(Cookie.Companion.getDrawable(this.context, z ? R.drawable.ic_volume_off : R.drawable.ic_volume_up));
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public void onPaused() {
        boolean z = this.playerGestureListener.isDoubleTapping;
        PlayerBinding playerBinding = this.binding;
        if (!z) {
            showControls(400L);
            playerBinding.loadingPanel.setVisibility(8);
            AppKt.animate(playerBinding.playPauseButton, false, 80L, AnimationType.SCALE_AND_ALPHA, 0L, new VideoPlayerUi$$ExternalSyntheticLambda8(this, 13));
        }
        playerBinding.rootView.setKeepScreenOn(false);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onPausedSeek() {
        animatePlayButtons(100L, false);
        this.binding.rootView.setKeepScreenOn(true);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        this.binding.playbackSpeed.setText(PlayerHelper.formatSpeed(playbackParameters.speed));
    }

    public abstract void onPlaybackSpeedClicked();

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public void onPlaying() {
        this.player.getCurrentStreamInfo().ifPresent(new VideoPlayerUi$$ExternalSyntheticLambda32(this, 1));
        PlayerBinding playerBinding = this.binding;
        playerBinding.playbackSeekBar.setEnabled(true);
        playerBinding.playbackSeekBar.getThumb().setColorFilter(new PorterDuffColorFilter(-65536, PorterDuff.Mode.SRC_IN));
        playerBinding.loadingPanel.setVisibility(8);
        NewPipeTextView newPipeTextView = playerBinding.currentDisplaySeek;
        AnimationType animationType = AnimationType.SCALE_AND_ALPHA;
        AppKt.animate$default(newPipeTextView, false, 200L, animationType, 0L, null, 24);
        AppKt.animate(playerBinding.playPauseButton, false, 80L, animationType, 0L, new VideoPlayerUi$$ExternalSyntheticLambda8(this, 12));
        playerBinding.rootView.setKeepScreenOn(true);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onPrepared() {
        Player player = this.player;
        int duration = (int) player.simpleExoPlayer.getDuration();
        PlayerBinding playerBinding = this.binding;
        playerBinding.playbackEndTime.setText(PlayerHelper.getTimeString(duration));
        FocusAwareSeekBar focusAwareSeekBar = playerBinding.playbackSeekBar;
        focusAwareSeekBar.setMax(duration);
        focusAwareSeekBar.setKeyProgressIncrement(PlayerHelper.retrieveSeekDurationFromPreferences(player));
        playerBinding.playbackSpeed.setText(PlayerHelper.formatSpeed(player.getPlaybackParameters().speed));
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (z) {
            int i2 = MainActivity.$r8$clinit;
            this.binding.currentDisplaySeek.setText(PlayerHelper.getTimeString(i));
            PlayerService playerService = this.player.context;
            TimeAgoParser timeAgoParser = this.seekbarPreviewThumbnailHolder;
            Supplier entities$$ExternalSyntheticLambda0 = new Entities$$ExternalSyntheticLambda0(22);
            synchronized (((SparseArrayCompat) timeAgoParser.patternsHolder)) {
                int i3 = Log.LOG_LEVEL_OFF;
                for (int i4 = 0; i4 < ((SparseArrayCompat) timeAgoParser.patternsHolder).size(); i4++) {
                    try {
                        int abs = Math.abs(((SparseArrayCompat) timeAgoParser.patternsHolder).keyAt(i4) - i);
                        if (abs < i3) {
                            entities$$ExternalSyntheticLambda0 = (Supplier) ((SparseArrayCompat) timeAgoParser.patternsHolder).valueAt(i4);
                            i3 = abs;
                        }
                    } finally {
                    }
                }
            }
            Bitmap bitmap = (Bitmap) Optional.ofNullable((Bitmap) entities$$ExternalSyntheticLambda0.get()).orElse(null);
            PlayerBinding playerBinding = this.binding;
            ImageView imageView = playerBinding.currentSeekbarPreviewThumbnail;
            SubtitleView subtitleView = playerBinding.subtitleView;
            if (bitmap == null) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                try {
                    try {
                        float width = bitmap.getWidth() > 0 ? bitmap.getWidth() : 1;
                        int clamp = Cookie.Companion.clamp(Math.round(subtitleView.getWidth() / 4.0f), DeviceUtils.dpToPx(playerService, 10), Math.round(2.5f * width));
                        imageView.setImageBitmap(UStringsKt.createScaledBitmap(bitmap, clamp, (int) (bitmap.getHeight() * (clamp / width))));
                    } catch (Exception e) {
                        android.util.Log.e("SeekbarPrevThumbHelper", "Failed to resize and set seekbar preview thumbnail", e);
                        imageView.setVisibility(8);
                    }
                    bitmap.recycle();
                } finally {
                    bitmap.recycle();
                }
            }
            PlayerBinding playerBinding2 = this.binding;
            try {
                playerBinding2.bottomSeekbarPreviewLayout.setGravity(0);
                int clamp2 = Cookie.Companion.clamp(((playerBinding2.playbackSeekBar.getLeft() + playerBinding2.playbackSeekBar.getPaddingLeft()) + playerBinding2.playbackSeekBar.getThumb().getBounds().left) - (playerBinding2.seekbarPreviewContainer.getWidth() / 2), 0, playerBinding2.playbackWindowRoot.getWidth() - playerBinding2.seekbarPreviewContainer.getWidth());
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(playerBinding2.seekbarPreviewContainer.getLayoutParams());
                layoutParams.setMarginStart(clamp2);
                playerBinding2.seekbarPreviewContainer.setLayoutParams(layoutParams);
            } catch (Exception e2) {
                android.util.Log.e("VideoPlayerUi", "Failed to adjust seekbarPreviewContainer", e2);
                playerBinding2.bottomSeekbarPreviewLayout.setGravity(17);
            }
        }
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onRenderedFirstFrame() {
        AppKt.animate$default(this.binding.surfaceForeground, false, 300L, null, 0L, null, 28);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onRepeatModeChanged(int i) {
        PlayerBinding playerBinding = this.binding;
        if (i == 2) {
            playerBinding.repeatButton.setImageResource(com.google.android.exoplayer2.ui.R.drawable.exo_controls_repeat_all);
        } else if (i == 1) {
            playerBinding.repeatButton.setImageResource(com.google.android.exoplayer2.ui.R.drawable.exo_controls_repeat_one);
        } else {
            playerBinding.repeatButton.setImageResource(com.google.android.exoplayer2.ui.R.drawable.exo_controls_repeat_off);
        }
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onShuffleModeEnabledChanged(boolean z) {
        this.binding.shuffleButton.setImageAlpha(z ? 255 : 77);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        int i = MainActivity.$r8$clinit;
        Player player = this.player;
        if (player.currentState != 127) {
            player.changeState(Token.SWITCH);
        }
        showControls(0L);
        PlayerBinding playerBinding = this.binding;
        NewPipeTextView newPipeTextView = playerBinding.currentDisplaySeek;
        AnimationType animationType = AnimationType.SCALE_AND_ALPHA;
        AppKt.animate$default(newPipeTextView, true, 300L, animationType, 0L, null, 24);
        AppKt.animate$default(playerBinding.currentSeekbarPreviewThumbnail, true, 300L, animationType, 0L, null, 24);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        int i = MainActivity.$r8$clinit;
        long progress = seekBar.getProgress();
        Player player = this.player;
        player.seekTo(progress);
        if (player.simpleExoPlayer.getDuration() == seekBar.getProgress()) {
            player.simpleExoPlayer.play();
        }
        PlayerBinding playerBinding = this.binding;
        playerBinding.playbackCurrentTime.setText(PlayerHelper.getTimeString(seekBar.getProgress()));
        NewPipeTextView newPipeTextView = playerBinding.currentDisplaySeek;
        AnimationType animationType = AnimationType.SCALE_AND_ALPHA;
        AppKt.animate$default(newPipeTextView, false, 200L, animationType, 0L, null, 24);
        AppKt.animate$default(playerBinding.currentSeekbarPreviewThumbnail, false, 200L, animationType, 0L, null, 24);
        if (player.currentState == 127) {
            player.changeState(Token.IF);
        }
        if (!player.isProgressLoopRunning()) {
            player.startProgressLoop();
        }
        showControlsThenHide();
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onTextTracksChanged(Tracks tracks) {
        boolean z = !tracks.containsType(3) || tracks.isTypeSupported(3, false);
        Player player = this.player;
        DefaultTrackSelector defaultTrackSelector = player.trackSelector;
        DefaultTrackSelector defaultTrackSelector2 = player.trackSelector;
        MappingTrackSelector.MappedTrackInfo currentMappedTrackInfo = defaultTrackSelector.getCurrentMappedTrackInfo();
        PlayerBinding playerBinding = this.binding;
        if (currentMappedTrackInfo == null || !z) {
            playerBinding.captionTextView.setVisibility(8);
            return;
        }
        int i = 13;
        List list = (List) Collection.EL.stream(tracks.getGroups()).filter(new Player$$ExternalSyntheticLambda48(i)).collect(Collectors.toList());
        List list2 = (List) Collection.EL.stream(list).map(new ListHelper$$ExternalSyntheticLambda0(9)).filter(new Player$$ExternalSyntheticLambda48(14)).map(new ListHelper$$ExternalSyntheticLambda0(12)).collect(Collectors.toList());
        Optional findFirst = Collection.EL.stream(list).filter(new Player$$ExternalSyntheticLambda48(15)).filter(new Player$$ExternalSyntheticLambda48(16)).map(new ListHelper$$ExternalSyntheticLambda0(i)).findFirst();
        ComponentRegistry.Builder builder = this.captionPopupMenu;
        if (builder != null) {
            ((MenuBuilder) builder.interceptors).removeGroup(89);
            builder.lazyDecoderFactories = this;
            ((MenuItemImpl) ((MenuBuilder) builder.interceptors).add(89, 0, 0, R.string.caption_none)).mClickListener = new VideoPlayerUi$$ExternalSyntheticLambda40(this, r3);
            int i2 = 0;
            while (i2 < list2.size()) {
                final String str = (String) list2.get(i2);
                i2++;
                ((MenuBuilder) builder.interceptors).addInternal(89, i2, 0, str).mClickListener = new MenuItem.OnMenuItemClickListener() { // from class: org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda41
                    @Override // android.view.MenuItem.OnMenuItemClickListener
                    public final boolean onMenuItemClick(MenuItem menuItem) {
                        VideoPlayerUi videoPlayerUi = VideoPlayerUi.this;
                        Player player2 = videoPlayerUi.player;
                        int captionRendererIndex = player2.getCaptionRendererIndex();
                        if (captionRendererIndex == -1) {
                            return true;
                        }
                        DefaultTrackSelector defaultTrackSelector3 = player2.trackSelector;
                        DefaultTrackSelector.Parameters.Builder buildUponParameters = defaultTrackSelector3.buildUponParameters();
                        String str2 = str;
                        defaultTrackSelector3.setParameters(buildUponParameters.setPreferredTextLanguages(str2, PlayerHelper.captionLanguageStemOf(str2)).setPreferredTextRoleFlags(64).setRendererDisabled(captionRendererIndex, false));
                        player2.prefs.edit().putString(videoPlayerUi.context.getString(R.string.caption_user_set_key), str2).apply();
                        return true;
                    }
                };
            }
            builder.lazyDecoderFactories = this;
            int captionRendererIndex = player.getCaptionRendererIndex();
            if (captionRendererIndex != -1) {
                String string = player.prefs.getString(this.context.getString(R.string.caption_user_set_key), null);
                if (string == null) {
                    defaultTrackSelector2.setParameters(defaultTrackSelector2.buildUponParameters().setRendererDisabled(captionRendererIndex, true));
                } else if (!defaultTrackSelector2.getParameters().preferredTextLanguages.contains(string)) {
                    defaultTrackSelector2.setParameters(defaultTrackSelector2.buildUponParameters().setPreferredTextLanguages(string, PlayerHelper.captionLanguageStemOf(string)).setPreferredTextRoleFlags(64).setRendererDisabled(captionRendererIndex, false));
                }
            }
        }
        if (defaultTrackSelector2.getParameters().getRendererDisabled(player.getCaptionRendererIndex()) || findFirst.isEmpty()) {
            playerBinding.captionTextView.setText(R.string.caption_none);
        } else {
            playerBinding.captionTextView.setText(((Format) findFirst.get()).language);
        }
        playerBinding.captionTextView.setVisibility(list2.isEmpty() ? 8 : 0);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onThumbnailLoaded(Bitmap bitmap) {
        updateEndScreenThumbnail(bitmap);
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public void onUpdateProgress(int i, int i2, int i3) {
        PlayerBinding playerBinding = this.binding;
        int max = playerBinding.playbackSeekBar.getMax();
        Player player = this.player;
        if (i2 != max) {
            playerBinding.playbackEndTime.setText(PlayerHelper.getTimeString(i2));
            FocusAwareSeekBar focusAwareSeekBar = playerBinding.playbackSeekBar;
            focusAwareSeekBar.setMax(i2);
            focusAwareSeekBar.setKeyProgressIncrement(PlayerHelper.retrieveSeekDurationFromPreferences(player));
        }
        if (player.currentState != 126) {
            if (player.currentState != 127) {
                playerBinding.playbackSeekBar.setProgress(i);
            }
            playerBinding.playbackCurrentTime.setText(PlayerHelper.getTimeString(i));
        }
        if (player.isLoading() || i3 > 90) {
            playerBinding.playbackSeekBar.setSecondaryProgress((int) ((i3 / 100.0f) * r5.getMax()));
        }
        int i4 = MainActivity.$r8$clinit;
        playerBinding.playbackLiveSync.setClickable(!player.isLiveEdge());
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public void onVideoSizeChanged(VideoSize videoSize) {
        int i;
        int i2 = videoSize.width;
        if (i2 == 0 || (i = videoSize.height) == 0) {
            return;
        }
        this.binding.surfaceView.setAspectRatio(i2 / i);
    }

    public abstract void removeViewFromParent();

    public final void setResizeMode(int i) {
        PlayerBinding playerBinding = this.binding;
        playerBinding.surfaceView.setResizeMode(i);
        playerBinding.resizeTextView.setText(PlayerHelper.resizeTypeOf(this.context, i));
    }

    public final void setupElementsSize(int i, int i2, int i3, int i4) {
        PlayerBinding playerBinding = this.binding;
        playerBinding.topControls.setPaddingRelative(i3, i2, i3, 0);
        playerBinding.bottomControls.setPaddingRelative(i3, 0, i3, 0);
        playerBinding.qualityTextView.setPadding(i4, i4, i4, i4);
        playerBinding.audioTrackTextView.setPadding(i4, i4, i4, i4);
        NewPipeTextView newPipeTextView = playerBinding.playbackSpeed;
        newPipeTextView.setPadding(i4, i4, i4, i4);
        newPipeTextView.setMinimumWidth(i);
        playerBinding.captionTextView.setPadding(i4, i4, i4, i4);
    }

    public abstract void setupSubtitleView(float f);

    public final void setupVideoSurfaceIfNeeded() {
        if (this.surfaceIsSetup) {
            return;
        }
        Player player = this.player;
        if (player.simpleExoPlayer != null) {
            PlayerBinding playerBinding = this.binding;
            RelativeLayout relativeLayout = playerBinding.rootView;
            ExpandableSurfaceView expandableSurfaceView = playerBinding.surfaceView;
            if (relativeLayout.getParent() != null) {
                clearVideoSurface();
                this.surfaceHolderCallback = new SurfaceHolderCallback(this.context, player.simpleExoPlayer);
                expandableSurfaceView.getHolder().addCallback(this.surfaceHolderCallback);
                if (expandableSurfaceView.getHolder().getSurface().isValid()) {
                    player.simpleExoPlayer.setVideoSurfaceHolder(expandableSurfaceView.getHolder());
                }
                this.surfaceIsSetup = true;
            }
        }
    }

    public final void showControls(long j) {
        int i = MainActivity.$r8$clinit;
        showOrHideButtons();
        showSystemUIPartially();
        this.controlsVisibilityHandler.removeCallbacksAndMessages(null);
        showHideShadow(j, true);
        AppKt.animate$default(this.binding.playbackControlRoot, true, j, null, 0L, null, 28);
    }

    public final void showControlsThenHide() {
        int i = MainActivity.$r8$clinit;
        showOrHideButtons();
        showSystemUIPartially();
        PlayerBinding playerBinding = this.binding;
        long j = playerBinding.playbackControlRoot.isInTouchMode() ? ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS : 7000L;
        showHideShadow(300L, true);
        AppKt.animate(playerBinding.playbackControlRoot, true, 300L, AnimationType.ALPHA, 0L, new VideoPlayerUi$$ExternalSyntheticLambda9(this, j, 1));
    }

    public final void showHideShadow(long j, boolean z) {
        PlayerBinding playerBinding = this.binding;
        View view = playerBinding.playbackControlsShadow;
        AnimationType animationType = AnimationType.ALPHA;
        AppKt.animate(view, z, j, animationType, 0L, null);
        AppKt.animate(playerBinding.playerTopShadow, z, j, animationType, 0L, null);
        AppKt.animate(playerBinding.playerBottomShadow, z, j, animationType, 0L, null);
    }

    public void showOrHideButtons() {
        PlayQueue playQueue = this.player.playQueue;
        if (playQueue == null) {
            return;
        }
        boolean z = playQueue.getIndex() != 0;
        boolean z2 = playQueue.getIndex() + 1 != playQueue.getStreams().size();
        PlayerBinding playerBinding = this.binding;
        AppCompatImageButton appCompatImageButton = playerBinding.playPreviousButton;
        AppCompatImageButton appCompatImageButton2 = playerBinding.playNextButton;
        appCompatImageButton.setVisibility(z ? 0 : 4);
        playerBinding.playPreviousButton.setAlpha(z ? 1.0f : 0.0f);
        appCompatImageButton2.setVisibility(z2 ? 0 : 4);
        appCompatImageButton2.setAlpha(z2 ? 1.0f : 0.0f);
    }

    public final void updateEndScreenThumbnail(Bitmap bitmap) {
        PlayerBinding playerBinding = this.binding;
        if (bitmap == null) {
            playerBinding.endScreen.setImageDrawable(null);
            return;
        }
        float calculateMaxEndScreenThumbnailHeight = calculateMaxEndScreenThumbnailHeight(bitmap);
        Bitmap createScaledBitmap = UStringsKt.createScaledBitmap(bitmap, (int) (bitmap.getWidth() / (bitmap.getHeight() / calculateMaxEndScreenThumbnailHeight)), (int) calculateMaxEndScreenThumbnailHeight);
        int i = MainActivity.$r8$clinit;
        playerBinding.endScreen.setImageBitmap(createScaledBitmap);
    }

    public final void updatePlayPauseButton(int i) {
        AppCompatImageButton appCompatImageButton = this.binding.playPauseButton;
        int ordinal = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(i);
        PlayerService playerService = this.context;
        if (ordinal == 0) {
            appCompatImageButton.setContentDescription(playerService.getString(R.string.play));
            appCompatImageButton.setImageResource(R.drawable.ic_play_arrow);
        } else if (ordinal == 1) {
            appCompatImageButton.setContentDescription(playerService.getString(R.string.pause));
            appCompatImageButton.setImageResource(R.drawable.ic_pause);
        } else {
            if (ordinal != 2) {
                return;
            }
            appCompatImageButton.setContentDescription(playerService.getString(R.string.replay));
            appCompatImageButton.setImageResource(R.drawable.ic_replay);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: org.schabi.newpipe.player.ui.VideoPlayerUi$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements Subscriber, Consumer, OnClickGesture, Function, PlayQueueItemBuilder.OnSelectedListener, Observer {
        public final /* synthetic */ int $r8$classId;
        public Object this$0;

        public AnonymousClass1(final Context context, final AddTabDialog$ChooseTabListItem[] addTabDialog$ChooseTabListItemArr, FeedFragment$$ExternalSyntheticLambda9 feedFragment$$ExternalSyntheticLambda9) {
            this.$r8$classId = 15;
            AlertDialog.Builder title = new AlertDialog.Builder(context).setTitle(context.getString(R.string.tab_choose));
            BaseAdapter baseAdapter = new BaseAdapter(context, addTabDialog$ChooseTabListItemArr) { // from class: org.schabi.newpipe.settings.tabs.AddTabDialog$DialogListAdapter
                public final int fallbackIcon = R.drawable.ic_whatshot;
                public final LayoutInflater inflater;
                public final AddTabDialog$ChooseTabListItem[] items;

                {
                    this.inflater = LayoutInflater.from(context);
                    this.items = addTabDialog$ChooseTabListItemArr;
                }

                @Override // android.widget.Adapter
                public final int getCount() {
                    return this.items.length;
                }

                @Override // android.widget.Adapter
                public final Object getItem(int i) {
                    return this.items[i];
                }

                @Override // android.widget.Adapter
                public final long getItemId(int i) {
                    return this.items[i].tabId;
                }

                @Override // android.widget.Adapter
                public final View getView(int i, View view, ViewGroup viewGroup) {
                    if (view == null) {
                        view = this.inflater.inflate(R.layout.list_choose_tabs_dialog, viewGroup, false);
                    }
                    AddTabDialog$ChooseTabListItem addTabDialog$ChooseTabListItem = this.items[i];
                    AppCompatImageView appCompatImageView = (AppCompatImageView) view.findViewById(R.id.tabIcon);
                    TextView textView = (TextView) view.findViewById(R.id.tabName);
                    int i2 = addTabDialog$ChooseTabListItem.itemIcon;
                    if (i2 <= 0) {
                        i2 = this.fallbackIcon;
                    }
                    appCompatImageView.setImageResource(i2);
                    textView.setText(addTabDialog$ChooseTabListItem.itemName);
                    return view;
                }
            };
            AlertController.AlertParams alertParams = title.P;
            alertParams.mAdapter = baseAdapter;
            alertParams.mOnClickListener = feedFragment$$ExternalSyntheticLambda9;
            this.this$0 = title.create();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public void accept(Object obj) {
            Object errorState;
            int andIncrement;
            long j;
            switch (this.$r8$classId) {
                case 3:
                    FeedViewModel.CombineResultDataHolder combineResultDataHolder = (FeedViewModel.CombineResultDataHolder) obj;
                    combineResultDataHolder.getClass();
                    FeedEventManager.Event event = combineResultDataHolder.t1;
                    List list = combineResultDataHolder.t2;
                    long j2 = combineResultDataHolder.t3;
                    OffsetDateTime offsetDateTime = combineResultDataHolder.t4;
                    MutableLiveData mutableLiveData = ((FeedViewModel) this.this$0).mutableStateLiveData;
                    if (!(event instanceof FeedEventManager.Event.IdleEvent)) {
                        if (!(event instanceof FeedEventManager.Event.ProgressEvent)) {
                            if (!(event instanceof FeedEventManager.Event.SuccessResultEvent)) {
                                if (!(event instanceof FeedEventManager.Event.ErrorResultEvent)) {
                                    DecodeUtils$$ExternalSyntheticBUOutline0.m();
                                    break;
                                } else {
                                    errorState = new FeedState.ErrorState(((FeedEventManager.Event.ErrorResultEvent) event).error);
                                }
                            } else {
                                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                                Iterator it = list.iterator();
                                while (it.hasNext()) {
                                    arrayList.add(new StreamItem((StreamWithState) it.next()));
                                }
                                errorState = new FeedState.LoadedState(arrayList, offsetDateTime, j2, ((FeedEventManager.Event.SuccessResultEvent) event).itemsErrors);
                            }
                        } else {
                            FeedEventManager.Event.ProgressEvent progressEvent = (FeedEventManager.Event.ProgressEvent) event;
                            errorState = new FeedState.ProgressState(progressEvent.currentProgress, progressEvent.maxProgress, progressEvent.progressMessage);
                        }
                    } else {
                        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                        Iterator it2 = list.iterator();
                        while (it2.hasNext()) {
                            arrayList2.add(new StreamItem((StreamWithState) it2.next()));
                        }
                        errorState = new FeedState.LoadedState(arrayList2, offsetDateTime, j2, EmptyList.INSTANCE);
                    }
                    mutableLiveData.postValue(errorState);
                    if ((event instanceof FeedEventManager.Event.ErrorResultEvent) || (event instanceof FeedEventManager.Event.SuccessResultEvent)) {
                        AtomicBoolean atomicBoolean = FeedEventManager.ignoreUpstream;
                        atomicBoolean.set(true);
                        FeedEventManager.processor.onNext(FeedEventManager.Event.IdleEvent.INSTANCE);
                        atomicBoolean.set(false);
                        break;
                    }
                    break;
                case 4:
                    SubscriptionEntity subscriptionEntity = (SubscriptionEntity) obj;
                    subscriptionEntity.getClass();
                    if (subscriptionEntity.serviceId == ServiceList.YouTube.serviceId && (andIncrement = ((AtomicInteger) this.this$0).getAndIncrement()) != 0 && andIncrement % 50 == 0) {
                        LongRange longRange = FeedLoadManager.DELAY_BETWEEN_BATCHES_MILLIS;
                        AbstractPlatformRandom abstractPlatformRandom = Random.defaultRandom;
                        longRange.getClass();
                        try {
                            AbstractPlatformRandom abstractPlatformRandom2 = Random.defaultRandom;
                            longRange.getClass();
                            long j3 = longRange.first;
                            long j4 = longRange.last;
                            if (j3 <= j4) {
                                j = j4 < Long.MAX_VALUE ? Random.defaultRandom.nextLong(j3, j4 + 1) : j3 > Long.MIN_VALUE ? Random.defaultRandom.nextLong(j3 - 1, j4) + 1 : Random.defaultRandom.nextLong();
                            } else {
                                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(longRange, "Cannot get random in empty range: ");
                                j = 0;
                            }
                            Thread.sleep(j);
                            break;
                        } catch (IllegalArgumentException e) {
                            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$2(e.getMessage());
                            return;
                        }
                    }
                    break;
                case 9:
                    ((List) obj).getClass();
                    ((PlayerService$$ExternalSyntheticLambda0) this.this$0).s("playlists");
                    break;
                case 10:
                    List list2 = (List) obj;
                    list2.getClass();
                    ((MediaBrowserServiceCompat.Result) this.this$0).sendResult(list2);
                    break;
                default:
                    List list3 = (List) obj;
                    list3.getClass();
                    ((MediaBrowserServiceCompat.AnonymousClass3) this.this$0).sendResult(list3);
                    break;
            }
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public Object apply(Object obj) {
            FeedGroupDialogViewModel.Filter filter = (FeedGroupDialogViewModel.Filter) obj;
            filter.getClass();
            String str = filter.query;
            boolean z = filter.showOnlyUngrouped;
            FeedGroupDialogViewModel feedGroupDialogViewModel = (FeedGroupDialogViewModel) this.this$0;
            SubscriptionManager subscriptionManager = feedGroupDialogViewModel.subscriptionManager;
            long j = feedGroupDialogViewModel.groupId;
            SubscriptionDAO_Impl subscriptionDAO_Impl = subscriptionManager.subscriptionTable;
            str.getClass();
            if (str.length() <= 0) {
                return z ? Cookie.Companion.createFlowable(subscriptionDAO_Impl.__db, false, new String[]{"subscriptions", "feed_group_subscription_join"}, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(j, 19)) : subscriptionDAO_Impl.getAll();
            }
            if (z) {
                subscriptionDAO_Impl.getClass();
                return Cookie.Companion.createFlowable(subscriptionDAO_Impl.__db, false, new String[]{"subscriptions", "feed_group_subscription_join"}, new WorkSpecDao_Impl$$ExternalSyntheticLambda12(j, str, 4));
            }
            subscriptionDAO_Impl.getClass();
            return Cookie.Companion.createFlowable(subscriptionDAO_Impl.__db, false, new String[]{"subscriptions"}, new StringsKt__IndentKt$$ExternalSyntheticLambda0(str, 24));
        }

        public PlayerHelper.Formatters formatters() {
            if (((PlayerHelper.Formatters) this.this$0) == null) {
                Locale appLocale = Localization.getAppLocale();
                DecimalFormatSymbols decimalFormatSymbols = DecimalFormatSymbols.getInstance(appLocale);
                this.this$0 = new PlayerHelper.Formatters(appLocale, new DecimalFormat("0.##x", decimalFormatSymbols), new DecimalFormat("##%", decimalFormatSymbols));
            }
            return (PlayerHelper.Formatters) this.this$0;
        }

        @Override // org.schabi.newpipe.util.OnClickGesture
        public void held(Object obj) {
            ChannelInfoItem channelInfoItem = (ChannelInfoItem) obj;
            channelInfoItem.getClass();
            SubscriptionFragment subscriptionFragment = (SubscriptionFragment) this.this$0;
            SubscriptionFragment.Companion companion = SubscriptionFragment.Companion;
            String[] strArr = {subscriptionFragment.getString(R.string.share), subscriptionFragment.getString(R.string.open_in_browser), subscriptionFragment.getString(R.string.unsubscribe)};
            SubscriptionFragment$$ExternalSyntheticLambda5 subscriptionFragment$$ExternalSyntheticLambda5 = new SubscriptionFragment$$ExternalSyntheticLambda5(subscriptionFragment, channelInfoItem, 0);
            View inflate = LayoutInflater.from(subscriptionFragment.requireContext()).inflate(R.layout.dialog_title, (ViewGroup) null, false);
            int i = R.id.itemAdditionalDetails;
            NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.itemAdditionalDetails, inflate);
            if (newPipeTextView != null) {
                RelativeLayout relativeLayout = (RelativeLayout) inflate;
                NewPipeTextView newPipeTextView2 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.itemTitleView, inflate);
                if (newPipeTextView2 != null) {
                    relativeLayout.setSelected(true);
                    newPipeTextView2.setText(channelInfoItem.getName());
                    newPipeTextView.setVisibility(8);
                    AlertDialog.Builder builder = new AlertDialog.Builder(subscriptionFragment.requireContext());
                    AlertController.AlertParams alertParams = builder.P;
                    alertParams.mCustomTitleView = relativeLayout;
                    alertParams.mItems = strArr;
                    alertParams.mOnClickListener = subscriptionFragment$$ExternalSyntheticLambda5;
                    builder.show();
                    return;
                }
                i = R.id.itemTitleView;
            }
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            int i = this.$r8$classId;
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            switch (this.$r8$classId) {
                case 1:
                    ((PlaylistFragment) this.this$0).showError(new ErrorInfo(th, UserAction.REQUESTED_BOOKMARK, "Get playlist bookmarks"));
                    break;
                case 12:
                    break;
                case 13:
                    ErrorUtil.showUiErrorSnackbar((SelectChannelFragment) this.this$0, "Loading subscription", th);
                    break;
                default:
                    ErrorUtil.showUiErrorSnackbar((SelectFeedGroupFragment) this.this$0, "Loading Feed Groups", th);
                    break;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:29:0x0081, code lost:
        
            if (r0 != 7) goto L47;
         */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0120  */
        @Override // org.reactivestreams.Subscriber
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onNext(java.lang.Object r13) {
            /*
                Method dump skipped, instructions count: 364
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.player.ui.VideoPlayerUi.AnonymousClass1.onNext(java.lang.Object):void");
        }

        @Override // org.schabi.newpipe.player.playqueue.PlayQueueItemBuilder.OnSelectedListener
        public void onStartDrag(PlayQueueItemHolder playQueueItemHolder) {
            ItemTouchHelper itemTouchHelper = ((PlayQueueActivity) this.this$0).itemTouchHelper;
            if (itemTouchHelper != null) {
                itemTouchHelper.startDrag(playQueueItemHolder);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            switch (this.$r8$classId) {
                case 1:
                    PlaylistFragment playlistFragment = (PlaylistFragment) this.this$0;
                    Subscription subscription2 = playlistFragment.bookmarkReactor;
                    if (subscription2 != null) {
                        subscription2.cancel();
                    }
                    playlistFragment.bookmarkReactor = subscription;
                    subscription.request(1L);
                    break;
                default:
                    MediaSourceManager mediaSourceManager = (MediaSourceManager) this.this$0;
                    mediaSourceManager.playQueueReactor.cancel();
                    mediaSourceManager.playQueueReactor = subscription;
                    subscription.request(1L);
                    break;
            }
        }

        @Override // org.schabi.newpipe.util.OnClickGesture
        public void selected(Object obj) {
            ChannelInfoItem channelInfoItem = (ChannelInfoItem) obj;
            channelInfoItem.getClass();
            SubscriptionFragment subscriptionFragment = (SubscriptionFragment) this.this$0;
            SubscriptionFragment.Companion companion = SubscriptionFragment.Companion;
            SQLite.openChannelFragment(subscriptionFragment.getFM(), channelInfoItem.getServiceId(), channelInfoItem.getUrl(), channelInfoItem.getName());
        }

        private final void onComplete$org$schabi$newpipe$fragments$list$playlist$PlaylistFragment$1() {
        }

        private final void onComplete$org$schabi$newpipe$player$playback$MediaSourceManager$1() {
        }

        private final void onComplete$org$schabi$newpipe$settings$SelectChannelFragment$1() {
        }

        private final void onComplete$org$schabi$newpipe$settings$SelectFeedGroupFragment$1() {
        }

        private final void onError$org$schabi$newpipe$player$playback$MediaSourceManager$1(Throwable th) {
        }

        private final void onSubscribe$org$schabi$newpipe$settings$SelectChannelFragment$1(Disposable disposable) {
        }

        private final void onSubscribe$org$schabi$newpipe$settings$SelectFeedGroupFragment$1(Disposable disposable) {
        }

        @Override // org.schabi.newpipe.player.playqueue.PlayQueueItemBuilder.OnSelectedListener
        public void selected(PlayQueueItem playQueueItem) {
            Player player = ((PlayQueueActivity) this.this$0).player;
            if (player != null) {
                player.selectQueueItem(playQueueItem);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable disposable) {
            int i = this.$r8$classId;
        }

        public /* synthetic */ AnonymousClass1(Object obj, int i) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // org.schabi.newpipe.util.OnClickGesture
        public /* synthetic */ void drag(Object obj, RecyclerView.ViewHolder viewHolder) {
        }

        public /* synthetic */ AnonymousClass1(int i) {
            this.$r8$classId = i;
        }

        @Override // org.schabi.newpipe.player.playqueue.PlayQueueItemBuilder.OnSelectedListener
        public void held(PlayQueueItem playQueueItem, View view) {
            PlayQueueActivity playQueueActivity = (PlayQueueActivity) this.this$0;
            Player player = playQueueActivity.player;
            if (player == null || player.playQueue.indexOf(playQueueItem) == -1) {
                return;
            }
            Options.Companion.openPopupMenu(playQueueActivity.player.playQueue, playQueueItem, view, false, playQueueActivity.getSupportFragmentManager(), playQueueActivity);
        }
    }

    public void hideSystemUIIfNeeded() {
    }

    public void showSystemUIPartially() {
    }
}
