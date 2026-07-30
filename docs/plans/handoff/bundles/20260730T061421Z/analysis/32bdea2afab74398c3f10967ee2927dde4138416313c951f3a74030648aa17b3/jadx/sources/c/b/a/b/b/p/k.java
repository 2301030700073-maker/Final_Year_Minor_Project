package c.b.a.b.b.p;

import android.annotation.TargetApi;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.android.launcher3.Alarm;
import com.android.launcher3.OnAlarmListener;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.PackageManagerHelper;
import com.google.android.apps.nexuslauncher.smartspace.SmartspaceController$Store;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@TargetApi(28)
/* loaded from: classes.dex */
public class k implements Handler.Callback {
    public static final MainThreadInitializedObject j = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.b.a.b.b.p.a
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return new k(context);
        }
    });

    /* renamed from: c, reason: collision with root package name */
    public final Alarm f2813c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f2814d;
    public final c.b.a.b.b.q.a e;
    public final NotificationManager g;
    public boolean i;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f2812b = new Handler(Looper.getMainLooper(), this);
    public final List h = new ArrayList(1);

    /* renamed from: a, reason: collision with root package name */
    public final Handler f2811a = new Handler(Executors.createAndStartNewLooper("smartspace-loader"), this);
    public final l f = new l();

    public k(Context context) {
        this.f2814d = context;
        this.e = new c.b.a.b.b.q.a(context);
        Alarm alarm = new Alarm();
        this.f2813c = alarm;
        alarm.mAlarmListener = new OnAlarmListener() { // from class: c.b.a.b.b.p.b
            @Override // com.android.launcher3.OnAlarmListener
            public final void onAlarm(Alarm alarm2) {
                k.e(k.this, alarm2);
            }
        };
        this.g = (NotificationManager) context.getSystemService(NotificationManager.class);
        g();
        context.registerReceiver(new i(this), PackageManagerHelper.getPackageFilter("com.google.android.googlequicksearchbox", "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED", "android.intent.action.PACKAGE_REMOVED", "android.intent.action.PACKAGE_DATA_CLEARED"));
        IntentFilter intentFilter = new IntentFilter("android.app.action.INTERRUPTION_FILTER_CHANGED");
        intentFilter.addAction("android.app.action.NOTIFICATION_POLICY_CHANGED");
        context.registerReceiver(new j(this), intentFilter);
        Message.obtain(this.f2811a, 3).sendToTarget();
        Message.obtain(this.f2811a, 1).sendToTarget();
    }

    public static Intent a() {
        return new Intent("com.google.android.apps.gsa.smartspace.SETTINGS").setPackage("com.google.android.googlequicksearchbox").setFlags(1342701568);
    }

    public static void e(k kVar, Alarm alarm) {
        kVar.b();
    }

    public void b() {
        boolean c2 = this.f.c();
        boolean b2 = this.f.b();
        this.f.a();
        if (c2 && !this.f.c()) {
            h(null, SmartspaceController$Store.WEATHER);
        }
        if (!b2 || this.f.b()) {
            return;
        }
        h(null, SmartspaceController$Store.CURRENT);
    }

    public final boolean c() {
        NotificationManager.Policy notificationPolicy;
        return (this.g.getCurrentInterruptionFilter() == 1 || (notificationPolicy = this.g.getNotificationPolicy()) == null || (notificationPolicy.suppressedVisualEffects & 256) == 0) ? false : true;
    }

    public boolean d() {
        return this.f2814d.getPackageManager().resolveActivity(a(), 0) != null;
    }

    public final void f(int i) {
        c.b.a.b.b.p.o.a aVar = new c.b.a.b.b.p.o.a();
        h hVar = null;
        h a2 = this.e.a(SmartspaceController$Store.WEATHER.filename, aVar) ? h.a(this.f2814d, aVar, true) : null;
        c.b.a.b.b.p.o.a aVar2 = new c.b.a.b.b.p.o.a();
        if (!this.i && this.e.a(SmartspaceController$Store.CURRENT.filename, aVar2)) {
            hVar = h.a(this.f2814d, aVar2, false);
        }
        Message.obtain(this.f2812b, 101, i, 0, new h[]{a2, hVar}).sendToTarget();
    }

    public final void g() {
        Iterator it = this.h.iterator();
        while (it.hasNext()) {
            ((m) it.next()).a();
        }
        this.f2814d.sendBroadcast(new Intent("com.google.android.apps.gsa.smartspace.ENABLE_UPDATE").setPackage("com.google.android.googlequicksearchbox").addFlags(268435456));
    }

    public final void h(f fVar, SmartspaceController$Store smartspaceController$Store) {
        Message.obtain(this.f2811a, 2, smartspaceController$Store.ordinal(), 0, fVar).sendToTarget();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0224 A[LOOP:1: B:89:0x01ef->B:100:0x0224, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0229 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009d A[LOOP:0: B:34:0x0097->B:36:0x009d, LOOP_END] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleMessage(android.os.Message r25) {
        /*
            Method dump skipped, instructions count: 667
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.b.b.p.k.handleMessage(android.os.Message):boolean");
    }
}
