package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.Iterator;

/* renamed from: tN, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3740tN extends AbstractRunnableC2749fO {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ IBinder f15700do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ServiceConnectionC3858vN f15701do;

    public C3740tN(ServiceConnectionC3858vN serviceConnectionC3858vN, IBinder iBinder) {
        this.f15700do = iBinder;
        this.f15701do = serviceConnectionC3858vN;
    }

    @Override // defpackage.AbstractRunnableC2749fO
    public final void b() {
        ServiceConnectionC3858vN serviceConnectionC3858vN = this.f15701do;
        IInterface iInterface = (IInterface) serviceConnectionC3858vN.f16081do.f16335do.a(this.f15700do);
        C3917wN c3917wN = serviceConnectionC3858vN.f16081do;
        c3917wN.f16326do = iInterface;
        C2690eO c2690eO = c3917wN.f16327do;
        c2690eO.m6563if("linkToDeath", new Object[0]);
        try {
            c3917wN.f16326do.asBinder().linkToDeath(c3917wN.f16328do, 0);
        } catch (RemoteException e) {
            c2690eO.m6561do(e, "linkToDeath failed", new Object[0]);
        }
        c3917wN.f16337do = false;
        Iterator it = c3917wN.f16332do.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        c3917wN.f16332do.clear();
    }
}
