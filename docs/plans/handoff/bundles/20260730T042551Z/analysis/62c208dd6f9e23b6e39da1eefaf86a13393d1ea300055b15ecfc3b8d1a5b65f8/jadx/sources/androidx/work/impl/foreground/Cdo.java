package androidx.work.impl.foreground;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import defpackage.AbstractC0614Xq;
import defpackage.C3640rj;
import defpackage.C3798uM;
import defpackage.GM;
import defpackage.HM;
import defpackage.IG;
import defpackage.InterfaceC0231Gg;
import defpackage.InterfaceC3739tM;
import defpackage.RunnableC3438oF;
import defpackage.RunnableC3615rG;
import defpackage.RunnableC3674sG;
import defpackage.RunnableC3733tG;
import defpackage.TM;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* renamed from: androidx.work.impl.foreground.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo implements InterfaceC3739tM, InterfaceC0231Gg {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f8213for = 0;

    /* renamed from: break, reason: not valid java name */
    public String f8214break;

    /* renamed from: do, reason: not valid java name */
    public final GM f8215do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final IG f8216do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InterfaceC0050do f8217do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f8218do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f8219do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashSet f8220do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedHashMap f8221do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3798uM f8222do;

    /* renamed from: androidx.work.impl.foreground.do$do, reason: invalid class name and collision with other inner class name */
    public interface InterfaceC0050do {
    }

    static {
        AbstractC0614Xq.m2870try("SystemFgDispatcher");
    }

    public Cdo(Context context) {
        GM m731try = GM.m731try(context);
        this.f8215do = m731try;
        IG ig = m731try.f1173do;
        this.f8216do = ig;
        this.f8214break = null;
        this.f8221do = new LinkedHashMap();
        this.f8220do = new HashSet();
        this.f8219do = new HashMap();
        this.f8222do = new C3798uM(context, ig, this);
        m731try.f1174do.m1365do(this);
    }

    /* renamed from: if, reason: not valid java name */
    public static Intent m4753if(Context context, String str, C3640rj c3640rj) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_NOTIFY");
        intent.putExtra("KEY_NOTIFICATION_ID", c3640rj.f15307do);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", c3640rj.f15309if);
        intent.putExtra("KEY_NOTIFICATION", c3640rj.f15308do);
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: try, reason: not valid java name */
    public static Intent m4754try(Context context, String str, C3640rj c3640rj) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_START_FOREGROUND");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NOTIFICATION_ID", c3640rj.f15307do);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", c3640rj.f15309if);
        intent.putExtra("KEY_NOTIFICATION", c3640rj.f15308do);
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m4755case(Intent intent) {
        int i = 0;
        int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
        int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        Notification notification = (Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
        AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
        String.format("Notifying with (id: %s, workSpecId: %s, notificationType: %s)", Integer.valueOf(intExtra), stringExtra, Integer.valueOf(intExtra2));
        m2869for.mo2872do(new Throwable[0]);
        if (notification == null || this.f8217do == null) {
            return;
        }
        C3640rj c3640rj = new C3640rj(intExtra, intExtra2, notification);
        LinkedHashMap linkedHashMap = this.f8221do;
        linkedHashMap.put(stringExtra, c3640rj);
        if (TextUtils.isEmpty(this.f8214break)) {
            this.f8214break = stringExtra;
            SystemForegroundService systemForegroundService = (SystemForegroundService) this.f8217do;
            systemForegroundService.f8210do.post(new RunnableC3615rG(systemForegroundService, intExtra, notification, intExtra2));
            return;
        }
        SystemForegroundService systemForegroundService2 = (SystemForegroundService) this.f8217do;
        systemForegroundService2.f8210do.post(new RunnableC3674sG(systemForegroundService2, intExtra, notification));
        if (intExtra2 == 0 || Build.VERSION.SDK_INT < 29) {
            return;
        }
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            i |= ((C3640rj) ((Map.Entry) it.next()).getValue()).f15309if;
        }
        C3640rj c3640rj2 = (C3640rj) linkedHashMap.get(this.f8214break);
        if (c3640rj2 != null) {
            SystemForegroundService systemForegroundService3 = (SystemForegroundService) this.f8217do;
            systemForegroundService3.f8210do.post(new RunnableC3615rG(systemForegroundService3, c3640rj2.f15307do, c3640rj2.f15308do, i));
        }
    }

    @Override // defpackage.InterfaceC3739tM
    /* renamed from: do */
    public final void mo1456do(List<String> list) {
    }

    @Override // defpackage.InterfaceC0231Gg
    /* renamed from: for */
    public final void mo743for(String str, boolean z) {
        Map.Entry entry;
        synchronized (this.f8218do) {
            try {
                TM tm = (TM) this.f8219do.remove(str);
                if (tm != null ? this.f8220do.remove(tm) : false) {
                    this.f8222do.m8385for(this.f8220do);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        C3640rj c3640rj = (C3640rj) this.f8221do.remove(str);
        if (str.equals(this.f8214break) && this.f8221do.size() > 0) {
            Iterator it = this.f8221do.entrySet().iterator();
            Object next = it.next();
            while (true) {
                entry = (Map.Entry) next;
                if (!it.hasNext()) {
                    break;
                } else {
                    next = it.next();
                }
            }
            this.f8214break = (String) entry.getKey();
            if (this.f8217do != null) {
                C3640rj c3640rj2 = (C3640rj) entry.getValue();
                SystemForegroundService systemForegroundService = (SystemForegroundService) this.f8217do;
                systemForegroundService.f8210do.post(new RunnableC3615rG(systemForegroundService, c3640rj2.f15307do, c3640rj2.f15308do, c3640rj2.f15309if));
                SystemForegroundService systemForegroundService2 = (SystemForegroundService) this.f8217do;
                systemForegroundService2.f8210do.post(new RunnableC3733tG(systemForegroundService2, c3640rj2.f15307do));
            }
        }
        InterfaceC0050do interfaceC0050do = this.f8217do;
        if (c3640rj == null || interfaceC0050do == null) {
            return;
        }
        AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
        String.format("Removing Notification (id: %s, workSpecId: %s ,notificationType: %s)", Integer.valueOf(c3640rj.f15307do), str, Integer.valueOf(c3640rj.f15309if));
        m2869for.mo2872do(new Throwable[0]);
        SystemForegroundService systemForegroundService3 = (SystemForegroundService) interfaceC0050do;
        systemForegroundService3.f8210do.post(new RunnableC3733tG(systemForegroundService3, c3640rj.f15307do));
    }

    @Override // defpackage.InterfaceC3739tM
    /* renamed from: new */
    public final void mo1458new(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            String.format("Constraints unmet for WorkSpec %s", str);
            m2869for.mo2872do(new Throwable[0]);
            GM gm = this.f8215do;
            ((HM) gm.f1173do).m852do(new RunnableC3438oF(gm, str, true));
        }
    }
}
