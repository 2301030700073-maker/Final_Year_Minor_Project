package androidx.core.app;

import android.app.PendingIntent;
import android.os.Bundle;
import androidx.compose.ui.unit.IntRectKt;
import androidx.core.graphics.drawable.IconCompat;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationCompat$Action {
    public final PendingIntent actionIntent;
    public final int icon;
    public final boolean mAllowGeneratedReplies;
    public final Bundle mExtras;
    public IconCompat mIcon;
    public final RemoteInput[] mRemoteInputs;
    public final boolean mShowsUserInterface;
    public final CharSequence title;

    public NotificationCompat$Action(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr, boolean z, boolean z2) {
        this.mShowsUserInterface = true;
        this.mIcon = iconCompat;
        if (iconCompat != null) {
            int i = iconCompat.mType;
            if ((i == -1 ? IntRectKt.getType(iconCompat.mObj1) : i) == 2) {
                this.icon = iconCompat.getResId();
            }
        }
        this.title = NotificationCompat$Builder.limitCharSequenceLength(charSequence);
        this.actionIntent = pendingIntent;
        this.mExtras = bundle == null ? new Bundle() : bundle;
        this.mRemoteInputs = remoteInputArr;
        this.mAllowGeneratedReplies = z;
        this.mShowsUserInterface = z2;
    }

    public final IconCompat getIconCompat() {
        int i;
        if (this.mIcon == null && (i = this.icon) != 0) {
            this.mIcon = IconCompat.createWithResource(null, "", i);
        }
        return this.mIcon;
    }
}
