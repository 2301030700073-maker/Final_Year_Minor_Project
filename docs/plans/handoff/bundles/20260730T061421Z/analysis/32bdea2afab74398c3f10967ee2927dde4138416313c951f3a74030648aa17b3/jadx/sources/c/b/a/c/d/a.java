package c.b.a.c.d;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.Objects;

@SuppressLint({"HandlerLeak"})
/* loaded from: classes.dex */
public final class a extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2869a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b f2870b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(b bVar, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.f2870b = bVar;
        this.f2869a = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            StringBuilder sb = new StringBuilder(50);
            sb.append("Don't know how to handle this message: ");
            sb.append(i);
            Log.w("GoogleApiAvailability", sb.toString());
            return;
        }
        int c2 = this.f2870b.c(this.f2869a, c.f2873a);
        Objects.requireNonNull(this.f2870b);
        if (e.c(c2)) {
            this.f2870b.e(this.f2869a, c2);
        }
    }
}
