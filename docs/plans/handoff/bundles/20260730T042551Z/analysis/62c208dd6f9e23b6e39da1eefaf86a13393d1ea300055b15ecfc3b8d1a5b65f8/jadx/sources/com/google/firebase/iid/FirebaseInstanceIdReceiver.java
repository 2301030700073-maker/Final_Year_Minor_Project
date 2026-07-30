package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.cloudmessaging.CloudMessagingReceiver;
import defpackage.C0276Ih;
import defpackage.C0550Us;
import defpackage.LG;
import java.util.concurrent.ExecutionException;

/* loaded from: classes3.dex */
public final class FirebaseInstanceIdReceiver extends CloudMessagingReceiver {
    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    /* renamed from: do */
    public final int mo5601do(Context context, CloudMessage cloudMessage) {
        try {
            return ((Integer) LG.m1314do(new C0276Ih(context).m961if(cloudMessage.f10172do))).intValue();
        } catch (InterruptedException | ExecutionException unused) {
            return 500;
        }
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    /* renamed from: if */
    public final void mo5602if(Bundle bundle) {
        Intent putExtras = new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS").putExtras(bundle);
        if (C0550Us.m2478new(putExtras)) {
            C0550Us.m2476for(putExtras.getExtras(), "_nd");
        }
    }
}
