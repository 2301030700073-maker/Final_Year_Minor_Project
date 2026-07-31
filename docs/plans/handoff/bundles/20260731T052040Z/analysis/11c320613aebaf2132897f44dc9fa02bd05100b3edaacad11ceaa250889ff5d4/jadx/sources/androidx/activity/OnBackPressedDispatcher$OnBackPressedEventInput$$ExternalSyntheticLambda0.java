package androidx.activity;

import android.content.ClipData;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.Display;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.compose.ui.scrollcapture.ScrollCapture;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl;
import androidx.fragment.app.Fragment;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import coil3.memory.MemoryCacheService;
import com.google.android.exoplayer2.extractor.BinarySearchSeeker;
import com.google.android.exoplayer2.extractor.FlacStreamMetadata;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.trackselection.RandomTrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelectionUtil;
import com.google.android.exoplayer2.video.VideoFrameReleaseHelper;
import com.google.android.material.internal.CheckableGroup;
import com.google.android.material.navigation.NavigationView;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import j$.nio.file.Files;
import j$.nio.file.Path;
import j$.nio.file.StandardCopyOption;
import java.util.List;
import java.util.zip.ZipInputStream;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.PriorityQueue;
import org.jsoup.nodes.CDataNode;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Node;
import org.jsoup.select.NodeVisitor;
import org.schabi.newpipe.database.stream.dao.StreamDAO_Impl;
import org.schabi.newpipe.database.stream.dao.StreamStateDAO_Impl;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.database.stream.model.StreamStateEntity;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.kiosk.KioskExtractor;
import org.schabi.newpipe.extractor.kiosk.KioskList$KioskExtractorFactory;
import org.schabi.newpipe.extractor.services.bandcamp.BandcampService;
import org.schabi.newpipe.extractor.services.peertube.PeertubeService;
import org.schabi.newpipe.extractor.services.peertube.extractors.PeertubeTrendingExtractor;
import org.schabi.newpipe.extractor.services.peertube.linkHandler.PeertubeTrendingLinkHandlerFactory;
import org.schabi.newpipe.extractor.services.soundcloud.extractors.SoundcloudChartsExtractor;
import org.schabi.newpipe.extractor.services.soundcloud.linkHandler.SoundcloudChartsLinkHandlerFactory;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.local.dialog.PlaylistAppendDialog;
import org.schabi.newpipe.local.feed.service.FeedLoadService;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupDialogViewModel;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupReorderDialogViewModel;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.settings.notifications.NotificationModeConfigAdapter;
import org.schabi.newpipe.settings.notifications.NotificationModeConfigFragment;
import org.schabi.newpipe.util.ZipHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 implements SupportSQLiteOpenHelper.Factory, BinarySearchSeeker.SeekTimestampConverter, TrackSelectionUtil.AdaptiveTrackSelectionFactory, VideoFrameReleaseHelper.DisplayHelper.Listener, NodeVisitor, NavigationView.OnNavigationItemSelectedListener, KioskList$KioskExtractorFactory, Consumer, SwipeRefreshLayout.OnRefreshListener, Action, Predicate, Function, NotificationModeConfigAdapter.ModeToggleListener, ZipHelper.InputStreamConsumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(PeertubeService peertubeService) {
        this.$r8$classId = 9;
        PeertubeTrendingLinkHandlerFactory peertubeTrendingLinkHandlerFactory = PeertubeTrendingLinkHandlerFactory.INSTANCE;
        this.f$0 = peertubeService;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.f$0;
        switch (i) {
            case 12:
                ErrorUtil.showSnackbar(((Fragment) obj2).requireContext(), new ErrorInfo((Throwable) obj, UserAction.OPEN_INFO_ITEM_DIALOG, "Got an error when trying to mark as watched"));
                break;
            case 13:
                PlaylistAppendDialog.m871$r8$lambda$32Imcs3GYaBAK9Bg8ybmEKtLfQ((PlaylistAppendDialog) obj2, (List) obj);
                break;
            default:
                ((Player) obj2).triggerProgressUpdate();
                break;
        }
    }

    @Override // org.schabi.newpipe.util.ZipHelper.InputStreamConsumer
    public void acceptStream(ZipInputStream zipInputStream) {
        Files.copy(zipInputStream, (Path) this.f$0, StandardCopyOption.REPLACE_EXISTING);
    }

    @Override // io.reactivex.rxjava3.functions.Function
    public Object apply(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.f$0;
        switch (i) {
            case 17:
                return Long.valueOf(((StreamDAO_Impl) ((PlaylistHeaderBinding) obj2).uploaderLayout).upsert(new StreamEntity((StreamInfo) obj)));
            default:
                return ((StreamStateDAO_Impl) obj2).getState(((Long) obj).longValue());
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
    public SupportSQLiteOpenHelper create(CheckableGroup checkableGroup) {
        Context context = (Context) this.f$0;
        String str = (String) checkableGroup.checkedIds;
        PriorityQueue priorityQueue = (PriorityQueue) checkableGroup.onCheckedStateChangeListener;
        priorityQueue.getClass();
        if (str != null && str.length() != 0) {
            return new FrameworkSQLiteOpenHelper(context, str, priorityQueue, true, true);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Must set a non-null database name to a configuration that uses the no backup directory.");
        return null;
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelectionUtil.AdaptiveTrackSelectionFactory
    public ExoTrackSelection createAdaptiveTrackSelection(ExoTrackSelection.Definition definition) {
        ExoTrackSelection lambda$createTrackSelections$0;
        lambda$createTrackSelections$0 = ((RandomTrackSelection.Factory) this.f$0).lambda$createTrackSelections$0(definition);
        return lambda$createTrackSelections$0;
    }

    @Override // org.schabi.newpipe.extractor.kiosk.KioskList$KioskExtractorFactory
    public KioskExtractor createNewKiosk(String str, String str2) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 9:
                return new PeertubeTrendingExtractor((PeertubeService) obj, PeertubeTrendingLinkHandlerFactory.INSTANCE.fromId(str2), str2);
            default:
                return new SoundcloudChartsExtractor((BandcampService) obj, SoundcloudChartsLinkHandlerFactory.INSTANCE.fromUrl(str), str2);
        }
    }

    @Override // org.jsoup.select.NodeVisitor
    public void head(Node node, int i) {
        StringBuilder sb = (StringBuilder) this.f$0;
        if (node instanceof DataNode) {
            sb.append(((DataNode) node).coreValue());
        } else if (node instanceof Comment) {
            sb.append(((Comment) node).coreValue());
        } else if (node instanceof CDataNode) {
            sb.append(((CDataNode) node).coreValue());
        }
    }

    public boolean onCommitContent(MemoryCacheService memoryCacheService, int i, Bundle bundle) {
        ContentInfoCompat.BuilderCompat builderCompat;
        AppCompatEditText appCompatEditText = (AppCompatEditText) this.f$0;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 25 && (i & 1) != 0) {
            try {
                ((InputContentInfoCompat$InputContentInfoCompatImpl) memoryCacheService.imageLoader).requestPermission();
                Parcelable parcelable = (Parcelable) ((InputContentInfoCompat$InputContentInfoCompatImpl) memoryCacheService.imageLoader).getInputContentInfo();
                bundle = bundle == null ? new Bundle() : new Bundle(bundle);
                bundle.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", parcelable);
            } catch (Exception e) {
                Log.w("InputConnectionCompat", "Can't insert content from IME; requestPermission() failed", e);
                return false;
            }
        }
        InputContentInfoCompat$InputContentInfoCompatImpl inputContentInfoCompat$InputContentInfoCompatImpl = (InputContentInfoCompat$InputContentInfoCompatImpl) memoryCacheService.imageLoader;
        ClipData clipData = new ClipData(inputContentInfoCompat$InputContentInfoCompatImpl.getDescription(), new ClipData.Item(inputContentInfoCompat$InputContentInfoCompatImpl.getContentUri()));
        if (i2 >= 31) {
            builderCompat = new ScrollCapture(clipData, 2);
        } else {
            ContentInfoCompat.CompatImpl compatImpl = new ContentInfoCompat.CompatImpl();
            compatImpl.mClip = clipData;
            compatImpl.mSource = 2;
            builderCompat = compatImpl;
        }
        builderCompat.setLinkUri(inputContentInfoCompat$InputContentInfoCompatImpl.getLinkUri());
        builderCompat.setExtras(bundle);
        return ViewCompat.performReceiveContent(appCompatEditText, builderCompat.build()) == null;
    }

    @Override // com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper.Listener
    public void onDefaultDisplayChanged(Display display) {
        ((VideoFrameReleaseHelper) this.f$0).updateDefaultDisplayRefreshRateParams(display);
    }

    @Override // org.schabi.newpipe.settings.notifications.NotificationModeConfigAdapter.ModeToggleListener
    public void onModeChange(int i, int i2) {
        NotificationModeConfigFragment.onViewCreated$lambda$0((NotificationModeConfigFragment) this.f$0, i, i2);
    }

    @Override // io.reactivex.rxjava3.functions.Action
    public void run() {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 15:
                NotificationManagerCompat notificationManagerCompat = ((FeedLoadService) obj).notificationManager;
                if (notificationManagerCompat != null) {
                    notificationManagerCompat.mNotificationManager.cancel(null, 7293450);
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("notificationManager");
                    throw null;
                }
            case 19:
                ((FeedGroupDialogViewModel) obj).mutableDialogEventLiveData.postValue(FeedGroupDialogViewModel.DialogEvent.SuccessEvent.INSTANCE);
                return;
            default:
                ((FeedGroupReorderDialogViewModel) obj).mutableDialogEventLiveData.postValue(FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent.INSTANCE);
                return;
        }
    }

    @Override // io.reactivex.rxjava3.functions.Predicate
    public boolean test(Object obj) {
        return ((StreamStateEntity) obj).isValid(((StreamInfo) this.f$0).getDuration());
    }

    @Override // com.google.android.exoplayer2.extractor.BinarySearchSeeker.SeekTimestampConverter
    public long timeUsToTargetTime(long j) {
        return ((FlacStreamMetadata) this.f$0).getSampleNumber(j);
    }

    public /* synthetic */ OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // org.jsoup.select.NodeVisitor
    public /* synthetic */ void tail(Node node, int i) {
    }
}
