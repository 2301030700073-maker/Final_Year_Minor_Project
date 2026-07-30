package defpackage;

import android.app.Notification;
import android.os.Bundle;

/* renamed from: ev, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2719ev extends AbstractC2896hv {

    /* renamed from: if, reason: not valid java name */
    public CharSequence f12775if;

    @Override // defpackage.AbstractC2896hv
    /* renamed from: do, reason: not valid java name */
    public final void mo6611do(Bundle bundle) {
        super.mo6611do(bundle);
    }

    @Override // defpackage.AbstractC2896hv
    /* renamed from: for */
    public final String mo6472for() {
        return "androidx.core.app.NotificationCompat$BigTextStyle";
    }

    @Override // defpackage.AbstractC2896hv
    /* renamed from: if */
    public final void mo6473if(C2953iv c2953iv) {
        new Notification.BigTextStyle(c2953iv.f13590do).setBigContentTitle(((AbstractC2896hv) this).f13405do).bigText(this.f12775if);
    }
}
