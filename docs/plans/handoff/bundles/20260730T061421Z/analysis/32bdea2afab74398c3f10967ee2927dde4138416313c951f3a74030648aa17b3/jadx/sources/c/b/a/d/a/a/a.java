package c.b.a.d.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import com.android.quickstep.fallback.RecentsState;
import com.google.android.libraries.launcherclient.ILauncherOverlay;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class a extends m {
    public static a j;
    public ILauncherOverlay g;
    public WeakReference h;
    public boolean i;

    public a(Context context, Handler handler, String str) {
        super(context, 33, handler, str);
    }

    public final void c(ILauncherOverlay iLauncherOverlay) {
        this.g = iLauncherOverlay;
        WeakReference weakReference = this.h;
        j jVar = weakReference != null ? (j) weakReference.get() : null;
        if (jVar != null) {
            ILauncherOverlay iLauncherOverlay2 = this.g;
            jVar.f.a(iLauncherOverlay2 != null ? 3 : 4, "Connected", RecentsState.NO_OFFSET);
            jVar.j = iLauncherOverlay2;
            if (iLauncherOverlay2 == null) {
                jVar.d(0);
            } else if (jVar.o != null) {
                jVar.a();
            }
        }
    }

    @Override // c.b.a.d.a.a.m, android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        c(ILauncherOverlay.Stub.asInterface(iBinder));
    }

    @Override // c.b.a.d.a.a.m, android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        c(null);
        if (this.i && this.g == null) {
            b();
        }
    }
}
