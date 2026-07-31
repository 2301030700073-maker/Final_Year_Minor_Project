package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import androidx.core.content.LocusIdCompat;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import okhttp3.Dispatcher;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationCompat$Builder {
    public final ArrayList mActions;
    public final boolean mAllowSystemGeneratedContextualActions;
    public final int mBadgeIcon;
    public final NotificationCompat$BubbleMetadata mBubbleMetadata;
    public final String mCategory;
    public final String mChannelId;
    public int mColor;
    public final boolean mColorized;
    public final boolean mColorizedSet;
    public CharSequence mContentInfo;
    public PendingIntent mContentIntent;
    public CharSequence mContentText;
    public CharSequence mContentTitle;
    public final Context mContext;
    public Bundle mExtras;
    public final PendingIntent mFullScreenIntent;
    public final String mGroupKey;
    public final boolean mGroupSummary;
    public final ArrayList mInvisibleActions;
    public IconCompat mLargeIcon;
    public final boolean mLocalOnly;
    public final LocusIdCompat mLocusId;
    public final Notification mNotification;
    public final int mNumber;
    public final ArrayList mPeople;
    public final ArrayList mPersonList;
    public int mPriority;
    public int mProgress;
    public boolean mProgressIndeterminate;
    public int mProgressMax;
    public final Notification mPublicVersion;
    public final CharSequence mSettingsText;
    public final String mShortCriticalText;
    public final String mShortcutId;
    public final boolean mShowWhen;
    public final boolean mSilent;
    public final Icon mSmallIcon;
    public final String mSortKey;
    public NotificationCompat$Style mStyle;
    public CharSequence mSubText;
    public long mTimeout;
    public final boolean mUseChronometer;
    public final int mVisibility;

    /* JADX WARN: Code restructure failed: missing block: B:259:0x017d, code lost:
    
        if ((r2 >= 26 ? androidx.core.app.RemoteInput.Api26Impl.getGroupAlertBehavior(r35) : 0) == 2) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x018c, code lost:
    
        if ((r2 >= 26 ? androidx.core.app.RemoteInput.Api26Impl.getGroupAlertBehavior(r35) : 0) == 1) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x019e, code lost:
    
        if (r35.sound == null) goto L64;
     */
    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:151:0x042d  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x04dc  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0503  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0533 A[LOOP:6: B:209:0x052d->B:211:0x0533, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:219:0x055b  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02f3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public NotificationCompat$Builder(android.content.Context r34, android.app.Notification r35) {
        /*
            Method dump skipped, instructions count: 1433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.NotificationCompat$Builder.<init>(android.content.Context, android.app.Notification):void");
    }

    public static CharSequence limitCharSequenceLength(CharSequence charSequence) {
        return charSequence == null ? charSequence : charSequence.length() > 5120 ? charSequence.subSequence(0, 5120) : charSequence;
    }

    public static String safeCharSequenceToString(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        String charSequence2 = charSequence.toString();
        return charSequence2 == null ? charSequence2 : charSequence2.length() > 5120 ? charSequence2.substring(0, 5120) : charSequence2;
    }

    public final void addAction(String str, PendingIntent pendingIntent) {
        this.mActions.add(new NotificationCompat$Action(null, str, pendingIntent, new Bundle(), null, true, 0, true, false, 0, 0, false));
    }

    public final Notification build() {
        Notification build;
        Bundle bundle;
        Dispatcher dispatcher = new Dispatcher(this);
        NotificationCompat$Builder notificationCompat$Builder = (NotificationCompat$Builder) dispatcher.runningAsyncCalls;
        NotificationCompat$Style notificationCompat$Style = notificationCompat$Builder.mStyle;
        if (notificationCompat$Style != null) {
            notificationCompat$Style.apply(dispatcher);
        }
        if (notificationCompat$Style != null) {
            notificationCompat$Style.makeContentView();
        }
        Notification.Builder builder = (Notification.Builder) dispatcher.readyAsyncCalls;
        int i = dispatcher.maxRequestsPerHost;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            build = builder.build();
        } else if (i2 >= 24) {
            build = builder.build();
            if (i != 0) {
                if (build.getGroup() != null && (build.flags & 512) != 0 && i == 2) {
                    Dispatcher.removeSoundAndVibration(build);
                }
                if (build.getGroup() != null && (build.flags & 512) == 0 && i == 1) {
                    Dispatcher.removeSoundAndVibration(build);
                }
            }
        } else {
            builder.setExtras((Bundle) dispatcher.runningSyncCalls);
            build = builder.build();
            if (i != 0) {
                if (build.getGroup() != null && (build.flags & 512) != 0 && i == 2) {
                    Dispatcher.removeSoundAndVibration(build);
                }
                if (build.getGroup() != null && (build.flags & 512) == 0 && i == 1) {
                    Dispatcher.removeSoundAndVibration(build);
                }
            }
        }
        if (notificationCompat$Style != null) {
            notificationCompat$Style.makeBigContentView();
        }
        if (notificationCompat$Style != null) {
            notificationCompat$Builder.mStyle.makeHeadsUpContentView();
        }
        if (notificationCompat$Style != null && (bundle = build.extras) != null) {
            notificationCompat$Style.addCompatExtras(bundle);
        }
        return build;
    }

    public final void setDefaults(int i) {
        Notification notification = this.mNotification;
        notification.defaults = i;
        if ((i & 4) != 0) {
            notification.flags |= 1;
        }
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

    public final void setStyle(NotificationCompat$Style notificationCompat$Style) {
        if (this.mStyle != notificationCompat$Style) {
            this.mStyle = notificationCompat$Style;
            if (notificationCompat$Style == null || notificationCompat$Style.mBuilder == this) {
                return;
            }
            notificationCompat$Style.mBuilder = this;
            setStyle(notificationCompat$Style);
        }
    }

    public NotificationCompat$Builder(Context context, String str) {
        this.mActions = new ArrayList();
        this.mPersonList = new ArrayList();
        this.mInvisibleActions = new ArrayList();
        this.mShowWhen = true;
        this.mLocalOnly = false;
        this.mColor = 0;
        this.mVisibility = 0;
        this.mBadgeIcon = 0;
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
}
