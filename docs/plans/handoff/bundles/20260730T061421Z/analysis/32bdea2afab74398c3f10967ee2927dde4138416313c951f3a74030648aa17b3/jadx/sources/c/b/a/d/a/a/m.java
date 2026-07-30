package c.b.a.d.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;

/* loaded from: classes.dex */
public class m implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3100a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3101b;

    /* renamed from: c, reason: collision with root package name */
    public final Handler f3102c;

    /* renamed from: d, reason: collision with root package name */
    public final Runnable f3103d = new l(this);
    public final String e;
    public boolean f;

    public m(Context context, int i, Handler handler, String str) {
        this.f3100a = context;
        this.f3101b = i;
        this.f3102c = handler;
        this.e = str;
    }

    public final boolean a() {
        if (this.f3102c.getLooper() != Looper.myLooper()) {
            throw new IllegalThreadStateException();
        }
        if (!this.f) {
            try {
                this.f = this.f3100a.bindService(j.b(this.f3100a, this.e), this, this.f3101b);
            } catch (SecurityException e) {
                Log.e("LauncherClient", "Unable to connect to overlay service", e);
            }
        }
        return this.f;
    }

    public void b() {
        Handler handler = this.f3102c;
        Runnable runnable = this.f3103d;
        if (handler.getLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            handler.post(runnable);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }
}
