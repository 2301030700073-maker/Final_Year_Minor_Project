package org.schabi.newpipe.fragments.detail;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.compose.ui.node.Owner;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.os.BundleKt;
import androidx.core.view.ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.preference.PreferenceManager;
import androidx.sqlite.SQLite;
import androidx.viewpager.widget.ViewPager;
import androidx.work.impl.WorkerWrapper$launch$1$$ExternalSyntheticLambda0;
import coil3.decode.StaticImageDecoderKt;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.util.Log;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.ViewOffsetHelper;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.tabs.TabLayout;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.BlockingMultiObserver;
import io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableElementAtMaybe;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableMapPublisher;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeCallbackObserver;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeEmpty;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeFromCallable;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeFromSingle$FromSingleObserver;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeMap;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeObserveOn;
import io.reactivex.rxjava3.internal.operators.maybe.MaybePeek;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.internal.schedulers.IoScheduler;
import io.reactivex.rxjava3.internal.subscribers.LambdaSubscriber;
import io.reactivex.rxjava3.schedulers.Schedulers;
import j$.time.OffsetDateTime;
import j$.time.ZoneOffset;
import j$.util.Collection;
import j$.util.Objects;
import j$.util.Optional;
import j$.util.function.Consumer$CC;
import j$.util.function.Function$CC;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.function.Function;
import kotlinx.coroutines.rx3.RxConvertKt$$ExternalSyntheticLambda0;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Okio;
import okio.Options;
import org.jsoup.parser.TagSet$$ExternalSyntheticLambda1;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.stream.dao.StreamStateDAO_Impl;
import org.schabi.newpipe.databinding.ErrorPanelBinding;
import org.schabi.newpipe.databinding.FragmentVideoDetailBinding;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.download.DownloadDialog;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ContentNotSupportedException;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.Stream;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticLambda1;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticLambda2;
import org.schabi.newpipe.fragments.BackPressable;
import org.schabi.newpipe.fragments.BaseStateFragment;
import org.schabi.newpipe.fragments.EmptyFragment;
import org.schabi.newpipe.fragments.list.comments.CommentsFragment;
import org.schabi.newpipe.fragments.list.videos.RelatedItemsFragment;
import org.schabi.newpipe.ktx.AnimationType;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda9;
import org.schabi.newpipe.local.feed.FeedViewModel$$ExternalSyntheticLambda0;
import org.schabi.newpipe.local.history.HistoryRecordManager$$ExternalSyntheticLambda9;
import org.schabi.newpipe.local.holder.PlaylistItemHolder$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.PlayQueueActivity;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda3;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.PlayerType;
import org.schabi.newpipe.player.event.OnKeyDownListener;
import org.schabi.newpipe.player.event.PlayerServiceExtendedEventListener;
import org.schabi.newpipe.player.helper.PlayerHelper;
import org.schabi.newpipe.player.helper.PlayerHolder;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;
import org.schabi.newpipe.player.playqueue.SinglePlayQueue;
import org.schabi.newpipe.player.ui.MainPlayerUi;
import org.schabi.newpipe.player.ui.VideoPlayerUi;
import org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda42;
import org.schabi.newpipe.util.DeviceUtils;
import org.schabi.newpipe.util.ExtractorHelper;
import org.schabi.newpipe.util.ExtractorHelper$$ExternalSyntheticLambda0;
import org.schabi.newpipe.util.ListHelper;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.util.image.ImageStrategy;
import org.schabi.newpipe.views.AnimatedProgressBar;
import org.schabi.newpipe.views.ExpandableSurfaceView;
import org.schabi.newpipe.views.NewPipeTextView;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class VideoDetailFragment extends BaseStateFragment<StreamInfo> implements BackPressable, PlayerServiceExtendedEventListener, OnKeyDownListener {
    public static LinkedList stack = new LinkedList();
    public FragmentVideoDetailBinding binding;
    public BottomSheetBehavior bottomSheetBehavior;
    public AnonymousClass4 bottomSheetCallback;
    public MainActivity.AnonymousClass3 broadcastReceiver;
    public ConsumerSingleObserver currentWorker;
    public TabAdapter pageAdapter;
    public Player player;
    public PlayerService playerService;
    public String selectedTabTag;
    public MainPlayerUi.AnonymousClass1 settingsContentObserver;
    public boolean showComments;
    public boolean showDescription;
    public boolean showRelatedItems;
    public final ArrayList tabIcons = new ArrayList();
    public final ArrayList tabContentDescriptions = new ArrayList();
    public boolean tabSettingsChanged = false;
    public int lastAppBarVerticalOffset = Log.LOG_LEVEL_OFF;
    public final VideoDetailFragment$$ExternalSyntheticLambda4 preferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: org.schabi.newpipe.fragments.detail.VideoDetailFragment$$ExternalSyntheticLambda4
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            LinkedList linkedList = VideoDetailFragment.stack;
            VideoDetailFragment videoDetailFragment = VideoDetailFragment.this;
            if (videoDetailFragment.getString(R.string.show_comments_key).equals(str)) {
                videoDetailFragment.showComments = sharedPreferences.getBoolean(str, true);
                videoDetailFragment.tabSettingsChanged = true;
            } else if (videoDetailFragment.getString(R.string.show_next_video_key).equals(str)) {
                videoDetailFragment.showRelatedItems = sharedPreferences.getBoolean(str, true);
                videoDetailFragment.tabSettingsChanged = true;
            } else if (videoDetailFragment.getString(R.string.show_description_key).equals(str)) {
                videoDetailFragment.showDescription = sharedPreferences.getBoolean(str, true);
                videoDetailFragment.tabSettingsChanged = true;
            }
        }
    };
    protected int serviceId = -1;
    protected String title = "";
    protected String url = null;
    public PlayQueue playQueue = null;
    int bottomSheetState = 3;
    int lastStableBottomSheetState = 3;
    protected boolean autoPlayEnabled = true;
    public boolean forceFullscreen = false;
    public StreamInfo currentInfo = null;
    public final CompositeDisposable disposables = new CompositeDisposable();
    public MaybeCallbackObserver positionSubscriber = null;
    public final PlayerHolder playerHolder = PlayerHolder.getInstance();
    public final AnonymousClass2 preDrawListener = new AnonymousClass2(this, 0);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: org.schabi.newpipe.fragments.detail.VideoDetailFragment$2, reason: invalid class name */
    public final class AnonymousClass2 implements ViewTreeObserver.OnPreDrawListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass2(Object obj, int i) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    VideoDetailFragment videoDetailFragment = (VideoDetailFragment) obj;
                    DisplayMetrics displayMetrics = videoDetailFragment.getResources().getDisplayMetrics();
                    if (videoDetailFragment.getView() != null) {
                        videoDetailFragment.setHeightThumbnail((DeviceUtils.isInMultiWindow(videoDetailFragment.activity) ? videoDetailFragment.requireView() : videoDetailFragment.activity.getWindow().getDecorView()).getHeight(), displayMetrics);
                        videoDetailFragment.getView().getViewTreeObserver().removeOnPreDrawListener(videoDetailFragment.preDrawListener);
                    }
                    return false;
                default:
                    ((CoordinatorLayout) obj).onChildViewsChanged(0);
                    return true;
            }
        }
    }

    /* renamed from: -$$Nest$mmoveFocusToMainFragment, reason: not valid java name */
    public static void m867$$Nest$mmoveFocusToMainFragment(VideoDetailFragment videoDetailFragment, boolean z) {
        videoDetailFragment.setupBrightness();
        ViewGroup viewGroup = (ViewGroup) videoDetailFragment.requireActivity().findViewById(R.id.fragment_holder);
        Toolbar toolbar = (Toolbar) videoDetailFragment.requireActivity().findViewById(R.id.toolbar);
        if (!z) {
            viewGroup.setDescendantFocusability(393216);
            toolbar.setDescendantFocusability(393216);
            ((ViewGroup) videoDetailFragment.requireView()).setDescendantFocusability(262144);
            if (videoDetailFragment.binding.rootView.hasFocus()) {
                return;
            }
            videoDetailFragment.binding.detailThumbnailRootLayout.requestFocus();
            return;
        }
        viewGroup.setDescendantFocusability(262144);
        toolbar.setDescendantFocusability(262144);
        ((ViewGroup) videoDetailFragment.requireView()).setDescendantFocusability(393216);
        if (viewGroup.hasFocus() || toolbar.hasFocus()) {
            return;
        }
        viewGroup.requestFocus();
    }

    /* renamed from: -$$Nest$msetOverlayLook, reason: not valid java name */
    public static void m868$$Nest$msetOverlayLook(VideoDetailFragment videoDetailFragment, AppBarLayout appBarLayout, AppBarLayout.Behavior behavior, float f) {
        if (behavior == null || f < 0.0f) {
            return;
        }
        float f2 = 1.0f - f;
        videoDetailFragment.binding.overlayLayout.setAlpha(Math.min(0.9f, f2));
        int i = (int) ((((-videoDetailFragment.binding.detailThumbnailImageView.getHeight()) * 2) * f2) / 3.0f);
        ViewOffsetHelper viewOffsetHelper = behavior.viewOffsetHelper;
        if (viewOffsetHelper != null) {
            viewOffsetHelper.setTopAndBottomOffset(i);
        } else {
            behavior.tempTopBottomOffset = i;
        }
        appBarLayout.requestLayout();
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public final void doInitialLoadLogic() {
        if (this.url == null) {
            return;
        }
        StreamInfo streamInfo = this.currentInfo;
        boolean z = false;
        if (streamInfo != null) {
            new Handler(Looper.getMainLooper()).postDelayed(new VideoDetailFragment$$ExternalSyntheticLambda1(this, streamInfo, z), 50L);
            return;
        }
        this.binding.appBarLayout.setExpanded(true, true, true);
        updateTabLayoutVisibility();
        startLoading(false);
    }

    public final String getUrl() {
        return this.url;
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public final void handleError() {
        super.handleError();
        FragmentVideoDetailBinding fragmentVideoDetailBinding = this.binding;
        int i = 4;
        if (fragmentVideoDetailBinding != null && this.activity != null) {
            fragmentVideoDetailBinding.detailThumbnailImageView.setImageDrawable(Cookie.Companion.getDrawable(requireContext(), R.drawable.not_available_monkey));
            AppKt.animate(this.binding.detailThumbnailImageView, false, 0L, AnimationType.ALPHA, 0L, new VideoDetailFragment$$ExternalSyntheticLambda0(this, i));
        }
        FragmentContainerView fragmentContainerView = this.binding.relatedItemsLayout;
        if (fragmentContainerView != null) {
            fragmentContainerView.setVisibility(4);
        }
        this.binding.viewPager.setVisibility(8);
        this.binding.tabLayout.setVisibility(8);
    }

    public final void handleResult(StreamInfo streamInfo) {
        long j;
        hideLoading();
        this.currentInfo = streamInfo;
        setInitialData(streamInfo.getServiceId(), streamInfo.getOriginalUrl(), streamInfo.getName(), this.playQueue);
        updateTabs(streamInfo);
        AppKt.animate$default(this.binding.detailThumbnailPlayButton, true, 200L, null, 0L, null, 28);
        this.binding.detailVideoTitleView.setText(this.title);
        this.binding.detailSubChannelThumbnailView.setVisibility(8);
        boolean isEmpty = TextUtils.isEmpty(streamInfo.getSubChannelName());
        FragmentVideoDetailBinding fragmentVideoDetailBinding = this.binding;
        int i = 1;
        if (isEmpty) {
            fragmentVideoDetailBinding.detailSubChannelTextView.setText(streamInfo.getUploaderName());
            this.binding.detailSubChannelTextView.setVisibility(0);
            this.binding.detailSubChannelTextView.setSelected(true);
            long uploaderSubscriberCount = streamInfo.getUploaderSubscriberCount();
            FragmentVideoDetailBinding fragmentVideoDetailBinding2 = this.binding;
            if (uploaderSubscriberCount > -1) {
                fragmentVideoDetailBinding2.detailUploaderTextView.setText(Localization.shortSubscriberCount(this.activity, streamInfo.getUploaderSubscriberCount()));
                this.binding.detailUploaderTextView.setVisibility(0);
            } else {
                fragmentVideoDetailBinding2.detailUploaderTextView.setVisibility(8);
            }
            Cookie.Companion.loadAvatar(this.binding.detailSubChannelThumbnailView, streamInfo.getUploaderAvatars());
            this.binding.detailSubChannelThumbnailView.setVisibility(0);
            this.binding.detailUploaderThumbnailView.setVisibility(8);
        } else {
            fragmentVideoDetailBinding.detailSubChannelTextView.setText(streamInfo.getSubChannelName());
            this.binding.detailSubChannelTextView.setVisibility(0);
            this.binding.detailSubChannelTextView.setSelected(true);
            StringBuilder sb = new StringBuilder();
            if (!TextUtils.isEmpty(streamInfo.getUploaderName())) {
                sb.append(String.format(getString(R.string.video_detail_by), streamInfo.getUploaderName()));
            }
            if (streamInfo.getUploaderSubscriberCount() > -1) {
                if (sb.length() > 0) {
                    sb.append(" • ");
                }
                sb.append(Localization.shortSubscriberCount(this.activity, streamInfo.getUploaderSubscriberCount()));
            }
            int length = sb.length();
            FragmentVideoDetailBinding fragmentVideoDetailBinding3 = this.binding;
            if (length > 0) {
                fragmentVideoDetailBinding3.detailUploaderTextView.setText(sb);
                this.binding.detailUploaderTextView.setVisibility(0);
                this.binding.detailUploaderTextView.setSelected(true);
            } else {
                fragmentVideoDetailBinding3.detailUploaderTextView.setVisibility(8);
            }
            Cookie.Companion.loadAvatar(this.binding.detailSubChannelThumbnailView, streamInfo.getSubChannelAvatars());
            this.binding.detailSubChannelThumbnailView.setVisibility(0);
            Cookie.Companion.loadAvatar(this.binding.detailUploaderThumbnailView, streamInfo.getUploaderAvatars());
            this.binding.detailUploaderThumbnailView.setVisibility(0);
        }
        long viewCount = streamInfo.getViewCount();
        StreamType streamType = StreamType.LIVE_STREAM;
        if (viewCount >= 0) {
            if (streamInfo.getStreamType().equals(StreamType.AUDIO_LIVE_STREAM)) {
                NewPipeTextView newPipeTextView = this.binding.detailViewCountView;
                AppCompatActivity appCompatActivity = this.activity;
                long viewCount2 = streamInfo.getViewCount();
                newPipeTextView.setText(Localization.getQuantity(appCompatActivity, R.plurals.listening, R.string.no_one_listening, viewCount2, Localization.shortCount(appCompatActivity, viewCount2)));
                j = -1;
            } else {
                boolean equals = streamInfo.getStreamType().equals(streamType);
                FragmentVideoDetailBinding fragmentVideoDetailBinding4 = this.binding;
                if (equals) {
                    NewPipeTextView newPipeTextView2 = fragmentVideoDetailBinding4.detailViewCountView;
                    AppCompatActivity appCompatActivity2 = this.activity;
                    long viewCount3 = streamInfo.getViewCount();
                    j = -1;
                    newPipeTextView2.setText(Localization.getQuantity(appCompatActivity2, R.plurals.watching, R.string.no_one_watching, viewCount3, Localization.localizeNumber(viewCount3)));
                } else {
                    j = -1;
                    NewPipeTextView newPipeTextView3 = fragmentVideoDetailBinding4.detailViewCountView;
                    AppCompatActivity appCompatActivity3 = this.activity;
                    long viewCount4 = streamInfo.getViewCount();
                    newPipeTextView3.setText(Localization.getQuantity(appCompatActivity3, R.plurals.views, R.string.no_views, viewCount4, Localization.localizeNumber(viewCount4)));
                }
            }
            this.binding.detailViewCountView.setVisibility(0);
        } else {
            j = -1;
            this.binding.detailViewCountView.setVisibility(8);
        }
        if (streamInfo.getDislikeCount() == j && streamInfo.getLikeCount() == j) {
            this.binding.detailThumbsDownImgView.setVisibility(0);
            this.binding.detailThumbsUpImgView.setVisibility(0);
            this.binding.detailThumbsUpCountView.setVisibility(8);
            this.binding.detailThumbsDownCountView.setVisibility(8);
            this.binding.detailThumbsDisabledView.setVisibility(0);
        } else {
            long dislikeCount = streamInfo.getDislikeCount();
            FragmentVideoDetailBinding fragmentVideoDetailBinding5 = this.binding;
            if (dislikeCount >= 0) {
                fragmentVideoDetailBinding5.detailThumbsDownCountView.setText(Localization.shortCount(this.activity, streamInfo.getDislikeCount()));
                this.binding.detailThumbsDownCountView.setVisibility(0);
                this.binding.detailThumbsDownImgView.setVisibility(0);
            } else {
                fragmentVideoDetailBinding5.detailThumbsDownCountView.setVisibility(8);
                this.binding.detailThumbsDownImgView.setVisibility(8);
            }
            long likeCount = streamInfo.getLikeCount();
            FragmentVideoDetailBinding fragmentVideoDetailBinding6 = this.binding;
            if (likeCount >= 0) {
                fragmentVideoDetailBinding6.detailThumbsUpCountView.setText(Localization.shortCount(this.activity, streamInfo.getLikeCount()));
                this.binding.detailThumbsUpCountView.setVisibility(0);
                this.binding.detailThumbsUpImgView.setVisibility(0);
            } else {
                fragmentVideoDetailBinding6.detailThumbsUpCountView.setVisibility(8);
                this.binding.detailThumbsUpImgView.setVisibility(8);
            }
            this.binding.detailThumbsDisabledView.setVisibility(8);
        }
        long duration = streamInfo.getDuration();
        FragmentVideoDetailBinding fragmentVideoDetailBinding7 = this.binding;
        if (duration > 0) {
            fragmentVideoDetailBinding7.detailDurationView.setText(Localization.getDurationString(streamInfo.getDuration()));
            this.binding.detailDurationView.setBackgroundColor(this.activity.getColor(R.color.duration_background_color));
            AppKt.animate$default(this.binding.detailDurationView, true, 100L, null, 0L, null, 28);
        } else if (streamInfo.getStreamType() == streamType) {
            fragmentVideoDetailBinding7.detailDurationView.setText(R.string.duration_live);
            this.binding.detailDurationView.setBackgroundColor(this.activity.getColor(R.color.live_duration_background_color));
            AppKt.animate$default(this.binding.detailDurationView, true, 100L, null, 0L, null, 28);
        } else {
            fragmentVideoDetailBinding7.detailDurationView.setVisibility(8);
        }
        this.binding.detailTitleRootLayout.setClickable(true);
        this.binding.detailToggleSecondaryControlsView.setRotation(0.0f);
        this.binding.detailToggleSecondaryControlsView.setVisibility(0);
        this.binding.detailSecondaryControlPanel.setVisibility(8);
        MaybeCallbackObserver maybeCallbackObserver = this.positionSubscriber;
        if (maybeCallbackObserver != null) {
            DisposableHelper.dispose(maybeCallbackObserver);
        }
        if (BundleKt.getResumePlaybackEnabled(this.activity)) {
            PlaylistHeaderBinding playlistHeaderBinding = new PlaylistHeaderBinding(requireContext());
            SingleAmb singleAmb = new SingleAmb(new WorkerWrapper$launch$1$$ExternalSyntheticLambda0(playlistHeaderBinding, streamInfo, 5), 3);
            StreamStateDAO_Impl streamStateDAO_Impl = (StreamStateDAO_Impl) playlistHeaderBinding.playlistStreamCount;
            Objects.requireNonNull(streamStateDAO_Impl);
            MaybePeek maybePeek = new MaybePeek(new MaybeMap(new FlowableElementAtMaybe(new FlowableMapPublisher(singleAmb, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(streamStateDAO_Impl, 18), 2)), new FeedViewModel$$ExternalSyntheticLambda0(12), i), new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(streamInfo, 16), i);
            IoScheduler ioScheduler = Schedulers.IO;
            MaybeObserveOn subscribeOn = maybePeek.subscribeOn(ioScheduler).subscribeOn(ioScheduler);
            Scheduler mainThread = AndroidSchedulers.mainThread();
            MaybeCallbackObserver maybeCallbackObserver2 = new MaybeCallbackObserver(new RxConvertKt$$ExternalSyntheticLambda0(this, streamInfo, 20), new Utils$$ExternalSyntheticBUOutline0(13), new VideoDetailFragment$$ExternalSyntheticLambda9(this, i));
            try {
                try {
                    subscribeOn.subscribe(new MaybeFromSingle$FromSingleObserver(new MaybeObserveOn.ObserveOnMaybeObserver(maybeCallbackObserver2, mainThread), i));
                    this.positionSubscriber = maybeCallbackObserver2;
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
        } else {
            this.binding.positionView.setVisibility(8);
            this.binding.detailPositionView.setVisibility(8);
        }
        ImageView imageView = this.binding.detailThumbnailImageView;
        List thumbnails = streamInfo.getThumbnails();
        thumbnails.getClass();
        Cookie.Companion.loadImageDefault(imageView, ImageStrategy.choosePreferredImage(thumbnails), R.drawable.placeholder_thumbnail_video, false);
        List metaInfo = streamInfo.getMetaInfo();
        FragmentVideoDetailBinding fragmentVideoDetailBinding8 = this.binding;
        ExtractorHelper.showMetaInfoInTextView(metaInfo, fragmentVideoDetailBinding8.detailMetaInfoTextView, fragmentVideoDetailBinding8.detailMetaInfoSeparator, this.disposables);
        if (!isPlayerAvailable() || this.player.isStopped()) {
            updateOverlayData(streamInfo.getName(), streamInfo.getUploaderName(), streamInfo.getThumbnails());
        }
        if (!streamInfo.getErrors().isEmpty()) {
            for (Throwable th3 : streamInfo.getErrors()) {
                if ((th3 instanceof ContentNotSupportedException) && "Fan pages are not supported".equals(th3.getMessage())) {
                    streamInfo.getErrors().remove(th3);
                }
            }
            if (!streamInfo.getErrors().isEmpty()) {
                showSnackBarError(new ErrorInfo(streamInfo.getErrors(), UserAction.REQUESTED_STREAM, "Some info not extracted: " + streamInfo.getUrl(), streamInfo));
            }
        }
        this.binding.detailControlsDownload.setVisibility(Okio.isLiveStream(streamInfo.getStreamType()) ? 8 : 0);
        this.binding.detailControlsBackground.setVisibility((streamInfo.getAudioStreams().isEmpty() && streamInfo.getVideoStreams().isEmpty()) ? 8 : 0);
        boolean z = streamInfo.getVideoStreams().isEmpty() && streamInfo.getVideoOnlyStreams().isEmpty();
        this.binding.detailControlsPopup.setVisibility(z ? 8 : 0);
        this.binding.detailThumbnailPlayButton.setImageResource(z ? R.drawable.ic_headset_shadow : R.drawable.ic_play_arrow_shadow);
    }

    public final void hideMainPlayerOnLoadingNewStream() {
        Optional map = Optional.ofNullable(this.player).flatMap(new Utils$$ExternalSyntheticLambda1(21)).map(new Utils$$ExternalSyntheticLambda1(22));
        if (this.playerService == null || map.isEmpty() || !this.player.videoPlayerSelected()) {
            return;
        }
        if (getView() != null) {
            this.binding.playerPlaceholder.getLayoutParams().height = -1;
            this.binding.playerPlaceholder.requestLayout();
        }
        Player player = this.player;
        if (player != null) {
            player.UIs.get(VideoPlayerUi.class).ifPresent(new TagSet$$ExternalSyntheticLambda1(15));
        }
        if (!isAutoplayEnabled()) {
            this.playerHolder.stopService();
            return;
        }
        PlayerService playerService = this.playerService;
        Player player2 = playerService.player;
        if (player2 != null && !player2.exoPlayerIsNull()) {
            Player player3 = playerService.player;
            player3.simpleExoPlayer.stop();
            player3.setRecovery();
            player3.UIs.call(new Player$$ExternalSyntheticLambda3(3));
        }
        map.ifPresent(new TagSet$$ExternalSyntheticLambda1(17));
    }

    @Override // org.schabi.newpipe.player.event.PlayerServiceEventListener
    public final void hideSystemUiIfNeeded() {
        AppCompatActivity appCompatActivity;
        if (isFullscreen() && this.bottomSheetBehavior.state == 3 && (appCompatActivity = this.activity) != null) {
            if (Build.VERSION.SDK_INT >= 28) {
                appCompatActivity.getWindow().getAttributes().layoutInDisplayCutoutMode = 1;
            }
            boolean isInMultiWindow = DeviceUtils.isInMultiWindow(this.activity);
            this.activity.getWindow().getDecorView().setSystemUiVisibility(!isInMultiWindow ? 5894 : 5890);
            if (isInMultiWindow || isFullscreen()) {
                this.activity.getWindow().setStatusBarColor(0);
                this.activity.getWindow().setNavigationBarColor(0);
            }
            this.activity.getWindow().clearFlags(1024);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object, org.schabi.newpipe.fragments.detail.VideoDetailFragment$4] */
    @Override // org.schabi.newpipe.BaseFragment
    public final void initListeners() {
        final int i = 0;
        this.binding.rootView.setOnClickListener(new VideoDetailFragment$$ExternalSyntheticLambda10(0));
        this.binding.rootView.setOnLongClickListener(new VideoDetailFragment$$ExternalSyntheticLambda11());
        final int i2 = 2;
        this.binding.detailTitleRootLayout.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.fragments.detail.VideoDetailFragment$$ExternalSyntheticLambda34
            public final /* synthetic */ VideoDetailFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i3 = i2;
                VideoDetailFragment videoDetailFragment = this.f$0;
                switch (i3) {
                    case 0:
                        LinkedList linkedList = VideoDetailFragment.stack;
                        if (!videoDetailFragment.isPlayerAvailable() || videoDetailFragment.player.isStopped()) {
                            videoDetailFragment.autoPlayEnabled = true;
                            videoDetailFragment.openVideoPlayer(false);
                        } else {
                            videoDetailFragment.player.playPause();
                            videoDetailFragment.player.UIs.get(VideoPlayerUi.class).ifPresent(new TagSet$$ExternalSyntheticLambda1(19));
                            videoDetailFragment.showSystemUi();
                        }
                        videoDetailFragment.binding.overlayPlayPauseButton.setImageResource((videoDetailFragment.isPlayerAvailable() && videoDetailFragment.player.isPlaying()) ? R.drawable.ic_pause : R.drawable.ic_play_arrow);
                        break;
                    case 1:
                        videoDetailFragment.autoPlayEnabled = true;
                        if (videoDetailFragment.isPlayerAvailable()) {
                            videoDetailFragment.player.setRecovery();
                        }
                        videoDetailFragment.openVideoPlayerAutoFullscreen();
                        break;
                    case 2:
                        int visibility = videoDetailFragment.binding.detailSecondaryControlPanel.getVisibility();
                        FragmentVideoDetailBinding fragmentVideoDetailBinding = videoDetailFragment.binding;
                        if (visibility == 8) {
                            fragmentVideoDetailBinding.detailVideoTitleView.setMaxLines(10);
                            AppKt.animateRotation(180, videoDetailFragment.binding.detailToggleSecondaryControlsView);
                            videoDetailFragment.binding.detailSecondaryControlPanel.setVisibility(0);
                        } else {
                            fragmentVideoDetailBinding.detailVideoTitleView.setMaxLines(1);
                            AppKt.animateRotation(0, videoDetailFragment.binding.detailToggleSecondaryControlsView);
                            videoDetailFragment.binding.detailSecondaryControlPanel.setVisibility(8);
                        }
                        videoDetailFragment.updateTabLayoutVisibility();
                        break;
                    case 3:
                        videoDetailFragment.bottomSheetBehavior.setState(3);
                        break;
                    case 4:
                        videoDetailFragment.bottomSheetBehavior.setState(5);
                        break;
                    case 5:
                        LinkedList linkedList2 = VideoDetailFragment.stack;
                        Context requireContext = videoDetailFragment.requireContext();
                        requireContext.startActivity(new Intent(requireContext, (Class<?>) PlayQueueActivity.class));
                        break;
                    case 6:
                        LinkedList linkedList3 = VideoDetailFragment.stack;
                        videoDetailFragment.openBackgroundPlayer(false);
                        break;
                    case 7:
                        LinkedList linkedList4 = VideoDetailFragment.stack;
                        videoDetailFragment.openPopupPlayer(false);
                        break;
                    default:
                        LinkedList linkedList5 = VideoDetailFragment.stack;
                        if (Utility.checkStoragePermissions(videoDetailFragment.activity, 778)) {
                            videoDetailFragment.openDownloadDialog();
                            break;
                        }
                        break;
                }
            }
        });
        final int i3 = 6;
        final int i4 = 3;
        this.binding.detailUploaderRootLayout.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, new VideoDetailFragment$$ExternalSyntheticLambda22(this, i3), i4));
        final int i5 = 1;
        this.binding.detailThumbnailRootLayout.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.fragments.detail.VideoDetailFragment$$ExternalSyntheticLambda34
            public final /* synthetic */ VideoDetailFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i32 = i5;
                VideoDetailFragment videoDetailFragment = this.f$0;
                switch (i32) {
                    case 0:
                        LinkedList linkedList = VideoDetailFragment.stack;
                        if (!videoDetailFragment.isPlayerAvailable() || videoDetailFragment.player.isStopped()) {
                            videoDetailFragment.autoPlayEnabled = true;
                            videoDetailFragment.openVideoPlayer(false);
                        } else {
                            videoDetailFragment.player.playPause();
                            videoDetailFragment.player.UIs.get(VideoPlayerUi.class).ifPresent(new TagSet$$ExternalSyntheticLambda1(19));
                            videoDetailFragment.showSystemUi();
                        }
                        videoDetailFragment.binding.overlayPlayPauseButton.setImageResource((videoDetailFragment.isPlayerAvailable() && videoDetailFragment.player.isPlaying()) ? R.drawable.ic_pause : R.drawable.ic_play_arrow);
                        break;
                    case 1:
                        videoDetailFragment.autoPlayEnabled = true;
                        if (videoDetailFragment.isPlayerAvailable()) {
                            videoDetailFragment.player.setRecovery();
                        }
                        videoDetailFragment.openVideoPlayerAutoFullscreen();
                        break;
                    case 2:
                        int visibility = videoDetailFragment.binding.detailSecondaryControlPanel.getVisibility();
                        FragmentVideoDetailBinding fragmentVideoDetailBinding = videoDetailFragment.binding;
                        if (visibility == 8) {
                            fragmentVideoDetailBinding.detailVideoTitleView.setMaxLines(10);
                            AppKt.animateRotation(180, videoDetailFragment.binding.detailToggleSecondaryControlsView);
                            videoDetailFragment.binding.detailSecondaryControlPanel.setVisibility(0);
                        } else {
                            fragmentVideoDetailBinding.detailVideoTitleView.setMaxLines(1);
                            AppKt.animateRotation(0, videoDetailFragment.binding.detailToggleSecondaryControlsView);
                            videoDetailFragment.binding.detailSecondaryControlPanel.setVisibility(8);
                        }
                        videoDetailFragment.updateTabLayoutVisibility();
                        break;
                    case 3:
                        videoDetailFragment.bottomSheetBehavior.setState(3);
                        break;
                    case 4:
                        videoDetailFragment.bottomSheetBehavior.setState(5);
                        break;
                    case 5:
                        LinkedList linkedList2 = VideoDetailFragment.stack;
                        Context requireContext = videoDetailFragment.requireContext();
                        requireContext.startActivity(new Intent(requireContext, (Class<?>) PlayQueueActivity.class));
                        break;
                    case 6:
                        LinkedList linkedList3 = VideoDetailFragment.stack;
                        videoDetailFragment.openBackgroundPlayer(false);
                        break;
                    case 7:
                        LinkedList linkedList4 = VideoDetailFragment.stack;
                        videoDetailFragment.openPopupPlayer(false);
                        break;
                    default:
                        LinkedList linkedList5 = VideoDetailFragment.stack;
                        if (Utility.checkStoragePermissions(videoDetailFragment.activity, 778)) {
                            videoDetailFragment.openDownloadDialog();
                            break;
                        }
                        break;
                }
            }
        });
        this.binding.detailControlsBackground.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.fragments.detail.VideoDetailFragment$$ExternalSyntheticLambda34
            public final /* synthetic */ VideoDetailFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i32 = i3;
                VideoDetailFragment videoDetailFragment = this.f$0;
                switch (i32) {
                    case 0:
                        LinkedList linkedList = VideoDetailFragment.stack;
                        if (!videoDetailFragment.isPlayerAvailable() || videoDetailFragment.player.isStopped()) {
                            videoDetailFragment.autoPlayEnabled = true;
                            videoDetailFragment.openVideoPlayer(false);
                        } else {
                            videoDetailFragment.player.playPause();
                            videoDetailFragment.player.UIs.get(VideoPlayerUi.class).ifPresent(new TagSet$$ExternalSyntheticLambda1(19));
                            videoDetailFragment.showSystemUi();
                        }
                        videoDetailFragment.binding.overlayPlayPauseButton.setImageResource((videoDetailFragment.isPlayerAvailable() && videoDetailFragment.player.isPlaying()) ? R.drawable.ic_pause : R.drawable.ic_play_arrow);
                        break;
                    case 1:
                        videoDetailFragment.autoPlayEnabled = true;
                        if (videoDetailFragment.isPlayerAvailable()) {
                            videoDetailFragment.player.setRecovery();
                        }
                        videoDetailFragment.openVideoPlayerAutoFullscreen();
                        break;
                    case 2:
                        int visibility = videoDetailFragment.binding.detailSecondaryControlPanel.getVisibility();
                        FragmentVideoDetailBinding fragmentVideoDetailBinding = videoDetailFragment.binding;
                        if (visibility == 8) {
                            fragmentVideoDetailBinding.detailVideoTitleView.setMaxLines(10);
                            AppKt.animateRotation(180, videoDetailFragment.binding.detailToggleSecondaryControlsView);
                            videoDetailFragment.binding.detailSecondaryControlPanel.setVisibility(0);
                        } else {
                            fragmentVideoDetailBinding.detailVideoTitleView.setMaxLines(1);
                            AppKt.animateRotation(0, videoDetailFragment.binding.detailToggleSecondaryControlsView);
                            videoDetailFragment.binding.detailSecondaryControlPanel.setVisibility(8);
                        }
                        videoDetailFragment.updateTabLayoutVisibility();
                        break;
                    case 3:
                        videoDetailFragment.bottomSheetBehavior.setState(3);
                        break;
                    case 4:
                        videoDetailFragment.bottomSheetBehavior.setState(5);
                        break;
                    case 5:
                        LinkedList linkedList2 = VideoDetailFragment.stack;
                        Context requireContext = videoDetailFragment.requireContext();
                        requireContext.startActivity(new Intent(requireContext, (Class<?>) PlayQueueActivity.class));
                        break;
                    case 6:
                        LinkedList linkedList3 = VideoDetailFragment.stack;
                        videoDetailFragment.openBackgroundPlayer(false);
                        break;
                    case 7:
                        LinkedList linkedList4 = VideoDetailFragment.stack;
                        videoDetailFragment.openPopupPlayer(false);
                        break;
                    default:
                        LinkedList linkedList5 = VideoDetailFragment.stack;
                        if (Utility.checkStoragePermissions(videoDetailFragment.activity, 778)) {
                            videoDetailFragment.openDownloadDialog();
                            break;
                        }
                        break;
                }
            }
        });
        final int i6 = 7;
        this.binding.detailControlsPopup.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.fragments.detail.VideoDetailFragment$$ExternalSyntheticLambda34
            public final /* synthetic */ VideoDetailFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i32 = i6;
                VideoDetailFragment videoDetailFragment = this.f$0;
                switch (i32) {
                    case 0:
                        LinkedList linkedList = VideoDetailFragment.stack;
                        if (!videoDetailFragment.isPlayerAvailable() || videoDetailFragment.player.isStopped()) {
                            videoDetailFragment.autoPlayEnabled = true;
                            videoDetailFragment.openVideoPlayer(false);
                        } else {
                            videoDetailFragment.player.playPause();
                            videoDetailFragment.player.UIs.get(VideoPlayerUi.class).ifPresent(new TagSet$$ExternalSyntheticLambda1(19));
                            videoDetailFragment.showSystemUi();
                        }
                        videoDetailFragment.binding.overlayPlayPauseButton.setImageResource((videoDetailFragment.isPlayerAvailable() && videoDetailFragment.player.isPlaying()) ? R.drawable.ic_pause : R.drawable.ic_play_arrow);
                        break;
                    case 1:
                        videoDetailFragment.autoPlayEnabled = true;
                        if (videoDetailFragment.isPlayerAvailable()) {
                            videoDetailFragment.player.setRecovery();
                        }
                        videoDetailFragment.openVideoPlayerAutoFullscreen();
                        break;
                    case 2:
                        int visibility = videoDetailFragment.binding.detailSecondaryControlPanel.getVisibility();
                        FragmentVideoDetailBinding fragmentVideoDetailBinding = videoDetailFragment.binding;
                        if (visibility == 8) {
                            fragmentVideoDetailBinding.detailVideoTitleView.setMaxLines(10);
                            AppKt.animateRotation(180, videoDetailFragment.binding.detailToggleSecondaryControlsView);
                            videoDetailFragment.binding.detailSecondaryControlPanel.setVisibility(0);
                        } else {
                            fragmentVideoDetailBinding.detailVideoTitleView.setMaxLines(1);
                            AppKt.animateRotation(0, videoDetailFragment.binding.detailToggleSecondaryControlsView);
                            videoDetailFragment.binding.detailSecondaryControlPanel.setVisibility(8);
                        }
                        videoDetailFragment.updateTabLayoutVisibility();
                        break;
                    case 3:
                        videoDetailFragment.bottomSheetBehavior.setState(3);
                        break;
                    case 4:
                        videoDetailFragment.bottomSheetBehavior.setState(5);
                        break;
                    case 5:
                        LinkedList linkedList2 = VideoDetailFragment.stack;
                        Context requireContext = videoDetailFragment.requireContext();
                        requireContext.startActivity(new Intent(requireContext, (Class<?>) PlayQueueActivity.class));
                        break;
                    case 6:
                        LinkedList linkedList3 = VideoDetailFragment.stack;
                        videoDetailFragment.openBackgroundPlayer(false);
                        break;
                    case 7:
                        LinkedList linkedList4 = VideoDetailFragment.stack;
                        videoDetailFragment.openPopupPlayer(false);
                        break;
                    default:
                        LinkedList linkedList5 = VideoDetailFragment.stack;
                        if (Utility.checkStoragePermissions(videoDetailFragment.activity, 778)) {
                            videoDetailFragment.openDownloadDialog();
                            break;
                        }
                        break;
                }
            }
        });
        this.binding.detailControlsPlaylistAppend.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, new VideoDetailFragment$$ExternalSyntheticLambda22(this, i6), i4));
        final int i7 = 8;
        this.binding.detailControlsDownload.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.fragments.detail.VideoDetailFragment$$ExternalSyntheticLambda34
            public final /* synthetic */ VideoDetailFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i32 = i7;
                VideoDetailFragment videoDetailFragment = this.f$0;
                switch (i32) {
                    case 0:
                        LinkedList linkedList = VideoDetailFragment.stack;
                        if (!videoDetailFragment.isPlayerAvailable() || videoDetailFragment.player.isStopped()) {
                            videoDetailFragment.autoPlayEnabled = true;
                            videoDetailFragment.openVideoPlayer(false);
                        } else {
                            videoDetailFragment.player.playPause();
                            videoDetailFragment.player.UIs.get(VideoPlayerUi.class).ifPresent(new TagSet$$ExternalSyntheticLambda1(19));
                            videoDetailFragment.showSystemUi();
                        }
                        videoDetailFragment.binding.overlayPlayPauseButton.setImageResource((videoDetailFragment.isPlayerAvailable() && videoDetailFragment.player.isPlaying()) ? R.drawable.ic_pause : R.drawable.ic_play_arrow);
                        break;
                    case 1:
                        videoDetailFragment.autoPlayEnabled = true;
                        if (videoDetailFragment.isPlayerAvailable()) {
                            videoDetailFragment.player.setRecovery();
                        }
                        videoDetailFragment.openVideoPlayerAutoFullscreen();
                        break;
                    case 2:
                        int visibility = videoDetailFragment.binding.detailSecondaryControlPanel.getVisibility();
                        FragmentVideoDetailBinding fragmentVideoDetailBinding = videoDetailFragment.binding;
                        if (visibility == 8) {
                            fragmentVideoDetailBinding.detailVideoTitleView.setMaxLines(10);
                            AppKt.animateRotation(180, videoDetailFragment.binding.detailToggleSecondaryControlsView);
                            videoDetailFragment.binding.detailSecondaryControlPanel.setVisibility(0);
                        } else {
                            fragmentVideoDetailBinding.detailVideoTitleView.setMaxLines(1);
                            AppKt.animateRotation(0, videoDetailFragment.binding.detailToggleSecondaryControlsView);
                            videoDetailFragment.binding.detailSecondaryControlPanel.setVisibility(8);
                        }
                        videoDetailFragment.updateTabLayoutVisibility();
                        break;
                    case 3:
                        videoDetailFragment.bottomSheetBehavior.setState(3);
                        break;
                    case 4:
                        videoDetailFragment.bottomSheetBehavior.setState(5);
                        break;
                    case 5:
                        LinkedList linkedList2 = VideoDetailFragment.stack;
                        Context requireContext = videoDetailFragment.requireContext();
                        requireContext.startActivity(new Intent(requireContext, (Class<?>) PlayQueueActivity.class));
                        break;
                    case 6:
                        LinkedList linkedList3 = VideoDetailFragment.stack;
                        videoDetailFragment.openBackgroundPlayer(false);
                        break;
                    case 7:
                        LinkedList linkedList4 = VideoDetailFragment.stack;
                        videoDetailFragment.openPopupPlayer(false);
                        break;
                    default:
                        LinkedList linkedList5 = VideoDetailFragment.stack;
                        if (Utility.checkStoragePermissions(videoDetailFragment.activity, 778)) {
                            videoDetailFragment.openDownloadDialog();
                            break;
                        }
                        break;
                }
            }
        });
        this.binding.detailControlsShare.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, new VideoDetailFragment$$ExternalSyntheticLambda22(this, i7), i4));
        this.binding.detailControlsOpenInBrowser.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, new VideoDetailFragment$$ExternalSyntheticLambda22(this, 9), i4));
        this.binding.detailControlsPlayWithKodi.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, new VideoDetailFragment$$ExternalSyntheticLambda22(this, 10), i4));
        View.OnClickListener onClickListener = new View.OnClickListener(this) { // from class: org.schabi.newpipe.fragments.detail.VideoDetailFragment$$ExternalSyntheticLambda34
            public final /* synthetic */ VideoDetailFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i32 = i4;
                VideoDetailFragment videoDetailFragment = this.f$0;
                switch (i32) {
                    case 0:
                        LinkedList linkedList = VideoDetailFragment.stack;
                        if (!videoDetailFragment.isPlayerAvailable() || videoDetailFragment.player.isStopped()) {
                            videoDetailFragment.autoPlayEnabled = true;
                            videoDetailFragment.openVideoPlayer(false);
                        } else {
                            videoDetailFragment.player.playPause();
                            videoDetailFragment.player.UIs.get(VideoPlayerUi.class).ifPresent(new TagSet$$ExternalSyntheticLambda1(19));
                            videoDetailFragment.showSystemUi();
                        }
                        videoDetailFragment.binding.overlayPlayPauseButton.setImageResource((videoDetailFragment.isPlayerAvailable() && videoDetailFragment.player.isPlaying()) ? R.drawable.ic_pause : R.drawable.ic_play_arrow);
                        break;
                    case 1:
                        videoDetailFragment.autoPlayEnabled = true;
                        if (videoDetailFragment.isPlayerAvailable()) {
                            videoDetailFragment.player.setRecovery();
                        }
                        videoDetailFragment.openVideoPlayerAutoFullscreen();
                        break;
                    case 2:
                        int visibility = videoDetailFragment.binding.detailSecondaryControlPanel.getVisibility();
                        FragmentVideoDetailBinding fragmentVideoDetailBinding = videoDetailFragment.binding;
                        if (visibility == 8) {
                            fragmentVideoDetailBinding.detailVideoTitleView.setMaxLines(10);
                            AppKt.animateRotation(180, videoDetailFragment.binding.detailToggleSecondaryControlsView);
                            videoDetailFragment.binding.detailSecondaryControlPanel.setVisibility(0);
                        } else {
                            fragmentVideoDetailBinding.detailVideoTitleView.setMaxLines(1);
                            AppKt.animateRotation(0, videoDetailFragment.binding.detailToggleSecondaryControlsView);
                            videoDetailFragment.binding.detailSecondaryControlPanel.setVisibility(8);
                        }
                        videoDetailFragment.updateTabLayoutVisibility();
                        break;
                    case 3:
                        videoDetailFragment.bottomSheetBehavior.setState(3);
                        break;
                    case 4:
                        videoDetailFragment.bottomSheetBehavior.setState(5);
                        break;
                    case 5:
                        LinkedList linkedList2 = VideoDetailFragment.stack;
                        Context requireContext = videoDetailFragment.requireContext();
                        requireContext.startActivity(new Intent(requireContext, (Class<?>) PlayQueueActivity.class));
                        break;
                    case 6:
                        LinkedList linkedList3 = VideoDetailFragment.stack;
                        videoDetailFragment.openBackgroundPlayer(false);
                        break;
                    case 7:
                        LinkedList linkedList4 = VideoDetailFragment.stack;
                        videoDetailFragment.openPopupPlayer(false);
                        break;
                    default:
                        LinkedList linkedList5 = VideoDetailFragment.stack;
                        if (Utility.checkStoragePermissions(videoDetailFragment.activity, 778)) {
                            videoDetailFragment.openDownloadDialog();
                            break;
                        }
                        break;
                }
            }
        };
        this.binding.overlayThumbnail.setOnClickListener(onClickListener);
        this.binding.overlayMetadataLayout.setOnClickListener(onClickListener);
        this.binding.overlayButtonsLayout.setOnClickListener(onClickListener);
        final int i8 = 4;
        this.binding.overlayCloseButton.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.fragments.detail.VideoDetailFragment$$ExternalSyntheticLambda34
            public final /* synthetic */ VideoDetailFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i32 = i8;
                VideoDetailFragment videoDetailFragment = this.f$0;
                switch (i32) {
                    case 0:
                        LinkedList linkedList = VideoDetailFragment.stack;
                        if (!videoDetailFragment.isPlayerAvailable() || videoDetailFragment.player.isStopped()) {
                            videoDetailFragment.autoPlayEnabled = true;
                            videoDetailFragment.openVideoPlayer(false);
                        } else {
                            videoDetailFragment.player.playPause();
                            videoDetailFragment.player.UIs.get(VideoPlayerUi.class).ifPresent(new TagSet$$ExternalSyntheticLambda1(19));
                            videoDetailFragment.showSystemUi();
                        }
                        videoDetailFragment.binding.overlayPlayPauseButton.setImageResource((videoDetailFragment.isPlayerAvailable() && videoDetailFragment.player.isPlaying()) ? R.drawable.ic_pause : R.drawable.ic_play_arrow);
                        break;
                    case 1:
                        videoDetailFragment.autoPlayEnabled = true;
                        if (videoDetailFragment.isPlayerAvailable()) {
                            videoDetailFragment.player.setRecovery();
                        }
                        videoDetailFragment.openVideoPlayerAutoFullscreen();
                        break;
                    case 2:
                        int visibility = videoDetailFragment.binding.detailSecondaryControlPanel.getVisibility();
                        FragmentVideoDetailBinding fragmentVideoDetailBinding = videoDetailFragment.binding;
                        if (visibility == 8) {
                            fragmentVideoDetailBinding.detailVideoTitleView.setMaxLines(10);
                            AppKt.animateRotation(180, videoDetailFragment.binding.detailToggleSecondaryControlsView);
                            videoDetailFragment.binding.detailSecondaryControlPanel.setVisibility(0);
                        } else {
                            fragmentVideoDetailBinding.detailVideoTitleView.setMaxLines(1);
                            AppKt.animateRotation(0, videoDetailFragment.binding.detailToggleSecondaryControlsView);
                            videoDetailFragment.binding.detailSecondaryControlPanel.setVisibility(8);
                        }
                        videoDetailFragment.updateTabLayoutVisibility();
                        break;
                    case 3:
                        videoDetailFragment.bottomSheetBehavior.setState(3);
                        break;
                    case 4:
                        videoDetailFragment.bottomSheetBehavior.setState(5);
                        break;
                    case 5:
                        LinkedList linkedList2 = VideoDetailFragment.stack;
                        Context requireContext = videoDetailFragment.requireContext();
                        requireContext.startActivity(new Intent(requireContext, (Class<?>) PlayQueueActivity.class));
                        break;
                    case 6:
                        LinkedList linkedList3 = VideoDetailFragment.stack;
                        videoDetailFragment.openBackgroundPlayer(false);
                        break;
                    case 7:
                        LinkedList linkedList4 = VideoDetailFragment.stack;
                        videoDetailFragment.openPopupPlayer(false);
                        break;
                    default:
                        LinkedList linkedList5 = VideoDetailFragment.stack;
                        if (Utility.checkStoragePermissions(videoDetailFragment.activity, 778)) {
                            videoDetailFragment.openDownloadDialog();
                            break;
                        }
                        break;
                }
            }
        });
        final int i9 = 5;
        this.binding.overlayPlayQueueButton.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.fragments.detail.VideoDetailFragment$$ExternalSyntheticLambda34
            public final /* synthetic */ VideoDetailFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i32 = i9;
                VideoDetailFragment videoDetailFragment = this.f$0;
                switch (i32) {
                    case 0:
                        LinkedList linkedList = VideoDetailFragment.stack;
                        if (!videoDetailFragment.isPlayerAvailable() || videoDetailFragment.player.isStopped()) {
                            videoDetailFragment.autoPlayEnabled = true;
                            videoDetailFragment.openVideoPlayer(false);
                        } else {
                            videoDetailFragment.player.playPause();
                            videoDetailFragment.player.UIs.get(VideoPlayerUi.class).ifPresent(new TagSet$$ExternalSyntheticLambda1(19));
                            videoDetailFragment.showSystemUi();
                        }
                        videoDetailFragment.binding.overlayPlayPauseButton.setImageResource((videoDetailFragment.isPlayerAvailable() && videoDetailFragment.player.isPlaying()) ? R.drawable.ic_pause : R.drawable.ic_play_arrow);
                        break;
                    case 1:
                        videoDetailFragment.autoPlayEnabled = true;
                        if (videoDetailFragment.isPlayerAvailable()) {
                            videoDetailFragment.player.setRecovery();
                        }
                        videoDetailFragment.openVideoPlayerAutoFullscreen();
                        break;
                    case 2:
                        int visibility = videoDetailFragment.binding.detailSecondaryControlPanel.getVisibility();
                        FragmentVideoDetailBinding fragmentVideoDetailBinding = videoDetailFragment.binding;
                        if (visibility == 8) {
                            fragmentVideoDetailBinding.detailVideoTitleView.setMaxLines(10);
                            AppKt.animateRotation(180, videoDetailFragment.binding.detailToggleSecondaryControlsView);
                            videoDetailFragment.binding.detailSecondaryControlPanel.setVisibility(0);
                        } else {
                            fragmentVideoDetailBinding.detailVideoTitleView.setMaxLines(1);
                            AppKt.animateRotation(0, videoDetailFragment.binding.detailToggleSecondaryControlsView);
                            videoDetailFragment.binding.detailSecondaryControlPanel.setVisibility(8);
                        }
                        videoDetailFragment.updateTabLayoutVisibility();
                        break;
                    case 3:
                        videoDetailFragment.bottomSheetBehavior.setState(3);
                        break;
                    case 4:
                        videoDetailFragment.bottomSheetBehavior.setState(5);
                        break;
                    case 5:
                        LinkedList linkedList2 = VideoDetailFragment.stack;
                        Context requireContext = videoDetailFragment.requireContext();
                        requireContext.startActivity(new Intent(requireContext, (Class<?>) PlayQueueActivity.class));
                        break;
                    case 6:
                        LinkedList linkedList3 = VideoDetailFragment.stack;
                        videoDetailFragment.openBackgroundPlayer(false);
                        break;
                    case 7:
                        LinkedList linkedList4 = VideoDetailFragment.stack;
                        videoDetailFragment.openPopupPlayer(false);
                        break;
                    default:
                        LinkedList linkedList5 = VideoDetailFragment.stack;
                        if (Utility.checkStoragePermissions(videoDetailFragment.activity, 778)) {
                            videoDetailFragment.openDownloadDialog();
                            break;
                        }
                        break;
                }
            }
        });
        this.binding.overlayPlayPauseButton.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.fragments.detail.VideoDetailFragment$$ExternalSyntheticLambda34
            public final /* synthetic */ VideoDetailFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i32 = i;
                VideoDetailFragment videoDetailFragment = this.f$0;
                switch (i32) {
                    case 0:
                        LinkedList linkedList = VideoDetailFragment.stack;
                        if (!videoDetailFragment.isPlayerAvailable() || videoDetailFragment.player.isStopped()) {
                            videoDetailFragment.autoPlayEnabled = true;
                            videoDetailFragment.openVideoPlayer(false);
                        } else {
                            videoDetailFragment.player.playPause();
                            videoDetailFragment.player.UIs.get(VideoPlayerUi.class).ifPresent(new TagSet$$ExternalSyntheticLambda1(19));
                            videoDetailFragment.showSystemUi();
                        }
                        videoDetailFragment.binding.overlayPlayPauseButton.setImageResource((videoDetailFragment.isPlayerAvailable() && videoDetailFragment.player.isPlaying()) ? R.drawable.ic_pause : R.drawable.ic_play_arrow);
                        break;
                    case 1:
                        videoDetailFragment.autoPlayEnabled = true;
                        if (videoDetailFragment.isPlayerAvailable()) {
                            videoDetailFragment.player.setRecovery();
                        }
                        videoDetailFragment.openVideoPlayerAutoFullscreen();
                        break;
                    case 2:
                        int visibility = videoDetailFragment.binding.detailSecondaryControlPanel.getVisibility();
                        FragmentVideoDetailBinding fragmentVideoDetailBinding = videoDetailFragment.binding;
                        if (visibility == 8) {
                            fragmentVideoDetailBinding.detailVideoTitleView.setMaxLines(10);
                            AppKt.animateRotation(180, videoDetailFragment.binding.detailToggleSecondaryControlsView);
                            videoDetailFragment.binding.detailSecondaryControlPanel.setVisibility(0);
                        } else {
                            fragmentVideoDetailBinding.detailVideoTitleView.setMaxLines(1);
                            AppKt.animateRotation(0, videoDetailFragment.binding.detailToggleSecondaryControlsView);
                            videoDetailFragment.binding.detailSecondaryControlPanel.setVisibility(8);
                        }
                        videoDetailFragment.updateTabLayoutVisibility();
                        break;
                    case 3:
                        videoDetailFragment.bottomSheetBehavior.setState(3);
                        break;
                    case 4:
                        videoDetailFragment.bottomSheetBehavior.setState(5);
                        break;
                    case 5:
                        LinkedList linkedList2 = VideoDetailFragment.stack;
                        Context requireContext = videoDetailFragment.requireContext();
                        requireContext.startActivity(new Intent(requireContext, (Class<?>) PlayQueueActivity.class));
                        break;
                    case 6:
                        LinkedList linkedList3 = VideoDetailFragment.stack;
                        videoDetailFragment.openBackgroundPlayer(false);
                        break;
                    case 7:
                        LinkedList linkedList4 = VideoDetailFragment.stack;
                        videoDetailFragment.openPopupPlayer(false);
                        break;
                    default:
                        LinkedList linkedList5 = VideoDetailFragment.stack;
                        if (Utility.checkStoragePermissions(videoDetailFragment.activity, 778)) {
                            videoDetailFragment.openDownloadDialog();
                            break;
                        }
                        break;
                }
            }
        });
        this.binding.detailTitleRootLayout.setOnLongClickListener(new PlaylistItemHolder$$ExternalSyntheticLambda1(this, new VideoDetailFragment$$ExternalSyntheticLambda22(this, i), i2));
        this.binding.detailUploaderRootLayout.setOnLongClickListener(new PlaylistItemHolder$$ExternalSyntheticLambda1(this, new VideoDetailFragment$$ExternalSyntheticLambda22(this, i5), i2));
        this.binding.detailControlsBackground.setOnLongClickListener(new PlaylistItemHolder$$ExternalSyntheticLambda1(this, new VideoDetailFragment$$ExternalSyntheticLambda22(this, i2), i2));
        this.binding.detailControlsPopup.setOnLongClickListener(new PlaylistItemHolder$$ExternalSyntheticLambda1(this, new VideoDetailFragment$$ExternalSyntheticLambda22(this, i4), i2));
        this.binding.detailControlsDownload.setOnLongClickListener(new PlaylistItemHolder$$ExternalSyntheticLambda1(this, new VideoDetailFragment$$ExternalSyntheticLambda22(this, i8), i2));
        PlaylistItemHolder$$ExternalSyntheticLambda1 playlistItemHolder$$ExternalSyntheticLambda1 = new PlaylistItemHolder$$ExternalSyntheticLambda1(this, new VideoDetailFragment$$ExternalSyntheticLambda22(this, i9), i2);
        this.binding.overlayThumbnail.setOnLongClickListener(playlistItemHolder$$ExternalSyntheticLambda1);
        this.binding.overlayMetadataLayout.setOnLongClickListener(playlistItemHolder$$ExternalSyntheticLambda1);
        View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: org.schabi.newpipe.fragments.detail.VideoDetailFragment$$ExternalSyntheticLambda12
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                LinkedList linkedList = VideoDetailFragment.stack;
                if (motionEvent.getAction() != 0) {
                    return false;
                }
                VideoDetailFragment videoDetailFragment = VideoDetailFragment.this;
                if (!AppKt.shouldShowHoldToAppendTip(videoDetailFragment.activity)) {
                    return false;
                }
                AppKt.animate(videoDetailFragment.binding.touchAppendDetail, true, 250L, AnimationType.ALPHA, 0L, new VideoDetailFragment$$ExternalSyntheticLambda0(videoDetailFragment, 2));
                return false;
            }
        };
        this.binding.detailControlsBackground.setOnTouchListener(onTouchListener);
        this.binding.detailControlsPopup.setOnTouchListener(onTouchListener);
        this.binding.appBarLayout.addOnOffsetChangedListener(new AppBarLayout.OnOffsetChangedListener() { // from class: org.schabi.newpipe.fragments.detail.VideoDetailFragment$$ExternalSyntheticLambda13
            @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener
            public final void onOffsetChanged(int i10) {
                VideoDetailFragment videoDetailFragment = VideoDetailFragment.this;
                if (i10 != videoDetailFragment.lastAppBarVerticalOffset) {
                    videoDetailFragment.lastAppBarVerticalOffset = i10;
                    videoDetailFragment.updateTabLayoutVisibility();
                }
            }
        });
        final AppBarLayout.Behavior behavior = (AppBarLayout.Behavior) ((CoordinatorLayout.LayoutParams) this.binding.appBarLayout.getLayoutParams()).mBehavior;
        BottomSheetBehavior from = BottomSheetBehavior.from((FrameLayout) this.activity.findViewById(R.id.fragment_player_holder));
        this.bottomSheetBehavior = from;
        from.setState(this.lastStableBottomSheetState);
        updateBottomSheetState(this.lastStableBottomSheetState);
        final int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.mini_player_height);
        if (this.bottomSheetState != 5) {
            manageSpaceAtTheBottom(false);
            this.bottomSheetBehavior.setPeekHeight(dimensionPixelSize);
            int i10 = this.bottomSheetState;
            if (i10 == 4) {
                this.binding.overlayLayout.setAlpha(0.9f);
            } else if (i10 == 3) {
                this.binding.overlayLayout.setAlpha(0.0f);
                setOverlayElementsClickable(false);
            }
        }
        ?? r3 = new BottomSheetBehavior.BottomSheetCallback() { // from class: org.schabi.newpipe.fragments.detail.VideoDetailFragment.4
            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
            public final void onSlide(float f) {
                VideoDetailFragment videoDetailFragment = VideoDetailFragment.this;
                VideoDetailFragment.m868$$Nest$msetOverlayLook(videoDetailFragment, videoDetailFragment.binding.appBarLayout, behavior, f);
            }

            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
            public final void onStateChanged(int i11) {
                LinkedList linkedList = VideoDetailFragment.stack;
                VideoDetailFragment videoDetailFragment = VideoDetailFragment.this;
                videoDetailFragment.updateBottomSheetState(i11);
                if (i11 == 1 || i11 == 2) {
                    if (videoDetailFragment.isFullscreen()) {
                        videoDetailFragment.showSystemUi();
                    }
                    if (videoDetailFragment.isPlayerAvailable()) {
                        videoDetailFragment.player.UIs.get(MainPlayerUi.class).ifPresent(new TagSet$$ExternalSyntheticLambda1(22));
                        return;
                    }
                    return;
                }
                AppBarLayout.Behavior behavior2 = behavior;
                int i12 = dimensionPixelSize;
                if (i11 == 3) {
                    VideoDetailFragment.m867$$Nest$mmoveFocusToMainFragment(videoDetailFragment, false);
                    videoDetailFragment.manageSpaceAtTheBottom(false);
                    videoDetailFragment.bottomSheetBehavior.setPeekHeight(i12);
                    videoDetailFragment.setOverlayElementsClickable(false);
                    videoDetailFragment.hideSystemUiIfNeeded();
                    if (DeviceUtils.isLandscape(videoDetailFragment.requireContext()) && videoDetailFragment.isPlayerAvailable() && videoDetailFragment.player.isPlaying() && !videoDetailFragment.isFullscreen() && !DeviceUtils.isTablet(videoDetailFragment.activity)) {
                        videoDetailFragment.player.UIs.get(MainPlayerUi.class).ifPresent(new TagSet$$ExternalSyntheticLambda1(18));
                    }
                    VideoDetailFragment.m868$$Nest$msetOverlayLook(videoDetailFragment, videoDetailFragment.binding.appBarLayout, behavior2, 1.0f);
                    return;
                }
                if (i11 == 4) {
                    VideoDetailFragment.m867$$Nest$mmoveFocusToMainFragment(videoDetailFragment, true);
                    videoDetailFragment.manageSpaceAtTheBottom(false);
                    videoDetailFragment.bottomSheetBehavior.setPeekHeight(i12);
                    videoDetailFragment.setOverlayElementsClickable(true);
                    if (videoDetailFragment.isPlayerAvailable()) {
                        videoDetailFragment.player.UIs.get(MainPlayerUi.class).ifPresent(new TagSet$$ExternalSyntheticLambda1(21));
                    }
                    VideoDetailFragment.m868$$Nest$msetOverlayLook(videoDetailFragment, videoDetailFragment.binding.appBarLayout, behavior2, 0.0f);
                    return;
                }
                if (i11 != 5) {
                    return;
                }
                VideoDetailFragment.m867$$Nest$mmoveFocusToMainFragment(videoDetailFragment, true);
                videoDetailFragment.manageSpaceAtTheBottom(true);
                videoDetailFragment.bottomSheetBehavior.setPeekHeight(0);
                VideoDetailFragment.stack.clear();
                ConsumerSingleObserver consumerSingleObserver = videoDetailFragment.currentWorker;
                if (consumerSingleObserver != null) {
                    DisposableHelper.dispose(consumerSingleObserver);
                }
                videoDetailFragment.playerHolder.stopService();
                videoDetailFragment.setInitialData(0, null, "", null);
                videoDetailFragment.currentInfo = null;
                videoDetailFragment.updateOverlayData(null, null, Collections.EMPTY_LIST);
            }
        };
        this.bottomSheetCallback = r3;
        ArrayList arrayList = this.bottomSheetBehavior.callbacks;
        if (!arrayList.contains(r3)) {
            arrayList.add(r3);
        }
        FragmentManagerImpl supportFragmentManager = this.activity.getSupportFragmentManager();
        supportFragmentManager.mBackStackChangeListeners.add(new VideoDetailFragment$$ExternalSyntheticLambda21(this));
        PlayerHolder playerHolder = this.playerHolder;
        if (playerHolder.bound) {
            playerHolder.startService(false, this);
        } else {
            setHeightThumbnail();
        }
    }

    public final void initTabs() {
        if (this.pageAdapter.mFragmentList.size() != 0) {
            this.selectedTabTag = this.pageAdapter.getItemTitle(this.binding.viewPager.getCurrentItem());
        }
        TabAdapter tabAdapter = this.pageAdapter;
        tabAdapter.mFragmentList.clear();
        tabAdapter.mFragmentTitleList.clear();
        ArrayList arrayList = this.tabIcons;
        arrayList.clear();
        ArrayList arrayList2 = this.tabContentDescriptions;
        arrayList2.clear();
        try {
            if (this.showComments) {
                if (Utility.getService(this.serviceId).serviceInfo.mediaCapabilities.contains(StreamingService.ServiceInfo.MediaCapability.COMMENTS)) {
                    TabAdapter tabAdapter2 = this.pageAdapter;
                    int i = this.serviceId;
                    String str = this.url;
                    String str2 = this.title;
                    CommentsFragment commentsFragment = new CommentsFragment();
                    commentsFragment.setInitialData(str, i, str2);
                    tabAdapter2.addFragment(commentsFragment, "COMMENTS");
                    arrayList.add(Integer.valueOf(R.drawable.ic_comment));
                    arrayList2.add(Integer.valueOf(R.string.comments_tab_description));
                }
            }
        } catch (ExtractionException unused) {
        }
        if (this.showRelatedItems && this.binding.relatedItemsLayout == null) {
            this.pageAdapter.addFragment(EmptyFragment.newInstance(false), "NEXT VIDEO");
            arrayList.add(Integer.valueOf(R.drawable.ic_art_track));
            arrayList2.add(Integer.valueOf(R.string.related_items_tab_description));
        }
        if (this.showDescription) {
            this.pageAdapter.addFragment(EmptyFragment.newInstance(false), "DESCRIPTION TAB");
            arrayList.add(Integer.valueOf(R.drawable.ic_description));
            arrayList2.add(Integer.valueOf(R.string.description_tab_description));
        }
        if (this.pageAdapter.mFragmentList.size() == 0) {
            this.pageAdapter.addFragment(EmptyFragment.newInstance(true), "EMPTY TAB");
        }
        this.pageAdapter.notifyDataSetUpdate();
        if (this.pageAdapter.mFragmentList.size() >= 2) {
            TabAdapter tabAdapter3 = this.pageAdapter;
            int indexOf = tabAdapter3.mFragmentTitleList.indexOf(this.selectedTabTag);
            if (indexOf != -1) {
                this.binding.viewPager.setCurrentItem(indexOf);
            }
            updateTabIconsAndContentDescriptions();
        }
        updateTabLayoutVisibility();
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x010c, code lost:
    
        if (r0.getField("SEM_DESKTOP_MODE_ENABLED").getInt(r0) == r0.getField("semDesktopModeEnabled").getInt(r8)) goto L39;
     */
    @Override // org.schabi.newpipe.fragments.BaseStateFragment, org.schabi.newpipe.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void initViews(android.view.View r7, android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.fragments.detail.VideoDetailFragment.initViews(android.view.View, android.os.Bundle):void");
    }

    public final boolean isAutoplayEnabled() {
        return this.autoPlayEnabled && !PreferenceManager.getDefaultSharedPreferences(requireContext()).getBoolean(getString(R.string.use_external_video_player_key), false) && (!isPlayerAvailable() || this.player.videoPlayerSelected()) && this.bottomSheetState != 5 && PlayerHelper.isAutoplayAllowedByUser(requireContext());
    }

    public final boolean isFullscreen() {
        return isPlayerAvailable() && ((Boolean) this.player.UIs.get(VideoPlayerUi.class).map(new Utils$$ExternalSyntheticLambda1(26)).orElse(Boolean.FALSE)).booleanValue();
    }

    public final boolean isPlayerAvailable() {
        return this.player != null;
    }

    public final void manageSpaceAtTheBottom(boolean z) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.mini_player_height);
        ViewGroup viewGroup = (ViewGroup) requireActivity().findViewById(R.id.fragment_holder);
        if (z) {
            dimensionPixelSize = 0;
        }
        if (viewGroup.getPaddingBottom() == dimensionPixelSize) {
            return;
        }
        viewGroup.setPadding(viewGroup.getPaddingLeft(), viewGroup.getPaddingTop(), viewGroup.getPaddingRight(), dimensionPixelSize);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        String str = this.TAG;
        if (i != 10) {
            android.util.Log.e(str, "Request code from activity not supported [" + i + "]");
            return;
        }
        if (i2 == -1) {
            SQLite.openVideoDetailFragment(requireContext(), getFM(), this.serviceId, this.url, this.title, null, false);
        } else {
            android.util.Log.e(str, "ReCaptcha failed");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0035, code lost:
    
        if (r7.player.playQueue.previous() != false) goto L37;
     */
    @Override // org.schabi.newpipe.fragments.BackPressable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onBackPressed() {
        /*
            r7 = this;
            boolean r0 = r7.isFullscreen()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L1b
            androidx.appcompat.app.AppCompatActivity r0 = r7.activity
            boolean r0 = org.schabi.newpipe.util.DeviceUtils.isTablet(r0)
            if (r0 != 0) goto L15
            org.schabi.newpipe.player.Player r0 = r7.player
            r0.pause()
        L15:
            r7.restoreDefaultOrientation()
            r7.autoPlayEnabled = r1
            return r2
        L1b:
            boolean r0 = r7.isPlayerAvailable()
            if (r0 == 0) goto L39
            org.schabi.newpipe.player.Player r0 = r7.player
            org.schabi.newpipe.player.playqueue.PlayQueue r3 = r0.playQueue
            if (r3 == 0) goto L39
            boolean r0 = r0.videoPlayerSelected()
            if (r0 == 0) goto L39
            org.schabi.newpipe.player.Player r0 = r7.player
            org.schabi.newpipe.player.playqueue.PlayQueue r0 = r0.playQueue
            boolean r0 = r0.previous()
            if (r0 == 0) goto L39
            goto Lae
        L39:
            java.util.LinkedList r0 = org.schabi.newpipe.fragments.detail.VideoDetailFragment.stack
            int r0 = r0.size()
            if (r0 > r2) goto L45
            r7.restoreDefaultOrientation()
            return r1
        L45:
            java.util.LinkedList r0 = org.schabi.newpipe.fragments.detail.VideoDetailFragment.stack
            r0.pop()
            java.util.LinkedList r0 = org.schabi.newpipe.fragments.detail.VideoDetailFragment.stack
            java.lang.Object r0 = r0.peek()
            org.schabi.newpipe.fragments.detail.StackItem r0 = (org.schabi.newpipe.fragments.detail.StackItem) r0
            j$.util.Objects.requireNonNull(r0)
            r7.autoPlayEnabled = r1
            r7.hideMainPlayerOnLoadingNewStream()
            int r3 = r0.getServiceId()
            java.lang.String r4 = r0.getUrl()
            java.lang.String r5 = r0.getTitle()
            if (r5 != 0) goto L6b
            java.lang.String r5 = ""
            goto L6f
        L6b:
            java.lang.String r5 = r0.getTitle()
        L6f:
            org.schabi.newpipe.player.playqueue.PlayQueue r6 = r0.getPlayQueue()
            r7.setInitialData(r3, r4, r5, r6)
            r7.startLoading(r1)
            org.schabi.newpipe.player.playqueue.PlayQueue r3 = r0.getPlayQueue()
            org.schabi.newpipe.player.playqueue.PlayQueueItem r3 = r3.getItem()
            if (r3 != 0) goto L84
            goto Lae
        L84:
            org.schabi.newpipe.player.playqueue.PlayQueue r0 = r0.getPlayQueue()
            org.schabi.newpipe.player.playqueue.PlayQueueItem r0 = r0.getItem()
            boolean r3 = r7.isPlayerAvailable()
            if (r3 == 0) goto L9a
            org.schabi.newpipe.player.Player r3 = r7.player
            boolean r3 = r3.isStopped()
            if (r3 == 0) goto L9b
        L9a:
            r1 = r2
        L9b:
            if (r0 == 0) goto Lae
            if (r1 == 0) goto Lae
            java.lang.String r1 = r0.getTitle()
            java.lang.String r3 = r0.getUploader()
            java.util.List r0 = r0.getThumbnails()
            r7.updateOverlayData(r1, r3, r0)
        Lae:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.fragments.detail.VideoDetailFragment.onBackPressed():boolean");
    }

    @Override // org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.activity);
        this.showComments = defaultSharedPreferences.getBoolean(getString(R.string.show_comments_key), true);
        this.showRelatedItems = defaultSharedPreferences.getBoolean(getString(R.string.show_next_video_key), true);
        this.showDescription = defaultSharedPreferences.getBoolean(getString(R.string.show_description_key), true);
        this.selectedTabTag = defaultSharedPreferences.getString(getString(R.string.stream_info_selected_tab_key), "COMMENTS");
        defaultSharedPreferences.registerOnSharedPreferenceChangeListener(this.preferenceChangeListener);
        this.broadcastReceiver = new MainActivity.AnonymousClass3(this, 3);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("org.schabi.newpipe.VideoDetailFragment.ACTION_SHOW_MAIN_PLAYER");
        intentFilter.addAction("org.schabi.newpipe.VideoDetailFragment.ACTION_HIDE_MAIN_PLAYER");
        intentFilter.addAction("org.schabi.newpipe.VideoDetailFragment.ACTION_PLAYER_STARTED");
        StaticImageDecoderKt.registerReceiver(this.activity, this.broadcastReceiver, intentFilter, 2);
        this.settingsContentObserver = new MainPlayerUi.AnonymousClass1(this, new Handler(), 1);
        this.activity.getContentResolver().registerContentObserver(Settings.System.getUriFor("accelerometer_rotation"), false, this.settingsContentObserver);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_video_detail, viewGroup, false);
        int i = R.id.app_bar_layout;
        AppBarLayout appBarLayout = (AppBarLayout) Options.Companion.findChildViewById(R.id.app_bar_layout, inflate);
        if (appBarLayout != null) {
            i = R.id.detail_content_root_hiding;
            LinearLayout linearLayout = (LinearLayout) Options.Companion.findChildViewById(R.id.detail_content_root_hiding, inflate);
            if (linearLayout != null) {
                i = R.id.detail_content_root_layout;
                if (((RelativeLayout) Options.Companion.findChildViewById(R.id.detail_content_root_layout, inflate)) != null) {
                    i = R.id.detail_control_panel;
                    if (((LinearLayout) Options.Companion.findChildViewById(R.id.detail_control_panel, inflate)) != null) {
                        i = R.id.detail_controls_background;
                        NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.detail_controls_background, inflate);
                        if (newPipeTextView != null) {
                            i = R.id.detail_controls_crash_the_player;
                            NewPipeTextView newPipeTextView2 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.detail_controls_crash_the_player, inflate);
                            if (newPipeTextView2 != null) {
                                i = R.id.detail_controls_download;
                                NewPipeTextView newPipeTextView3 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.detail_controls_download, inflate);
                                if (newPipeTextView3 != null) {
                                    i = R.id.detail_controls_open_in_browser;
                                    NewPipeTextView newPipeTextView4 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.detail_controls_open_in_browser, inflate);
                                    if (newPipeTextView4 != null) {
                                        i = R.id.detail_controls_play_with_kodi;
                                        NewPipeTextView newPipeTextView5 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.detail_controls_play_with_kodi, inflate);
                                        if (newPipeTextView5 != null) {
                                            i = R.id.detail_controls_playlist_append;
                                            NewPipeTextView newPipeTextView6 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.detail_controls_playlist_append, inflate);
                                            if (newPipeTextView6 != null) {
                                                i = R.id.detail_controls_popup;
                                                NewPipeTextView newPipeTextView7 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.detail_controls_popup, inflate);
                                                if (newPipeTextView7 != null) {
                                                    i = R.id.detail_controls_share;
                                                    NewPipeTextView newPipeTextView8 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.detail_controls_share, inflate);
                                                    if (newPipeTextView8 != null) {
                                                        i = R.id.detail_duration_view;
                                                        NewPipeTextView newPipeTextView9 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.detail_duration_view, inflate);
                                                        if (newPipeTextView9 != null) {
                                                            i = R.id.detail_main_content;
                                                            View findChildViewById = Options.Companion.findChildViewById(R.id.detail_main_content, inflate);
                                                            if (findChildViewById != null) {
                                                                i = R.id.detail_meta_info_separator;
                                                                View findChildViewById2 = Options.Companion.findChildViewById(R.id.detail_meta_info_separator, inflate);
                                                                if (findChildViewById2 != null) {
                                                                    i = R.id.detail_meta_info_text_view;
                                                                    NewPipeTextView newPipeTextView10 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.detail_meta_info_text_view, inflate);
                                                                    if (newPipeTextView10 != null) {
                                                                        i = R.id.detail_position_view;
                                                                        NewPipeTextView newPipeTextView11 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.detail_position_view, inflate);
                                                                        if (newPipeTextView11 != null) {
                                                                            i = R.id.detail_root;
                                                                            if (((RelativeLayout) Options.Companion.findChildViewById(R.id.detail_root, inflate)) != null) {
                                                                                i = R.id.detail_secondary_control_panel;
                                                                                LinearLayout linearLayout2 = (LinearLayout) Options.Companion.findChildViewById(R.id.detail_secondary_control_panel, inflate);
                                                                                if (linearLayout2 != null) {
                                                                                    i = R.id.detail_sub_channel_text_view;
                                                                                    NewPipeTextView newPipeTextView12 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.detail_sub_channel_text_view, inflate);
                                                                                    if (newPipeTextView12 != null) {
                                                                                        i = R.id.detail_sub_channel_thumbnail_view;
                                                                                        ShapeableImageView shapeableImageView = (ShapeableImageView) Options.Companion.findChildViewById(R.id.detail_sub_channel_thumbnail_view, inflate);
                                                                                        if (shapeableImageView != null) {
                                                                                            i = R.id.detail_thumbnail_image_view;
                                                                                            ImageView imageView = (ImageView) Options.Companion.findChildViewById(R.id.detail_thumbnail_image_view, inflate);
                                                                                            if (imageView != null) {
                                                                                                i = R.id.detail_thumbnail_play_button;
                                                                                                ImageView imageView2 = (ImageView) Options.Companion.findChildViewById(R.id.detail_thumbnail_play_button, inflate);
                                                                                                if (imageView2 != null) {
                                                                                                    i = R.id.detail_thumbnail_root_layout;
                                                                                                    FrameLayout frameLayout = (FrameLayout) Options.Companion.findChildViewById(R.id.detail_thumbnail_root_layout, inflate);
                                                                                                    if (frameLayout != null) {
                                                                                                        i = R.id.detail_thumbs_disabled_view;
                                                                                                        NewPipeTextView newPipeTextView13 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.detail_thumbs_disabled_view, inflate);
                                                                                                        if (newPipeTextView13 != null) {
                                                                                                            i = R.id.detail_thumbs_down_count_view;
                                                                                                            NewPipeTextView newPipeTextView14 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.detail_thumbs_down_count_view, inflate);
                                                                                                            if (newPipeTextView14 != null) {
                                                                                                                i = R.id.detail_thumbs_down_img_view;
                                                                                                                ImageView imageView3 = (ImageView) Options.Companion.findChildViewById(R.id.detail_thumbs_down_img_view, inflate);
                                                                                                                if (imageView3 != null) {
                                                                                                                    i = R.id.detail_thumbs_up_count_view;
                                                                                                                    NewPipeTextView newPipeTextView15 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.detail_thumbs_up_count_view, inflate);
                                                                                                                    if (newPipeTextView15 != null) {
                                                                                                                        i = R.id.detail_thumbs_up_img_view;
                                                                                                                        ImageView imageView4 = (ImageView) Options.Companion.findChildViewById(R.id.detail_thumbs_up_img_view, inflate);
                                                                                                                        if (imageView4 != null) {
                                                                                                                            i = R.id.detail_title_root_layout;
                                                                                                                            FrameLayout frameLayout2 = (FrameLayout) Options.Companion.findChildViewById(R.id.detail_title_root_layout, inflate);
                                                                                                                            if (frameLayout2 != null) {
                                                                                                                                i = R.id.detail_toggle_secondary_controls_view;
                                                                                                                                ImageView imageView5 = (ImageView) Options.Companion.findChildViewById(R.id.detail_toggle_secondary_controls_view, inflate);
                                                                                                                                if (imageView5 != null) {
                                                                                                                                    i = R.id.detail_uploader_root_layout;
                                                                                                                                    LinearLayout linearLayout3 = (LinearLayout) Options.Companion.findChildViewById(R.id.detail_uploader_root_layout, inflate);
                                                                                                                                    if (linearLayout3 != null) {
                                                                                                                                        i = R.id.detail_uploader_text_view;
                                                                                                                                        NewPipeTextView newPipeTextView16 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.detail_uploader_text_view, inflate);
                                                                                                                                        if (newPipeTextView16 != null) {
                                                                                                                                            i = R.id.detail_uploader_thumbnail_view;
                                                                                                                                            ShapeableImageView shapeableImageView2 = (ShapeableImageView) Options.Companion.findChildViewById(R.id.detail_uploader_thumbnail_view, inflate);
                                                                                                                                            if (shapeableImageView2 != null) {
                                                                                                                                                i = R.id.detail_video_title_view;
                                                                                                                                                NewPipeTextView newPipeTextView17 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.detail_video_title_view, inflate);
                                                                                                                                                if (newPipeTextView17 != null) {
                                                                                                                                                    i = R.id.detail_view_count_view;
                                                                                                                                                    NewPipeTextView newPipeTextView18 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.detail_view_count_view, inflate);
                                                                                                                                                    if (newPipeTextView18 != null) {
                                                                                                                                                        i = R.id.details_panel;
                                                                                                                                                        if (((RelativeLayout) Options.Companion.findChildViewById(R.id.details_panel, inflate)) != null) {
                                                                                                                                                            i = R.id.error_panel;
                                                                                                                                                            View findChildViewById3 = Options.Companion.findChildViewById(R.id.error_panel, inflate);
                                                                                                                                                            if (findChildViewById3 != null) {
                                                                                                                                                                ErrorPanelBinding.bind(findChildViewById3);
                                                                                                                                                                i = R.id.loading_progress_bar;
                                                                                                                                                                if (((ProgressBar) Options.Companion.findChildViewById(R.id.loading_progress_bar, inflate)) != null) {
                                                                                                                                                                    i = R.id.overlay_buttons_layout;
                                                                                                                                                                    LinearLayout linearLayout4 = (LinearLayout) Options.Companion.findChildViewById(R.id.overlay_buttons_layout, inflate);
                                                                                                                                                                    if (linearLayout4 != null) {
                                                                                                                                                                        i = R.id.overlay_channel_text_view;
                                                                                                                                                                        NewPipeTextView newPipeTextView19 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.overlay_channel_text_view, inflate);
                                                                                                                                                                        if (newPipeTextView19 != null) {
                                                                                                                                                                            i = R.id.overlay_close_button;
                                                                                                                                                                            ImageButton imageButton = (ImageButton) Options.Companion.findChildViewById(R.id.overlay_close_button, inflate);
                                                                                                                                                                            if (imageButton != null) {
                                                                                                                                                                                i = R.id.overlay_layout;
                                                                                                                                                                                RelativeLayout relativeLayout = (RelativeLayout) Options.Companion.findChildViewById(R.id.overlay_layout, inflate);
                                                                                                                                                                                if (relativeLayout != null) {
                                                                                                                                                                                    i = R.id.overlay_metadata_layout;
                                                                                                                                                                                    LinearLayout linearLayout5 = (LinearLayout) Options.Companion.findChildViewById(R.id.overlay_metadata_layout, inflate);
                                                                                                                                                                                    if (linearLayout5 != null) {
                                                                                                                                                                                        i = R.id.overlay_play_pause_button;
                                                                                                                                                                                        ImageButton imageButton2 = (ImageButton) Options.Companion.findChildViewById(R.id.overlay_play_pause_button, inflate);
                                                                                                                                                                                        if (imageButton2 != null) {
                                                                                                                                                                                            i = R.id.overlay_play_queue_button;
                                                                                                                                                                                            ImageButton imageButton3 = (ImageButton) Options.Companion.findChildViewById(R.id.overlay_play_queue_button, inflate);
                                                                                                                                                                                            if (imageButton3 != null) {
                                                                                                                                                                                                i = R.id.overlay_thumbnail;
                                                                                                                                                                                                ImageButton imageButton4 = (ImageButton) Options.Companion.findChildViewById(R.id.overlay_thumbnail, inflate);
                                                                                                                                                                                                if (imageButton4 != null) {
                                                                                                                                                                                                    i = R.id.overlay_title_text_view;
                                                                                                                                                                                                    NewPipeTextView newPipeTextView20 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.overlay_title_text_view, inflate);
                                                                                                                                                                                                    if (newPipeTextView20 != null) {
                                                                                                                                                                                                        i = R.id.player_placeholder;
                                                                                                                                                                                                        FrameLayout frameLayout3 = (FrameLayout) Options.Companion.findChildViewById(R.id.player_placeholder, inflate);
                                                                                                                                                                                                        if (frameLayout3 != null) {
                                                                                                                                                                                                            i = R.id.position_view;
                                                                                                                                                                                                            AnimatedProgressBar animatedProgressBar = (AnimatedProgressBar) Options.Companion.findChildViewById(R.id.position_view, inflate);
                                                                                                                                                                                                            if (animatedProgressBar != null) {
                                                                                                                                                                                                                FragmentContainerView fragmentContainerView = (FragmentContainerView) Options.Companion.findChildViewById(R.id.relatedItemsLayout, inflate);
                                                                                                                                                                                                                i = R.id.tab_layout;
                                                                                                                                                                                                                TabLayout tabLayout = (TabLayout) Options.Companion.findChildViewById(R.id.tab_layout, inflate);
                                                                                                                                                                                                                if (tabLayout != null) {
                                                                                                                                                                                                                    i = R.id.touch_append_detail;
                                                                                                                                                                                                                    NewPipeTextView newPipeTextView21 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.touch_append_detail, inflate);
                                                                                                                                                                                                                    if (newPipeTextView21 != null) {
                                                                                                                                                                                                                        FrameLayout frameLayout4 = (FrameLayout) inflate;
                                                                                                                                                                                                                        i = R.id.view_pager;
                                                                                                                                                                                                                        ViewPager viewPager = (ViewPager) Options.Companion.findChildViewById(R.id.view_pager, inflate);
                                                                                                                                                                                                                        if (viewPager != null) {
                                                                                                                                                                                                                            this.binding = new FragmentVideoDetailBinding(frameLayout4, appBarLayout, linearLayout, newPipeTextView, newPipeTextView2, newPipeTextView3, newPipeTextView4, newPipeTextView5, newPipeTextView6, newPipeTextView7, newPipeTextView8, newPipeTextView9, findChildViewById, findChildViewById2, newPipeTextView10, newPipeTextView11, linearLayout2, newPipeTextView12, shapeableImageView, imageView, imageView2, frameLayout, newPipeTextView13, newPipeTextView14, imageView3, newPipeTextView15, imageView4, frameLayout2, imageView5, linearLayout3, newPipeTextView16, shapeableImageView2, newPipeTextView17, newPipeTextView18, linearLayout4, newPipeTextView19, imageButton, relativeLayout, linearLayout5, imageButton2, imageButton3, imageButton4, newPipeTextView20, frameLayout3, animatedProgressBar, fragmentContainerView, tabLayout, newPipeTextView21, viewPager);
                                                                                                                                                                                                                            return frameLayout4;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                }
                                                                                                                                                                                                            }
                                                                                                                                                                                                        }
                                                                                                                                                                                                    }
                                                                                                                                                                                                }
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                    }
                                                                                                                                                                                }
                                                                                                                                                                            }
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        boolean isFinishing = this.activity.isFinishing();
        PlayerHolder playerHolder = this.playerHolder;
        if (isFinishing && isPlayerAvailable() && this.player.videoPlayerSelected()) {
            playerHolder.stopService();
        } else {
            playerHolder.listener = null;
        }
        PreferenceManager.getDefaultSharedPreferences(this.activity).unregisterOnSharedPreferenceChangeListener(this.preferenceChangeListener);
        this.activity.unregisterReceiver(this.broadcastReceiver);
        this.activity.getContentResolver().unregisterContentObserver(this.settingsContentObserver);
        MaybeCallbackObserver maybeCallbackObserver = this.positionSubscriber;
        if (maybeCallbackObserver != null) {
            DisposableHelper.dispose(maybeCallbackObserver);
        }
        ConsumerSingleObserver consumerSingleObserver = this.currentWorker;
        if (consumerSingleObserver != null) {
            DisposableHelper.dispose(consumerSingleObserver);
        }
        this.disposables.clear();
        this.positionSubscriber = null;
        this.currentWorker = null;
        BottomSheetBehavior bottomSheetBehavior = this.bottomSheetBehavior;
        bottomSheetBehavior.callbacks.remove(this.bottomSheetCallback);
        if (this.activity.isFinishing()) {
            this.playQueue = null;
            this.currentInfo = null;
            stack = new LinkedList();
        }
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this.binding = null;
    }

    @Override // org.schabi.newpipe.player.event.PlayerServiceEventListener
    public final void onFullscreenStateChanged(boolean z) {
        setupBrightness();
        Player player = this.player;
        if (player == null || this.playerService == null || player.UIs.get(MainPlayerUi.class).isEmpty() || Optional.ofNullable(this.player).flatMap(new Utils$$ExternalSyntheticLambda1(21)).map(new Utils$$ExternalSyntheticLambda1(22)).map(new Utils$$ExternalSyntheticLambda1(25)).isEmpty()) {
            return;
        }
        if (z) {
            hideSystemUiIfNeeded();
            this.binding.overlayPlayPauseButton.requestFocus();
        } else {
            showSystemUi();
        }
        FragmentContainerView fragmentContainerView = this.binding.relatedItemsLayout;
        if (fragmentContainerView != null) {
            if (this.showRelatedItems) {
                fragmentContainerView.setVisibility(z ? 8 : 0);
            } else {
                fragmentContainerView.setVisibility(8);
            }
        }
        this.binding.appBarLayout.setExpanded(true, true, true);
        updateTabLayoutVisibility();
        tryAddVideoPlayerView();
    }

    @Override // org.schabi.newpipe.player.event.PlayerEventListener
    public final void onMetadataUpdate(StreamInfo streamInfo, PlayQueue playQueue) {
        StackItem stackItem;
        Iterator descendingIterator = stack.descendingIterator();
        while (true) {
            if (!descendingIterator.hasNext()) {
                stackItem = null;
                break;
            } else {
                stackItem = (StackItem) descendingIterator.next();
                if (stackItem.getPlayQueue().equalStreams(playQueue)) {
                    break;
                }
            }
        }
        if (stackItem != null) {
            stackItem.setTitle(streamInfo.getName());
            stackItem.setUrl(streamInfo.getUrl());
        }
        if (playQueue.equalStreams(this.playQueue)) {
            updateOverlayData(streamInfo.getName(), streamInfo.getUploaderName(), streamInfo.getThumbnails());
            if (this.currentInfo == null || !streamInfo.getUrl().equals(this.currentInfo.getUrl())) {
                this.currentInfo = streamInfo;
                setInitialData(streamInfo.getServiceId(), streamInfo.getUrl(), streamInfo.getName(), playQueue);
                this.autoPlayEnabled = false;
                new Handler(Looper.getMainLooper()).postDelayed(new VideoDetailFragment$$ExternalSyntheticLambda1(this, streamInfo, true), 200L);
            }
        }
    }

    @Override // org.schabi.newpipe.player.event.PlayerServiceEventListener
    public final void onMoreOptionsLongClicked() {
        AppBarLayout.Behavior behavior = (AppBarLayout.Behavior) ((CoordinatorLayout.LayoutParams) this.binding.appBarLayout.getLayoutParams()).mBehavior;
        ValueAnimator ofInt = ValueAnimator.ofInt(0, -this.binding.playerPlaceholder.getHeight());
        ofInt.setInterpolator(new DecelerateInterpolator());
        ofInt.addUpdateListener(new ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0(this, behavior, 2));
        ofInt.setInterpolator(new DecelerateInterpolator());
        ofInt.setDuration(500L);
        ofInt.start();
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        ConsumerSingleObserver consumerSingleObserver = this.currentWorker;
        if (consumerSingleObserver != null) {
            consumerSingleObserver.dispose();
        }
        restoreDefaultBrightness();
        PreferenceManager.getDefaultSharedPreferences(requireContext()).edit().putString(getString(R.string.stream_info_selected_tab_key), this.pageAdapter.getItemTitle(this.binding.viewPager.getCurrentItem())).apply();
    }

    @Override // org.schabi.newpipe.player.event.PlayerEventListener
    public final void onPlaybackUpdate(int i, int i2, boolean z, PlaybackParameters playbackParameters) {
        PlayQueue playQueue;
        Player player = this.player;
        this.binding.overlayPlayPauseButton.setImageResource((player == null || !player.isPlaying()) ? R.drawable.ic_play_arrow : R.drawable.ic_pause);
        if (i != 124 || this.binding.positionView.getAlpha() == 1.0f || (playQueue = this.player.playQueue) == null || playQueue.getItem() == null || !this.player.playQueue.getItem().getUrl().equals(this.url)) {
            return;
        }
        AppKt.animate$default(this.binding.positionView, true, 100L, null, 0L, null, 28);
        AppKt.animate$default(this.binding.detailPositionView, true, 100L, null, 0L, null, 28);
    }

    public final void onPlayerConnected(Player player, boolean z) {
        this.player = player;
        hideSystemUiIfNeeded();
        Optional optional = this.player.UIs.get(MainPlayerUi.class);
        if (this.player.videoPlayerSelected() || z) {
            if (DeviceUtils.isLandscape(requireContext())) {
                if ((!this.player.isPlaying() && this.player.playQueue != this.playQueue) || this.player.playQueue == null) {
                    this.autoPlayEnabled = true;
                }
                this.player.UIs.get(MainPlayerUi.class).ifPresent(new TagSet$$ExternalSyntheticLambda1(20));
                if (PlayerHelper.globalScreenOrientationLocked(this.activity) && !this.player.isPlaying()) {
                    this.player.play();
                }
            } else if (((Boolean) optional.map(new Utils$$ExternalSyntheticLambda1(23)).orElse(Boolean.FALSE)).booleanValue() && !DeviceUtils.isTablet(this.activity)) {
                optional.ifPresent(new TagSet$$ExternalSyntheticLambda1(18));
            }
            if (z || (this.currentInfo != null && isAutoplayEnabled() && optional.isEmpty())) {
                this.autoPlayEnabled = true;
                openVideoPlayerAutoFullscreen();
            }
            updateOverlayPlayQueueButtonVisibility();
        }
    }

    @Override // org.schabi.newpipe.player.event.PlayerEventListener
    public final void onProgressUpdate(int i, int i2, int i3) {
        if (this.player.isPlaying() && this.playQueue != null && this.player.playQueue.getItem().getUrl().equals(this.url)) {
            updatePlaybackProgress(i, i2);
        }
    }

    @Override // org.schabi.newpipe.player.event.PlayerEventListener
    public final void onQueueUpdate(PlayQueue playQueue) {
        StackItem stackItem;
        PlayQueueItem item;
        Flowable flowable;
        this.playQueue = playQueue;
        if (playQueue != null && (flowable = playQueue.broadcastReceiver) != null) {
            flowable.subscribe((FlowableSubscriber) new LambdaSubscriber(new VideoDetailFragment$$ExternalSyntheticLambda9(this, 2), Functions.ON_ERROR_MISSING));
        }
        StackItem stackItem2 = (StackItem) stack.peek();
        if (stackItem2 != null && !stackItem2.getPlayQueue().equalStreams(playQueue) && (item = playQueue.getItem()) != null) {
            stack.push(new StackItem(item.getServiceId(), item.getUrl(), item.getTitle(), playQueue));
            return;
        }
        Iterator descendingIterator = stack.descendingIterator();
        while (true) {
            if (!descendingIterator.hasNext()) {
                stackItem = null;
                break;
            } else {
                stackItem = (StackItem) descendingIterator.next();
                if (stackItem.getPlayQueue().equalStreams(playQueue)) {
                    break;
                }
            }
        }
        if (stackItem != null) {
            stackItem.setPlayQueue(playQueue);
        }
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        this.activity.sendBroadcast(new Intent("org.schabi.newpipe.VideoDetailFragment.ACTION_VIDEO_FRAGMENT_RESUMED"));
        updateOverlayPlayQueueButtonVisibility();
        setupBrightness();
        if (this.tabSettingsChanged) {
            this.tabSettingsChanged = false;
            initTabs();
            StreamInfo streamInfo = this.currentInfo;
            if (streamInfo != null) {
                updateTabs(streamInfo);
            }
        }
        if (!this.wasLoading.getAndSet(false) || this.url == null) {
            return;
        }
        startLoading(false);
    }

    @Override // org.schabi.newpipe.player.event.PlayerServiceEventListener
    public final void onScreenRotationButtonClicked() {
        boolean isLandscape = DeviceUtils.isLandscape(requireContext());
        if (DeviceUtils.isTv(this.activity) || (DeviceUtils.isTablet(this.activity) && (!PlayerHelper.globalScreenOrientationLocked(this.activity) || isLandscape))) {
            this.player.UIs.get(MainPlayerUi.class).ifPresent(new TagSet$$ExternalSyntheticLambda1(18));
        } else {
            this.activity.setRequestedOrientation(isLandscape ? 1 : 6);
        }
    }

    @Override // org.schabi.newpipe.player.event.PlayerEventListener
    public final void onServiceStopped() {
        FragmentVideoDetailBinding fragmentVideoDetailBinding = this.binding;
        if (fragmentVideoDetailBinding != null) {
            fragmentVideoDetailBinding.overlayPlayPauseButton.setImageResource(R.drawable.ic_play_arrow);
            StreamInfo streamInfo = this.currentInfo;
            if (streamInfo != null) {
                updateOverlayData(streamInfo.getName(), this.currentInfo.getUploaderName(), this.currentInfo.getThumbnails());
            }
            updateOverlayPlayQueueButtonVisibility();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        if (this.activity.isChangingConfigurations()) {
            return;
        }
        this.activity.sendBroadcast(new Intent("org.schabi.newpipe.VideoDetailFragment.ACTION_VIDEO_FRAGMENT_STOPPED"));
    }

    @Override // org.schabi.newpipe.player.event.PlayerServiceEventListener
    public final void onViewCreated() {
        tryAddVideoPlayerView();
    }

    public final void openBackgroundPlayer(boolean z) {
        boolean z2 = PreferenceManager.getDefaultSharedPreferences(this.activity).getBoolean(this.activity.getString(R.string.use_external_audio_player_key), false);
        toggleFullscreenIfInFullscreenMode();
        if (isPlayerAvailable()) {
            this.player.setRecovery();
        }
        int i = 1;
        if (!z2) {
            if (!isPlayerAvailable()) {
                this.playerHolder.startService(false, this);
            }
            PlayQueue playQueue = setupPlayQueueForIntent(z);
            if (z) {
                SQLite.enqueueOnPlayer(this.activity, playQueue, PlayerType.AUDIO);
                return;
            } else {
                replaceQueueIfUserConfirms(new VideoDetailFragment$$ExternalSyntheticLambda44(this, playQueue, i));
                return;
            }
        }
        StreamInfo streamInfo = this.currentInfo;
        if (streamInfo == null) {
            return;
        }
        List filteredAudioStreams = ListHelper.getFilteredAudioStreams(this.activity, ListHelper.getUrlAndNonTorrentStreams(streamInfo.getAudioStreams()));
        if (filteredAudioStreams.isEmpty()) {
            Toast.makeText(this.activity, R.string.no_audio_streams_available_for_external_players, 0).show();
            return;
        }
        int size = filteredAudioStreams.size();
        AppCompatActivity appCompatActivity = this.activity;
        if (size == 1) {
            startOnExternalPlayer(appCompatActivity, this.currentInfo, (Stream) filteredAudioStreams.get(0));
            return;
        }
        int defaultAudioFormat = ListHelper.getDefaultAudioFormat(appCompatActivity, filteredAudioStreams);
        CharSequence[] charSequenceArr = (CharSequence[]) Collection.EL.stream(filteredAudioStreams).map(new Function() { // from class: org.schabi.newpipe.fragments.detail.VideoDetailFragment$$ExternalSyntheticLambda59
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo646andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                LinkedList linkedList = VideoDetailFragment.stack;
                return Localization.audioTrackName(VideoDetailFragment.this.activity, (AudioStream) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }).toArray(new Utils$$ExternalSyntheticLambda2(2));
        AlertDialog.Builder builder = new AlertDialog.Builder(this.activity);
        builder.setTitle(R.string.select_audio_track_external_players);
        builder.setNeutralButton(R.string.open_in_browser, new VideoDetailFragment$$ExternalSyntheticLambda54(this, i));
        AlertController.AlertParams alertParams = builder.P;
        alertParams.mItems = charSequenceArr;
        alertParams.mOnClickListener = null;
        alertParams.mCheckedItem = defaultAudioFormat;
        alertParams.mIsSingleChoice = true;
        builder.setNegativeButton(R.string.cancel, null).setPositiveButton(R.string.ok, new FeedFragment$$ExternalSyntheticLambda9(this, filteredAudioStreams, 4)).show();
    }

    public final void openChannel(String str, String str2) {
        try {
            SQLite.openChannelFragment(getFM(), this.currentInfo.getServiceId(), str, str2);
        } catch (Exception e) {
            ErrorUtil.showUiErrorSnackbar(this, "Opening channel fragment", e);
        }
    }

    public final void openDownloadDialog() {
        if (this.currentInfo == null) {
            return;
        }
        try {
            new DownloadDialog(this.activity, this.currentInfo).show(this.activity.getSupportFragmentManager(), "downloadDialog");
        } catch (Exception e) {
            ErrorUtil.showSnackbar(this.activity, new ErrorInfo(e, UserAction.DOWNLOAD_OPEN_DIALOG, "Showing download dialog", this.currentInfo));
        }
    }

    public final void openPopupPlayer(boolean z) {
        if (Utility.isPopupEnabledElseAsk(this.activity)) {
            int i = 0;
            if (isPlayerAvailable()) {
                this.player.setRecovery();
            } else {
                this.playerHolder.startService(false, this);
            }
            toggleFullscreenIfInFullscreenMode();
            PlayQueue playQueue = setupPlayQueueForIntent(z);
            if (z) {
                SQLite.enqueueOnPlayer(this.activity, playQueue, PlayerType.POPUP);
            } else {
                replaceQueueIfUserConfirms(new VideoDetailFragment$$ExternalSyntheticLambda44(this, playQueue, i));
            }
        }
    }

    public final void openVideoPlayer(boolean z) {
        int i = 3;
        if (z && !DeviceUtils.isLandscape(requireContext()) && PlayerHelper.globalScreenOrientationLocked(requireContext())) {
            updateBottomSheetState(3);
            onScreenRotationButtonClicked();
        }
        int i2 = 0;
        int i3 = 1;
        if (!PreferenceManager.getDefaultSharedPreferences(this.activity).getBoolean(getString(R.string.use_external_video_player_key), false)) {
            replaceQueueIfUserConfirms(new VideoDetailFragment$$ExternalSyntheticLambda0(this, i3));
            return;
        }
        if (this.currentInfo == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.activity);
        builder.setTitle(R.string.select_quality_external_players);
        builder.setNeutralButton(R.string.open_in_browser, new VideoDetailFragment$$ExternalSyntheticLambda54(this, i2));
        ArrayList sortedStreamVideosList = ListHelper.getSortedStreamVideosList(this.activity, ListHelper.getUrlAndNonTorrentStreams(this.currentInfo.getVideoStreams()), ListHelper.getUrlAndNonTorrentStreams(this.currentInfo.getVideoOnlyStreams()), false);
        if (sortedStreamVideosList.isEmpty()) {
            builder.setMessage(R.string.no_video_streams_available_for_external_players);
            builder.setPositiveButton(R.string.ok, null);
        } else {
            AppCompatActivity appCompatActivity = this.activity;
            int defaultResolutionWithDefaultFormat = ListHelper.getDefaultResolutionWithDefaultFormat(appCompatActivity, ListHelper.computeDefaultResolution(appCompatActivity, R.string.default_resolution_key, R.string.default_resolution_value), sortedStreamVideosList);
            CharSequence[] charSequenceArr = (CharSequence[]) Collection.EL.stream(sortedStreamVideosList).map(new Utils$$ExternalSyntheticLambda1(24)).toArray(new Utils$$ExternalSyntheticLambda2(i3));
            AlertController.AlertParams alertParams = builder.P;
            alertParams.mItems = charSequenceArr;
            alertParams.mOnClickListener = null;
            alertParams.mCheckedItem = defaultResolutionWithDefaultFormat;
            alertParams.mIsSingleChoice = true;
            builder.setNegativeButton(R.string.cancel, null);
            builder.setPositiveButton(R.string.ok, new FeedFragment$$ExternalSyntheticLambda9(this, sortedStreamVideosList, i));
        }
        builder.show();
    }

    public final void openVideoPlayerAutoFullscreen() {
        boolean z;
        if (!this.forceFullscreen) {
            Context requireContext = requireContext();
            if (!PreferenceManager.getDefaultSharedPreferences(requireContext).getBoolean(requireContext.getString(R.string.start_main_player_fullscreen_key), false)) {
                z = false;
                openVideoPlayer(z);
                this.forceFullscreen = false;
            }
        }
        z = true;
        openVideoPlayer(z);
        this.forceFullscreen = false;
    }

    public final void replaceQueueIfUserConfirms(Runnable runnable) {
        PlayQueue playQueue = isPlayerAvailable() ? this.player.playQueue : null;
        AppCompatActivity appCompatActivity = this.activity;
        if (!PreferenceManager.getDefaultSharedPreferences(appCompatActivity).getBoolean(appCompatActivity.getString(R.string.clear_queue_confirmation_key), false) || !isPlayerAvailable() || this.player.isStopped() || playQueue == null || playQueue.equalStreams(this.playQueue)) {
            runnable.run();
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.activity);
        builder.setTitle(R.string.clear_queue_confirmation_description);
        builder.setNegativeButton(R.string.cancel, null).setPositiveButton(R.string.ok, new VideoDetailFragment$$ExternalSyntheticLambda54(runnable, 2)).show();
    }

    public final void restoreDefaultBrightness() {
        WindowManager.LayoutParams attributes = this.activity.getWindow().getAttributes();
        if (attributes.screenBrightness == -1.0f) {
            return;
        }
        attributes.screenBrightness = -1.0f;
        this.activity.getWindow().setAttributes(attributes);
    }

    public final void restoreDefaultOrientation() {
        if (isPlayerAvailable() && this.player.videoPlayerSelected()) {
            toggleFullscreenIfInFullscreenMode();
        }
        AppCompatActivity appCompatActivity = this.activity;
        if (appCompatActivity == null || DeviceUtils.isTablet(appCompatActivity)) {
            return;
        }
        this.activity.setRequestedOrientation(-1);
    }

    public final void runWorker(boolean z, final boolean z2) {
        final SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.activity);
        SingleObserveOn subscribeOn = ExtractorHelper.getStreamInfo(this.serviceId, this.url, z).subscribeOn(Schedulers.IO);
        Scheduler mainThread = AndroidSchedulers.mainThread();
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer() { // from class: org.schabi.newpipe.fragments.detail.VideoDetailFragment$$ExternalSyntheticLambda8
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                StreamInfo streamInfo = (StreamInfo) obj;
                LinkedList linkedList = VideoDetailFragment.stack;
                VideoDetailFragment videoDetailFragment = VideoDetailFragment.this;
                videoDetailFragment.isLoading.set(false);
                videoDetailFragment.hideMainPlayerOnLoadingNewStream();
                if (streamInfo.getAgeLimit() != 0 && !defaultSharedPreferences.getBoolean(videoDetailFragment.getString(R.string.show_age_restricted_content), false)) {
                    videoDetailFragment.showTextError(videoDetailFragment.getString(R.string.restricted_video, videoDetailFragment.getString(R.string.show_age_restricted_content_title)));
                    return;
                }
                videoDetailFragment.handleResult(streamInfo);
                videoDetailFragment.binding.detailContentRootHiding.setVisibility(0);
                if (z2) {
                    if (videoDetailFragment.playQueue == null) {
                        videoDetailFragment.playQueue = new SinglePlayQueue(streamInfo);
                    }
                    if (VideoDetailFragment.stack.isEmpty() || !((StackItem) VideoDetailFragment.stack.peek()).getPlayQueue().equalStreams(videoDetailFragment.playQueue)) {
                        VideoDetailFragment.stack.push(new StackItem(videoDetailFragment.serviceId, videoDetailFragment.url, videoDetailFragment.title, videoDetailFragment.playQueue));
                    }
                }
                if (videoDetailFragment.isAutoplayEnabled() || videoDetailFragment.forceFullscreen) {
                    videoDetailFragment.openVideoPlayerAutoFullscreen();
                }
            }
        }, new VideoDetailFragment$$ExternalSyntheticLambda9(this, 0));
        try {
            subscribeOn.subscribe(new SingleObserveOn.ObserveOnSingleObserver(consumerSingleObserver, mainThread));
            this.currentWorker = consumerSingleObserver;
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            throw Owner.CC.m(th, "subscribeActual failed", th);
        }
    }

    public final void selectAndLoadVideo(int i, String str, String str2, PlayQueue playQueue) {
        PlayQueue playQueue2;
        if (isPlayerAvailable() && playQueue != null && (playQueue2 = this.playQueue) != null && playQueue2.getItem() != null && !this.playQueue.getItem().getUrl().equals(str)) {
            this.player.loadController.preloadingEnabled = false;
        }
        setInitialData(i, str, str2, playQueue);
        super.startLoading(false);
        initTabs();
        this.currentInfo = null;
        ConsumerSingleObserver consumerSingleObserver = this.currentWorker;
        if (consumerSingleObserver != null) {
            DisposableHelper.dispose(consumerSingleObserver);
        }
        runWorker(false, true);
    }

    public final void setAutoPlay(boolean z) {
        this.autoPlayEnabled = z;
    }

    public final void setHeightThumbnail() {
        float f;
        float f2;
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        boolean z = displayMetrics.heightPixels > displayMetrics.widthPixels;
        ViewTreeObserver viewTreeObserver = requireView().getViewTreeObserver();
        AnonymousClass2 anonymousClass2 = this.preDrawListener;
        viewTreeObserver.removeOnPreDrawListener(anonymousClass2);
        if (isFullscreen()) {
            int height = (DeviceUtils.isInMultiWindow(this.activity) ? requireView() : this.activity.getWindow().getDecorView()).getHeight();
            if (height != 0) {
                setHeightThumbnail(height, displayMetrics);
                return;
            } else {
                requireView().getViewTreeObserver().addOnPreDrawListener(anonymousClass2);
                return;
            }
        }
        if (z) {
            f = displayMetrics.widthPixels;
            f2 = 1.7777778f;
        } else {
            f = displayMetrics.heightPixels;
            f2 = 2.0f;
        }
        setHeightThumbnail((int) (f / f2), displayMetrics);
    }

    public final void setInitialData(int i, String str, String str2, PlayQueue playQueue) {
        this.serviceId = i;
        this.url = str;
        this.title = str2;
        this.playQueue = playQueue;
    }

    public final void setOverlayElementsClickable(boolean z) {
        this.binding.overlayThumbnail.setClickable(z);
        this.binding.overlayThumbnail.setLongClickable(z);
        this.binding.overlayMetadataLayout.setClickable(z);
        this.binding.overlayMetadataLayout.setLongClickable(z);
        this.binding.overlayButtonsLayout.setClickable(z);
        this.binding.overlayPlayQueueButton.setClickable(z);
        this.binding.overlayPlayPauseButton.setClickable(z);
        this.binding.overlayCloseButton.setClickable(z);
    }

    public final void setupBrightness() {
        AppCompatActivity appCompatActivity = this.activity;
        if (appCompatActivity == null) {
            return;
        }
        WindowManager.LayoutParams attributes = appCompatActivity.getWindow().getAttributes();
        if (!isFullscreen() || this.bottomSheetState != 3) {
            restoreDefaultBrightness();
            return;
        }
        AppCompatActivity appCompatActivity2 = this.activity;
        if (!PreferenceManager.getDefaultSharedPreferences(appCompatActivity2).getString(appCompatActivity2.getString(R.string.right_gesture_control_key), appCompatActivity2.getString(R.string.default_right_gesture_control_value)).equals(getString(R.string.brightness_control_key))) {
            AppCompatActivity appCompatActivity3 = this.activity;
            if (!PreferenceManager.getDefaultSharedPreferences(appCompatActivity3).getString(appCompatActivity3.getString(R.string.left_gesture_control_key), appCompatActivity3.getString(R.string.default_left_gesture_control_value)).equals(getString(R.string.brightness_control_key))) {
                return;
            }
        }
        AppCompatActivity appCompatActivity4 = this.activity;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(appCompatActivity4);
        float f = System.currentTimeMillis() - defaultSharedPreferences.getLong(appCompatActivity4.getString(R.string.screen_brightness_timestamp_key), 0L) <= 14400000 ? defaultSharedPreferences.getFloat(appCompatActivity4.getString(R.string.screen_brightness_key), -1.0f) : -1.0f;
        if (f == attributes.screenBrightness) {
            return;
        }
        attributes.screenBrightness = f;
        this.activity.getWindow().setAttributes(attributes);
    }

    public final PlayQueue setupPlayQueueForIntent(boolean z) {
        if (z) {
            return new SinglePlayQueue(this.currentInfo);
        }
        PlayQueue playQueue = this.playQueue;
        return (playQueue == null || playQueue.isEmpty()) ? new SinglePlayQueue(this.currentInfo) : playQueue;
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public final void showLoading() {
        super.showLoading();
        int i = this.serviceId;
        String str = this.url;
        ExtractorHelper.checkServiceId(i);
        ExtractorHelper$$ExternalSyntheticLambda0 extractorHelper$$ExternalSyntheticLambda0 = new ExtractorHelper$$ExternalSyntheticLambda0(i, 1, str);
        BlockingMultiObserver blockingMultiObserver = new BlockingMultiObserver(1);
        try {
            try {
                ((Maybe) ((MaybeSource) extractorHelper$$ExternalSyntheticLambda0.get())).subscribe(blockingMultiObserver);
            } catch (Throwable th) {
                AppKt.throwIfFatal(th);
                blockingMultiObserver.onSubscribe(EmptyDisposable.INSTANCE);
                blockingMultiObserver.onError(th);
            }
            if (blockingMultiObserver.blockingGet() == null) {
                this.binding.detailContentRootHiding.setVisibility(4);
            }
            AppKt.animate$default(this.binding.detailThumbnailPlayButton, false, 50L, null, 0L, null, 28);
            AppKt.animate$default(this.binding.detailDurationView, false, 100L, null, 0L, null, 28);
            this.binding.detailPositionView.setVisibility(8);
            this.binding.positionView.setVisibility(8);
            this.binding.detailVideoTitleView.setText(this.title);
            this.binding.detailVideoTitleView.setMaxLines(1);
            AppKt.animate$default(this.binding.detailVideoTitleView, true, 0L, null, 0L, null, 28);
            this.binding.detailToggleSecondaryControlsView.setVisibility(8);
            this.binding.detailTitleRootLayout.setClickable(false);
            this.binding.detailSecondaryControlPanel.setVisibility(8);
            FragmentContainerView fragmentContainerView = this.binding.relatedItemsLayout;
            if (fragmentContainerView != null) {
                if (this.showRelatedItems) {
                    fragmentContainerView.setVisibility(isFullscreen() ? 8 : 4);
                } else {
                    fragmentContainerView.setVisibility(8);
                }
            }
            Okio.getRequestManager(this.binding.detailThumbnailImageView).dispose();
            Okio.getRequestManager(this.binding.detailSubChannelThumbnailView).dispose();
            Okio.getRequestManager(this.binding.overlayThumbnail).dispose();
            Okio.getRequestManager(this.binding.detailUploaderThumbnailView).dispose();
            this.binding.detailThumbnailImageView.setImageBitmap(null);
            this.binding.detailSubChannelThumbnailView.setImageBitmap(null);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th2) {
            throw Owner.CC.m(th2, "subscribeActual failed", th2);
        }
    }

    public final void showSystemUi() {
        AppCompatActivity appCompatActivity = this.activity;
        if (appCompatActivity == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            appCompatActivity.getWindow().getAttributes().layoutInDisplayCutoutMode = 0;
        }
        this.activity.getWindow().getDecorView().setSystemUiVisibility(0);
        this.activity.getWindow().clearFlags(1024);
        this.activity.getWindow().setStatusBarColor(Options.Companion.resolveColorFromAttr(requireContext(), android.R.attr.colorPrimary));
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public final void startLoading(boolean z) {
        super.startLoading(z);
        initTabs();
        this.currentInfo = null;
        ConsumerSingleObserver consumerSingleObserver = this.currentWorker;
        if (consumerSingleObserver != null) {
            DisposableHelper.dispose(consumerSingleObserver);
        }
        runWorker(z, stack.isEmpty());
    }

    public final void startOnExternalPlayer(Context context, StreamInfo streamInfo, Stream stream) {
        SQLite.playOnExternalPlayer(context, this.currentInfo.getName(), this.currentInfo.getSubChannelName(), stream);
        PlaylistHeaderBinding playlistHeaderBinding = new PlaylistHeaderBinding(requireContext());
        Maybe subscribeOn = !((SharedPreferences) playlistHeaderBinding.playlistTitleView).getBoolean((String) playlistHeaderBinding.uploaderAvatarView, false) ? MaybeEmpty.INSTANCE : new MaybeFromCallable(new HistoryRecordManager$$ExternalSyntheticLambda9(playlistHeaderBinding, streamInfo, OffsetDateTime.now(ZoneOffset.UTC), 0)).subscribeOn(Schedulers.IO);
        MaybeCallbackObserver maybeCallbackObserver = new MaybeCallbackObserver(new Utils$$ExternalSyntheticBUOutline0(14), new VideoDetailFragment$$ExternalSyntheticLambda9(this, 3), Functions.EMPTY_ACTION);
        try {
            subscribeOn.subscribe(new MaybeFromSingle$FromSingleObserver(maybeCallbackObserver, 1));
            this.disposables.add(maybeCallbackObserver);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            throw Owner.CC.m(th, "subscribeActual failed", th);
        }
    }

    public final void toggleFullscreenIfInFullscreenMode() {
        if (isPlayerAvailable()) {
            this.player.UIs.get(MainPlayerUi.class).ifPresent(new TagSet$$ExternalSyntheticLambda1(16));
        }
    }

    public final void tryAddVideoPlayerView() {
        if (isPlayerAvailable() && getView() != null) {
            setHeightThumbnail();
        }
        new Handler(Looper.getMainLooper()).post(new VideoDetailFragment$$ExternalSyntheticLambda0(this, 3));
    }

    public final void updateBottomSheetState(int i) {
        this.bottomSheetState = i;
        if (i == 1 || i == 2) {
            return;
        }
        this.lastStableBottomSheetState = i;
    }

    public final void updateOverlayData(String str, String str2, List list) {
        NewPipeTextView newPipeTextView = this.binding.overlayTitleTextView;
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        newPipeTextView.setText(str);
        NewPipeTextView newPipeTextView2 = this.binding.overlayChannelTextView;
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        newPipeTextView2.setText(str2);
        this.binding.overlayThumbnail.setImageDrawable(null);
        ImageButton imageButton = this.binding.overlayThumbnail;
        list.getClass();
        Cookie.Companion.loadImageDefault(imageButton, ImageStrategy.choosePreferredImage(list), R.drawable.placeholder_thumbnail_video, false);
    }

    public final void updateOverlayPlayQueueButtonVisibility() {
        PlayQueue playQueue;
        Player player = this.player;
        boolean z = player == null || (playQueue = player.playQueue) == null || playQueue.isEmpty();
        FragmentVideoDetailBinding fragmentVideoDetailBinding = this.binding;
        if (fragmentVideoDetailBinding != null) {
            fragmentVideoDetailBinding.overlayPlayQueueButton.setVisibility(z ? 8 : 0);
        }
    }

    public final void updatePlaybackProgress(long j, long j2) {
        if (BundleKt.getResumePlaybackEnabled(this.activity)) {
            int i = (int) (j / 1000);
            int abs = Math.abs(this.binding.positionView.getProgress() - i);
            this.binding.positionView.setMax((int) (j2 / 1000));
            FragmentVideoDetailBinding fragmentVideoDetailBinding = this.binding;
            if (abs > 2) {
                fragmentVideoDetailBinding.positionView.setProgressAnimated(i);
            } else {
                fragmentVideoDetailBinding.positionView.setProgress(i);
            }
            String durationString = Localization.getDurationString(i);
            if (durationString != this.binding.detailPositionView.getText()) {
                this.binding.detailPositionView.setText(durationString);
            }
            if (this.binding.positionView.getVisibility() != 0) {
                AppKt.animate$default(this.binding.positionView, true, 100L, null, 0L, null, 28);
                AppKt.animate$default(this.binding.detailPositionView, true, 100L, null, 0L, null, 28);
            }
        }
    }

    public final void updateTabIconsAndContentDescriptions() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.tabIcons;
            if (i >= arrayList.size()) {
                return;
            }
            TabLayout.Tab tabAt = this.binding.tabLayout.getTabAt(i);
            if (tabAt != null) {
                tabAt.setIcon(((Integer) arrayList.get(i)).intValue());
                int intValue = ((Integer) this.tabContentDescriptions.get(i)).intValue();
                TabLayout tabLayout = tabAt.parent;
                if (tabLayout == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Tab not attached to a TabLayout");
                    return;
                } else {
                    tabAt.contentDesc = tabLayout.getResources().getText(intValue);
                    tabAt.updateView();
                }
            }
            i++;
        }
    }

    public final void updateTabLayoutVisibility() {
        if (this.binding == null) {
            return;
        }
        if (this.pageAdapter.mFragmentList.size() < 2 || this.binding.viewPager.getVisibility() != 0) {
            this.binding.tabLayout.setVisibility(8);
        } else {
            this.binding.tabLayout.post(new VideoDetailFragment$$ExternalSyntheticLambda0(this, 0));
        }
    }

    public final void updateTabs(StreamInfo streamInfo) {
        if (this.showRelatedItems) {
            if (this.binding.relatedItemsLayout == null) {
                TabAdapter tabAdapter = this.pageAdapter;
                RelatedItemsFragment relatedItemsFragment = RelatedItemsFragment.getInstance(streamInfo);
                int indexOf = tabAdapter.mFragmentTitleList.indexOf("NEXT VIDEO");
                if (indexOf != -1) {
                    tabAdapter.mFragmentList.set(indexOf, relatedItemsFragment);
                }
            } else {
                FragmentManager childFragmentManager = getChildFragmentManager();
                childFragmentManager.getClass();
                BackStackRecord backStackRecord = new BackStackRecord(childFragmentManager);
                backStackRecord.replace(R.id.relatedItemsLayout, RelatedItemsFragment.getInstance(streamInfo), null);
                backStackRecord.commitInternal(true, true);
                this.binding.relatedItemsLayout.setVisibility(isFullscreen() ? 8 : 0);
            }
        }
        if (this.showDescription) {
            TabAdapter tabAdapter2 = this.pageAdapter;
            DescriptionFragment descriptionFragment = new DescriptionFragment();
            descriptionFragment.streamInfo = streamInfo;
            int indexOf2 = tabAdapter2.mFragmentTitleList.indexOf("DESCRIPTION TAB");
            if (indexOf2 != -1) {
                tabAdapter2.mFragmentList.set(indexOf2, descriptionFragment);
            }
        }
        this.binding.viewPager.setVisibility(0);
        updateTabLayoutVisibility();
        this.pageAdapter.notifyDataSetUpdate();
        updateTabIconsAndContentDescriptions();
    }

    @Override // org.schabi.newpipe.player.event.PlayerEventListener
    public final /* synthetic */ void onAudioTrackUpdate() {
    }

    public final void setHeightThumbnail(final int i, DisplayMetrics displayMetrics) {
        this.binding.detailThumbnailImageView.setLayoutParams(new FrameLayout.LayoutParams(-1, i));
        this.binding.detailThumbnailImageView.setMinimumHeight(i);
        if (isPlayerAvailable()) {
            final int i2 = (int) (displayMetrics.heightPixels * 0.7f);
            this.player.UIs.get(VideoPlayerUi.class).ifPresent(new java.util.function.Consumer() { // from class: org.schabi.newpipe.fragments.detail.VideoDetailFragment$$ExternalSyntheticLambda20
                @Override // java.util.function.Consumer
                /* renamed from: accept */
                public final void s(Object obj) {
                    VideoPlayerUi videoPlayerUi = (VideoPlayerUi) obj;
                    LinkedList linkedList = VideoDetailFragment.stack;
                    ExpandableSurfaceView expandableSurfaceView = videoPlayerUi.binding.surfaceView;
                    boolean isFullscreen = videoPlayerUi.isFullscreen();
                    int i3 = i;
                    expandableSurfaceView.setHeights(i3, isFullscreen ? i3 : i2);
                }

                public /* synthetic */ java.util.function.Consumer andThen(java.util.function.Consumer consumer) {
                    return Consumer$CC.$default$andThen(this, consumer);
                }
            });
        }
    }
}
