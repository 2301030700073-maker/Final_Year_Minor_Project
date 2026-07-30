package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import defpackage.C0173Do;
import defpackage.C3756th;
import defpackage.Cinterface;

/* loaded from: classes.dex */
public final class CurrentAccessTokenExpirationBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        C0173Do.m401try(context, "context");
        C0173Do.m401try(intent, "intent");
        if (C0173Do.m394do("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED", intent.getAction()) && C3756th.m8305this()) {
            Cinterface m6940do = Cinterface.f13565do.m6940do();
            AccessToken accessToken = m6940do.f13567do;
            m6940do.m6939if(accessToken, accessToken);
        }
    }
}
