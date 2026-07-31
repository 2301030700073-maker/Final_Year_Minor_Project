package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.os.Build;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NotificationCompat$Builder {
    public final boolean mAllowSystemGeneratedContextualActions;
    public String mCategory;
    public final String mChannelId;
    public boolean mColorized;
    public boolean mColorizedSet;
    public CharSequence mContentInfo;
    public PendingIntent mContentIntent;
    public CharSequence mContentText;
    public CharSequence mContentTitle;
    public final Context mContext;
    public Bundle mExtras;
    public String mGroupKey;
    public boolean mGroupSummary;
    public IconCompat mLargeIcon;
    public final Notification mNotification;
    public int mNumber;
    public final ArrayList mPeople;
    public int mPriority;
    public int mProgress;
    public boolean mProgressIndeterminate;
    public int mProgressMax;
    public boolean mSilent;
    public NotificationCompat$Style mStyle;
    public CharSequence mSubText;
    public boolean mUseChronometer;
    public final ArrayList mActions = new ArrayList();
    public final ArrayList mPersonList = new ArrayList();
    public final ArrayList mInvisibleActions = new ArrayList();
    public boolean mShowWhen = true;
    public int mColor = 0;
    public int mVisibility = 0;
    public int mBadgeIcon = 0;
    public int mGroupAlertBehavior = 0;
    public int mFgsDeferBehavior = 0;

    public NotificationCompat$Builder(Context context, String str) {
        Notification notification = new Notification();
        this.mNotification = notification;
        this.mContext = context;
        this.mChannelId = str;
        notification.when = System.currentTimeMillis();
        notification.audioStreamType = -1;
        this.mPriority = 0;
        this.mPeople = new ArrayList();
        this.mAllowSystemGeneratedContextualActions = true;
    }

    public static CharSequence limitCharSequenceLength(CharSequence charSequence) {
        return charSequence == null ? charSequence : charSequence.length() > 5120 ? charSequence.subSequence(0, 5120) : charSequence;
    }

    public final Notification build() {
        Notification build;
        Bundle bundle;
        NotificationCompatBuilder notificationCompatBuilder = new NotificationCompatBuilder(this);
        NotificationCompat$Builder notificationCompat$Builder = (NotificationCompat$Builder) notificationCompatBuilder.mBuilderCompat;
        NotificationCompat$Style notificationCompat$Style = notificationCompat$Builder.mStyle;
        if (notificationCompat$Style != null) {
            notificationCompat$Style.apply(notificationCompatBuilder);
        }
        Notification.Builder builder = (Notification.Builder) notificationCompatBuilder.mBuilder;
        int i = notificationCompatBuilder.mGroupAlertBehavior;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            build = builder.build();
        } else if (i2 >= 24) {
            build = builder.build();
            if (i != 0) {
                if (build.getGroup() != null && (build.flags & 512) != 0 && i == 2) {
                    NotificationCompatBuilder.removeSoundAndVibration(build);
                }
                if (build.getGroup() != null && (build.flags & 512) == 0 && i == 1) {
                    NotificationCompatBuilder.removeSoundAndVibration(build);
                }
            }
        } else {
            builder.setExtras((Bundle) notificationCompatBuilder.mExtras);
            build = builder.build();
            if (i != 0) {
                if (build.getGroup() != null && (build.flags & 512) != 0 && i == 2) {
                    NotificationCompatBuilder.removeSoundAndVibration(build);
                }
                if (build.getGroup() != null && (build.flags & 512) == 0 && i == 1) {
                    NotificationCompatBuilder.removeSoundAndVibration(build);
                }
            }
        }
        if (notificationCompat$Style != null) {
            notificationCompat$Builder.mStyle.getClass();
        }
        if (notificationCompat$Style != null && (bundle = build.extras) != null) {
            CharSequence charSequence = (CharSequence) notificationCompat$Style.mBigContentTitle;
            if (charSequence != null) {
                bundle.putCharSequence("android.title.big", charSequence);
            }
            String className = notificationCompat$Style.getClassName();
            if (className != null) {
                bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", className);
            }
        }
        return build;
    }

    public final void setContentText(CharSequence charSequence) {
        this.mContentText = limitCharSequenceLength(charSequence);
    }

    public final void setContentTitle(CharSequence charSequence) {
        this.mContentTitle = limitCharSequenceLength(charSequence);
    }

    public final void setFlag(int i, boolean z) {
        Notification notification = this.mNotification;
        if (z) {
            notification.flags = i | notification.flags;
        } else {
            notification.flags = (~i) & notification.flags;
        }
    }

    public final void setLargeIcon(Bitmap bitmap) {
        IconCompat iconCompat;
        if (bitmap == null) {
            iconCompat = null;
        } else {
            if (Build.VERSION.SDK_INT < 27) {
                Resources resources = this.mContext.getResources();
                int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_width);
                int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_height);
                if (bitmap.getWidth() > dimensionPixelSize || bitmap.getHeight() > dimensionPixelSize2) {
                    double min = Math.min(dimensionPixelSize / Math.max(1, bitmap.getWidth()), dimensionPixelSize2 / Math.max(1, bitmap.getHeight()));
                    bitmap = Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(bitmap.getWidth() * min), (int) Math.ceil(bitmap.getHeight() * min), true);
                }
            }
            PorterDuff.Mode mode = IconCompat.DEFAULT_TINT_MODE;
            bitmap.getClass();
            IconCompat iconCompat2 = new IconCompat(1);
            iconCompat2.mObj1 = bitmap;
            iconCompat = iconCompat2;
        }
        this.mLargeIcon = iconCompat;
    }

    public final void setProgress(int i, int i2, boolean z) {
        this.mProgressMax = i;
        this.mProgress = i2;
        this.mProgressIndeterminate = z;
    }

    public final void setStyle(NotificationCompat$Style notificationCompat$Style) {
        if (this.mStyle != notificationCompat$Style) {
            this.mStyle = notificationCompat$Style;
            if (notificationCompat$Style == null || ((NotificationCompat$Builder) notificationCompat$Style.mBuilder) == this) {
                return;
            }
            notificationCompat$Style.mBuilder = this;
            setStyle(notificationCompat$Style);
        }
    }
}
