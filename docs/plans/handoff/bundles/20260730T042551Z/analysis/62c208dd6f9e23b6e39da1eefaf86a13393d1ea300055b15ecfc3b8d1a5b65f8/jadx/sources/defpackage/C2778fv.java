package defpackage;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.media.AudioAttributes;
import android.os.Build;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import com.joeykrim.rootcheck.R;
import java.util.ArrayList;

/* renamed from: fv, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2778fv {

    /* renamed from: do, reason: not valid java name */
    public int f12998do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Notification f12999do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PendingIntent f13000do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f13001do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Bundle f13002do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public IconCompat f13003do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AbstractC2896hv f13004do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f13005do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f13006do;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final boolean f13011for;

    /* renamed from: if, reason: not valid java name */
    public int f13012if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public CharSequence f13013if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public String f13014if;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    @Deprecated
    public final ArrayList<String> f13018new;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<C2602cv> f13007do = new ArrayList<>();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ArrayList<Lw> f13015if = new ArrayList<>();

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final ArrayList<C2602cv> f13010for = new ArrayList<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f13008do = true;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f13016if = false;

    /* renamed from: for, reason: not valid java name */
    public int f13009for = 0;

    /* renamed from: new, reason: not valid java name */
    public int f13017new = 0;

    /* renamed from: fv$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static AudioAttributes m6689do(AudioAttributes.Builder builder) {
            return builder.build();
        }

        /* renamed from: for, reason: not valid java name */
        public static AudioAttributes.Builder m6690for(AudioAttributes.Builder builder, int i) {
            return builder.setContentType(i);
        }

        /* renamed from: if, reason: not valid java name */
        public static AudioAttributes.Builder m6691if() {
            return new AudioAttributes.Builder();
        }

        /* renamed from: new, reason: not valid java name */
        public static AudioAttributes.Builder m6692new(AudioAttributes.Builder builder, int i) {
            return builder.setLegacyStreamType(i);
        }

        /* renamed from: try, reason: not valid java name */
        public static AudioAttributes.Builder m6693try(AudioAttributes.Builder builder, int i) {
            return builder.setUsage(i);
        }
    }

    public C2778fv(Context context, String str) {
        Notification notification = new Notification();
        this.f12999do = notification;
        this.f13001do = context;
        this.f13014if = str;
        notification.when = System.currentTimeMillis();
        notification.audioStreamType = -1;
        this.f13012if = 0;
        this.f13018new = new ArrayList<>();
        this.f13011for = true;
    }

    /* renamed from: if, reason: not valid java name */
    public static CharSequence m6684if(CharSequence charSequence) {
        return charSequence == null ? charSequence : charSequence.length() > 5120 ? charSequence.subSequence(0, 5120) : charSequence;
    }

    /* renamed from: do, reason: not valid java name */
    public final Notification m6685do() {
        Notification build;
        Bundle bundle;
        C2953iv c2953iv = new C2953iv(this);
        C2778fv c2778fv = c2953iv.f13593do;
        AbstractC2896hv abstractC2896hv = c2778fv.f13004do;
        if (abstractC2896hv != null) {
            abstractC2896hv.mo6473if(c2953iv);
        }
        int i = Build.VERSION.SDK_INT;
        Notification.Builder builder = c2953iv.f13590do;
        if (i >= 26) {
            build = builder.build();
        } else if (i >= 24) {
            build = builder.build();
        } else {
            builder.setExtras(c2953iv.f13592do);
            build = builder.build();
        }
        if (abstractC2896hv != null) {
            c2778fv.f13004do.getClass();
        }
        if (abstractC2896hv != null && (bundle = build.extras) != null) {
            abstractC2896hv.mo6611do(bundle);
        }
        return build;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m6686for(boolean z) {
        Notification notification = this.f12999do;
        if (z) {
            notification.flags |= 16;
        } else {
            notification.flags &= -17;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m6687new(Bitmap bitmap) {
        IconCompat iconCompat;
        if (bitmap == null) {
            iconCompat = null;
        } else {
            if (Build.VERSION.SDK_INT < 27) {
                Resources resources = this.f13001do.getResources();
                int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_width);
                int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_height);
                if (bitmap.getWidth() > dimensionPixelSize || bitmap.getHeight() > dimensionPixelSize2) {
                    double min = Math.min(dimensionPixelSize / Math.max(1, bitmap.getWidth()), dimensionPixelSize2 / Math.max(1, bitmap.getHeight()));
                    bitmap = Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(bitmap.getWidth() * min), (int) Math.ceil(bitmap.getHeight() * min), true);
                }
            }
            PorterDuff.Mode mode = IconCompat.f6520if;
            bitmap.getClass();
            IconCompat iconCompat2 = new IconCompat(1);
            iconCompat2.f6525do = bitmap;
            iconCompat = iconCompat2;
        }
        this.f13003do = iconCompat;
    }

    /* renamed from: try, reason: not valid java name */
    public final void m6688try(AbstractC2896hv abstractC2896hv) {
        if (this.f13004do != abstractC2896hv) {
            this.f13004do = abstractC2896hv;
            if (abstractC2896hv != null) {
                abstractC2896hv.m6843new(this);
            }
        }
    }
}
