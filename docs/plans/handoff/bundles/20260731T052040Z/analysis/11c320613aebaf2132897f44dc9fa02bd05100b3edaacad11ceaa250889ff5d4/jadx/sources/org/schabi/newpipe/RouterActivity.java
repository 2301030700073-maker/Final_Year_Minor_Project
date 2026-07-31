package org.schabi.newpipe;

import android.app.IntentService;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.text.intl.AndroidLocaleDelegateAPI24;
import androidx.core.app.NavUtils;
import androidx.core.app.NotificationCompat$Builder;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentAnim$AnimationOrAnimator;
import androidx.fragment.app.FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.preference.PreferenceManager;
import androidx.sqlite.SQLite;
import androidx.transition.Transition;
import coil3.decode.StaticImageDecoderKt$$ExternalSyntheticLambda0;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonArray$$ExternalSyntheticLambda0;
import com.livefront.bridge.Bridge;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver;
import io.reactivex.rxjava3.internal.observers.LambdaObserver;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFromCallable;
import io.reactivex.rxjava3.internal.operators.observable.ObservableObserveOn;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.schedulers.Schedulers;
import j$.util.Collection;
import j$.util.Optional;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.regex.Matcher;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Options;
import org.acra.builder.ReportExecutor$$ExternalSyntheticLambda0;
import org.jsoup.parser.TokenData;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;
import org.schabi.newpipe.RouterActivity;
import org.schabi.newpipe.download.LoadingDialog;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.ReCaptchaActivity;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.Info;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.channel.ChannelInfo;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.VideoStream;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda28;
import org.schabi.newpipe.player.PlayerType;
import org.schabi.newpipe.player.helper.PlayerHelper;
import org.schabi.newpipe.player.helper.PlayerHolder;
import org.schabi.newpipe.player.playqueue.ChannelTabPlayQueue;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.playqueue.PlaylistPlayQueue;
import org.schabi.newpipe.player.playqueue.SinglePlayQueue;
import org.schabi.newpipe.util.DeviceUtils;
import org.schabi.newpipe.util.ExtractorHelper;
import org.schabi.newpipe.util.ListHelper;
import org.schabi.newpipe.util.urlfinder.UrlFinder;
import org.schabi.newpipe.views.FocusOverlayView;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class RouterActivity extends AppCompatActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    protected StreamingService.LinkType currentLinkType;
    public StreamingService currentService;
    public String currentUrl;
    public final CompositeDisposable disposables = new CompositeDisposable();
    protected int currentServiceId = -1;
    protected int selectedRadioPosition = -1;
    public boolean selectionIsDownload = false;
    public boolean selectionIsAddToPlaylist = false;
    public AlertDialog alertDialogChoice = null;
    public AnonymousClass1 dismissListener = null;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class AdapterChoiceItem {
        public final String description;
        public final int icon;
        public final String key;

        public AdapterChoiceItem(String str, String str2, int i) {
            this.key = str;
            this.description = str2;
            this.icon = i;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Choice implements Serializable {
        final StreamingService.LinkType linkType;
        final String playerChoice;
        final int serviceId;
        final String url;

        public Choice(int i, StreamingService.LinkType linkType, String str, String str2) {
            this.serviceId = i;
            this.linkType = linkType;
            this.url = str;
            this.playerChoice = str2;
        }

        public final String toString() {
            return this.serviceId + ":" + this.url + " > " + this.linkType + " ::: " + this.playerChoice;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class FetcherService extends IntentService {
        public static final /* synthetic */ int $r8$clinit = 0;
        public ConsumerSingleObserver fetcher;

        public static void $r8$lambda$RYbQatUeDKy7ChjKpPfYUB5qItk(FetcherService fetcherService, Choice choice, Info info) {
            PlayQueue playlistPlayQueue;
            String string = fetcherService.getString(R.string.video_player_key);
            String string2 = fetcherService.getString(R.string.background_player_key);
            String string3 = fetcherService.getString(R.string.popup_player_key);
            SharedPreferences sharedPreferences = fetcherService.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(fetcherService), 0);
            boolean z = sharedPreferences.getBoolean(fetcherService.getString(R.string.use_external_video_player_key), false);
            boolean z2 = sharedPreferences.getBoolean(fetcherService.getString(R.string.use_external_audio_player_key), false);
            if (info instanceof StreamInfo) {
                if (choice.playerChoice.equals(string2) && z2) {
                    StreamInfo streamInfo = (StreamInfo) info;
                    List audioStreams = streamInfo.getAudioStreams();
                    if (audioStreams == null || audioStreams.isEmpty()) {
                        Toast.makeText(fetcherService, R.string.audio_streams_empty, 0).show();
                        return;
                    }
                    List urlAndNonTorrentStreams = ListHelper.getUrlAndNonTorrentStreams(audioStreams);
                    if (urlAndNonTorrentStreams.isEmpty()) {
                        Toast.makeText(fetcherService, R.string.no_audio_streams_available_for_external_players, 0).show();
                        return;
                    } else {
                        SQLite.playOnExternalPlayer(fetcherService, streamInfo.getName(), streamInfo.getUploaderName(), (AudioStream) urlAndNonTorrentStreams.get(ListHelper.getDefaultAudioFormat(fetcherService, urlAndNonTorrentStreams)));
                        return;
                    }
                }
                if (choice.playerChoice.equals(string) && z) {
                    StreamInfo streamInfo2 = (StreamInfo) info;
                    List videoStreams = streamInfo2.getVideoStreams();
                    if (videoStreams == null || videoStreams.isEmpty()) {
                        Toast.makeText(fetcherService, R.string.video_streams_empty, 0).show();
                        return;
                    }
                    ArrayList sortedStreamVideosList = ListHelper.getSortedStreamVideosList(fetcherService, ListHelper.getUrlAndNonTorrentStreams(videoStreams), null, false);
                    if (sortedStreamVideosList.isEmpty()) {
                        Toast.makeText(fetcherService, R.string.no_video_streams_available_for_external_players, 0).show();
                        return;
                    } else {
                        SQLite.playOnExternalPlayer(fetcherService, streamInfo2.getName(), streamInfo2.getUploaderName(), (VideoStream) sortedStreamVideosList.get(ListHelper.getDefaultResolutionWithDefaultFormat(fetcherService, ListHelper.computeDefaultResolution(fetcherService, R.string.default_resolution_key, R.string.default_resolution_value), sortedStreamVideosList)));
                        return;
                    }
                }
                playlistPlayQueue = new SinglePlayQueue((StreamInfo) info);
            } else if (info instanceof ChannelInfo) {
                Optional findFirst = Collection.EL.stream(((ChannelInfo) info).getTabs()).filter(new JsonArray$$ExternalSyntheticLambda0(2)).findFirst();
                if (!findFirst.isPresent()) {
                    return;
                } else {
                    playlistPlayQueue = new ChannelTabPlayQueue(info.getServiceId(), (ListLinkHandler) findFirst.get());
                }
            } else if (!(info instanceof PlaylistInfo)) {
                return;
            } else {
                playlistPlayQueue = new PlaylistPlayQueue((PlaylistInfo) info, 0);
            }
            if (choice.playerChoice.equals(string)) {
                SQLite.playOnMainPlayer(fetcherService, playlistPlayQueue, false);
                return;
            }
            if (choice.playerChoice.equals(string2)) {
                SQLite.playOnBackgroundPlayer(fetcherService, playlistPlayQueue, true);
                return;
            }
            if (choice.playerChoice.equals(string3)) {
                SQLite.playOnPopupPlayer(fetcherService, playlistPlayQueue, true);
                return;
            }
            if (choice.playerChoice.equals(fetcherService.getString(R.string.enqueue_key))) {
                PlayerType type = PlayerHolder.getInstance().getType();
                if (type == null) {
                    Log.e("NavigationHelper", "Enqueueing but no player is open; defaulting to background player");
                    type = PlayerType.AUDIO;
                }
                SQLite.enqueueOnPlayer(fetcherService, playlistPlayQueue, type);
            }
        }

        public FetcherService() {
            super(FetcherService.class.getSimpleName());
        }

        @Override // android.app.IntentService, android.app.Service
        public final void onCreate() {
            super.onCreate();
            NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(this, getString(R.string.notification_channel_id));
            notificationCompat$Builder.setFlag(2, true);
            notificationCompat$Builder.mNotification.icon = R.drawable.ic_newpipe_triangle_white;
            notificationCompat$Builder.mVisibility = 1;
            notificationCompat$Builder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(getString(R.string.preferred_player_fetcher_notification_title));
            notificationCompat$Builder.mContentText = NotificationCompat$Builder.limitCharSequenceLength(getString(R.string.preferred_player_fetcher_notification_message));
            startForeground(456, notificationCompat$Builder.build());
        }

        @Override // android.app.IntentService, android.app.Service
        public final void onDestroy() {
            super.onDestroy();
            NavUtils.stopForeground(this);
            ConsumerSingleObserver consumerSingleObserver = this.fetcher;
            if (consumerSingleObserver != null) {
                DisposableHelper.dispose(consumerSingleObserver);
            }
        }

        @Override // android.app.IntentService
        public final void onHandleIntent(Intent intent) {
            Single streamInfo;
            UserAction userAction;
            if (intent == null) {
                return;
            }
            Serializable serializableExtra = intent.getSerializableExtra("key_choice");
            if (serializableExtra instanceof Choice) {
                Choice choice = (Choice) serializableExtra;
                int ordinal = choice.linkType.ordinal();
                int i = 3;
                int i2 = 0;
                if (ordinal == 1) {
                    streamInfo = ExtractorHelper.getStreamInfo(choice.serviceId, choice.url, false);
                    userAction = UserAction.REQUESTED_STREAM;
                } else if (ordinal == 2) {
                    streamInfo = ExtractorHelper.getChannelInfo(choice.serviceId, choice.url, false);
                    userAction = UserAction.REQUESTED_CHANNEL;
                } else if (ordinal != 3) {
                    streamInfo = null;
                    userAction = UserAction.SOMETHING_ELSE;
                } else {
                    streamInfo = ExtractorHelper.getPlaylistInfo(choice.serviceId, choice.url, false);
                    userAction = UserAction.REQUESTED_PLAYLIST;
                }
                if (streamInfo != null) {
                    DownloaderImpl$$ExternalSyntheticLambda3 downloaderImpl$$ExternalSyntheticLambda3 = new DownloaderImpl$$ExternalSyntheticLambda3(this, choice, i);
                    Scheduler mainThread = AndroidSchedulers.mainThread();
                    ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new RouterActivity$FetcherService$$ExternalSyntheticLambda0(this, downloaderImpl$$ExternalSyntheticLambda3, i2), new RouterActivity$FetcherService$$ExternalSyntheticLambda1(this, userAction, choice, i2));
                    try {
                        streamInfo.subscribe(new SingleObserveOn.ObserveOnSingleObserver(consumerSingleObserver, mainThread));
                        this.fetcher = consumerSingleObserver;
                    } catch (NullPointerException e) {
                        throw e;
                    } catch (Throwable th) {
                        throw Owner.CC.m(th, "subscribeActual failed", th);
                    }
                }
            }
        }
    }

    public static void handleError(Context context, ErrorInfo errorInfo) {
        String str = errorInfo.recaptchaUrl;
        if (str != null) {
            Toast.makeText(context, R.string.recaptcha_request_toast, 1).show();
            Intent intent = new Intent(context, (Class<?>) ReCaptchaActivity.class);
            intent.addFlags(268435456);
            intent.putExtra("recaptcha_url_extra", str);
            context.startActivity(intent);
        } else if (errorInfo.isReportable) {
            ErrorUtil.createNotification(context, errorInfo);
        } else {
            context.getClass();
            Toast.makeText(context, errorInfo.message.getText(context), 1).show();
        }
        if (context instanceof RouterActivity) {
            ((RouterActivity) context).finish();
        }
    }

    @Override // android.app.Activity
    public final void finish() {
        if (isChangingConfigurations()) {
            return;
        }
        super.finish();
    }

    public final PersistentFragment getPersistFragment() {
        FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
        PersistentFragment persistentFragment = (PersistentFragment) supportFragmentManager.findFragmentByTag("PERSIST_FRAGMENT");
        if (persistentFragment != null) {
            return persistentFragment;
        }
        PersistentFragment persistentFragment2 = new PersistentFragment();
        BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
        backStackRecord.doAddOp(0, persistentFragment2, "PERSIST_FRAGMENT", 1);
        if (backStackRecord.mAddToBackStack) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("This transaction is already being added to the back stack");
            return null;
        }
        backStackRecord.mAllowAddToBackStack = false;
        backStackRecord.mManager.execSingleAction(backStackRecord, false);
        return persistentFragment2;
    }

    public final ContextThemeWrapper getThemeWrapperContext() {
        return new ContextThemeWrapper(this, Options.Companion.isLightThemeSelected(this) ? R.style.LightTheme : R.style.DarkTheme);
    }

    public final void handleChoice(String str) {
        PlayerType type;
        final int i = 0;
        if (Arrays.asList(getResources().getStringArray(R.array.preferred_open_action_values_list)).contains(str)) {
            getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(this), 0).edit().putString(getString(R.string.preferred_open_action_last_selected_key), str).apply();
        }
        if (str.equals(getString(R.string.popup_player_key)) && !Utility.isPopupEnabledElseAsk(this)) {
            finish();
            return;
        }
        final int i2 = 1;
        if (str.equals(getString(R.string.download_key))) {
            if (Utility.checkStoragePermissions(this, 778)) {
                this.selectionIsDownload = true;
                openDownloadDialog$1();
                return;
            }
            return;
        }
        int i3 = 2;
        if (str.equals(getString(R.string.add_to_playlist_key))) {
            this.selectionIsAddToPlaylist = true;
            PersistentFragment persistFragment = getPersistFragment();
            int i4 = this.currentServiceId;
            String str2 = this.currentUrl;
            persistFragment.inFlight(true);
            CompositeDisposable compositeDisposable = persistFragment.disposables;
            SingleAmb singleAmb = new SingleAmb(new SingleSource[]{new SingleObserveOn(ExtractorHelper.getStreamInfo(i4, str2, false).subscribeOn(Schedulers.IO), AndroidSchedulers.mainThread(), 0), new SingleAmb(new RouterActivity$PersistentFragment$$ExternalSyntheticLambda4(persistFragment), i2)}, i);
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new RouterActivity$PersistentFragment$$ExternalSyntheticLambda4(persistFragment), new RouterActivity$FetcherService$$ExternalSyntheticLambda0(persistFragment, str2, i3));
            singleAmb.subscribe(consumerSingleObserver);
            compositeDisposable.add(consumerSingleObserver);
            return;
        }
        if (str.equals(getString(R.string.show_info_key)) || (str.equals(getString(R.string.video_player_key)) && PlayerHelper.isAutoplayAllowedByUser(getThemeWrapperContext()) && !getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(this), 0).getBoolean(getString(R.string.use_external_video_player_key), false) && ((type = PlayerHolder.getInstance().getType()) == null || type == PlayerType.MAIN))) {
            ObservableObserveOn observeOn = new ObservableFromCallable(new StaticImageDecoderKt$$ExternalSyntheticLambda0(this, i3)).subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread());
            LambdaObserver lambdaObserver = new LambdaObserver(new Consumer(this) { // from class: org.schabi.newpipe.RouterActivity$$ExternalSyntheticLambda7
                public final /* synthetic */ RouterActivity f$0;

                {
                    this.f$0 = this;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Object obj) {
                    int i5 = i;
                    RouterActivity routerActivity = this.f$0;
                    switch (i5) {
                        case 0:
                            int i6 = RouterActivity.$r8$clinit;
                            routerActivity.startActivity((Intent) obj);
                            routerActivity.finish();
                            break;
                        default:
                            Throwable th = (Throwable) obj;
                            int i7 = RouterActivity.$r8$clinit;
                            RouterActivity.handleError(routerActivity, new ErrorInfo(th, UserAction.SHARE_TO_NEWPIPE, "Starting info activity: " + routerActivity.currentUrl, (Integer) null, routerActivity.currentUrl));
                            break;
                    }
                }
            }, new Consumer(this) { // from class: org.schabi.newpipe.RouterActivity$$ExternalSyntheticLambda7
                public final /* synthetic */ RouterActivity f$0;

                {
                    this.f$0 = this;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Object obj) {
                    int i5 = i2;
                    RouterActivity routerActivity = this.f$0;
                    switch (i5) {
                        case 0:
                            int i6 = RouterActivity.$r8$clinit;
                            routerActivity.startActivity((Intent) obj);
                            routerActivity.finish();
                            break;
                        default:
                            Throwable th = (Throwable) obj;
                            int i7 = RouterActivity.$r8$clinit;
                            RouterActivity.handleError(routerActivity, new ErrorInfo(th, UserAction.SHARE_TO_NEWPIPE, "Starting info activity: " + routerActivity.currentUrl, (Integer) null, routerActivity.currentUrl));
                            break;
                    }
                }
            });
            observeOn.subscribe(lambdaObserver);
            this.disposables.add(lambdaObserver);
            return;
        }
        Intent intent = new Intent(this, (Class<?>) FetcherService.class);
        intent.putExtra("key_choice", new Choice(this.currentService.serviceId, this.currentLinkType, this.currentUrl, str));
        startService(intent);
        finish();
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [org.schabi.newpipe.RouterActivity$1] */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String str;
        Options.Companion.setDayNightMode(this, Options.Companion.getSelectedThemeKey(this));
        setTheme(Options.Companion.isLightThemeSelected(this) ? R.style.RouterActivityThemeLight : R.style.RouterActivityThemeDark);
        getWindow().addFlags(56);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.alpha = 0.0f;
        getWindow().setAttributes(attributes);
        super.onCreate(bundle);
        Bridge.restoreInstanceState(this, bundle);
        FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
        if (this.dismissListener == null) {
            this.dismissListener = new FragmentManager.FragmentLifecycleCallbacks() { // from class: org.schabi.newpipe.RouterActivity.1
                @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
                public final void onFragmentDestroyed(FragmentManager fragmentManager, Fragment fragment) {
                    super.onFragmentDestroyed(fragmentManager, fragment);
                    if ((fragment instanceof DialogFragment) && fragmentManager.mFragmentStore.getFragments().isEmpty()) {
                        RouterActivity.this.finish();
                    }
                }
            };
        }
        AnonymousClass1 anonymousClass1 = this.dismissListener;
        FragmentAnim$AnimationOrAnimator fragmentAnim$AnimationOrAnimator = supportFragmentManager.mLifecycleCallbacksDispatcher;
        fragmentAnim$AnimationOrAnimator.getClass();
        anonymousClass1.getClass();
        ((CopyOnWriteArrayList) fragmentAnim$AnimationOrAnimator.animator).add(new FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder(anonymousClass1, false));
        if (TextUtils.isEmpty(this.currentUrl)) {
            Intent intent = getIntent();
            if (intent.getData() != null) {
                str = intent.getData().toString();
            } else {
                if (intent.getStringExtra("android.intent.extra.TEXT") != null) {
                    String stringExtra = intent.getStringExtra("android.intent.extra.TEXT");
                    UrlFinder.Companion.getClass();
                    if (stringExtra != null && stringExtra.length() != 0) {
                        Matcher matcher = UrlFinder.WEB_URL_WITH_PROTOCOL.matcher(stringExtra);
                        if (matcher.find()) {
                            str = matcher.group();
                        }
                    }
                }
                str = null;
            }
            this.currentUrl = str;
            if (TextUtils.isEmpty(str)) {
                String stringExtra2 = getIntent().getStringExtra("android.intent.extra.TEXT");
                int intExtra = getIntent().getIntExtra("key_service_id", 0);
                Intent intent2 = new Intent(getThemeWrapperContext(), (Class<?>) MainActivity.class);
                intent2.addFlags(268435456);
                startActivity(intent2);
                ContextThemeWrapper themeWrapperContext = getThemeWrapperContext();
                Intent intent3 = new Intent(themeWrapperContext, (Class<?>) MainActivity.class);
                intent3.putExtra("key_service_id", intExtra);
                intent3.putExtra("key_search_string", stringExtra2);
                intent3.putExtra("key_open_search", true);
                themeWrapperContext.startActivity(intent3);
                finish();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0033, code lost:
    
        ((java.util.concurrent.CopyOnWriteArrayList) r0.animator).remove(r4);
     */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onDestroy() {
        /*
            r6 = this;
            super.onDestroy()
            org.schabi.newpipe.RouterActivity$1 r0 = r6.dismissListener
            if (r0 == 0) goto L44
            androidx.fragment.app.FragmentManagerImpl r0 = r6.getSupportFragmentManager()
            org.schabi.newpipe.RouterActivity$1 r1 = r6.dismissListener
            androidx.fragment.app.FragmentAnim$AnimationOrAnimator r0 = r0.mLifecycleCallbacksDispatcher
            r0.getClass()
            r1.getClass()
            java.lang.Cloneable r2 = r0.animator
            java.util.concurrent.CopyOnWriteArrayList r2 = (java.util.concurrent.CopyOnWriteArrayList) r2
            monitor-enter(r2)
            java.lang.Cloneable r3 = r0.animator     // Catch: java.lang.Throwable -> L3b
            java.util.concurrent.CopyOnWriteArrayList r3 = (java.util.concurrent.CopyOnWriteArrayList) r3     // Catch: java.lang.Throwable -> L3b
            int r3 = r3.size()     // Catch: java.lang.Throwable -> L3b
            r4 = 0
        L23:
            if (r4 >= r3) goto L40
            java.lang.Cloneable r5 = r0.animator     // Catch: java.lang.Throwable -> L3b
            java.util.concurrent.CopyOnWriteArrayList r5 = (java.util.concurrent.CopyOnWriteArrayList) r5     // Catch: java.lang.Throwable -> L3b
            java.lang.Object r5 = r5.get(r4)     // Catch: java.lang.Throwable -> L3b
            androidx.fragment.app.FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder r5 = (androidx.fragment.app.FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) r5     // Catch: java.lang.Throwable -> L3b
            androidx.fragment.app.FragmentManager$FragmentLifecycleCallbacks r5 = r5.callback     // Catch: java.lang.Throwable -> L3b
            if (r5 != r1) goto L3d
            java.lang.Cloneable r0 = r0.animator     // Catch: java.lang.Throwable -> L3b
            java.util.concurrent.CopyOnWriteArrayList r0 = (java.util.concurrent.CopyOnWriteArrayList) r0     // Catch: java.lang.Throwable -> L3b
            r0.remove(r4)     // Catch: java.lang.Throwable -> L3b
            goto L40
        L3b:
            r6 = move-exception
            goto L42
        L3d:
            int r4 = r4 + 1
            goto L23
        L40:
            monitor-exit(r2)
            goto L44
        L42:
            monitor-exit(r2)
            throw r6
        L44:
            io.reactivex.rxjava3.disposables.CompositeDisposable r6 = r6.disposables
            r6.clear()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.RouterActivity.onDestroy():void");
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        for (int i2 : iArr) {
            if (i2 == -1) {
                finish();
                return;
            }
        }
        if (i == 778) {
            openDownloadDialog$1();
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Bridge.saveInstanceState(this, bundle);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStart() {
        super.onStart();
        if (getSupportFragmentManager().mFragmentStore.getFragments().isEmpty()) {
            final String str = this.currentUrl;
            ObservableObserveOn observeOn = new ObservableFromCallable(new Callable() { // from class: org.schabi.newpipe.RouterActivity$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    RouterActivity routerActivity = RouterActivity.this;
                    String str2 = str;
                    int i = RouterActivity.$r8$clinit;
                    try {
                        int i2 = routerActivity.currentServiceId;
                        if (i2 == -1) {
                            StreamingService serviceByUrl = Utility.getServiceByUrl(str2);
                            routerActivity.currentService = serviceByUrl;
                            routerActivity.currentServiceId = serviceByUrl.serviceId;
                            routerActivity.currentLinkType = serviceByUrl.getLinkTypeByUrl(str2);
                            routerActivity.currentUrl = str2;
                        } else {
                            routerActivity.currentService = Utility.getService(i2);
                        }
                        return Boolean.valueOf(routerActivity.currentLinkType != StreamingService.LinkType.NONE);
                    } catch (ExtractionException unused) {
                        return Boolean.FALSE;
                    }
                }
            }).subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread());
            final int i = 0;
            final int i2 = 1;
            LambdaObserver lambdaObserver = new LambdaObserver(new Consumer(this) { // from class: org.schabi.newpipe.RouterActivity$$ExternalSyntheticLambda1
                public final /* synthetic */ RouterActivity f$0;

                {
                    this.f$0 = this;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Object obj) {
                    int i3 = i;
                    final RouterActivity routerActivity = this.f$0;
                    switch (i3) {
                        case 0:
                            int i4 = RouterActivity.$r8$clinit;
                            if (!((Boolean) obj).booleanValue()) {
                                routerActivity.showUnsupportedUrlDialog(str);
                                break;
                            } else {
                                SharedPreferences sharedPreferences = routerActivity.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(routerActivity), 0);
                                StreamingService streamingService = routerActivity.currentService;
                                StreamingService.LinkType linkType = routerActivity.currentLinkType;
                                RouterActivity.AdapterChoiceItem adapterChoiceItem = new RouterActivity.AdapterChoiceItem(routerActivity.getString(R.string.show_info_key), routerActivity.getString(R.string.show_info), R.drawable.ic_info_outline);
                                RouterActivity.AdapterChoiceItem adapterChoiceItem2 = new RouterActivity.AdapterChoiceItem(routerActivity.getString(R.string.video_player_key), routerActivity.getString(R.string.video_player), R.drawable.ic_play_arrow);
                                RouterActivity.AdapterChoiceItem adapterChoiceItem3 = new RouterActivity.AdapterChoiceItem(routerActivity.getString(R.string.background_player_key), routerActivity.getString(R.string.background_player), R.drawable.ic_headset);
                                RouterActivity.AdapterChoiceItem adapterChoiceItem4 = new RouterActivity.AdapterChoiceItem(routerActivity.getString(R.string.popup_player_key), routerActivity.getString(R.string.popup_player), R.drawable.ic_picture_in_picture);
                                final ArrayList arrayList = new ArrayList();
                                arrayList.add(adapterChoiceItem);
                                Set set = streamingService.serviceInfo.mediaCapabilities;
                                StreamingService.ServiceInfo.MediaCapability mediaCapability = StreamingService.ServiceInfo.MediaCapability.AUDIO;
                                StreamingService.ServiceInfo.MediaCapability mediaCapability2 = StreamingService.ServiceInfo.MediaCapability.VIDEO;
                                StreamingService.LinkType linkType2 = StreamingService.LinkType.STREAM;
                                if (linkType == linkType2 || linkType == StreamingService.LinkType.PLAYLIST) {
                                    if (set.contains(mediaCapability2)) {
                                        arrayList.add(adapterChoiceItem2);
                                        arrayList.add(adapterChoiceItem4);
                                    }
                                    if (set.contains(mediaCapability)) {
                                        arrayList.add(adapterChoiceItem3);
                                    }
                                    if (((Integer) PlayerHolder.getInstance().getPlayer().flatMap(new Player$$ExternalSyntheticLambda28(20)).map(new Player$$ExternalSyntheticLambda28(19)).orElse(0)).intValue() > 0) {
                                        arrayList.add(new RouterActivity.AdapterChoiceItem(routerActivity.getString(R.string.enqueue_key), routerActivity.getString(R.string.enqueue_stream), R.drawable.ic_add));
                                    }
                                    if (linkType == linkType2) {
                                        arrayList.add(new RouterActivity.AdapterChoiceItem(routerActivity.getString(R.string.download_key), routerActivity.getString(R.string.download), R.drawable.ic_file_download));
                                        arrayList.add(new RouterActivity.AdapterChoiceItem(routerActivity.getString(R.string.add_to_playlist_key), routerActivity.getString(R.string.add_to_playlist), R.drawable.ic_playlist_add));
                                    }
                                } else {
                                    SharedPreferences sharedPreferences2 = routerActivity.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(routerActivity), 0);
                                    boolean z = sharedPreferences2.getBoolean(routerActivity.getString(R.string.use_external_video_player_key), false);
                                    boolean z2 = sharedPreferences2.getBoolean(routerActivity.getString(R.string.use_external_audio_player_key), false);
                                    if (set.contains(mediaCapability2) && !z) {
                                        arrayList.add(adapterChoiceItem2);
                                        arrayList.add(adapterChoiceItem4);
                                    }
                                    if (set.contains(mediaCapability) && !z2) {
                                        arrayList.add(adapterChoiceItem3);
                                    }
                                }
                                String string = sharedPreferences.getString(routerActivity.getString(R.string.preferred_open_action_key), routerActivity.getString(R.string.preferred_open_action_default));
                                AndroidLocaleDelegateAPI24 androidLocaleDelegateAPI24 = new AndroidLocaleDelegateAPI24(routerActivity, arrayList, string);
                                if (!androidLocaleDelegateAPI24.isAvailableAndSelected(R.string.show_info_key, R.string.download_key, R.string.add_to_playlist_key)) {
                                    if (!androidLocaleDelegateAPI24.isAvailableAndSelected(R.string.video_player_key, R.string.background_player_key, R.string.popup_player_key, R.string.enqueue_key)) {
                                        int size = arrayList.size();
                                        if (size == 0) {
                                            routerActivity.handleChoice(routerActivity.getString(R.string.show_info_key));
                                            break;
                                        } else if (size == 1) {
                                            routerActivity.handleChoice(((RouterActivity.AdapterChoiceItem) arrayList.get(0)).key);
                                            break;
                                        } else {
                                            final SharedPreferences sharedPreferences3 = routerActivity.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(routerActivity), 0);
                                            ContextThemeWrapper themeWrapperContext = routerActivity.getThemeWrapperContext();
                                            LayoutInflater from = LayoutInflater.from(themeWrapperContext);
                                            TokenData inflate$1 = TokenData.inflate$1(from);
                                            final RadioGroup radioGroup = (RadioGroup) inflate$1.builder;
                                            DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: org.schabi.newpipe.RouterActivity$$ExternalSyntheticLambda9
                                                @Override // android.content.DialogInterface.OnClickListener
                                                public final void onClick(DialogInterface dialogInterface, int i5) {
                                                    int i6 = RouterActivity.$r8$clinit;
                                                    RadioGroup radioGroup2 = radioGroup;
                                                    RouterActivity.AdapterChoiceItem adapterChoiceItem5 = (RouterActivity.AdapterChoiceItem) arrayList.get(radioGroup2.indexOfChild(radioGroup2.findViewById(radioGroup2.getCheckedRadioButtonId())));
                                                    String str2 = adapterChoiceItem5.key;
                                                    RouterActivity routerActivity2 = RouterActivity.this;
                                                    routerActivity2.handleChoice(str2);
                                                    if (i5 == -1) {
                                                        sharedPreferences3.edit().putString(routerActivity2.getString(R.string.preferred_open_action_key), adapterChoiceItem5.key).apply();
                                                    }
                                                }
                                            };
                                            AlertDialog.Builder builder = new AlertDialog.Builder(themeWrapperContext);
                                            builder.setTitle(R.string.preferred_open_action_share_menu_title);
                                            AlertDialog.Builder view = builder.setView((ScrollView) inflate$1.value);
                                            view.P.mCancelable = true;
                                            AlertDialog.Builder positiveButton = view.setNegativeButton(R.string.just_once, onClickListener).setPositiveButton(R.string.always, onClickListener);
                                            positiveButton.P.mOnDismissListener = new RouterActivity$$ExternalSyntheticLambda5(routerActivity, 1);
                                            AlertDialog create = positiveButton.create();
                                            routerActivity.alertDialogChoice = create;
                                            create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.schabi.newpipe.RouterActivity$$ExternalSyntheticLambda11
                                                @Override // android.content.DialogInterface.OnShowListener
                                                public final void onShow(DialogInterface dialogInterface) {
                                                    AlertDialog alertDialog = RouterActivity.this.alertDialogChoice;
                                                    boolean z3 = radioGroup.getCheckedRadioButtonId() != -1;
                                                    Button button = alertDialog.getButton(-2);
                                                    Button button2 = alertDialog.getButton(-1);
                                                    if (button == null || button2 == null) {
                                                        return;
                                                    }
                                                    button.setEnabled(z3);
                                                    button2.setEnabled(z3);
                                                }
                                            });
                                            radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: org.schabi.newpipe.RouterActivity$$ExternalSyntheticLambda12
                                                @Override // android.widget.RadioGroup.OnCheckedChangeListener
                                                public final void onCheckedChanged(RadioGroup radioGroup2, int i5) {
                                                    AlertDialog alertDialog = RouterActivity.this.alertDialogChoice;
                                                    Button button = alertDialog.getButton(-2);
                                                    Button button2 = alertDialog.getButton(-1);
                                                    if (button == null || button2 == null) {
                                                        return;
                                                    }
                                                    button.setEnabled(true);
                                                    button2.setEnabled(true);
                                                }
                                            });
                                            View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: org.schabi.newpipe.RouterActivity$$ExternalSyntheticLambda13
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view2) {
                                                    int i5 = RouterActivity.$r8$clinit;
                                                    int indexOfChild = radioGroup.indexOfChild(view2);
                                                    if (indexOfChild == -1) {
                                                        return;
                                                    }
                                                    RouterActivity routerActivity2 = RouterActivity.this;
                                                    int i6 = routerActivity2.selectedRadioPosition;
                                                    routerActivity2.selectedRadioPosition = indexOfChild;
                                                    if (i6 == indexOfChild) {
                                                        routerActivity2.handleChoice(((RouterActivity.AdapterChoiceItem) arrayList.get(indexOfChild)).key);
                                                    }
                                                }
                                            };
                                            Iterator it = arrayList.iterator();
                                            int i5 = 12345;
                                            while (it.hasNext()) {
                                                RouterActivity.AdapterChoiceItem adapterChoiceItem5 = (RouterActivity.AdapterChoiceItem) it.next();
                                                View inflate = from.inflate(R.layout.list_radio_icon_item, (ViewGroup) null, false);
                                                if (inflate == null) {
                                                    CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("rootView");
                                                    break;
                                                } else {
                                                    RadioButton radioButton = (RadioButton) inflate;
                                                    radioButton.setText(adapterChoiceItem5.description);
                                                    radioButton.setCompoundDrawablesRelativeWithIntrinsicBounds(Cookie.Companion.getDrawable(themeWrapperContext, adapterChoiceItem5.icon), (Drawable) null, (Drawable) null, (Drawable) null);
                                                    radioButton.setChecked(false);
                                                    radioButton.setId(i5);
                                                    radioButton.setLayoutParams(new RadioGroup.LayoutParams(-1, -2));
                                                    radioButton.setOnClickListener(onClickListener2);
                                                    radioGroup.addView(radioButton);
                                                    i5++;
                                                }
                                            }
                                            if (routerActivity.selectedRadioPosition == -1) {
                                                String string2 = sharedPreferences3.getString(routerActivity.getString(R.string.preferred_open_action_last_selected_key), null);
                                                if (!TextUtils.isEmpty(string2)) {
                                                    while (true) {
                                                        if (r1 < arrayList.size()) {
                                                            if (string2.equals(((RouterActivity.AdapterChoiceItem) arrayList.get(r1)).key)) {
                                                                routerActivity.selectedRadioPosition = r1;
                                                            } else {
                                                                r1++;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            int clamp = Cookie.Companion.clamp(routerActivity.selectedRadioPosition, -1, arrayList.size() - 1);
                                            routerActivity.selectedRadioPosition = clamp;
                                            if (clamp != -1) {
                                                ((RadioButton) radioGroup.getChildAt(clamp)).setChecked(true);
                                            }
                                            routerActivity.alertDialogChoice.show();
                                            if (DeviceUtils.isTv(routerActivity)) {
                                                FocusOverlayView.setupFocusObserver(routerActivity.alertDialogChoice);
                                                break;
                                            }
                                        }
                                    } else {
                                        boolean z3 = sharedPreferences.getBoolean(routerActivity.getString(R.string.use_external_video_player_key), false);
                                        boolean z4 = sharedPreferences.getBoolean(routerActivity.getString(R.string.use_external_audio_player_key), false);
                                        r1 = (string.equals(routerActivity.getString(R.string.video_player_key)) || string.equals(routerActivity.getString(R.string.popup_player_key))) ? 1 : 0;
                                        boolean equals = string.equals(routerActivity.getString(R.string.background_player_key));
                                        boolean equals2 = string.equals(routerActivity.getString(R.string.enqueue_key));
                                        if (routerActivity.currentLinkType != linkType2 && ((z4 && equals) || (z3 && r1 != 0))) {
                                            Toast.makeText(routerActivity, R.string.external_player_unsupported_link_type, 1).show();
                                            routerActivity.handleChoice(routerActivity.getString(R.string.show_info_key));
                                            break;
                                        } else {
                                            Set set2 = routerActivity.currentService.serviceInfo.mediaCapabilities;
                                            if ((r1 != 0 && set2.contains(mediaCapability2)) || ((equals && set2.contains(mediaCapability)) || (equals2 && (set2.contains(mediaCapability2) || set2.contains(mediaCapability))))) {
                                                routerActivity.handleChoice(string);
                                                break;
                                            } else {
                                                routerActivity.handleChoice(routerActivity.getString(R.string.show_info_key));
                                                break;
                                            }
                                        }
                                    }
                                } else {
                                    routerActivity.handleChoice(string);
                                    break;
                                }
                            }
                            break;
                        default:
                            int i6 = RouterActivity.$r8$clinit;
                            String str2 = str;
                            RouterActivity.handleError(routerActivity, new ErrorInfo((Throwable) obj, UserAction.SHARE_TO_NEWPIPE, Owner.CC.m("Getting service from url: ", str2), (Integer) null, str2));
                            break;
                    }
                }
            }, new Consumer(this) { // from class: org.schabi.newpipe.RouterActivity$$ExternalSyntheticLambda1
                public final /* synthetic */ RouterActivity f$0;

                {
                    this.f$0 = this;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Object obj) {
                    int i3 = i2;
                    final RouterActivity routerActivity = this.f$0;
                    switch (i3) {
                        case 0:
                            int i4 = RouterActivity.$r8$clinit;
                            if (!((Boolean) obj).booleanValue()) {
                                routerActivity.showUnsupportedUrlDialog(str);
                                break;
                            } else {
                                SharedPreferences sharedPreferences = routerActivity.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(routerActivity), 0);
                                StreamingService streamingService = routerActivity.currentService;
                                StreamingService.LinkType linkType = routerActivity.currentLinkType;
                                RouterActivity.AdapterChoiceItem adapterChoiceItem = new RouterActivity.AdapterChoiceItem(routerActivity.getString(R.string.show_info_key), routerActivity.getString(R.string.show_info), R.drawable.ic_info_outline);
                                RouterActivity.AdapterChoiceItem adapterChoiceItem2 = new RouterActivity.AdapterChoiceItem(routerActivity.getString(R.string.video_player_key), routerActivity.getString(R.string.video_player), R.drawable.ic_play_arrow);
                                RouterActivity.AdapterChoiceItem adapterChoiceItem3 = new RouterActivity.AdapterChoiceItem(routerActivity.getString(R.string.background_player_key), routerActivity.getString(R.string.background_player), R.drawable.ic_headset);
                                RouterActivity.AdapterChoiceItem adapterChoiceItem4 = new RouterActivity.AdapterChoiceItem(routerActivity.getString(R.string.popup_player_key), routerActivity.getString(R.string.popup_player), R.drawable.ic_picture_in_picture);
                                final ArrayList arrayList = new ArrayList();
                                arrayList.add(adapterChoiceItem);
                                Set set = streamingService.serviceInfo.mediaCapabilities;
                                StreamingService.ServiceInfo.MediaCapability mediaCapability = StreamingService.ServiceInfo.MediaCapability.AUDIO;
                                StreamingService.ServiceInfo.MediaCapability mediaCapability2 = StreamingService.ServiceInfo.MediaCapability.VIDEO;
                                StreamingService.LinkType linkType2 = StreamingService.LinkType.STREAM;
                                if (linkType == linkType2 || linkType == StreamingService.LinkType.PLAYLIST) {
                                    if (set.contains(mediaCapability2)) {
                                        arrayList.add(adapterChoiceItem2);
                                        arrayList.add(adapterChoiceItem4);
                                    }
                                    if (set.contains(mediaCapability)) {
                                        arrayList.add(adapterChoiceItem3);
                                    }
                                    if (((Integer) PlayerHolder.getInstance().getPlayer().flatMap(new Player$$ExternalSyntheticLambda28(20)).map(new Player$$ExternalSyntheticLambda28(19)).orElse(0)).intValue() > 0) {
                                        arrayList.add(new RouterActivity.AdapterChoiceItem(routerActivity.getString(R.string.enqueue_key), routerActivity.getString(R.string.enqueue_stream), R.drawable.ic_add));
                                    }
                                    if (linkType == linkType2) {
                                        arrayList.add(new RouterActivity.AdapterChoiceItem(routerActivity.getString(R.string.download_key), routerActivity.getString(R.string.download), R.drawable.ic_file_download));
                                        arrayList.add(new RouterActivity.AdapterChoiceItem(routerActivity.getString(R.string.add_to_playlist_key), routerActivity.getString(R.string.add_to_playlist), R.drawable.ic_playlist_add));
                                    }
                                } else {
                                    SharedPreferences sharedPreferences2 = routerActivity.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(routerActivity), 0);
                                    boolean z = sharedPreferences2.getBoolean(routerActivity.getString(R.string.use_external_video_player_key), false);
                                    boolean z2 = sharedPreferences2.getBoolean(routerActivity.getString(R.string.use_external_audio_player_key), false);
                                    if (set.contains(mediaCapability2) && !z) {
                                        arrayList.add(adapterChoiceItem2);
                                        arrayList.add(adapterChoiceItem4);
                                    }
                                    if (set.contains(mediaCapability) && !z2) {
                                        arrayList.add(adapterChoiceItem3);
                                    }
                                }
                                String string = sharedPreferences.getString(routerActivity.getString(R.string.preferred_open_action_key), routerActivity.getString(R.string.preferred_open_action_default));
                                AndroidLocaleDelegateAPI24 androidLocaleDelegateAPI24 = new AndroidLocaleDelegateAPI24(routerActivity, arrayList, string);
                                if (!androidLocaleDelegateAPI24.isAvailableAndSelected(R.string.show_info_key, R.string.download_key, R.string.add_to_playlist_key)) {
                                    if (!androidLocaleDelegateAPI24.isAvailableAndSelected(R.string.video_player_key, R.string.background_player_key, R.string.popup_player_key, R.string.enqueue_key)) {
                                        int size = arrayList.size();
                                        if (size == 0) {
                                            routerActivity.handleChoice(routerActivity.getString(R.string.show_info_key));
                                            break;
                                        } else if (size == 1) {
                                            routerActivity.handleChoice(((RouterActivity.AdapterChoiceItem) arrayList.get(0)).key);
                                            break;
                                        } else {
                                            final SharedPreferences sharedPreferences3 = routerActivity.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(routerActivity), 0);
                                            ContextThemeWrapper themeWrapperContext = routerActivity.getThemeWrapperContext();
                                            LayoutInflater from = LayoutInflater.from(themeWrapperContext);
                                            TokenData inflate$1 = TokenData.inflate$1(from);
                                            final RadioGroup radioGroup = (RadioGroup) inflate$1.builder;
                                            DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: org.schabi.newpipe.RouterActivity$$ExternalSyntheticLambda9
                                                @Override // android.content.DialogInterface.OnClickListener
                                                public final void onClick(DialogInterface dialogInterface, int i5) {
                                                    int i6 = RouterActivity.$r8$clinit;
                                                    RadioGroup radioGroup2 = radioGroup;
                                                    RouterActivity.AdapterChoiceItem adapterChoiceItem5 = (RouterActivity.AdapterChoiceItem) arrayList.get(radioGroup2.indexOfChild(radioGroup2.findViewById(radioGroup2.getCheckedRadioButtonId())));
                                                    String str2 = adapterChoiceItem5.key;
                                                    RouterActivity routerActivity2 = RouterActivity.this;
                                                    routerActivity2.handleChoice(str2);
                                                    if (i5 == -1) {
                                                        sharedPreferences3.edit().putString(routerActivity2.getString(R.string.preferred_open_action_key), adapterChoiceItem5.key).apply();
                                                    }
                                                }
                                            };
                                            AlertDialog.Builder builder = new AlertDialog.Builder(themeWrapperContext);
                                            builder.setTitle(R.string.preferred_open_action_share_menu_title);
                                            AlertDialog.Builder view = builder.setView((ScrollView) inflate$1.value);
                                            view.P.mCancelable = true;
                                            AlertDialog.Builder positiveButton = view.setNegativeButton(R.string.just_once, onClickListener).setPositiveButton(R.string.always, onClickListener);
                                            positiveButton.P.mOnDismissListener = new RouterActivity$$ExternalSyntheticLambda5(routerActivity, 1);
                                            AlertDialog create = positiveButton.create();
                                            routerActivity.alertDialogChoice = create;
                                            create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.schabi.newpipe.RouterActivity$$ExternalSyntheticLambda11
                                                @Override // android.content.DialogInterface.OnShowListener
                                                public final void onShow(DialogInterface dialogInterface) {
                                                    AlertDialog alertDialog = RouterActivity.this.alertDialogChoice;
                                                    boolean z3 = radioGroup.getCheckedRadioButtonId() != -1;
                                                    Button button = alertDialog.getButton(-2);
                                                    Button button2 = alertDialog.getButton(-1);
                                                    if (button == null || button2 == null) {
                                                        return;
                                                    }
                                                    button.setEnabled(z3);
                                                    button2.setEnabled(z3);
                                                }
                                            });
                                            radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: org.schabi.newpipe.RouterActivity$$ExternalSyntheticLambda12
                                                @Override // android.widget.RadioGroup.OnCheckedChangeListener
                                                public final void onCheckedChanged(RadioGroup radioGroup2, int i5) {
                                                    AlertDialog alertDialog = RouterActivity.this.alertDialogChoice;
                                                    Button button = alertDialog.getButton(-2);
                                                    Button button2 = alertDialog.getButton(-1);
                                                    if (button == null || button2 == null) {
                                                        return;
                                                    }
                                                    button.setEnabled(true);
                                                    button2.setEnabled(true);
                                                }
                                            });
                                            View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: org.schabi.newpipe.RouterActivity$$ExternalSyntheticLambda13
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view2) {
                                                    int i5 = RouterActivity.$r8$clinit;
                                                    int indexOfChild = radioGroup.indexOfChild(view2);
                                                    if (indexOfChild == -1) {
                                                        return;
                                                    }
                                                    RouterActivity routerActivity2 = RouterActivity.this;
                                                    int i6 = routerActivity2.selectedRadioPosition;
                                                    routerActivity2.selectedRadioPosition = indexOfChild;
                                                    if (i6 == indexOfChild) {
                                                        routerActivity2.handleChoice(((RouterActivity.AdapterChoiceItem) arrayList.get(indexOfChild)).key);
                                                    }
                                                }
                                            };
                                            Iterator it = arrayList.iterator();
                                            int i5 = 12345;
                                            while (it.hasNext()) {
                                                RouterActivity.AdapterChoiceItem adapterChoiceItem5 = (RouterActivity.AdapterChoiceItem) it.next();
                                                View inflate = from.inflate(R.layout.list_radio_icon_item, (ViewGroup) null, false);
                                                if (inflate == null) {
                                                    CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("rootView");
                                                    break;
                                                } else {
                                                    RadioButton radioButton = (RadioButton) inflate;
                                                    radioButton.setText(adapterChoiceItem5.description);
                                                    radioButton.setCompoundDrawablesRelativeWithIntrinsicBounds(Cookie.Companion.getDrawable(themeWrapperContext, adapterChoiceItem5.icon), (Drawable) null, (Drawable) null, (Drawable) null);
                                                    radioButton.setChecked(false);
                                                    radioButton.setId(i5);
                                                    radioButton.setLayoutParams(new RadioGroup.LayoutParams(-1, -2));
                                                    radioButton.setOnClickListener(onClickListener2);
                                                    radioGroup.addView(radioButton);
                                                    i5++;
                                                }
                                            }
                                            if (routerActivity.selectedRadioPosition == -1) {
                                                String string2 = sharedPreferences3.getString(routerActivity.getString(R.string.preferred_open_action_last_selected_key), null);
                                                if (!TextUtils.isEmpty(string2)) {
                                                    while (true) {
                                                        if (r1 < arrayList.size()) {
                                                            if (string2.equals(((RouterActivity.AdapterChoiceItem) arrayList.get(r1)).key)) {
                                                                routerActivity.selectedRadioPosition = r1;
                                                            } else {
                                                                r1++;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            int clamp = Cookie.Companion.clamp(routerActivity.selectedRadioPosition, -1, arrayList.size() - 1);
                                            routerActivity.selectedRadioPosition = clamp;
                                            if (clamp != -1) {
                                                ((RadioButton) radioGroup.getChildAt(clamp)).setChecked(true);
                                            }
                                            routerActivity.alertDialogChoice.show();
                                            if (DeviceUtils.isTv(routerActivity)) {
                                                FocusOverlayView.setupFocusObserver(routerActivity.alertDialogChoice);
                                                break;
                                            }
                                        }
                                    } else {
                                        boolean z3 = sharedPreferences.getBoolean(routerActivity.getString(R.string.use_external_video_player_key), false);
                                        boolean z4 = sharedPreferences.getBoolean(routerActivity.getString(R.string.use_external_audio_player_key), false);
                                        r1 = (string.equals(routerActivity.getString(R.string.video_player_key)) || string.equals(routerActivity.getString(R.string.popup_player_key))) ? 1 : 0;
                                        boolean equals = string.equals(routerActivity.getString(R.string.background_player_key));
                                        boolean equals2 = string.equals(routerActivity.getString(R.string.enqueue_key));
                                        if (routerActivity.currentLinkType != linkType2 && ((z4 && equals) || (z3 && r1 != 0))) {
                                            Toast.makeText(routerActivity, R.string.external_player_unsupported_link_type, 1).show();
                                            routerActivity.handleChoice(routerActivity.getString(R.string.show_info_key));
                                            break;
                                        } else {
                                            Set set2 = routerActivity.currentService.serviceInfo.mediaCapabilities;
                                            if ((r1 != 0 && set2.contains(mediaCapability2)) || ((equals && set2.contains(mediaCapability)) || (equals2 && (set2.contains(mediaCapability2) || set2.contains(mediaCapability))))) {
                                                routerActivity.handleChoice(string);
                                                break;
                                            } else {
                                                routerActivity.handleChoice(routerActivity.getString(R.string.show_info_key));
                                                break;
                                            }
                                        }
                                    }
                                } else {
                                    routerActivity.handleChoice(string);
                                    break;
                                }
                            }
                            break;
                        default:
                            int i6 = RouterActivity.$r8$clinit;
                            String str2 = str;
                            RouterActivity.handleError(routerActivity, new ErrorInfo((Throwable) obj, UserAction.SHARE_TO_NEWPIPE, Owner.CC.m("Getting service from url: ", str2), (Integer) null, str2));
                            break;
                    }
                }
            });
            observeOn.subscribe(lambdaObserver);
            this.disposables.add(lambdaObserver);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStop() {
        super.onStop();
        AlertDialog alertDialog = this.alertDialogChoice;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    public final void openDownloadDialog$1() {
        PersistentFragment persistFragment = getPersistFragment();
        int i = this.currentServiceId;
        String str = this.currentUrl;
        int i2 = 1;
        persistFragment.inFlight(true);
        LoadingDialog loadingDialog = new LoadingDialog();
        loadingDialog.show(persistFragment.getParentFragmentManager(), "loadingDialog");
        CompositeDisposable compositeDisposable = persistFragment.disposables;
        SingleAmb singleAmb = new SingleAmb(new SingleSource[]{new SingleObserveOn(ExtractorHelper.getStreamInfo(i, str, true).subscribeOn(Schedulers.IO), AndroidSchedulers.mainThread(), 0), new SingleAmb(new RouterActivity$PersistentFragment$$ExternalSyntheticLambda4(persistFragment), i2)}, 0);
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new RouterActivity$FetcherService$$ExternalSyntheticLambda0(persistFragment, loadingDialog, i2), new RouterActivity$FetcherService$$ExternalSyntheticLambda1(persistFragment, loadingDialog, str, i2));
        singleAmb.subscribe(consumerSingleObserver);
        compositeDisposable.add(consumerSingleObserver);
    }

    public final void showUnsupportedUrlDialog(final String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getThemeWrapperContext());
        builder.setTitle(R.string.unsupported_url);
        builder.setMessage(R.string.unsupported_url_dialog_message);
        builder.P.mIconId = R.drawable.ic_share;
        final int i = 0;
        final int i2 = 1;
        AlertDialog.Builder negativeButton = builder.setPositiveButton(R.string.open_in_browser, new DialogInterface.OnClickListener(this) { // from class: org.schabi.newpipe.RouterActivity$$ExternalSyntheticLambda3
            public final /* synthetic */ RouterActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                int i4 = i;
                String str2 = str;
                RouterActivity routerActivity = this.f$0;
                switch (i4) {
                    case 0:
                        int i5 = RouterActivity.$r8$clinit;
                        Transition.Impl26.openUrlInBrowser(routerActivity, str2);
                        break;
                    default:
                        int i6 = RouterActivity.$r8$clinit;
                        Transition.Impl26.shareText(routerActivity, "", str2, "");
                        break;
                }
            }
        }).setNegativeButton(R.string.share, new DialogInterface.OnClickListener(this) { // from class: org.schabi.newpipe.RouterActivity$$ExternalSyntheticLambda3
            public final /* synthetic */ RouterActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                int i4 = i2;
                String str2 = str;
                RouterActivity routerActivity = this.f$0;
                switch (i4) {
                    case 0:
                        int i5 = RouterActivity.$r8$clinit;
                        Transition.Impl26.openUrlInBrowser(routerActivity, str2);
                        break;
                    default:
                        int i6 = RouterActivity.$r8$clinit;
                        Transition.Impl26.shareText(routerActivity, "", str2, "");
                        break;
                }
            }
        });
        negativeButton.setNeutralButton(R.string.cancel, null);
        negativeButton.P.mOnDismissListener = new RouterActivity$$ExternalSyntheticLambda5(this, 0);
        negativeButton.show();
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class PersistentFragment extends Fragment {
        public final CompositeDisposable disposables = new CompositeDisposable();
        public int running = 0;
        public WeakReference weakContext;

        public final Optional getActivityContext() {
            return Optional.ofNullable(this.weakContext).map(new Nodes$$ExternalSyntheticLambda0(18)).filter(new JsonArray$$ExternalSyntheticLambda0(3));
        }

        public final synchronized void inFlight(boolean z) {
            int i = this.running;
            try {
                if (z) {
                    this.running = i + 1;
                } else {
                    int i2 = i - 1;
                    this.running = i2;
                    if (i2 <= 0) {
                        getActivityContext().ifPresent(new RouterActivity$PersistentFragment$$ExternalSyntheticLambda5(this, 0));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        @Override // androidx.fragment.app.Fragment
        public final void onAttach(Context context) {
            super.onAttach(context);
            this.weakContext = new WeakReference((AppCompatActivity) context);
        }

        @Override // androidx.fragment.app.Fragment
        public final void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            setRetainInstance(true);
        }

        @Override // androidx.fragment.app.Fragment
        public final void onDestroy() {
            super.onDestroy();
            this.disposables.clear();
        }

        @Override // androidx.fragment.app.Fragment
        public final void onDetach() {
            super.onDetach();
            this.weakContext = null;
        }

        public final void runOnVisible(java.util.function.Consumer consumer) {
            getActivityContext().ifPresentOrElse(new DownloaderImpl$$ExternalSyntheticLambda3(this, consumer, 9), new ReportExecutor$$ExternalSyntheticLambda0(this, 24));
        }

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        /* renamed from: org.schabi.newpipe.RouterActivity$PersistentFragment$1, reason: invalid class name */
        public final class AnonymousClass1 implements DefaultLifecycleObserver {
            public final /* synthetic */ java.util.function.Consumer val$runnable;

            public AnonymousClass1(java.util.function.Consumer consumer) {
                this.val$runnable = consumer;
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public final void onResume(LifecycleOwner lifecycleOwner) {
                PersistentFragment persistentFragment = PersistentFragment.this;
                persistentFragment.getLifecycle().removeObserver(this);
                persistentFragment.getActivityContext().ifPresentOrElse(new DownloaderImpl$$ExternalSyntheticLambda3(this, this.val$runnable, 10), new ReportExecutor$$ExternalSyntheticLambda0(this, 25));
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public final void onCreate(LifecycleOwner lifecycleOwner) {
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public final void onDestroy(LifecycleOwner lifecycleOwner) {
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public final void onPause(LifecycleOwner lifecycleOwner) {
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public final void onStart(LifecycleOwner lifecycleOwner) {
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public final void onStop(LifecycleOwner lifecycleOwner) {
            }
        }
    }
}
