package us.shandian.giga.service;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.PowerManager;
import android.util.Log;
import android.widget.Toast;
import androidx.collection.SparseArrayCompat;
import androidx.compose.ui.node.Owner;
import androidx.core.app.NavUtils;
import androidx.core.app.NotificationCompat$Builder;
import androidx.preference.PreferenceManager;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import androidx.work.impl.constraints.trackers.NetworkStateTrackerKt;
import androidx.work.impl.constraints.trackers.NetworkStateTrackerPre28;
import androidx.work.impl.model.WorkTagDao_Impl$$ExternalSyntheticLambda1;
import coil3.ComponentRegistry;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.ListenerSet$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.util.MimeTypes;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import org.schabi.newpipe.R;
import org.schabi.newpipe.download.DownloadActivity;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda6;
import org.schabi.newpipe.streams.io.StoredDirectoryHelper;
import us.shandian.giga.get.DownloadMission;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class DownloadManagerService extends Service {
    public static final /* synthetic */ int $r8$clinit = 0;
    public Bitmap icDownloadDone;
    public Bitmap icDownloadFailed;
    public Bitmap icLauncher;
    public DownloadManagerBinder mBinder;
    public ConnectivityManager mConnectivityManager;
    public Handler mHandler;
    public DownloadManager mManager;
    public Notification mNotification;
    public PendingIntent mOpenDownloadList;
    public boolean mForeground = false;
    public NotificationManager mNotificationManager = null;
    public boolean mDownloadNotificationEnable = true;
    public int downloadDoneCount = 0;
    public NotificationCompat$Builder downloadDoneNotification = null;
    public StringBuilder downloadDoneList = null;
    public final ArrayList mEchoObservers = new ArrayList(1);
    public AnonymousClass1 mNetworkStateListenerL = null;
    public SharedPreferences mPrefs = null;
    public final FeedFragment$$ExternalSyntheticLambda6 mPrefChangeListener = new FeedFragment$$ExternalSyntheticLambda6(this, 2);
    public boolean mLockAcquired = false;
    public ComponentRegistry.Builder mLock = null;
    public int downloadFailedNotificationID = 1002;
    public NotificationCompat$Builder downloadFailedNotification = null;
    public final SparseArrayCompat mFailedDownloads = new SparseArrayCompat(5);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* loaded from: classes3.dex */
    public final class DownloadManagerBinder extends Binder {
        public DownloadManagerBinder() {
        }
    }

    public final void handleConnectivityState(boolean z) {
        int i;
        NetworkInfo activeNetworkInfo = this.mConnectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            Log.i("DownloadManagerService", "Active network [connectivity is unavailable]");
            i = 1;
        } else {
            boolean isConnected = activeNetworkInfo.isConnected();
            boolean isActiveNetworkMetered = this.mConnectivityManager.isActiveNetworkMetered();
            i = isConnected ? isActiveNetworkMetered ? 3 : 2 : 1;
            Log.i("DownloadManagerService", "Active network [connected=" + isConnected + " metered=" + isActiveNetworkMetered + "] " + activeNetworkInfo.toString());
        }
        DownloadManager downloadManager = this.mManager;
        if (downloadManager == null || i == downloadManager.mLastNetworkStatus) {
            return;
        }
        downloadManager.mLastNetworkStatus = i;
        if (i == 1 || !downloadManager.mSelfMissionsControl || z) {
            return;
        }
        boolean z2 = downloadManager.mPrefMeteredDownloads && i == 3;
        synchronized (downloadManager) {
            try {
                Iterator it = downloadManager.mMissionsPending.iterator();
                while (it.hasNext()) {
                    DownloadMission downloadMission = (DownloadMission) it.next();
                    if (!downloadMission.isCorrupt() && !downloadMission.isPsRunning()) {
                        if (downloadMission.running && z2) {
                            downloadMission.pause();
                        } else if (!downloadMission.running && !z2 && downloadMission.enqueued) {
                            downloadMission.start();
                            if (downloadManager.mPrefQueueLimit) {
                                break;
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void handlePreferenceChange(SharedPreferences sharedPreferences, String str) {
        if (getString(R.string.downloads_maximum_retry).equals(str)) {
            try {
                String string = sharedPreferences.getString(str, getString(R.string.downloads_maximum_retry_default));
                this.mManager.mPrefMaxRetry = string == null ? 0 : Integer.parseInt(string);
            } catch (Exception unused) {
                this.mManager.mPrefMaxRetry = 0;
            }
            DownloadManager downloadManager = this.mManager;
            synchronized (downloadManager) {
                try {
                    Iterator it = downloadManager.mMissionsPending.iterator();
                    while (it.hasNext()) {
                        ((DownloadMission) it.next()).maxRetry = downloadManager.mPrefMaxRetry;
                    }
                } finally {
                }
            }
            return;
        }
        if (getString(R.string.downloads_cross_network).equals(str)) {
            this.mManager.mPrefMeteredDownloads = sharedPreferences.getBoolean(str, false);
            return;
        }
        if (getString(R.string.downloads_queue_limit).equals(str)) {
            this.mManager.mPrefQueueLimit = sharedPreferences.getBoolean(str, true);
        } else if (getString(R.string.download_path_video_key).equals(str)) {
            this.mManager.mMainStorageVideo = loadMainStorage(R.string.download_path_video_key, MimeTypes.BASE_TYPE_VIDEO);
        } else if (getString(R.string.download_path_audio_key).equals(str)) {
            this.mManager.mMainStorageAudio = loadMainStorage(R.string.download_path_audio_key, MimeTypes.BASE_TYPE_AUDIO);
        }
    }

    public final StoredDirectoryHelper loadMainStorage(int i, String str) {
        String string = this.mPrefs.getString(getString(i), null);
        if (string != null && !string.isEmpty()) {
            if (string.charAt(0) == File.separatorChar) {
                Log.i("DownloadManagerService", "Old save path style present: ".concat(string));
                this.mPrefs.edit().putString(getString(i), "").apply();
                string = "";
            }
            try {
                return new StoredDirectoryHelper(this, Uri.parse(string), str);
            } catch (Exception e) {
                Log.e("DownloadManagerService", Owner.CC.m("Failed to load the storage of ", str, " from ", string), e);
                Toast.makeText(this, R.string.no_available_dir, 1).show();
            }
        }
        return null;
    }

    public final void manageLock(boolean z) {
        WifiManager.WifiLock wifiLock;
        if (z == this.mLockAcquired) {
            return;
        }
        ComponentRegistry.Builder builder = this.mLock;
        if (z) {
            String str = (String) builder.interceptors;
            Log.d(str, "acquireWifiAndCpu() called");
            PowerManager.WakeLock wakeLock = (PowerManager.WakeLock) builder.lazyFetcherFactories;
            if (wakeLock == null || !wakeLock.isHeld() || (wifiLock = (WifiManager.WifiLock) builder.lazyDecoderFactories) == null || !wifiLock.isHeld()) {
                builder.lazyFetcherFactories = ((PowerManager) builder.mappers).newWakeLock(1, str);
                builder.lazyDecoderFactories = ((WifiManager) builder.keyers).createWifiLock(1, str);
                PowerManager.WakeLock wakeLock2 = (PowerManager.WakeLock) builder.lazyFetcherFactories;
                if (wakeLock2 != null) {
                    wakeLock2.acquire();
                }
                WifiManager.WifiLock wifiLock2 = (WifiManager.WifiLock) builder.lazyDecoderFactories;
                if (wifiLock2 != null) {
                    wifiLock2.acquire();
                }
            }
        } else {
            Log.d((String) builder.interceptors, "releaseWifiAndCpu() called");
            PowerManager.WakeLock wakeLock3 = (PowerManager.WakeLock) builder.lazyFetcherFactories;
            if (wakeLock3 != null && wakeLock3.isHeld()) {
                ((PowerManager.WakeLock) builder.lazyFetcherFactories).release();
            }
            WifiManager.WifiLock wifiLock3 = (WifiManager.WifiLock) builder.lazyDecoderFactories;
            if (wifiLock3 != null && wifiLock3.isHeld()) {
                ((WifiManager.WifiLock) builder.lazyDecoderFactories).release();
            }
            builder.lazyFetcherFactories = null;
            builder.lazyDecoderFactories = null;
        }
        this.mLockAcquired = z;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        this.mBinder = new DownloadManagerBinder();
        this.mHandler = new Handler(new ListenerSet$$ExternalSyntheticLambda0(this, 1));
        this.mPrefs = getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(this), 0);
        this.mManager = new DownloadManager(this, this.mHandler, loadMainStorage(R.string.download_path_video_key, MimeTypes.BASE_TYPE_VIDEO), loadMainStorage(R.string.download_path_audio_key, MimeTypes.BASE_TYPE_AUDIO));
        this.mOpenDownloadList = NavUtils.getActivity(this, 0, new Intent(this, (Class<?>) DownloadActivity.class).setAction("android.intent.action.MAIN"), C.BUFFER_FLAG_FIRST_SAMPLE);
        this.icLauncher = BitmapFactory.decodeResource(getResources(), R.mipmap.ic_launcher);
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(this, getString(R.string.notification_channel_id));
        notificationCompat$Builder.mContentIntent = this.mOpenDownloadList;
        notificationCompat$Builder.mNotification.icon = android.R.drawable.stat_sys_download;
        notificationCompat$Builder.setLargeIcon(this.icLauncher);
        notificationCompat$Builder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(getString(R.string.msg_running));
        notificationCompat$Builder.mContentText = NotificationCompat$Builder.limitCharSequenceLength(getString(R.string.msg_running_detail));
        this.mNotification = notificationCompat$Builder.build();
        this.mNotificationManager = (NotificationManager) getSystemService(NotificationManager.class);
        this.mConnectivityManager = (ConnectivityManager) getSystemService(ConnectivityManager.class);
        this.mNetworkStateListenerL = new AnonymousClass1(this, 0);
        this.mConnectivityManager.registerNetworkCallback(new NetworkRequest.Builder().build(), this.mNetworkStateListenerL);
        this.mPrefs.registerOnSharedPreferenceChangeListener(this.mPrefChangeListener);
        handlePreferenceChange(this.mPrefs, getString(R.string.downloads_cross_network));
        handlePreferenceChange(this.mPrefs, getString(R.string.downloads_maximum_retry));
        handlePreferenceChange(this.mPrefs, getString(R.string.downloads_queue_limit));
        this.mLock = new ComponentRegistry.Builder(this);
    }

    @Override // android.app.Service
    public final void onDestroy() {
        NotificationCompat$Builder notificationCompat$Builder;
        super.onDestroy();
        NavUtils.stopForeground(this);
        NotificationManager notificationManager = this.mNotificationManager;
        if (notificationManager != null && (notificationCompat$Builder = this.downloadDoneNotification) != null) {
            notificationCompat$Builder.mNotification.deleteIntent = null;
            notificationManager.notify(1001, notificationCompat$Builder.build());
        }
        manageLock(false);
        this.mConnectivityManager.unregisterNetworkCallback(this.mNetworkStateListenerL);
        this.mPrefs.unregisterOnSharedPreferenceChangeListener(this.mPrefChangeListener);
        Bitmap bitmap = this.icDownloadDone;
        if (bitmap != null) {
            bitmap.recycle();
        }
        Bitmap bitmap2 = this.icDownloadFailed;
        if (bitmap2 != null) {
            bitmap2.recycle();
        }
        Bitmap bitmap3 = this.icLauncher;
        if (bitmap3 != null) {
            bitmap3.recycle();
        }
        this.mHandler = null;
        this.mManager.pauseAllMissions(true);
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        if (intent != null) {
            Log.i("DownloadManagerService", "Got intent: " + intent);
            String action = intent.getAction();
            if (action == null) {
                return 1;
            }
            if (action.equals("android.intent.action.RUN")) {
                this.mHandler.post(new Processor$$ExternalSyntheticLambda2(this, intent, 25));
                return 1;
            }
            if (this.downloadDoneNotification == null) {
                return 1;
            }
            if (action.equals("org.schabi.newpipe.reset_download_finished") || action.equals("org.schabi.newpipe.open_downloads_finished")) {
                this.downloadDoneCount = 0;
                this.downloadDoneList.setLength(0);
            }
            if (action.equals("org.schabi.newpipe.open_downloads_finished")) {
                startActivity(new Intent(this, (Class<?>) DownloadActivity.class).setAction("android.intent.action.MAIN").addFlags(268435456));
            }
        }
        return 2;
    }

    public final void updateForegroundState(boolean z) {
        if (z == this.mForeground) {
            return;
        }
        if (z) {
            startForeground(1000, this.mNotification);
        } else {
            NavUtils.stopForeground(this);
        }
        manageLock(z);
        this.mForeground = z;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: us.shandian.giga.service.DownloadManagerService$1, reason: invalid class name */
    public final class AnonymousClass1 extends ConnectivityManager.NetworkCallback {
        public static final /* synthetic */ int $r8$clinit = 0;
        public final /* synthetic */ int $r8$classId;
        public final Object this$0;

        public AnonymousClass1(WorkTagDao_Impl$$ExternalSyntheticLambda1 workTagDao_Impl$$ExternalSyntheticLambda1) {
            this.$r8$classId = 1;
            this.this$0 = workTagDao_Impl$$ExternalSyntheticLambda1;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            switch (this.$r8$classId) {
                case 0:
                    DownloadManagerService downloadManagerService = (DownloadManagerService) this.this$0;
                    int i = DownloadManagerService.$r8$clinit;
                    downloadManagerService.handleConnectivityState(false);
                    break;
                default:
                    super.onAvailable(network);
                    break;
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onBlockedStatusChanged(Network network, boolean z) {
            switch (this.$r8$classId) {
                case 2:
                    network.getClass();
                    if (network.equals(((NetworkStateTrackerPre28) this.this$0).connectivityManager.getActiveNetwork())) {
                        Logger$LogcatLogger.get().debug(NetworkStateTrackerKt.TAG, "Network blocked status changed: " + z);
                        NetworkStateTrackerPre28 networkStateTrackerPre28 = (NetworkStateTrackerPre28) this.this$0;
                        Object obj = networkStateTrackerPre28.next;
                        if (obj == null) {
                            obj = networkStateTrackerPre28.readSystemState();
                        }
                        NetworkState networkState = (NetworkState) obj;
                        NetworkStateTrackerPre28 networkStateTrackerPre282 = (NetworkStateTrackerPre28) this.this$0;
                        synchronized (networkStateTrackerPre282.lock) {
                            if (networkStateTrackerPre282.isBlocked == z) {
                                return;
                            }
                            networkStateTrackerPre282.isBlocked = z;
                            ((NetworkStateTrackerPre28) this.this$0).setState(new NetworkState(networkState.isConnected, networkState.isValidated, networkState.isMetered, networkState.isNotRoaming, z));
                            return;
                        }
                    }
                    return;
                default:
                    super.onBlockedStatusChanged(network, z);
                    return;
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            switch (this.$r8$classId) {
                case 1:
                    network.getClass();
                    networkCapabilities.getClass();
                    Logger$LogcatLogger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController onCapabilitiesChanged callback");
                    ((WorkTagDao_Impl$$ExternalSyntheticLambda1) this.this$0).invoke(ConstraintsState.ConstraintsMet.INSTANCE);
                    break;
                case 2:
                    network.getClass();
                    networkCapabilities.getClass();
                    Logger$LogcatLogger.get().debug(NetworkStateTrackerKt.TAG, "Network capabilities changed: " + networkCapabilities);
                    NetworkStateTrackerPre28 networkStateTrackerPre28 = (NetworkStateTrackerPre28) this.this$0;
                    networkStateTrackerPre28.setState(NetworkStateTrackerKt.getActiveNetworkState(networkStateTrackerPre28.connectivityManager, networkStateTrackerPre28.isBlocked));
                    break;
                default:
                    super.onCapabilitiesChanged(network, networkCapabilities);
                    break;
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onLost(Network network) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    int i2 = DownloadManagerService.$r8$clinit;
                    ((DownloadManagerService) obj).handleConnectivityState(false);
                    break;
                case 1:
                    network.getClass();
                    Logger$LogcatLogger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController onLost callback");
                    ((WorkTagDao_Impl$$ExternalSyntheticLambda1) obj).invoke(new ConstraintsState.ConstraintsNotMet(7));
                    break;
                default:
                    network.getClass();
                    Logger$LogcatLogger.get().debug(NetworkStateTrackerKt.TAG, "Network connection lost");
                    ((NetworkStateTrackerPre28) obj).setState(new NetworkState(false, false, false, false, false));
                    break;
            }
        }

        public /* synthetic */ AnonymousClass1(Object obj, int i) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }
    }
}
