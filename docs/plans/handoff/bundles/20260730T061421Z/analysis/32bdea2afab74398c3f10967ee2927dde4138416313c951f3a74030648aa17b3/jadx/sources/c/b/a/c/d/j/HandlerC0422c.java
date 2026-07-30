package c.b.a.c.d.j;

import android.app.PendingIntent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import java.util.Objects;

/* renamed from: c.b.a.c.d.j.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class HandlerC0422c extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ z f2953a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC0422c(z zVar, Looper looper) {
        super(looper);
        this.f2953a = zVar;
    }

    public static boolean a(Message message) {
        int i = message.what;
        return i == 2 || i == 1 || i == 7;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Object obj;
        if (this.f2953a.s.get() != message.arg1) {
            if (a(message)) {
                AbstractC0423d abstractC0423d = (AbstractC0423d) message.obj;
                Objects.requireNonNull((AbstractC0421b) abstractC0423d);
                abstractC0423d.b();
                return;
            }
            return;
        }
        int i = message.what;
        if ((i == 1 || i == 7 || i == 4 || i == 5) && !this.f2953a.b()) {
            AbstractC0423d abstractC0423d2 = (AbstractC0423d) message.obj;
            Objects.requireNonNull((AbstractC0421b) abstractC0423d2);
            abstractC0423d2.b();
            return;
        }
        int i2 = message.what;
        if (i2 == 4) {
            this.f2953a.q = new ConnectionResult(message.arg2);
            if (this.f2953a.w()) {
                z zVar = this.f2953a;
                if (!zVar.r) {
                    zVar.t(3, null);
                    return;
                }
            }
            ConnectionResult connectionResult = this.f2953a.q;
            if (connectionResult == null) {
                connectionResult = new ConnectionResult(8);
            }
            this.f2953a.h.a(connectionResult);
            Objects.requireNonNull(this.f2953a);
            System.currentTimeMillis();
            return;
        }
        if (i2 == 5) {
            ConnectionResult connectionResult2 = this.f2953a.q;
            if (connectionResult2 == null) {
                connectionResult2 = new ConnectionResult(8);
            }
            this.f2953a.h.a(connectionResult2);
            Objects.requireNonNull(this.f2953a);
            System.currentTimeMillis();
            return;
        }
        if (i2 == 3) {
            Object obj2 = message.obj;
            this.f2953a.h.a(new ConnectionResult(message.arg2, obj2 instanceof PendingIntent ? (PendingIntent) obj2 : null));
            Objects.requireNonNull(this.f2953a);
            System.currentTimeMillis();
            return;
        }
        if (i2 == 6) {
            this.f2953a.t(5, null);
            A a2 = this.f2953a.m;
            if (a2 != null) {
                a2.f2937a.onConnectionSuspended(message.arg2);
            }
            Objects.requireNonNull(this.f2953a);
            System.currentTimeMillis();
            this.f2953a.p(5, 1, null);
            return;
        }
        if (i2 == 2 && !this.f2953a.c()) {
            AbstractC0423d abstractC0423d3 = (AbstractC0423d) message.obj;
            Objects.requireNonNull((AbstractC0421b) abstractC0423d3);
            abstractC0423d3.b();
            return;
        }
        if (!a(message)) {
            int i3 = message.what;
            StringBuilder sb = new StringBuilder(45);
            sb.append("Don't know how to handle message: ");
            sb.append(i3);
            Log.wtf("GmsClient", sb.toString(), new Exception());
            return;
        }
        AbstractC0423d abstractC0423d4 = (AbstractC0423d) message.obj;
        synchronized (abstractC0423d4) {
            obj = abstractC0423d4.f2954a;
            if (abstractC0423d4.f2955b) {
                String valueOf = String.valueOf(abstractC0423d4);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 47);
                sb2.append("Callback proxy ");
                sb2.append(valueOf);
                sb2.append(" being reused. This is not safe.");
                Log.w("GmsClient", sb2.toString());
            }
        }
        if (obj != null) {
            try {
                abstractC0423d4.a(obj);
            } catch (RuntimeException e) {
                throw e;
            }
        }
        synchronized (abstractC0423d4) {
            abstractC0423d4.f2955b = true;
        }
        abstractC0423d4.b();
    }
}
