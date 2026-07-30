package c.b.a.c.d.j;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class D implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final Set f2941a = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    public int f2942b = 2;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2943c;

    /* renamed from: d, reason: collision with root package name */
    public IBinder f2944d;
    public final l e;
    public ComponentName f;
    public final /* synthetic */ C g;

    public D(C c2, l lVar) {
        this.g = c2;
        this.e = lVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.lang.String r7) {
        /*
            r6 = this;
            r7 = 3
            r6.f2942b = r7
            c.b.a.c.d.j.C r7 = r6.g
            c.b.a.c.d.l.a r0 = r7.f
            android.content.Context r7 = r7.f2940d
            c.b.a.c.d.j.l r1 = r6.e
            android.content.Intent r1 = r1.a()
            c.b.a.c.d.j.l r2 = r6.e
            int r2 = r2.f2972d
            java.util.Objects.requireNonNull(r0)
            android.content.ComponentName r0 = r1.getComponent()
            r3 = 0
            r4 = 1
            if (r0 != 0) goto L1f
            goto L3f
        L1f:
            java.lang.String r0 = r0.getPackageName()
            java.lang.String r5 = "com.google.android.gms"
            r5.equals(r0)
            c.b.a.c.f.d r5 = c.b.a.c.f.C0431e.a(r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3f
            android.content.Context r5 = r5.f3038a     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3f
            android.content.pm.PackageManager r5 = r5.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3f
            android.content.pm.ApplicationInfo r0 = r5.getApplicationInfo(r0, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3f
            int r0 = r0.flags     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3f
            r5 = 2097152(0x200000, float:2.938736E-39)
            r0 = r0 & r5
            if (r0 == 0) goto L3f
            r0 = r4
            goto L40
        L3f:
            r0 = r3
        L40:
            if (r0 == 0) goto L4a
            java.lang.String r7 = "ConnectionTracker"
            java.lang.String r0 = "Attempted to bind to a service in a STOPPED package."
            android.util.Log.w(r7, r0)
            goto L4e
        L4a:
            boolean r3 = r7.bindService(r1, r6, r2)
        L4e:
            r6.f2943c = r3
            if (r3 == 0) goto L66
            c.b.a.c.d.j.C r7 = r6.g
            android.os.Handler r7 = r7.e
            c.b.a.c.d.j.l r0 = r6.e
            android.os.Message r7 = r7.obtainMessage(r4, r0)
            c.b.a.c.d.j.C r6 = r6.g
            android.os.Handler r0 = r6.e
            long r1 = r6.h
            r0.sendMessageDelayed(r7, r1)
            return
        L66:
            r7 = 2
            r6.f2942b = r7
            c.b.a.c.d.j.C r7 = r6.g     // Catch: java.lang.IllegalArgumentException -> L74
            c.b.a.c.d.l.a r7 = r7.f     // Catch: java.lang.IllegalArgumentException -> L74
            c.b.a.c.d.j.C r7 = r6.g     // Catch: java.lang.IllegalArgumentException -> L74
            android.content.Context r7 = r7.f2940d     // Catch: java.lang.IllegalArgumentException -> L74
            r7.unbindService(r6)     // Catch: java.lang.IllegalArgumentException -> L74
        L74:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.c.d.j.D.a(java.lang.String):void");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.g.f2939c) {
            this.g.e.removeMessages(1, this.e);
            this.f2944d = iBinder;
            this.f = componentName;
            Iterator it = this.f2941a.iterator();
            while (it.hasNext()) {
                ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
            }
            this.f2942b = 1;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.g.f2939c) {
            this.g.e.removeMessages(1, this.e);
            this.f2944d = null;
            this.f = componentName;
            Iterator it = this.f2941a.iterator();
            while (it.hasNext()) {
                ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
            }
            this.f2942b = 2;
        }
    }
}
