package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.workers.DiagnosticsWorker;
import defpackage.AbstractC0614Xq;
import defpackage.C0720aw;
import defpackage.GM;
import java.util.Collections;

/* loaded from: classes.dex */
public class DiagnosticsReceiver extends BroadcastReceiver {
    static {
        AbstractC0614Xq.m2870try("DiagnosticsRcvr");
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        AbstractC0614Xq.m2869for().mo2872do(new Throwable[0]);
        try {
            GM m731try = GM.m731try(context);
            C0720aw m2036do = new C0720aw.Cdo(DiagnosticsWorker.class).m2036do();
            m731try.getClass();
            m731try.m734for(Collections.singletonList(m2036do));
        } catch (IllegalStateException e) {
            AbstractC0614Xq.m2869for().mo2873if(e);
        }
    }
}
