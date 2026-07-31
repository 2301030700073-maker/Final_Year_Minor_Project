package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.collection.LruCache;
import androidx.core.graphics.drawable.IconCompat;
import androidx.work.WorkRequest;
import java.util.ArrayList;
import java.util.Iterator;
import kotlinx.coroutines.flow.SharingConfig;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationCompat$Builder {
    public final boolean mAllowSystemGeneratedContextualActions;
    public String mCategory;
    public final String mChannelId;
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
    public Notification mPublicVersion;
    public boolean mSilent;
    public WorkRequest.Builder mStyle;
    public CharSequence mSubText;
    public final ArrayList mActions = new ArrayList();
    public final ArrayList mPersonList = new ArrayList();
    public final ArrayList mInvisibleActions = new ArrayList();
    public boolean mShowWhen = true;
    public boolean mLocalOnly = false;
    public int mColor = 0;
    public int mVisibility = 0;
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

    public final void addAction(int i, String str, PendingIntent pendingIntent) {
        this.mActions.add(new NotificationCompat$Action(i != 0 ? IconCompat.createWithResource(null, "", i) : null, str, pendingIntent, new Bundle(), null, true, true));
    }

    public final Notification build() {
        Notification build;
        Bundle bundle;
        SharingConfig sharingConfig = new SharingConfig(this);
        NotificationCompat$Builder notificationCompat$Builder = (NotificationCompat$Builder) sharingConfig.onBufferOverflow;
        WorkRequest.Builder builder = notificationCompat$Builder.mStyle;
        if (builder != null) {
            builder.apply(sharingConfig);
        }
        Notification.Builder builder2 = (Notification.Builder) sharingConfig.upstream;
        int i = sharingConfig.extraBufferCapacity;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            build = builder2.build();
        } else if (i2 >= 24) {
            build = builder2.build();
            if (i != 0) {
                if (build.getGroup() != null && (build.flags & 512) != 0 && i == 2) {
                    SharingConfig.removeSoundAndVibration(build);
                }
                if (build.getGroup() != null && (build.flags & 512) == 0 && i == 1) {
                    SharingConfig.removeSoundAndVibration(build);
                }
            }
        } else {
            builder2.setExtras((Bundle) sharingConfig.context);
            build = builder2.build();
            if (i != 0) {
                if (build.getGroup() != null && (build.flags & 512) != 0 && i == 2) {
                    SharingConfig.removeSoundAndVibration(build);
                }
                if (build.getGroup() != null && (build.flags & 512) == 0 && i == 1) {
                    SharingConfig.removeSoundAndVibration(build);
                }
            }
        }
        if (builder != null) {
            notificationCompat$Builder.mStyle.getClass();
        }
        if (builder != null && (bundle = build.extras) != null) {
            if (builder.backoffCriteriaSet) {
                bundle.putCharSequence("android.summaryText", (CharSequence) builder.tags);
            }
            CharSequence charSequence = (CharSequence) builder.workSpec;
            if (charSequence != null) {
                bundle.putCharSequence("android.title.big", charSequence);
            }
            bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", builder.getClassName());
        }
        return build;
    }

    public final void extend(LruCache lruCache) {
        Bundle bundle = new Bundle();
        if (!((ArrayList) lruCache.map).isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(((ArrayList) lruCache.map).size());
            Iterator it = ((ArrayList) lruCache.map).iterator();
            while (it.hasNext()) {
                NotificationCompat$Action notificationCompat$Action = (NotificationCompat$Action) it.next();
                IconCompat iconCompat = notificationCompat$Action.getIconCompat();
                boolean z = notificationCompat$Action.mAllowGeneratedReplies;
                Bundle bundle2 = notificationCompat$Action.mExtras;
                Notification.Action.Builder builder = new Notification.Action.Builder(iconCompat == null ? null : iconCompat.toIcon(null), notificationCompat$Action.title, notificationCompat$Action.actionIntent);
                Bundle bundle3 = bundle2 != null ? new Bundle(bundle2) : new Bundle();
                bundle3.putBoolean("android.support.allowGeneratedReplies", z);
                int i = Build.VERSION.SDK_INT;
                if (i >= 24) {
                    NotificationCompat$WearableExtender$Api24Impl.setAllowGeneratedReplies(builder, z);
                }
                if (i >= 31) {
                    NotificationCompat$WearableExtender$Api31Impl.setAuthenticationRequired(builder, false);
                }
                builder.addExtras(bundle3);
                RemoteInput[] remoteInputArr = notificationCompat$Action.mRemoteInputs;
                if (remoteInputArr != null) {
                    android.app.RemoteInput[] remoteInputArr2 = new android.app.RemoteInput[remoteInputArr.length];
                    if (remoteInputArr.length > 0) {
                        RemoteInput remoteInput = remoteInputArr[0];
                        throw null;
                    }
                    for (android.app.RemoteInput remoteInput2 : remoteInputArr2) {
                        builder.addRemoteInput(remoteInput2);
                    }
                }
                arrayList.add(builder.build());
            }
            bundle.putParcelableArrayList("actions", arrayList);
        }
        int i2 = lruCache.maxSize;
        if (i2 != 1) {
            bundle.putInt("flags", i2);
        }
        if (!((ArrayList) lruCache.lock).isEmpty()) {
            ArrayList arrayList2 = (ArrayList) lruCache.lock;
            bundle.putParcelableArray("pages", (Parcelable[]) arrayList2.toArray(new Notification[arrayList2.size()]));
        }
        int i3 = lruCache.size;
        if (i3 != 8388613) {
            bundle.putInt("contentIconGravity", i3);
        }
        int i4 = lruCache.hitCount;
        if (i4 != -1) {
            bundle.putInt("contentActionIndex", i4);
        }
        int i5 = lruCache.missCount;
        if (i5 != 80) {
            bundle.putInt("gravity", i5);
        }
        if (this.mExtras == null) {
            this.mExtras = new Bundle();
        }
        this.mExtras.putBundle("android.wearable.EXTENSIONS", bundle);
    }

    public final void setFlag(int i, boolean z) {
        Notification notification = this.mNotification;
        if (z) {
            notification.flags = i | notification.flags;
        } else {
            notification.flags = (~i) & notification.flags;
        }
    }

    public final void setStyle(WorkRequest.Builder builder) {
        if (this.mStyle != builder) {
            this.mStyle = builder;
            if (((NotificationCompat$Builder) builder.id) != this) {
                builder.id = this;
                setStyle(builder);
            }
        }
    }

    public final void setTicker(CharSequence charSequence) {
        this.mNotification.tickerText = limitCharSequenceLength(charSequence);
    }
}
