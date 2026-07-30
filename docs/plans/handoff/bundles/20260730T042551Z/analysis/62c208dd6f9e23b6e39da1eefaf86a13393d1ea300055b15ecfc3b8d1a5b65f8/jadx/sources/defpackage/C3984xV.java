package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.ads.internal.util.zzs;
import j$.util.Objects;

/* renamed from: xV, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3984xV extends BroadcastReceiver {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzs f16563do;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        boolean equals = Objects.equals(intent.getAction(), "android.intent.action.USER_PRESENT");
        zzs zzsVar = this.f16563do;
        if (equals) {
            zzsVar.f9849do = true;
        } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            zzsVar.f9849do = false;
        }
    }
}
