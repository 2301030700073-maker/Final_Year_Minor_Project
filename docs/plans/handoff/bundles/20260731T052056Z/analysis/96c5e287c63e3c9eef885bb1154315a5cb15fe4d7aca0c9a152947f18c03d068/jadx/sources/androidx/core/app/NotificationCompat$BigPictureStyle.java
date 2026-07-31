package androidx.core.app;

import android.app.Notification;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.core.graphics.drawable.IconCompat;
import coil3.util.UtilsKt;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationCompat$BigPictureStyle extends NotificationCompat$Style {
    public IconCompat mBigLargeIcon;
    public boolean mBigLargeIconSet;
    public IconCompat mPictureIcon;
    public boolean mShowBigPictureWhenCollapsed;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Api31Impl {
        public static void setBigPicture(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
            bigPictureStyle.bigPicture(icon);
        }

        public static void setContentDescription(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
            bigPictureStyle.setContentDescription(charSequence);
        }

        public static void showBigPictureWhenCollapsed(Notification.BigPictureStyle bigPictureStyle, boolean z) {
            bigPictureStyle.showBigPictureWhenCollapsed(z);
        }
    }

    public static IconCompat asIconCompat(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        if (parcelable instanceof Icon) {
            PorterDuff.Mode mode = IconCompat.DEFAULT_TINT_MODE;
            return UtilsKt.createFromIconInner((Icon) parcelable);
        }
        if (!(parcelable instanceof Bitmap)) {
            return null;
        }
        IconCompat iconCompat = new IconCompat(1);
        iconCompat.mObj1 = (Bitmap) parcelable;
        return iconCompat;
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void apply(Dispatcher dispatcher) {
        Bitmap createLegacyIconFromAdaptiveIcon;
        Notification.Builder builder = (Notification.Builder) dispatcher.readyAsyncCalls;
        Context context = (Context) dispatcher.executorServiceOrNull;
        Notification.BigPictureStyle bigContentTitle = new Notification.BigPictureStyle(builder).setBigContentTitle(this.mBigContentTitle);
        IconCompat iconCompat = this.mPictureIcon;
        if (iconCompat != null) {
            if (Build.VERSION.SDK_INT >= 31) {
                Api31Impl.setBigPicture(bigContentTitle, UtilsKt.toIcon(iconCompat, context));
            } else {
                int i = iconCompat.mType;
                if (i == -1) {
                    i = UtilsKt.getType(iconCompat.mObj1);
                }
                if (i == 1) {
                    IconCompat iconCompat2 = this.mPictureIcon;
                    int i2 = iconCompat2.mType;
                    if (i2 == -1) {
                        Object obj = iconCompat2.mObj1;
                        createLegacyIconFromAdaptiveIcon = obj instanceof Bitmap ? (Bitmap) obj : null;
                    } else if (i2 == 1) {
                        createLegacyIconFromAdaptiveIcon = (Bitmap) iconCompat2.mObj1;
                    } else {
                        if (i2 != 5) {
                            Gson$$ExternalSyntheticBUOutline0.m$1("called getBitmap() on ", iconCompat2);
                            return;
                        }
                        createLegacyIconFromAdaptiveIcon = IconCompat.createLegacyIconFromAdaptiveIcon((Bitmap) iconCompat2.mObj1, true);
                    }
                    bigContentTitle = bigContentTitle.bigPicture(createLegacyIconFromAdaptiveIcon);
                }
            }
        }
        if (this.mBigLargeIconSet) {
            IconCompat iconCompat3 = this.mBigLargeIcon;
            if (iconCompat3 == null) {
                bigContentTitle.bigLargeIcon((Bitmap) null);
            } else {
                bigContentTitle.bigLargeIcon(UtilsKt.toIcon(iconCompat3, context));
            }
        }
        if (this.mSummaryTextSet) {
            bigContentTitle.setSummaryText(this.mSummaryText);
        }
        if (Build.VERSION.SDK_INT >= 31) {
            Api31Impl.showBigPictureWhenCollapsed(bigContentTitle, this.mShowBigPictureWhenCollapsed);
            Api31Impl.setContentDescription(bigContentTitle, null);
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void clearCompatExtraKeys(Bundle bundle) {
        super.clearCompatExtraKeys(bundle);
        bundle.remove("android.largeIcon.big");
        bundle.remove("android.picture");
        bundle.remove("android.pictureIcon");
        bundle.remove("android.showBigPictureWhenCollapsed");
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final String getClassName() {
        return "androidx.core.app.NotificationCompat$BigPictureStyle";
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void restoreFromCompatExtras(Bundle bundle) {
        super.restoreFromCompatExtras(bundle);
        if (bundle.containsKey("android.largeIcon.big")) {
            this.mBigLargeIcon = asIconCompat(bundle.getParcelable("android.largeIcon.big"));
            this.mBigLargeIconSet = true;
        }
        Parcelable parcelable = bundle.getParcelable("android.picture");
        this.mPictureIcon = parcelable != null ? asIconCompat(parcelable) : asIconCompat(bundle.getParcelable("android.pictureIcon"));
        this.mShowBigPictureWhenCollapsed = bundle.getBoolean("android.showBigPictureWhenCollapsed");
    }
}
