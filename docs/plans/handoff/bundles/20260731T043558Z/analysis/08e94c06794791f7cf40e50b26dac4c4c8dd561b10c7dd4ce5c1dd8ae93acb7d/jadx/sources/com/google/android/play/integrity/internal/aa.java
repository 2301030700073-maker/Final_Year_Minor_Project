package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
import java.util.Iterator;
import java.util.List;

/* compiled from: com.google.android.play:integrity@@1.3.0 */
/* loaded from: classes4.dex */
final class aa extends t {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ IBinder f349a;
    final /* synthetic */ ad b;

    aa(ad adVar, IBinder iBinder) {
        this.b = adVar;
        this.f349a = iBinder;
    }

    @Override // com.google.android.play.integrity.internal.t
    public final void b() {
        z zVar;
        List list;
        List list2;
        zVar = this.b.f351a.j;
        this.b.f351a.o = (IInterface) zVar.a(this.f349a);
        ae.r(this.b.f351a);
        this.b.f351a.h = false;
        list = this.b.f351a.e;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        list2 = this.b.f351a.e;
        list2.clear();
    }
}
