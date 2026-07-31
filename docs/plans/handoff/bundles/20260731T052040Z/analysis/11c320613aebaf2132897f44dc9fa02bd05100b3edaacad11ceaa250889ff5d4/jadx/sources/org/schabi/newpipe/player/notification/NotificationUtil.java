package org.schabi.newpipe.player.notification;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.Build;
import androidx.core.app.NavUtils;
import androidx.core.app.NotificationCompat$Action;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.app.ServiceCompat$Api29Impl;
import androidx.media.app.NotificationCompat$MediaStyle;
import androidx.sqlite.SQLite;
import com.google.android.exoplayer2.C;
import j$.util.Collection;
import java.util.ArrayList;
import java.util.Collection;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.player.PlayQueueActivity;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda28;
import org.schabi.newpipe.player.PlayerIntentType;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.PlayerType;
import org.schabi.newpipe.player.mediaitem.MediaItemTag;
import org.schabi.newpipe.player.mediasession.MediaSessionPlayerUi;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda6;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NotificationUtil {
    public NotificationCompat$Builder notificationBuilder;
    public NotificationManagerCompat notificationManager;
    public final int[] notificationSlots = (int[]) NotificationConstants.SLOT_DEFAULTS.clone();
    public final Player player;

    static {
        String str = Player.TAG;
    }

    public NotificationUtil(Player player) {
        this.player = player;
    }

    public static NotificationCompat$Builder setupNotificationBuilder(PlayerService playerService, NotificationCompat$MediaStyle notificationCompat$MediaStyle) {
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(playerService, playerService.getString(R.string.notification_channel_id));
        notificationCompat$Builder.setStyle(notificationCompat$MediaStyle);
        notificationCompat$Builder.mPriority = 1;
        notificationCompat$Builder.mVisibility = 1;
        notificationCompat$Builder.mCategory = "transport";
        notificationCompat$Builder.mShowWhen = false;
        Notification notification = notificationCompat$Builder.mNotification;
        notification.icon = R.drawable.ic_newpipe_triangle_white;
        notificationCompat$Builder.mColor = playerService.getColor(R.color.dark_background_color);
        notification.deleteIntent = PendingIntent.getBroadcast(playerService, 123789, new Intent("org.schabi.newpipe.player.MainPlayer.CLOSE"), 201326592);
        return notificationCompat$Builder;
    }

    public static void startForeground(PlayerService playerService, Notification notification) {
        int i = Build.VERSION.SDK_INT;
        int i2 = i >= 29 ? 2 : 0;
        if (i >= 34) {
            ServiceCompat$Api29Impl.startForeground$1(playerService, notification, i2);
        } else if (i >= 29) {
            ServiceCompat$Api29Impl.startForeground(playerService, notification, i2);
        } else {
            playerService.startForeground(123789, notification);
        }
    }

    public final synchronized NotificationCompat$Builder createNotification() {
        NotificationCompat$Builder notificationCompat$Builder;
        try {
            this.notificationManager = new NotificationManagerCompat(this.player.context);
            NotificationCompat$MediaStyle notificationCompat$MediaStyle = new NotificationCompat$MediaStyle();
            if (Build.VERSION.SDK_INT < 33) {
                notificationCompat$MediaStyle.mActionsToShowInCompact = initializeNotificationSlots();
            }
            this.player.UIs.get(MediaSessionPlayerUi.class).flatMap(new Player$$ExternalSyntheticLambda28(29)).ifPresent(new Player$$ExternalSyntheticLambda1(notificationCompat$MediaStyle, 17));
            notificationCompat$Builder = setupNotificationBuilder(this.player.context, notificationCompat$MediaStyle);
            Player player = this.player;
            notificationCompat$Builder.mColorized = player.prefs.getBoolean(player.context.getString(R.string.notification_colorize_key), true);
            notificationCompat$Builder.mColorizedSet = true;
            setLargeIcon(notificationCompat$Builder);
        } catch (Throwable th) {
            throw th;
        }
        return notificationCompat$Builder;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x001b A[Catch: all -> 0x0008, TRY_LEAVE, TryCatch #0 {all -> 0x0008, blocks: (B:16:0x0003, B:4:0x0010, B:6:0x001b, B:3:0x000a), top: B:15:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void createNotificationIfNeededAndUpdate(boolean r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            if (r3 != 0) goto La
            androidx.core.app.NotificationCompat$Builder r3 = r2.notificationBuilder     // Catch: java.lang.Throwable -> L8
            if (r3 != 0) goto L10
            goto La
        L8:
            r3 = move-exception
            goto L2b
        La:
            androidx.core.app.NotificationCompat$Builder r3 = r2.createNotification()     // Catch: java.lang.Throwable -> L8
            r2.notificationBuilder = r3     // Catch: java.lang.Throwable -> L8
        L10:
            r2.updateNotification()     // Catch: java.lang.Throwable -> L8
            androidx.core.app.NotificationManagerCompat r3 = r2.notificationManager     // Catch: java.lang.Throwable -> L8
            boolean r3 = r3.areNotificationsEnabled()     // Catch: java.lang.Throwable -> L8
            if (r3 == 0) goto L29
            androidx.core.app.NotificationManagerCompat r3 = r2.notificationManager     // Catch: java.lang.Throwable -> L8
            androidx.core.app.NotificationCompat$Builder r0 = r2.notificationBuilder     // Catch: java.lang.Throwable -> L8
            android.app.Notification r0 = r0.build()     // Catch: java.lang.Throwable -> L8
            r1 = 123789(0x1e38d, float:1.73465E-40)
            r3.notify(r1, r0)     // Catch: java.lang.Throwable -> L8
        L29:
            monitor-exit(r2)
            return
        L2b:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L8
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.player.notification.NotificationUtil.createNotificationIfNeededAndUpdate(boolean):void");
    }

    public final Intent getIntentForNotification() {
        Player player = this.player;
        PlayerType playerType = player.playerType;
        PlayerService playerService = player.context;
        if (playerType == PlayerType.AUDIO || playerType == PlayerType.POPUP) {
            Intent intent = new Intent(playerService, (Class<?>) PlayQueueActivity.class);
            if (Build.VERSION.SDK_INT < 24) {
                intent.setFlags(268435456);
            }
            return intent;
        }
        Intent playerIntent = SQLite.getPlayerIntent(playerService, MainActivity.class, null, PlayerIntentType.AllOthers);
        playerIntent.putExtra("resume_playback", true);
        playerIntent.addFlags(268435456);
        playerIntent.setAction("android.intent.action.MAIN");
        playerIntent.addCategory("android.intent.category.LAUNCHER");
        return playerIntent;
    }

    public final int[] initializeNotificationSlots() {
        Player player = this.player;
        PlayerService playerService = player.context;
        SharedPreferences sharedPreferences = player.prefs;
        Collection compactSlotsFromPreferences = NotificationConstants.getCompactSlotsFromPreferences(playerService, sharedPreferences);
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = sharedPreferences.getInt(player.context.getString(NotificationConstants.SLOT_PREF_KEYS[i2]), NotificationConstants.SLOT_DEFAULTS[i2]);
            this.notificationSlots[i2] = i3;
            if (i3 != 0) {
                if (compactSlotsFromPreferences.contains(Integer.valueOf(i2))) {
                    arrayList.add(Integer.valueOf(i));
                }
                i++;
            }
        }
        return Collection.EL.stream(arrayList).mapToInt(new ListHelper$$ExternalSyntheticLambda6(4)).toArray();
    }

    public final void setLargeIcon(NotificationCompat$Builder notificationCompat$Builder) {
        Player player = this.player;
        SharedPreferences sharedPreferences = player.prefs;
        PlayerService playerService = player.context;
        boolean z = sharedPreferences.getBoolean(playerService.getString(R.string.show_thumbnail_key), true);
        Bitmap bitmap = player.currentThumbnail;
        if (bitmap == null || !z) {
            notificationCompat$Builder.mLargeIcon = null;
            return;
        }
        if (!player.prefs.getBoolean(playerService.getString(R.string.scale_to_square_image_in_notifications_key), false)) {
            notificationCompat$Builder.setLargeIcon(bitmap);
            return;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int min = Math.min(width, height);
        notificationCompat$Builder.setLargeIcon(Bitmap.createBitmap(bitmap, (width - min) / 2, (height - min) / 2, min, min));
    }

    public final void updateActions(NotificationCompat$Builder notificationCompat$Builder) {
        notificationCompat$Builder.mActions.clear();
        for (int i = 0; i < 5; i++) {
            int i2 = this.notificationSlots[i];
            Player player = this.player;
            NotificationActionData fromNotificationActionEnum = NotificationActionData.fromNotificationActionEnum(player, i2);
            if (fromNotificationActionEnum != null) {
                notificationCompat$Builder.mActions.add(new NotificationCompat$Action(fromNotificationActionEnum.icon, fromNotificationActionEnum.name, PendingIntent.getBroadcast(player.context, 123789, new Intent(fromNotificationActionEnum.action), 201326592)));
            }
        }
    }

    public final synchronized void updateNotification() {
        this.notificationBuilder.mContentIntent = NavUtils.getActivity(this.player.context, 123789, getIntentForNotification(), C.BUFFER_FLAG_FIRST_SAMPLE);
        NotificationCompat$Builder notificationCompat$Builder = this.notificationBuilder;
        Player player = this.player;
        MediaItemTag mediaItemTag = player.currentMetadata;
        notificationCompat$Builder.setContentTitle(mediaItemTag == null ? player.context.getString(R.string.unknown_content) : mediaItemTag.getTitle());
        NotificationCompat$Builder notificationCompat$Builder2 = this.notificationBuilder;
        Player player2 = this.player;
        MediaItemTag mediaItemTag2 = player2.currentMetadata;
        notificationCompat$Builder2.setContentText(mediaItemTag2 == null ? player2.context.getString(R.string.unknown_content) : mediaItemTag2.getUploaderName());
        NotificationCompat$Builder notificationCompat$Builder3 = this.notificationBuilder;
        Player player3 = this.player;
        MediaItemTag mediaItemTag3 = player3.currentMetadata;
        notificationCompat$Builder3.mNotification.tickerText = NotificationCompat$Builder.limitCharSequenceLength(mediaItemTag3 == null ? player3.context.getString(R.string.unknown_content) : mediaItemTag3.getTitle());
        if (Build.VERSION.SDK_INT < 33) {
            updateActions(this.notificationBuilder);
        }
    }
}
