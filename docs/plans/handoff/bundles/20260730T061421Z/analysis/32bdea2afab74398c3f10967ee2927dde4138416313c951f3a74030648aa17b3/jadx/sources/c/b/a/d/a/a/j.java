package c.b.a.d.a.a;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.WindowManager;
import com.android.quickstep.fallback.RecentsState;
import com.google.android.libraries.launcherclient.ILauncherOverlay;
import java.lang.ref.WeakReference;
import java.util.Objects;

/* loaded from: classes.dex */
public class j {
    public static int r = -1;

    /* renamed from: a, reason: collision with root package name */
    public final Activity f3095a;

    /* renamed from: b, reason: collision with root package name */
    public final k f3096b;

    /* renamed from: c, reason: collision with root package name */
    public final Handler f3097c;

    /* renamed from: d, reason: collision with root package name */
    public final String f3098d;
    public final m g;
    public final a h;
    public ILauncherOverlay j;
    public int n;
    public WindowManager.LayoutParams o;
    public i p;
    public Bundle q;
    public final d e = new d("Client", 20);
    public final d f = new d("Service", 10);
    public final BroadcastReceiver i = new e(this);
    public int k = 0;
    public boolean l = false;
    public int m = 0;

    public j(Activity activity, k kVar, h hVar, Looper looper) {
        this.f3095a = activity;
        this.f3096b = kVar;
        Handler handler = new Handler(looper);
        this.f3097c = handler;
        this.f3098d = "com.google.android.googlequicksearchbox";
        this.g = new m(activity, 65, handler, "com.google.android.googlequicksearchbox");
        this.n = hVar.f3089a;
        Handler handler2 = this.f3097c;
        String str = this.f3098d;
        a aVar = a.j;
        if (aVar != null && !str.equals(aVar.e)) {
            aVar.b();
            a.j = null;
        }
        if (a.j == null) {
            a.j = new a(activity.getApplicationContext(), handler2, str);
        }
        a aVar2 = a.j;
        this.h = aVar2;
        Objects.requireNonNull(aVar2);
        aVar2.h = new WeakReference(this);
        this.j = aVar2.g;
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        intentFilter.addDataSchemeSpecificPart(this.f3098d, 0);
        this.f3095a.registerReceiver(this.i, intentFilter);
        if (r < 1) {
            g(activity);
        }
        f();
        if (this.f3095a.getWindow() == null || this.f3095a.getWindow().peekDecorView() == null || !this.f3095a.getWindow().peekDecorView().isAttachedToWindow()) {
            return;
        }
        e();
    }

    public static Intent b(Context context, String str) {
        String packageName = context.getPackageName();
        int myUid = Process.myUid();
        StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 18);
        sb.append("app://");
        sb.append(packageName);
        sb.append(":");
        sb.append(myUid);
        return new Intent("com.android.launcher3.WINDOW_OVERLAY").setPackage(str).setData(Uri.parse(sb.toString()).buildUpon().appendQueryParameter("v", Integer.toString(9)).appendQueryParameter("cv", Integer.toString(14)).build());
    }

    public final void a() {
        if (this.j != null) {
            try {
                if (this.p == null) {
                    this.p = new i();
                }
                this.p.a(this);
                if (r < 3) {
                    this.j.windowAttached(this.o, this.p, this.n);
                } else {
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("layout_params", this.o);
                    bundle.putParcelable("configuration", this.f3095a.getResources().getConfiguration());
                    bundle.putInt("client_options", this.n);
                    if (this.q != null) {
                        bundle.putAll(this.q);
                    }
                    this.j.windowAttached2(bundle, this.p);
                }
                if (r >= 4) {
                    this.j.setActivityState(this.k);
                } else if ((this.k & 2) != 0) {
                    this.j.onResume();
                } else {
                    this.j.onPause();
                }
            } catch (RemoteException unused) {
            }
        }
    }

    public final boolean c() {
        return this.j != null;
    }

    public final void d(int i) {
        if (this.m != i) {
            this.m = i;
            this.f3096b.a((i & 1) != 0, (i & 2) != 0);
        }
    }

    public final void e() {
        if (this.l) {
            return;
        }
        this.e.a(0, "attachedToWindow", RecentsState.NO_OFFSET);
        i(this.f3095a.getWindow().getAttributes());
    }

    public void f() {
        if (this.l) {
            return;
        }
        Handler handler = this.f3097c;
        g gVar = new g(this);
        if (handler.getLooper() == Looper.myLooper()) {
            gVar.run();
        } else {
            handler.post(gVar);
        }
    }

    public final void g(Context context) {
        Bundle bundle;
        ResolveInfo resolveService = context.getPackageManager().resolveService(b(context, this.f3098d), 128);
        if (resolveService == null || (bundle = resolveService.serviceInfo.metaData) == null) {
            r = 1;
        } else {
            r = bundle.getInt("service.api.version", 1);
        }
    }

    public void h(Bundle bundle) {
        d dVar = this.e;
        String valueOf = String.valueOf(bundle == null ? "null" : TextUtils.join(",", bundle.keySet()));
        dVar.b(valueOf.length() != 0 ? "setPrivateOptions : ".concat(valueOf) : new String("setPrivateOptions : "));
        this.q = bundle;
        if (this.o == null || r < 7) {
            return;
        }
        a();
    }

    public final void i(WindowManager.LayoutParams layoutParams) {
        if (this.o == layoutParams) {
            return;
        }
        this.o = layoutParams;
        if (layoutParams != null) {
            a();
            return;
        }
        ILauncherOverlay iLauncherOverlay = this.j;
        if (iLauncherOverlay != null) {
            try {
                iLauncherOverlay.windowDetached(this.f3095a.isChangingConfigurations());
            } catch (RemoteException unused) {
            }
            this.j = null;
        }
    }
}
