package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import coil3.util.UtilsKt;
import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationCompat$Action {
    public final PendingIntent actionIntent;
    public final int icon;
    public final boolean mAllowGeneratedReplies;
    public final boolean mAuthenticationRequired;
    public final int mEmphasisHint;
    public final Bundle mExtras;
    public IconCompat mIcon;
    public final boolean mIsContextual;
    public final RemoteInput[] mRemoteInputs;
    public final int mSemanticAction;
    public final boolean mShowsUserInterface;
    public final int mStyleHint;
    public final CharSequence title;

    public NotificationCompat$Action(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr, boolean z, int i, boolean z2, boolean z3, int i2, int i3, boolean z4) {
        this.mShowsUserInterface = true;
        this.mIcon = iconCompat;
        if (iconCompat != null) {
            int i4 = iconCompat.mType;
            if ((i4 == -1 ? UtilsKt.getType(iconCompat.mObj1) : i4) == 2) {
                this.icon = iconCompat.getResId();
            }
        }
        this.title = NotificationCompat$Builder.limitCharSequenceLength(charSequence);
        this.actionIntent = pendingIntent;
        this.mExtras = bundle == null ? new Bundle() : bundle;
        this.mRemoteInputs = remoteInputArr;
        this.mAllowGeneratedReplies = z;
        this.mSemanticAction = i;
        this.mShowsUserInterface = z2;
        this.mIsContextual = z3;
        this.mEmphasisHint = i2;
        this.mStyleHint = i3;
        this.mAuthenticationRequired = z4;
    }

    public final IconCompat getIconCompat() {
        int i;
        IconCompat iconCompat = this.mIcon;
        if (iconCompat != null || (i = this.icon) == 0) {
            return iconCompat;
        }
        IconCompat createWithResource = IconCompat.createWithResource(null, "", i);
        this.mIcon = createWithResource;
        return createWithResource;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder {
        public boolean mAllowGeneratedReplies;
        public boolean mAuthenticationRequired;
        public int mEmphasisHint;
        public final Bundle mExtras;
        public final IconCompat mIcon;
        public final PendingIntent mIntent;
        public boolean mIsContextual;
        public ArrayList mRemoteInputs;
        public int mSemanticAction;
        public final boolean mShowsUserInterface;
        public int mStyleHint;
        public final CharSequence mTitle;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public abstract class Api24Impl {
            public static boolean getAllowGeneratedReplies(Notification.Action action) {
                return action.getAllowGeneratedReplies();
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public abstract class Api28Impl {
            public static int getSemanticAction(Notification.Action action) {
                return action.getSemanticAction();
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public abstract class Api29Impl {
            public static boolean isContextual(Notification.Action action) {
                return action.isContextual();
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public abstract class Api31Impl {
            public static boolean isAuthenticationRequired(Notification.Action action) {
                return action.isAuthenticationRequired();
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public abstract class Api37Impl {
            public static int getEmphasisHint(Notification.Action action) {
                return action.getEmphasisHint();
            }

            public static int getStyleHint(Notification.Action action) {
                return action.getStyleHint();
            }
        }

        public Builder(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle) {
            this.mAllowGeneratedReplies = true;
            this.mShowsUserInterface = true;
            this.mIcon = iconCompat;
            this.mTitle = NotificationCompat$Builder.limitCharSequenceLength(charSequence);
            this.mIntent = pendingIntent;
            this.mExtras = bundle;
            this.mRemoteInputs = null;
            this.mAllowGeneratedReplies = true;
            this.mSemanticAction = 0;
            this.mShowsUserInterface = true;
            this.mIsContextual = false;
            this.mAuthenticationRequired = false;
        }

        public final NotificationCompat$Action build() {
            CharSequence[] charSequenceArr;
            if (this.mIsContextual && this.mIntent == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Contextual Actions must contain a valid PendingIntent");
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = this.mRemoteInputs;
            if (arrayList3 != null) {
                Iterator it = arrayList3.iterator();
                while (it.hasNext()) {
                    RemoteInput remoteInput = (RemoteInput) it.next();
                    if (remoteInput.mAllowFreeFormTextInput || (!((charSequenceArr = remoteInput.mChoices) == null || charSequenceArr.length == 0) || remoteInput.mAllowedDataTypes.isEmpty())) {
                        arrayList2.add(remoteInput);
                    } else {
                        arrayList.add(remoteInput);
                    }
                }
            }
            if (!arrayList.isEmpty()) {
            }
            return new NotificationCompat$Action(this.mIcon, this.mTitle, this.mIntent, this.mExtras, arrayList2.isEmpty() ? null : (RemoteInput[]) arrayList2.toArray(new RemoteInput[arrayList2.size()]), this.mAllowGeneratedReplies, this.mSemanticAction, this.mShowsUserInterface, this.mIsContextual, this.mEmphasisHint, this.mStyleHint, this.mAuthenticationRequired);
        }

        public Builder(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i != 0 ? IconCompat.createWithResource(null, "", i) : null, charSequence, pendingIntent, new Bundle());
        }

        public Builder(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle());
        }
    }
}
