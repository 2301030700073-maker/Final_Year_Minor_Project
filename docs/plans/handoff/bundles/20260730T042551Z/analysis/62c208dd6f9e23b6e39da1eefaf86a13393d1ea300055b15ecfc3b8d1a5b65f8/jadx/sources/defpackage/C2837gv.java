package defpackage;

import android.app.Notification;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;

/* renamed from: gv, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2837gv extends AbstractC2896hv {

    /* renamed from: gv$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static Notification.Builder m6751do(Notification.Builder builder, String str) {
            return builder.addPerson(str);
        }

        /* renamed from: if, reason: not valid java name */
        public static Notification.Builder m6752if(Notification.Builder builder, String str) {
            return builder.setCategory(str);
        }
    }

    @Override // defpackage.AbstractC2896hv
    /* renamed from: do */
    public final void mo6611do(Bundle bundle) {
        super.mo6611do(bundle);
        bundle.putInt("android.callType", 0);
        bundle.putBoolean("android.callIsVideo", false);
        bundle.putCharSequence("android.verificationText", null);
        bundle.putParcelable("android.answerIntent", null);
        bundle.putParcelable("android.declineIntent", null);
        bundle.putParcelable("android.hangUpIntent", null);
    }

    @Override // defpackage.AbstractC2896hv
    /* renamed from: for */
    public final String mo6472for() {
        return "androidx.core.app.NotificationCompat$CallStyle";
    }

    @Override // defpackage.AbstractC2896hv
    /* renamed from: if */
    public final void mo6473if(C2953iv c2953iv) {
        if (Build.VERSION.SDK_INT >= 31) {
            if (Log.isLoggable("NotifCompat", 3)) {
                String.valueOf(0);
            }
        } else {
            Notification.Builder builder = c2953iv.f13590do;
            builder.setContentTitle(null);
            Bundle bundle = ((AbstractC2896hv) this).f13404do.f13002do;
            CharSequence charSequence = (bundle == null || !bundle.containsKey("android.text")) ? null : ((AbstractC2896hv) this).f13404do.f13002do.getCharSequence("android.text");
            builder.setContentText(charSequence != null ? charSequence : null);
            Cdo.m6752if(builder, "call");
        }
    }
}
