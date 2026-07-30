package defpackage;

import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingDeque;

@InterfaceC0761bd(c = "com.google.firebase.sessions.SessionLifecycleClient$sendLifecycleEvents$1", f = "SessionLifecycleClient.kt", l = {151}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class KC extends AbstractC2800gG implements InterfaceC3641rk<InterfaceC3632rb, InterfaceC0576Wa<? super C3206kJ>, Object> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ JC f1774do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ List<Message> f1775do;

    /* renamed from: new, reason: not valid java name */
    public int f1776new;

    /* renamed from: KC$do, reason: invalid class name */
    public static final class Cdo<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            Long valueOf = Long.valueOf(((Message) t).getWhen());
            Long valueOf2 = Long.valueOf(((Message) t2).getWhen());
            if (valueOf == valueOf2) {
                return 0;
            }
            if (valueOf == null) {
                return -1;
            }
            if (valueOf2 == null) {
                return 1;
            }
            return valueOf.compareTo(valueOf2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KC(JC jc, List<Message> list, InterfaceC0576Wa<? super KC> interfaceC0576Wa) {
        super(2, interfaceC0576Wa);
        this.f1774do = jc;
        this.f1775do = list;
    }

    @Override // defpackage.P4
    /* renamed from: class */
    public final Object mo358class(Object obj) {
        boolean z;
        EnumC3750tb enumC3750tb = EnumC3750tb.COROUTINE_SUSPENDED;
        int i = this.f1776new;
        if (i == 0) {
            C3645ro.m8017synchronized(obj);
            C0343Li c0343Li = C0343Li.f1980do;
            this.f1776new = 1;
            obj = c0343Li.m1342if(this);
            if (obj == enumC3750tb) {
                return enumC3750tb;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C3645ro.m8017synchronized(obj);
        }
        Map map = (Map) obj;
        if (!map.isEmpty()) {
            Collection values = map.values();
            if (!(values instanceof Collection) || !values.isEmpty()) {
                Iterator it = values.iterator();
                while (it.hasNext()) {
                    if (((PC) it.next()).mo485do()) {
                        z = false;
                        break;
                    }
                }
            }
            z = true;
            if (!z) {
                JC jc = this.f1774do;
                List<Message> list = this.f1775do;
                for (Message message : E8.h(new Cdo(), E8.e(new ArrayList(new C4073z2(new Message[]{JC.m1030do(jc, list, 2), JC.m1030do(jc, list, 1)}, true))))) {
                    Messenger messenger = jc.f1615do;
                    LinkedBlockingDeque<Message> linkedBlockingDeque = jc.f1616do;
                    if (messenger != null) {
                        try {
                            int i2 = message.what;
                            messenger.send(message);
                        } catch (RemoteException unused) {
                            int i3 = message.what;
                            if (linkedBlockingDeque.offer(message)) {
                                linkedBlockingDeque.size();
                            }
                        }
                    } else if (linkedBlockingDeque.offer(message)) {
                        int i4 = message.what;
                        linkedBlockingDeque.size();
                    } else {
                        int i5 = message.what;
                    }
                }
            }
        }
        return C3206kJ.f13965do;
    }

    @Override // defpackage.P4
    /* renamed from: do */
    public final InterfaceC0576Wa<C3206kJ> mo359do(Object obj, InterfaceC0576Wa<?> interfaceC0576Wa) {
        return new KC(this.f1774do, this.f1775do, interfaceC0576Wa);
    }

    @Override // defpackage.InterfaceC3641rk
    public final Object invoke(InterfaceC3632rb interfaceC3632rb, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
        return ((KC) mo359do(interfaceC3632rb, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
    }
}
