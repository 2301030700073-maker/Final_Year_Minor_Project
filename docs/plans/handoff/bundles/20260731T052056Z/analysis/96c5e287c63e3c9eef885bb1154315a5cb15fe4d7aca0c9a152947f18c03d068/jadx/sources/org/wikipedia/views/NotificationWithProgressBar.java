package org.wikipedia.views;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.media.AudioAttributes;
import android.os.Build;
import androidx.core.app.NotificationCompat$Action;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationCompat$InboxStyle;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.R;
import org.wikipedia.notifications.NotificationCategory;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationWithProgressBar {
    public boolean isCanceled;
    public boolean isEnableCancelButton;
    public boolean isEnablePauseButton;
    public boolean isPaused;
    public NotificationCategory notificationCategory;
    public int notificationDescription;
    public int notificationId;
    public int notificationTitle;
    public Class targetClass;

    public static NotificationCompat$Action actionBuilder(Context context, Class cls, String str, int i, int i2, int i3) {
        String string = context.getString(i2);
        Intent intent = new Intent(context, (Class<?>) cls);
        intent.putExtra(str, true);
        intent.addFlags(67108864);
        return new NotificationCompat$Action.Builder(i, string, PendingIntent.getBroadcast(context, i3, intent, 201326592)).build();
    }

    public final void build(Context context, NotificationCompat$Builder notificationCompat$Builder, int i, int i2) {
        ArrayList arrayList = notificationCompat$Builder.mActions;
        Notification notification = notificationCompat$Builder.mNotification;
        NotificationCategory notificationCategory = this.notificationCategory;
        if (notificationCategory == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notificationCategory");
            throw null;
        }
        int iconResId = notificationCategory.getIconResId();
        String quantityString = context.getResources().getQuantityString(this.notificationTitle, i, Integer.valueOf(i));
        quantityString.getClass();
        String str = ((int) ((i2 / i) * 100.0f)) + "%";
        int i3 = i - i2;
        String quantityString2 = context.getResources().getQuantityString(this.notificationDescription, i3, Integer.valueOf(i3));
        quantityString2.getClass();
        notification.icon = iconResId;
        notificationCompat$Builder.setLargeIcon(BitmapFactory.decodeResource(context.getResources(), iconResId));
        NotificationCompat$InboxStyle notificationCompat$InboxStyle = new NotificationCompat$InboxStyle(1);
        notificationCompat$InboxStyle.mTexts = NotificationCompat$Builder.limitCharSequenceLength(quantityString2);
        notificationCompat$Builder.setStyle(notificationCompat$InboxStyle);
        notificationCompat$Builder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(quantityString);
        notificationCompat$Builder.mContentText = NotificationCompat$Builder.limitCharSequenceLength(quantityString2);
        notificationCompat$Builder.mPriority = 0;
        notification.sound = null;
        notification.audioStreamType = -1;
        notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
        notificationCompat$Builder.mContentInfo = NotificationCompat$Builder.limitCharSequenceLength(str);
        notificationCompat$Builder.setFlag(2, true);
        if (this.isEnablePauseButton) {
            Class cls = this.targetClass;
            if (cls == null) {
                Intrinsics.throwUninitializedPropertyAccessException("targetClass");
                throw null;
            }
            boolean z = this.isPaused;
            arrayList.add(actionBuilder(context, cls, "syncPauseResume", z ? R.drawable.ic_play_arrow_black_24dp : R.drawable.ic_pause_black_24dp, z ? R.string.notification_syncing_resume_button : R.string.notification_syncing_pause_button, 0));
        }
        if (this.isEnableCancelButton) {
            Class cls2 = this.targetClass;
            if (cls2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("targetClass");
                throw null;
            }
            arrayList.add(actionBuilder(context, cls2, "syncCancel", R.drawable.ic_close_black_24dp, R.string.notification_syncing_cancel_button, 1));
        }
        if (Build.VERSION.SDK_INT >= 24) {
            notificationCompat$Builder.mSubText = NotificationCompat$Builder.limitCharSequenceLength(str);
        }
    }

    public final void cancelNotification(Context context) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
        if (notificationManager != null) {
            notificationManager.cancel(this.notificationId);
        }
    }

    public final void setNotificationProgress(Context context, int i, int i2) {
        NotificationManager notificationManager;
        this.isCanceled = false;
        this.isPaused = false;
        NotificationCategory notificationCategory = this.notificationCategory;
        if (notificationCategory == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notificationCategory");
            throw null;
        }
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context, notificationCategory.getId());
        build(context, notificationCompat$Builder, i, i2);
        boolean z = i2 == 0;
        notificationCompat$Builder.mProgressMax = i;
        notificationCompat$Builder.mProgress = i2;
        notificationCompat$Builder.mProgressIndeterminate = z;
        if (this.isCanceled || (notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class)) == null) {
            return;
        }
        notificationManager.notify(this.notificationId, notificationCompat$Builder.build());
    }
}
