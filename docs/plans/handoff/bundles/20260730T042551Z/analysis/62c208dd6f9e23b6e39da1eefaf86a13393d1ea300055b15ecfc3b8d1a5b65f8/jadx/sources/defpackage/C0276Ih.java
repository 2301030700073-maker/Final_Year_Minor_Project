package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.util.Base64;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.firebase.messaging.Cfor;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

@KeepForSdk
/* renamed from: Ih, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0276Ih {

    /* renamed from: do, reason: not valid java name */
    public static Cfor f1551do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Object f1552do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ExecutorC0210Fh f1553do = new Executor() { // from class: Fh
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            runnable.run();
        }
    };

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f1554do;

    /* JADX WARN: Type inference failed for: r1v1, types: [Fh] */
    public C0276Ih(Context context) {
        this.f1554do = context;
    }

    /* renamed from: do, reason: not valid java name */
    public static FG<Integer> m960do(Context context, Intent intent, boolean z) {
        Cfor cfor;
        synchronized (f1552do) {
            if (f1551do == null) {
                f1551do = new Cfor(context);
            }
            cfor = f1551do;
        }
        if (!z) {
            return cfor.m6101if(intent).mo598goto(new ExecutorC3178js(3), new C3400ne(7));
        }
        if (C3729tC.m8222do().m8223for(context)) {
            KL.m1147for(context, cfor, intent);
        } else {
            cfor.m6101if(intent);
        }
        return LG.m1320try(-1);
    }

    @KeepForSdk
    /* renamed from: if, reason: not valid java name */
    public final FG<Integer> m961if(final Intent intent) {
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        boolean isAtLeastO = PlatformVersion.isAtLeastO();
        final Context context = this.f1554do;
        boolean z = isAtLeastO && context.getApplicationInfo().targetSdkVersion >= 26;
        final boolean z2 = (intent.getFlags() & 268435456) != 0;
        if (z && !z2) {
            return m960do(context, intent, z2);
        }
        Callable callable = new Callable() { // from class: Gh
            @Override // java.util.concurrent.Callable
            public final Object call() {
                String str;
                ServiceInfo serviceInfo;
                String str2;
                int i;
                Context context2 = context;
                Intent intent2 = intent;
                C3729tC m8222do = C3729tC.m8222do();
                m8222do.f15635do.offer(intent2);
                Intent intent3 = new Intent("com.google.firebase.MESSAGING_EVENT");
                intent3.setPackage(context2.getPackageName());
                synchronized (m8222do) {
                    str = m8222do.f15634do;
                    if (str == null) {
                        ResolveInfo resolveService = context2.getPackageManager().resolveService(intent3, 0);
                        if (resolveService != null && (serviceInfo = resolveService.serviceInfo) != null) {
                            if (context2.getPackageName().equals(serviceInfo.packageName) && (str2 = serviceInfo.name) != null) {
                                if (str2.startsWith(".")) {
                                    m8222do.f15634do = context2.getPackageName() + serviceInfo.name;
                                } else {
                                    m8222do.f15634do = serviceInfo.name;
                                }
                                str = m8222do.f15634do;
                            }
                            str = null;
                        }
                        str = null;
                    }
                }
                if (str != null) {
                    intent3.setClassName(context2.getPackageName(), str);
                }
                try {
                    i = (m8222do.m8223for(context2) ? KL.m1149new(context2, intent3) : context2.startService(intent3)) == null ? 404 : -1;
                } catch (IllegalStateException e) {
                    e.toString();
                    i = 402;
                } catch (SecurityException unused) {
                    i = 401;
                }
                return Integer.valueOf(i);
            }
        };
        ExecutorC0210Fh executorC0210Fh = this.f1553do;
        return LG.m1316for(callable, executorC0210Fh).mo589break(executorC0210Fh, new InterfaceC0598Xa() { // from class: Hh
            @Override // defpackage.InterfaceC0598Xa
            public final Object then(FG fg) {
                if (!PlatformVersion.isAtLeastO() || ((Integer) fg.mo592class()).intValue() != 402) {
                    return fg;
                }
                return C0276Ih.m960do(context, intent, z2).mo598goto(new ExecutorC3237ks(2), new C3382nI(6));
            }
        });
    }
}
