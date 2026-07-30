package com.google.firebase.sessions;

import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import defpackage.C0173Do;
import defpackage.C0706ai;
import defpackage.C4083zC;
import defpackage.CC;
import defpackage.GC;
import defpackage.InterfaceC3965xC;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class SessionLifecycleService extends Service {

    /* renamed from: do, reason: not valid java name */
    public final HandlerThread f12036do = new HandlerThread("FirebaseSessions_HandlerThread");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Messenger f12037do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f12038do;

    /* renamed from: com.google.firebase.sessions.SessionLifecycleService$do, reason: invalid class name */
    public static final class Cdo extends Handler {

        /* renamed from: do, reason: not valid java name */
        public long f12039do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayList<Messenger> f12040do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f12041do;

        public Cdo(Looper looper) {
            super(looper);
            this.f12040do = new ArrayList<>();
        }

        /* renamed from: do, reason: not valid java name */
        public final void m6166do(Messenger messenger) {
            if (this.f12041do) {
                Object m3149if = C0706ai.m3146for().m3149if(GC.class);
                C0173Do.m399new(m3149if, "Firebase.app[SessionGenerator::class.java]");
                m6167for(messenger, ((GC) m3149if).m714if().f16879do);
            } else {
                Object m3149if2 = C0706ai.m3146for().m3149if(InterfaceC3965xC.class);
                C0173Do.m399new(m3149if2, "Firebase.app[SessionDatastore::class.java]");
                String mo8622if = ((InterfaceC3965xC) m3149if2).mo8622if();
                if (mo8622if != null) {
                    m6167for(messenger, mo8622if);
                }
            }
        }

        /* renamed from: for, reason: not valid java name */
        public final void m6167for(Messenger messenger, String str) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString("SessionUpdateExtra", str);
                Message obtain = Message.obtain(null, 3, 0, 0);
                obtain.setData(bundle);
                messenger.send(obtain);
            } catch (DeadObjectException unused) {
                Objects.toString(messenger);
                this.f12040do.remove(messenger);
            } catch (Exception unused2) {
                Objects.toString(messenger);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x009c, code lost:
        
            if ((((r8 > 0 ? 1 : (r8 == 0 ? 0 : -1)) > 0) && (defpackage.C3342mf.m7460case(r8) ^ true)) != false) goto L45;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00be, code lost:
        
            if ((((r8 > 0 ? 1 : (r8 == 0 ? 0 : -1)) > 0) && (defpackage.C3342mf.m7460case(r8) ^ true)) != false) goto L45;
         */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void handleMessage(android.os.Message r11) {
            /*
                Method dump skipped, instructions count: 246
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.SessionLifecycleService.Cdo.handleMessage(android.os.Message):void");
        }

        /* renamed from: if, reason: not valid java name */
        public final void m6168if() {
            Object m3149if = C0706ai.m3146for().m3149if(GC.class);
            C0173Do.m399new(m3149if, "Firebase.app[SessionGenerator::class.java]");
            GC gc = (GC) m3149if;
            int i = gc.f1143do + 1;
            gc.f1143do = i;
            String m713do = i == 0 ? gc.f1145do : gc.m713do();
            gc.f1147do = new C4083zC(gc.f1143do, m713do, gc.f1145do, gc.f1146do.mo1594do());
            gc.m714if();
            Object m3149if2 = C0706ai.m3146for().m3149if(GC.class);
            C0173Do.m399new(m3149if2, "Firebase.app[SessionGenerator::class.java]");
            ((GC) m3149if2).m714if();
            Object m3149if3 = C0706ai.m3146for().m3149if(GC.class);
            C0173Do.m399new(m3149if3, "Firebase.app[SessionGenerator::class.java]");
            ((GC) m3149if3).m714if().toString();
            int i2 = CC.f341do;
            Object m3149if4 = C0706ai.m3146for().m3149if(CC.class);
            C0173Do.m399new(m3149if4, "Firebase.app[SessionFirelogPublisher::class.java]");
            Object m3149if5 = C0706ai.m3146for().m3149if(GC.class);
            C0173Do.m399new(m3149if5, "Firebase.app[SessionGenerator::class.java]");
            ((CC) m3149if4).mo253do(((GC) m3149if5).m714if());
            Iterator it = new ArrayList(this.f12040do).iterator();
            while (it.hasNext()) {
                Messenger messenger = (Messenger) it.next();
                C0173Do.m399new(messenger, "it");
                m6166do(messenger);
            }
            int i3 = InterfaceC3965xC.f16528do;
            Object m3149if6 = C0706ai.m3146for().m3149if(InterfaceC3965xC.class);
            C0173Do.m399new(m3149if6, "Firebase.app[SessionDatastore::class.java]");
            Object m3149if7 = C0706ai.m3146for().m3149if(GC.class);
            C0173Do.m399new(m3149if7, "Firebase.app[SessionGenerator::class.java]");
            ((InterfaceC3965xC) m3149if6).mo8621do(((GC) m3149if7).m714if().f16879do);
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        if (intent == null) {
            return null;
        }
        intent.getAction();
        Messenger messenger = Build.VERSION.SDK_INT >= 33 ? (Messenger) intent.getParcelableExtra("ClientCallbackMessenger", Messenger.class) : (Messenger) intent.getParcelableExtra("ClientCallbackMessenger");
        if (messenger != null) {
            Message obtain = Message.obtain(null, 4, 0, 0);
            obtain.replyTo = messenger;
            Cdo cdo = this.f12038do;
            if (cdo != null) {
                cdo.sendMessage(obtain);
            }
        }
        Messenger messenger2 = this.f12037do;
        if (messenger2 != null) {
            return messenger2.getBinder();
        }
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        HandlerThread handlerThread = this.f12036do;
        handlerThread.start();
        Looper looper = handlerThread.getLooper();
        C0173Do.m399new(looper, "handlerThread.looper");
        this.f12038do = new Cdo(looper);
        this.f12037do = new Messenger(this.f12038do);
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.f12036do.quit();
    }
}
