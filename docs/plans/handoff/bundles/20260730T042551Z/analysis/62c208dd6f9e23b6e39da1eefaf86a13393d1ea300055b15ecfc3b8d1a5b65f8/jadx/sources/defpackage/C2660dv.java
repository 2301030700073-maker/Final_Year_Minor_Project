package defpackage;

import android.app.Notification;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.os.Build;
import androidx.core.graphics.drawable.IconCompat;

/* renamed from: dv, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2660dv extends AbstractC2896hv {

    /* renamed from: do, reason: not valid java name */
    public IconCompat f12553do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f12554do;

    /* renamed from: if, reason: not valid java name */
    public IconCompat f12555if;

    /* renamed from: dv$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static void m6474do(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
            bigPictureStyle.bigLargeIcon(icon);
        }
    }

    /* renamed from: dv$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static void m6475do(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
            bigPictureStyle.bigPicture(icon);
        }

        /* renamed from: for, reason: not valid java name */
        public static void m6476for(Notification.BigPictureStyle bigPictureStyle, boolean z) {
            bigPictureStyle.showBigPictureWhenCollapsed(z);
        }

        /* renamed from: if, reason: not valid java name */
        public static void m6477if(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
            bigPictureStyle.setContentDescription(charSequence);
        }
    }

    @Override // defpackage.AbstractC2896hv
    /* renamed from: for, reason: not valid java name */
    public final String mo6472for() {
        return "androidx.core.app.NotificationCompat$BigPictureStyle";
    }

    @Override // defpackage.AbstractC2896hv
    /* renamed from: if, reason: not valid java name */
    public final void mo6473if(C2953iv c2953iv) {
        Notification.BigPictureStyle bigContentTitle = new Notification.BigPictureStyle(c2953iv.f13590do).setBigContentTitle(((AbstractC2896hv) this).f13405do);
        IconCompat iconCompat = this.f12553do;
        Context context = c2953iv.f13591do;
        if (iconCompat != null) {
            if (Build.VERSION.SDK_INT >= 31) {
                Cif.m6475do(bigContentTitle, iconCompat.m3722else(context));
            } else if (iconCompat.m3725try() == 1) {
                bigContentTitle = bigContentTitle.bigPicture(this.f12553do.m3723for());
            }
        }
        if (this.f12554do) {
            IconCompat iconCompat2 = this.f12555if;
            if (iconCompat2 == null) {
                bigContentTitle.bigLargeIcon((Bitmap) null);
            } else if (Build.VERSION.SDK_INT >= 23) {
                Cdo.m6474do(bigContentTitle, iconCompat2.m3722else(context));
            } else if (iconCompat2.m3725try() == 1) {
                bigContentTitle.bigLargeIcon(this.f12555if.m3723for());
            } else {
                bigContentTitle.bigLargeIcon((Bitmap) null);
            }
        }
        if (Build.VERSION.SDK_INT >= 31) {
            Cif.m6476for(bigContentTitle, false);
            Cif.m6477if(bigContentTitle, null);
        }
    }
}
