package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;

/* loaded from: classes3.dex */
public final class JC {

    /* renamed from: do, reason: not valid java name */
    public final Cif f1614do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Messenger f1615do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedBlockingDeque<Message> f1616do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3161jb f1617do;

    /* renamed from: JC$do, reason: invalid class name */
    public static final class Cdo extends Handler {

        /* renamed from: do, reason: not valid java name */
        public final InterfaceC3161jb f1618do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(InterfaceC3161jb interfaceC3161jb) {
            super(Looper.getMainLooper());
            C0173Do.m401try(interfaceC3161jb, "backgroundDispatcher");
            this.f1618do = interfaceC3161jb;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            String str;
            C0173Do.m401try(message, "msg");
            if (message.what != 3) {
                message.toString();
                super.handleMessage(message);
                return;
            }
            Bundle data = message.getData();
            if (data == null || (str = data.getString("SessionUpdateExtra")) == null) {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            C0315Kc.m1177static(C3691sb.m8132do(this.f1618do), new IC(str, null));
        }
    }

    /* renamed from: JC$if, reason: invalid class name */
    public static final class Cif implements ServiceConnection {
        public Cif() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            JC jc = JC.this;
            jc.f1616do.size();
            jc.f1615do = new Messenger(iBinder);
            ArrayList arrayList = new ArrayList();
            jc.f1616do.drainTo(arrayList);
            C0315Kc.m1177static(C3691sb.m8132do(jc.f1617do), new KC(jc, arrayList, null));
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            JC jc = JC.this;
            jc.f1615do = null;
            jc.getClass();
        }
    }

    public JC(InterfaceC3161jb interfaceC3161jb) {
        C0173Do.m401try(interfaceC3161jb, "backgroundDispatcher");
        this.f1617do = interfaceC3161jb;
        this.f1616do = new LinkedBlockingDeque<>(20);
        this.f1614do = new Cif();
    }

    /* renamed from: do, reason: not valid java name */
    public static final Message m1030do(JC jc, List list, int i) {
        Object obj;
        jc.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : list) {
            if (((Message) obj2).what == i) {
                arrayList.add(obj2);
            }
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                long when = ((Message) next).getWhen();
                do {
                    Object next2 = it.next();
                    long when2 = ((Message) next2).getWhen();
                    if (when < when2) {
                        next = next2;
                        when = when2;
                    }
                } while (it.hasNext());
            }
            obj = next;
        } else {
            obj = null;
        }
        return (Message) obj;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m1031if(int i) {
        ArrayList arrayList = new ArrayList();
        this.f1616do.drainTo(arrayList);
        Message obtain = Message.obtain(null, i, 0, 0);
        C0173Do.m399new(obtain, "obtain(null, messageCode, 0, 0)");
        arrayList.add(obtain);
        C0315Kc.m1177static(C3691sb.m8132do(this.f1617do), new KC(this, arrayList, null));
    }
}
