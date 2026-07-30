package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.ads.internal.util.zzci;
import java.util.ArrayList;
import java.util.Map;

/* renamed from: kR, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3214kR extends BroadcastReceiver {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzci f13988do;

    public C3214kR(zzci zzciVar) {
        this.f13988do = zzciVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        zzci zzciVar = this.f13988do;
        synchronized (zzciVar) {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry entry : zzciVar.f9801do.entrySet()) {
                if (((IntentFilter) entry.getValue()).hasAction(intent.getAction())) {
                    arrayList.add((BroadcastReceiver) entry.getKey());
                }
            }
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((BroadcastReceiver) arrayList.get(i)).onReceive(context, intent);
            }
        }
    }
}
