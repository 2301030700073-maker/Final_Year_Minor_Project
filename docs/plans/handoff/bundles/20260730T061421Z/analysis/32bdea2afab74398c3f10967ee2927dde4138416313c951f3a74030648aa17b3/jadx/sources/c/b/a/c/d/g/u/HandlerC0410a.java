package c.b.a.c.d.g.u;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;

/* renamed from: c.b.a.c.d.g.u.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class HandlerC0410a extends Handler {
    public HandlerC0410a(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            if (i == 2) {
                ((BasePendingResult) message.obj).g(Status.f);
                return;
            }
            StringBuilder sb = new StringBuilder(45);
            sb.append("Don't know how to handle message: ");
            sb.append(i);
            Log.wtf("BasePendingResult", sb.toString(), new Exception());
            return;
        }
        Pair pair = (Pair) message.obj;
        c.b.a.c.d.g.t tVar = (c.b.a.c.d.g.t) pair.first;
        c.b.a.c.d.g.s sVar = (c.b.a.c.d.g.s) pair.second;
        try {
            tVar.a(sVar);
        } catch (RuntimeException e) {
            BasePendingResult.e(sVar);
            throw e;
        }
    }
}
