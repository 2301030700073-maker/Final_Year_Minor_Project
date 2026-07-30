package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: wN, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3917wN {

    /* renamed from: do, reason: not valid java name */
    public static final HashMap f16323do = new HashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f16324do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Intent f16325do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public IInterface f16326do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2690eO f16327do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f16330do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3270lO f16335do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ServiceConnectionC3858vN f16336do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f16337do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f16332do = new ArrayList();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashSet f16333do = new HashSet();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f16329do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2808gO f16328do = new IBinder.DeathRecipient() { // from class: gO
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            C3917wN c3917wN = C3917wN.this;
            c3917wN.f16327do.m6563if("reportBinderDeath", new Object[0]);
            InterfaceC3211kO interfaceC3211kO = (InterfaceC3211kO) c3917wN.f16331do.get();
            if (interfaceC3211kO != null) {
                c3917wN.f16327do.m6563if("calling onBinderDied", new Object[0]);
                interfaceC3211kO.m7256do();
            } else {
                c3917wN.f16327do.m6563if("%s : Binder has died.", c3917wN.f16330do);
                Iterator it = c3917wN.f16332do.iterator();
                while (it.hasNext()) {
                    ((AbstractRunnableC2749fO) it.next()).a(new RemoteException(String.valueOf(c3917wN.f16330do).concat(" : Binder has died.")));
                }
                c3917wN.f16332do.clear();
            }
            synchronized (c3917wN.f16329do) {
                c3917wN.m8573try();
            }
        }
    };

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicInteger f16334do = new AtomicInteger(0);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final WeakReference f16331do = new WeakReference(null);

    /* JADX WARN: Type inference failed for: r0v3, types: [gO] */
    public C3917wN(Context context, C2690eO c2690eO, String str, Intent intent, InterfaceC3270lO interfaceC3270lO) {
        this.f16324do = context;
        this.f16327do = c2690eO;
        this.f16330do = str;
        this.f16325do = intent;
        this.f16335do = interfaceC3270lO;
    }

    /* renamed from: if, reason: not valid java name */
    public static /* bridge */ /* synthetic */ void m8569if(C3917wN c3917wN, AbstractRunnableC2749fO abstractRunnableC2749fO) {
        IInterface iInterface = c3917wN.f16326do;
        ArrayList arrayList = c3917wN.f16332do;
        C2690eO c2690eO = c3917wN.f16327do;
        if (iInterface != null || c3917wN.f16337do) {
            if (!c3917wN.f16337do) {
                abstractRunnableC2749fO.run();
                return;
            } else {
                c2690eO.m6563if("Waiting to bind to the service.", new Object[0]);
                arrayList.add(abstractRunnableC2749fO);
                return;
            }
        }
        c2690eO.m6563if("Initiate binding to the service.", new Object[0]);
        arrayList.add(abstractRunnableC2749fO);
        ServiceConnectionC3858vN serviceConnectionC3858vN = new ServiceConnectionC3858vN(c3917wN);
        c3917wN.f16336do = serviceConnectionC3858vN;
        c3917wN.f16337do = true;
        if (c3917wN.f16324do.bindService(c3917wN.f16325do, serviceConnectionC3858vN, 1)) {
            return;
        }
        c2690eO.m6563if("Failed to bind to the service.", new Object[0]);
        c3917wN.f16337do = false;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((AbstractRunnableC2749fO) it.next()).a(new C3976xN());
        }
        arrayList.clear();
    }

    /* renamed from: do, reason: not valid java name */
    public final Handler m8570do() {
        Handler handler;
        HashMap hashMap = f16323do;
        synchronized (hashMap) {
            if (!hashMap.containsKey(this.f16330do)) {
                HandlerThread handlerThread = new HandlerThread(this.f16330do, 10);
                handlerThread.start();
                hashMap.put(this.f16330do, new Handler(handlerThread.getLooper()));
            }
            handler = (Handler) hashMap.get(this.f16330do);
        }
        return handler;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m8571for(AbstractRunnableC2749fO abstractRunnableC2749fO, GG gg) {
        m8570do().post(new C2926iO(this, abstractRunnableC2749fO.c(), gg, abstractRunnableC2749fO));
    }

    /* renamed from: new, reason: not valid java name */
    public final void m8572new(GG gg) {
        synchronized (this.f16329do) {
            this.f16333do.remove(gg);
        }
        m8570do().post(new C3152jO(this));
    }

    /* renamed from: try, reason: not valid java name */
    public final void m8573try() {
        HashSet hashSet = this.f16333do;
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((GG) it.next()).m720for(new RemoteException(String.valueOf(this.f16330do).concat(" : Binder has died.")));
        }
        hashSet.clear();
    }
}
