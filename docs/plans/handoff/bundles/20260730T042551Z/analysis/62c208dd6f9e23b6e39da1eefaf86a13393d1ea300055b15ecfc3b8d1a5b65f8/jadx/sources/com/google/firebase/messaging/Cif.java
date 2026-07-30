package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Binder;
import android.os.Process;
import com.google.firebase.messaging.Cfor;
import com.google.firebase.messaging.EnhancedIntentService;
import defpackage.ExecutorC3178js;
import defpackage.GG;
import defpackage.InterfaceC0399Nv;
import defpackage.RunnableC0718au;

/* renamed from: com.google.firebase.messaging.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif extends Binder {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f11924do;

    /* renamed from: com.google.firebase.messaging.if$do, reason: invalid class name */
    public interface Cdo {
    }

    public Cif(EnhancedIntentService.Cdo cdo) {
        this.f11924do = cdo;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6102do(final Cfor.Cdo cdo) {
        if (Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException("Binding only allowed within app");
        }
        Intent intent = cdo.f11923do;
        EnhancedIntentService.Cdo cdo2 = (EnhancedIntentService.Cdo) this.f11924do;
        cdo2.getClass();
        int i = EnhancedIntentService.f11881try;
        EnhancedIntentService enhancedIntentService = EnhancedIntentService.this;
        enhancedIntentService.getClass();
        GG gg = new GG();
        enhancedIntentService.f11884do.execute(new RunnableC0718au(enhancedIntentService, intent, gg, 2));
        gg.f1160do.mo597for(new ExecutorC3178js(4), new InterfaceC0399Nv() { // from class: rM
            @Override // defpackage.InterfaceC0399Nv
            public final void onComplete(FG fg) {
                Cfor.Cdo.this.f11922do.m722new(null);
            }
        });
    }
}
