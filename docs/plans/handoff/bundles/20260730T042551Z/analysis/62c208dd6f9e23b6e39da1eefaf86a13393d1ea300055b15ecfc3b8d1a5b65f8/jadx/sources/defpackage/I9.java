package defpackage;

import android.content.Context;
import com.google.firebase.remoteconfig.internal.Cfor;
import com.google.firebase.remoteconfig.internal.Cif;
import com.google.firebase.remoteconfig.internal.Cnew;
import java.util.LinkedHashSet;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class I9 {

    /* renamed from: do, reason: not valid java name */
    public final Cnew f1459do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedHashSet f1460do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ScheduledExecutorService f1461do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3227ki f1462do;

    public I9(C0706ai c0706ai, InterfaceC3227ki interfaceC3227ki, Cif cif, D9 d9, Context context, String str, Cfor cfor, ScheduledExecutorService scheduledExecutorService) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.f1460do = linkedHashSet;
        this.f1459do = new Cnew(c0706ai, interfaceC3227ki, cif, d9, context, str, linkedHashSet, cfor, scheduledExecutorService);
        this.f1462do = interfaceC3227ki;
        this.f1461do = scheduledExecutorService;
    }

    /* renamed from: do, reason: not valid java name */
    public final synchronized void m920do() {
        if (!this.f1460do.isEmpty()) {
            this.f1459do.m6158new(0L);
        }
    }
}
