package com.google.android.play.core.integrity;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.api.ApiException;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
import defpackage.AbstractBinderC0808cO;
import defpackage.C2690eO;
import defpackage.C3917wN;
import defpackage.GG;

/* loaded from: classes3.dex */
final class as extends AbstractBinderC0808cO {
    final GG a;
    final C3917wN b;
    private final C2690eO c = new C2690eO("RequestDialogCallbackImpl");
    private final String d;
    private final k e;
    private final Activity f;

    public as(Context context, k kVar, Activity activity, GG gg, C3917wN c3917wN) {
        this.d = context.getPackageName();
        this.e = kVar;
        this.a = gg;
        this.f = activity;
        this.b = c3917wN;
    }

    @Override // defpackage.InterfaceC2632dO
    public final void b(Bundle bundle) {
        this.b.m8572new(this.a);
        this.c.m6563if("onRequestDialog(%s)", this.d);
        ApiException a = this.e.a(bundle);
        if (a != null) {
            this.a.m720for(a);
            return;
        }
        PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("dialog.intent");
        if (pendingIntent == null) {
            C2690eO c2690eO = this.c;
            Object[] objArr = {this.d};
            if (Log.isLoggable("PlayCore", 6)) {
                C2690eO.m6560new(c2690eO.f12673do, "onRequestDialog(%s): got null dialog intent", objArr);
            } else {
                c2690eO.getClass();
            }
            this.a.m722new(0);
            return;
        }
        Intent intent = new Intent(this.f, (Class<?>) PlayCoreDialogWrapperActivity.class);
        intent.putExtra("confirmation_intent", pendingIntent);
        intent.setFlags(536870912);
        intent.putExtra("result_receiver", new ar(this, this.b.m8570do()));
        C2690eO c2690eO2 = this.c;
        Object[] objArr2 = new Object[0];
        if (Log.isLoggable("PlayCore", 3)) {
            C2690eO.m6560new(c2690eO2.f12673do, "Starting dialog intent...", objArr2);
        } else {
            c2690eO2.getClass();
        }
        this.f.startActivityForResult(intent, 0);
    }
}
