package defpackage;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzapq;
import com.google.android.gms.internal.ads.zzapv;
import com.google.android.gms.internal.ads.zzcab;
import com.google.firebase.perf.session.SessionManager;
import defpackage.AbstractC3905wB;
import defpackage.C3603r4;
import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* renamed from: zB, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4082zB implements InterfaceC3933wh, zzapq, E0, InterfaceC3597qy {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f16875do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f16876do;

    public /* synthetic */ C4082zB(Object obj, int i) {
        this.f16875do = i;
        this.f16876do = obj;
    }

    @Override // defpackage.InterfaceC3597qy
    public final Object get() {
        int i = this.f16875do;
        Object obj = this.f16876do;
        switch (i) {
            case 0:
                InterfaceC2792g8 interfaceC2792g8 = (InterfaceC2792g8) ((InterfaceC3597qy) obj).get();
                HashMap hashMap = new HashMap();
                Ex ex = Ex.DEFAULT;
                C3603r4.Cdo cdo = new C3603r4.Cdo();
                Set<AbstractC3905wB.Cif> emptySet = Collections.emptySet();
                if (emptySet == null) {
                    throw new NullPointerException("Null flags");
                }
                cdo.f15207do = emptySet;
                cdo.f15206do = 30000L;
                cdo.f15208if = 86400000L;
                hashMap.put(ex, cdo.m7934do());
                Ex ex2 = Ex.HIGHEST;
                C3603r4.Cdo cdo2 = new C3603r4.Cdo();
                Set<AbstractC3905wB.Cif> emptySet2 = Collections.emptySet();
                if (emptySet2 == null) {
                    throw new NullPointerException("Null flags");
                }
                cdo2.f15207do = emptySet2;
                cdo2.f15206do = 1000L;
                cdo2.f15208if = 86400000L;
                hashMap.put(ex2, cdo2.m7934do());
                Ex ex3 = Ex.VERY_LOW;
                C3603r4.Cdo cdo3 = new C3603r4.Cdo();
                Set<AbstractC3905wB.Cif> emptySet3 = Collections.emptySet();
                if (emptySet3 == null) {
                    throw new NullPointerException("Null flags");
                }
                cdo3.f15207do = emptySet3;
                cdo3.f15206do = 86400000L;
                cdo3.f15208if = 86400000L;
                Set<AbstractC3905wB.Cif> unmodifiableSet = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList(AbstractC3905wB.Cif.DEVICE_IDLE)));
                if (unmodifiableSet == null) {
                    throw new NullPointerException("Null flags");
                }
                cdo3.f15207do = unmodifiableSet;
                hashMap.put(ex3, cdo3.m7934do());
                if (interfaceC2792g8 == null) {
                    throw new NullPointerException("missing required property: clock");
                }
                if (hashMap.keySet().size() < Ex.values().length) {
                    throw new IllegalStateException("Not all priorities have been configured");
                }
                new HashMap();
                return new C3545q4(interfaceC2792g8, hashMap);
            default:
                ((C3993xi) obj).getClass();
                SessionManager sessionManager = SessionManager.getInstance();
                C3645ro.m8018this(sessionManager);
                return sessionManager;
        }
    }

    @Override // defpackage.E0
    /* renamed from: if */
    public final void mo269if(Bundle bundle) {
        ((A0) this.f16876do).mo8if(bundle, "clx", "_ae");
    }

    @Override // com.google.android.gms.internal.ads.zzapq
    public final void zza(zzapv zzapvVar) {
        ((zzcab) this.f16876do).zzd(zzapvVar);
    }
}
