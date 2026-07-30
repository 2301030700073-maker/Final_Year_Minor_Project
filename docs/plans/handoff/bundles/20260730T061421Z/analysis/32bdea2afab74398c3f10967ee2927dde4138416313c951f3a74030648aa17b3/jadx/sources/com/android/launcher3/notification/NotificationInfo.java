package com.android.launcher3.notification;

import android.app.ActivityOptions;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.service.notification.StatusBarNotification;
import android.view.View;
import b.l.W;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.util.PackageUserKey;
import java.util.Objects;

/* loaded from: classes.dex */
public class NotificationInfo implements View.OnClickListener {
    public final boolean autoCancel;
    public final boolean dismissable;
    public final PendingIntent intent;
    public int mIconColor;
    public Drawable mIconDrawable;
    public boolean mIsIconLarge;
    public final ItemInfo mItemInfo;
    public final String notificationKey;
    public final CharSequence text;
    public final CharSequence title;

    public NotificationInfo(Context context, StatusBarNotification statusBarNotification, ItemInfo itemInfo) {
        new PackageUserKey(statusBarNotification.getPackageName(), statusBarNotification.getUser());
        this.notificationKey = statusBarNotification.getKey();
        Notification notification = statusBarNotification.getNotification();
        this.title = notification.extras.getCharSequence("android.title");
        this.text = notification.extras.getCharSequence("android.text");
        Icon largeIcon = notification.getBadgeIconType() == 1 ? null : notification.getLargeIcon();
        if (largeIcon == null) {
            Icon smallIcon = notification.getSmallIcon();
            this.mIconDrawable = smallIcon != null ? smallIcon.loadDrawable(context) : null;
            this.mIconColor = statusBarNotification.getNotification().color;
            this.mIsIconLarge = false;
        } else {
            this.mIconDrawable = largeIcon.loadDrawable(context);
            this.mIsIconLarge = true;
        }
        if (this.mIconDrawable == null) {
            this.mIconDrawable = new BitmapDrawable(context.getResources(), LauncherAppState.getInstance(context).mIconCache.getDefaultIcon(statusBarNotification.getUser()).icon);
        }
        this.intent = notification.contentIntent;
        this.autoCancel = (notification.flags & 16) != 0;
        this.dismissable = (notification.flags & 2) == 0;
        this.mItemInfo = itemInfo;
    }

    public Drawable getIconForBackground(Context context, int i) {
        if (this.mIsIconLarge) {
            return this.mIconDrawable;
        }
        this.mIconColor = W.resolveContrastColor(context, this.mIconColor, i);
        Drawable mutate = this.mIconDrawable.mutate();
        mutate.setTintList(null);
        mutate.setTint(this.mIconColor);
        return mutate;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.intent == null) {
            return;
        }
        Launcher launcher = Launcher.getLauncher(view.getContext());
        try {
            this.intent.send(null, 0, null, null, null, null, ActivityOptions.makeClipRevealAnimation(view, 0, 0, view.getWidth(), view.getHeight()).toBundle());
            launcher.getUserEventDispatcher().logNotificationLaunch(view, this.intent);
            launcher.getStatsLogManager().logger().withItemInfo(this.mItemInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_NOTIFICATION_LAUNCH_TAP);
        } catch (PendingIntent.CanceledException e) {
            e.printStackTrace();
        }
        if (this.autoCancel) {
            PopupDataProvider popupDataProvider = launcher.mPopupDataProvider;
            String str = this.notificationKey;
            Objects.requireNonNull(popupDataProvider);
            NotificationListener instanceIfConnected = NotificationListener.getInstanceIfConnected();
            if (instanceIfConnected != null) {
                instanceIfConnected.mWorkerHandler.obtainMessage(4, str).sendToTarget();
            }
        }
        AbstractFloatingView.closeOpenContainer(launcher, 2);
    }
}
