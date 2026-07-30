package defpackage;

import android.content.Intent;
import android.os.Bundle;
import com.facebook.appevents.AccessTokenAppIdPair;
import com.facebook.appevents.AppEvent;
import com.facebook.appevents.AppEventQueue;
import com.facebook.appevents.codeless.CodelessLoggingEventListener;
import com.facebook.appevents.suggestedevents.ViewOnClickListener;
import defpackage.InterfaceC0118Bd;

/* renamed from: a2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0667a2 implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f4922do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f4923for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f4924if;

    public /* synthetic */ RunnableC0667a2(int i, Object obj, Object obj2) {
        this.f4923for = i;
        this.f4922do = obj;
        this.f4924if = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC0118Bd.Cdo<T> cdo;
        switch (this.f4923for) {
            case 0:
                AppEventQueue.m5301add$lambda3((AccessTokenAppIdPair) this.f4922do, (AppEvent) this.f4924if);
                return;
            case 1:
                CodelessLoggingEventListener.m5346logEvent$lambda0((String) this.f4922do, (Bundle) this.f4924if);
                return;
            case 2:
                ViewOnClickListener.Companion.m5400queryHistoryAndProcess$lambda0((String) this.f4922do, (String) this.f4924if);
                return;
            case 3:
                C2954iw c2954iw = (C2954iw) this.f4922do;
                InterfaceC3655ry<T> interfaceC3655ry = (InterfaceC3655ry) this.f4924if;
                if (c2954iw.f13597do != C2954iw.f13595do) {
                    throw new IllegalStateException("provide() can be called only once.");
                }
                synchronized (c2954iw) {
                    cdo = c2954iw.f13596do;
                    c2954iw.f13596do = null;
                    c2954iw.f13597do = interfaceC3655ry;
                }
                cdo.mo192new(interfaceC3655ry);
                return;
            case 4:
                ((C0298Jh) this.f4922do).m1046do((Intent) this.f4924if);
                return;
            case 5:
                AI ai = (AI) this.f4922do;
                Dw dw = (Dw) this.f4924if;
                Q0 q0 = AI.f55do;
                ai.getClass();
                ai.m68new(dw.f707do, dw.f708do);
                return;
            default:
                ((InterfaceC3786uA) this.f4922do).mo2272do((AbstractC3668sA) this.f4924if);
                return;
        }
    }
}
