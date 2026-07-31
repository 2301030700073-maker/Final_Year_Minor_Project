package androidx.media3.session;

import android.content.Intent;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import androidx.media3.common.Player;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.session.MediaController;
import androidx.media3.session.MediaNotification;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes2.dex */
final class MediaNotificationManager {
    private static final String TAG = "MediaNtfMng";
    private final MediaNotification.ActionFactory actionFactory;
    private final Map<MediaSession, ListenableFuture<MediaController>> controllerMap;
    private final Executor mainExecutor;
    private MediaNotification mediaNotification;
    private final MediaNotification.Provider mediaNotificationProvider;
    private final MediaSessionService mediaSessionService;
    private final NotificationManagerCompat notificationManagerCompat;
    private final Intent startSelfIntent;
    private boolean startedInForeground;
    private int totalNotificationCount;

    public MediaNotificationManager(MediaSessionService mediaSessionService, MediaNotification.Provider provider, MediaNotification.ActionFactory actionFactory) {
        this.mediaSessionService = mediaSessionService;
        this.mediaNotificationProvider = provider;
        this.actionFactory = actionFactory;
        this.notificationManagerCompat = NotificationManagerCompat.from(mediaSessionService);
        final Handler handler = new Handler(Looper.getMainLooper());
        this.mainExecutor = new Executor() { // from class: androidx.media3.session.MediaNotificationManager$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                Util.postOrRun(handler, runnable);
            }
        };
        this.startSelfIntent = new Intent(mediaSessionService, mediaSessionService.getClass());
        this.controllerMap = new HashMap();
        this.startedInForeground = false;
    }

    public void addSession(final MediaSession mediaSession) {
        if (this.controllerMap.containsKey(mediaSession)) {
            return;
        }
        final MediaControllerListener mediaControllerListener = new MediaControllerListener(this.mediaSessionService, mediaSession);
        Bundle bundle = new Bundle();
        bundle.putBoolean(MediaController.KEY_MEDIA_NOTIFICATION_CONTROLLER_FLAG, true);
        final ListenableFuture<MediaController> buildAsync = new MediaController.Builder(this.mediaSessionService, mediaSession.getToken()).setConnectionHints(bundle).setListener(mediaControllerListener).setApplicationLooper(Looper.getMainLooper()).buildAsync();
        this.controllerMap.put(mediaSession, buildAsync);
        buildAsync.addListener(new Runnable() { // from class: androidx.media3.session.MediaNotificationManager$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                MediaNotificationManager.this.m358x67573ed4(buildAsync, mediaControllerListener, mediaSession);
            }
        }, this.mainExecutor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: lambda$addSession$1$androidx-media3-session-MediaNotificationManager, reason: not valid java name */
    /* synthetic */ void m358x67573ed4(ListenableFuture listenableFuture, MediaControllerListener mediaControllerListener, MediaSession mediaSession) {
        try {
            MediaController mediaController = (MediaController) listenableFuture.get(0L, TimeUnit.MILLISECONDS);
            mediaControllerListener.onConnected(shouldShowNotification(mediaSession));
            mediaController.addListener(mediaControllerListener);
        } catch (InterruptedException | CancellationException | ExecutionException | TimeoutException unused) {
            this.mediaSessionService.removeSession(mediaSession);
        }
    }

    public void removeSession(MediaSession mediaSession) {
        ListenableFuture<MediaController> remove = this.controllerMap.remove(mediaSession);
        if (remove != null) {
            MediaController.releaseFuture(remove);
        }
    }

    public void onCustomAction(final MediaSession mediaSession, final String str, final Bundle bundle) {
        final MediaController connectedControllerForSession = getConnectedControllerForSession(mediaSession);
        if (connectedControllerForSession == null) {
            return;
        }
        Util.postOrRun(new Handler(mediaSession.getPlayer().getApplicationLooper()), new Runnable() { // from class: androidx.media3.session.MediaNotificationManager$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                MediaNotificationManager.this.m360x54793c21(mediaSession, str, bundle, connectedControllerForSession);
            }
        });
    }

    /* renamed from: lambda$onCustomAction$3$androidx-media3-session-MediaNotificationManager, reason: not valid java name */
    /* synthetic */ void m360x54793c21(MediaSession mediaSession, final String str, final Bundle bundle, final MediaController mediaController) {
        if (this.mediaNotificationProvider.handleCustomCommand(mediaSession, str, bundle)) {
            return;
        }
        this.mainExecutor.execute(new Runnable() { // from class: androidx.media3.session.MediaNotificationManager$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MediaNotificationManager.this.m359x62cf9602(mediaController, str, bundle);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateNotification(final androidx.media3.session.MediaSession r9, final boolean r10) {
        /*
            r8 = this;
            androidx.media3.session.MediaSessionService r0 = r8.mediaSessionService
            boolean r0 = r0.isSessionAdded(r9)
            r1 = 1
            if (r0 == 0) goto L58
            boolean r0 = r8.shouldShowNotification(r9)
            if (r0 != 0) goto L10
            goto L58
        L10:
            int r0 = r8.totalNotificationCount
            int r0 = r0 + r1
            r8.totalNotificationCount = r0
            java.util.Map<androidx.media3.session.MediaSession, com.google.common.util.concurrent.ListenableFuture<androidx.media3.session.MediaController>> r1 = r8.controllerMap
            java.lang.Object r1 = r1.get(r9)
            com.google.common.util.concurrent.ListenableFuture r1 = (com.google.common.util.concurrent.ListenableFuture) r1
            if (r1 == 0) goto L2c
            boolean r2 = r1.isDone()
            if (r2 == 0) goto L2c
            java.lang.Object r1 = com.google.common.util.concurrent.Futures.getDone(r1)     // Catch: java.util.concurrent.ExecutionException -> L2c
            androidx.media3.session.MediaController r1 = (androidx.media3.session.MediaController) r1     // Catch: java.util.concurrent.ExecutionException -> L2c
            goto L2d
        L2c:
            r1 = 0
        L2d:
            if (r1 == 0) goto L34
            com.google.common.collect.ImmutableList r1 = r1.getCustomLayout()
            goto L38
        L34:
            com.google.common.collect.ImmutableList r1 = com.google.common.collect.ImmutableList.of()
        L38:
            r5 = r1
            androidx.media3.session.MediaNotificationManager$$ExternalSyntheticLambda5 r6 = new androidx.media3.session.MediaNotificationManager$$ExternalSyntheticLambda5
            r6.<init>()
            android.os.Handler r0 = new android.os.Handler
            androidx.media3.common.Player r1 = r9.getPlayer()
            android.os.Looper r1 = r1.getApplicationLooper()
            r0.<init>(r1)
            androidx.media3.session.MediaNotificationManager$$ExternalSyntheticLambda6 r1 = new androidx.media3.session.MediaNotificationManager$$ExternalSyntheticLambda6
            r2 = r1
            r3 = r8
            r4 = r9
            r7 = r10
            r2.<init>()
            androidx.media3.common.util.Util.postOrRun(r0, r1)
            return
        L58:
            r8.maybeStopForegroundService(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.session.MediaNotificationManager.updateNotification(androidx.media3.session.MediaSession, boolean):void");
    }

    /* renamed from: lambda$updateNotification$5$androidx-media3-session-MediaNotificationManager, reason: not valid java name */
    /* synthetic */ void m362xb22eb051(final int i, final MediaSession mediaSession, final MediaNotification mediaNotification) {
        this.mainExecutor.execute(new Runnable() { // from class: androidx.media3.session.MediaNotificationManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MediaNotificationManager.this.m361xc0850a32(i, mediaSession, mediaNotification);
            }
        });
    }

    /* renamed from: lambda$updateNotification$7$androidx-media3-session-MediaNotificationManager, reason: not valid java name */
    /* synthetic */ void m364x9581fc8f(final MediaSession mediaSession, ImmutableList immutableList, MediaNotification.Provider.Callback callback, final boolean z) {
        final MediaNotification createNotification = this.mediaNotificationProvider.createNotification(mediaSession, immutableList, this.actionFactory, callback);
        this.mainExecutor.execute(new Runnable() { // from class: androidx.media3.session.MediaNotificationManager$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                MediaNotificationManager.this.m363xa3d85670(mediaSession, createNotification, z);
            }
        });
    }

    public boolean isStartedInForeground() {
        return this.startedInForeground;
    }

    boolean shouldRunInForeground(MediaSession mediaSession, boolean z) {
        MediaController connectedControllerForSession = getConnectedControllerForSession(mediaSession);
        return connectedControllerForSession != null && (connectedControllerForSession.getPlayWhenReady() || z) && (connectedControllerForSession.getPlaybackState() == 3 || connectedControllerForSession.getPlaybackState() == 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onNotificationUpdated, reason: merged with bridge method [inline-methods] */
    public void m361xc0850a32(int i, MediaSession mediaSession, MediaNotification mediaNotification) {
        if (i == this.totalNotificationCount) {
            m363xa3d85670(mediaSession, mediaNotification, shouldRunInForeground(mediaSession, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: updateNotificationInternal, reason: merged with bridge method [inline-methods] */
    public void m363xa3d85670(MediaSession mediaSession, MediaNotification mediaNotification, boolean z) {
        if (Util.SDK_INT >= 21) {
            mediaNotification.notification.extras.putParcelable(NotificationCompat.EXTRA_MEDIA_SESSION, (MediaSession.Token) mediaSession.getSessionCompat().getSessionToken().getToken());
        }
        this.mediaNotification = mediaNotification;
        if (z) {
            startForeground(mediaNotification);
        } else {
            this.notificationManagerCompat.notify(mediaNotification.notificationId, mediaNotification.notification);
            maybeStopForegroundService(false);
        }
    }

    private void maybeStopForegroundService(boolean z) {
        MediaNotification mediaNotification;
        List<MediaSession> sessions = this.mediaSessionService.getSessions();
        for (int i = 0; i < sessions.size(); i++) {
            if (shouldRunInForeground(sessions.get(i), false)) {
                return;
            }
        }
        stopForeground(z);
        if (!z || (mediaNotification = this.mediaNotification) == null) {
            return;
        }
        this.notificationManagerCompat.cancel(mediaNotification.notificationId);
        this.totalNotificationCount++;
        this.mediaNotification = null;
    }

    private boolean shouldShowNotification(MediaSession mediaSession) {
        MediaController connectedControllerForSession = getConnectedControllerForSession(mediaSession);
        return (connectedControllerForSession == null || connectedControllerForSession.getCurrentTimeline().isEmpty() || connectedControllerForSession.getPlaybackState() == 1) ? false : true;
    }

    private MediaController getConnectedControllerForSession(MediaSession mediaSession) {
        ListenableFuture<MediaController> listenableFuture = this.controllerMap.get(mediaSession);
        if (listenableFuture == null || !listenableFuture.isDone()) {
            return null;
        }
        try {
            return (MediaController) Futures.getDone(listenableFuture);
        } catch (ExecutionException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendCustomCommandIfCommandIsAvailable, reason: merged with bridge method [inline-methods] */
    public void m359x62cf9602(MediaController mediaController, final String str, Bundle bundle) {
        SessionCommand sessionCommand;
        UnmodifiableIterator<SessionCommand> it = mediaController.getAvailableSessionCommands().commands.iterator();
        while (true) {
            if (!it.hasNext()) {
                sessionCommand = null;
                break;
            }
            sessionCommand = it.next();
            if (sessionCommand.commandCode == 0 && sessionCommand.customAction.equals(str)) {
                break;
            }
        }
        if (sessionCommand == null || !mediaController.getAvailableSessionCommands().contains(sessionCommand)) {
            return;
        }
        Futures.addCallback(mediaController.sendCustomCommand(new SessionCommand(str, bundle), Bundle.EMPTY), new FutureCallback<SessionResult>() { // from class: androidx.media3.session.MediaNotificationManager.1
            @Override // com.google.common.util.concurrent.FutureCallback
            public void onSuccess(SessionResult sessionResult) {
            }

            @Override // com.google.common.util.concurrent.FutureCallback
            public void onFailure(Throwable th) {
                Log.w(MediaNotificationManager.TAG, "custom command " + str + " produced an error: " + th.getMessage(), th);
            }
        }, MoreExecutors.directExecutor());
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class MediaControllerListener implements MediaController.Listener, Player.Listener {
        private final MediaSessionService mediaSessionService;
        private final MediaSession session;

        public MediaControllerListener(MediaSessionService mediaSessionService, MediaSession mediaSession) {
            this.mediaSessionService = mediaSessionService;
            this.session = mediaSession;
        }

        public void onConnected(boolean z) {
            if (z) {
                this.mediaSessionService.onUpdateNotificationInternal(this.session, false);
            }
        }

        @Override // androidx.media3.session.MediaController.Listener
        public void onCustomLayoutChanged(MediaController mediaController, List<CommandButton> list) {
            this.mediaSessionService.onUpdateNotificationInternal(this.session, false);
        }

        @Override // androidx.media3.session.MediaController.Listener
        public void onAvailableSessionCommandsChanged(MediaController mediaController, SessionCommands sessionCommands) {
            this.mediaSessionService.onUpdateNotificationInternal(this.session, false);
        }

        @Override // androidx.media3.session.MediaController.Listener
        public void onDisconnected(MediaController mediaController) {
            if (this.mediaSessionService.isSessionAdded(this.session)) {
                this.mediaSessionService.removeSession(this.session);
            }
            this.mediaSessionService.onUpdateNotificationInternal(this.session, false);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onEvents(Player player, Player.Events events) {
            if (events.containsAny(4, 5, 14, 0)) {
                this.mediaSessionService.onUpdateNotificationInternal(this.session, false);
            }
        }
    }

    private void startForeground(MediaNotification mediaNotification) {
        ContextCompat.startForegroundService(this.mediaSessionService, this.startSelfIntent);
        Util.setForegroundServiceNotification(this.mediaSessionService, mediaNotification.notificationId, mediaNotification.notification, 2, "mediaPlayback");
        this.startedInForeground = true;
    }

    private void stopForeground(boolean z) {
        if (Util.SDK_INT >= 24) {
            Api24.stopForeground(this.mediaSessionService, z);
        } else {
            this.mediaSessionService.stopForeground(z || Util.SDK_INT < 21);
        }
        this.startedInForeground = false;
    }

    private static class Api24 {
        public static void stopForeground(MediaSessionService mediaSessionService, boolean z) {
            mediaSessionService.stopForeground(z ? 1 : 2);
        }

        private Api24() {
        }
    }
}
