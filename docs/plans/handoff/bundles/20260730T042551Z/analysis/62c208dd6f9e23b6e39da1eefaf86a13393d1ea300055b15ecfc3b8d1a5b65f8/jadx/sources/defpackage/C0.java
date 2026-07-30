package defpackage;

import android.os.Bundle;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.common.collect.Ctry;
import defpackage.A0;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes3.dex */
public final class C0 implements A0 {

    /* renamed from: do, reason: not valid java name */
    public static volatile C0 f308do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2904i2 f309do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ConcurrentHashMap f310do;

    public C0(C2904i2 c2904i2) {
        Preconditions.checkNotNull(c2904i2);
        this.f309do = c2904i2;
        this.f310do = new ConcurrentHashMap();
    }

    @Override // defpackage.A0
    @KeepForSdk
    /* renamed from: case */
    public final Map<String, Object> mo3case(boolean z) {
        return this.f309do.f13420do.zza((String) null, (String) null, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
    
        if (r2 != null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x007d, code lost:
    
        if (defpackage.C0810cQ.m4904for(r7.f9for, r0, r7.f2case) == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0095, code lost:
    
        if (defpackage.C0810cQ.m4904for(r7.f12if, r0, r7.f16try) == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00ad, code lost:
    
        if (defpackage.C0810cQ.m4904for(r7.f4do, r0, r7.f15new) == false) goto L59;
     */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00b5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00b6  */
    @Override // defpackage.A0
    @com.google.android.gms.common.annotation.KeepForSdk
    /* renamed from: do */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo4do(defpackage.A0.Cif r7) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0.mo4do(A0$if):void");
    }

    @Override // defpackage.A0
    @KeepForSdk
    /* renamed from: else */
    public final ArrayList mo5else(String str) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : this.f309do.f13420do.zza(str, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) {
            Ctry<String> ctry = C0810cQ.f8529do;
            Preconditions.checkNotNull(bundle);
            A0.Cif cif = new A0.Cif();
            cif.f6do = (String) Preconditions.checkNotNull((String) C3850vF.m8464throws(bundle, "origin", String.class, null));
            cif.f13if = (String) Preconditions.checkNotNull((String) C3850vF.m8464throws(bundle, FacebookRequestErrorClassification.KEY_NAME, String.class, null));
            cif.f5do = C3850vF.m8464throws(bundle, "value", Object.class, null);
            cif.f10for = (String) C3850vF.m8464throws(bundle, "trigger_event_name", String.class, null);
            cif.f3do = ((Long) C3850vF.m8464throws(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            cif.f15new = (String) C3850vF.m8464throws(bundle, "timed_out_event_name", String.class, null);
            cif.f4do = (Bundle) C3850vF.m8464throws(bundle, "timed_out_event_params", Bundle.class, null);
            cif.f16try = (String) C3850vF.m8464throws(bundle, "triggered_event_name", String.class, null);
            cif.f12if = (Bundle) C3850vF.m8464throws(bundle, "triggered_event_params", Bundle.class, null);
            cif.f11if = ((Long) C3850vF.m8464throws(bundle, "time_to_live", Long.class, 0L)).longValue();
            cif.f2case = (String) C3850vF.m8464throws(bundle, "expired_event_name", String.class, null);
            cif.f9for = (Bundle) C3850vF.m8464throws(bundle, "expired_event_params", Bundle.class, null);
            cif.f7do = ((Boolean) C3850vF.m8464throws(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            cif.f8for = ((Long) C3850vF.m8464throws(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            cif.f14new = ((Long) C3850vF.m8464throws(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
            arrayList.add(cif);
        }
        return arrayList;
    }

    @Override // defpackage.A0
    @KeepForSdk
    /* renamed from: for */
    public final void mo6for(String str) {
        if (C0810cQ.m4906new("fcm") && C0810cQ.m4905if("fcm", "_ln")) {
            this.f309do.f13420do.zza("fcm", "_ln", (Object) str, true);
        }
    }

    @Override // defpackage.A0
    @KeepForSdk
    /* renamed from: goto */
    public final void mo7goto(String str) {
        this.f309do.f13420do.zza(str, (String) null, (Bundle) null);
    }

    @Override // defpackage.A0
    @KeepForSdk
    /* renamed from: if */
    public final void mo8if(Bundle bundle, String str, String str2) {
        if (C0810cQ.m4906new(str) && C0810cQ.m4903do(bundle, str2) && C0810cQ.m4904for(bundle, str, str2)) {
            if ("clx".equals(str) && "_ae".equals(str2)) {
                bundle.putLong("_r", 1L);
            }
            this.f309do.f13420do.zzb(str, str2, bundle);
        }
    }

    @Override // defpackage.A0
    @KeepForSdk
    /* renamed from: new */
    public final B0 mo9new(String str, C0116Bb c0116Bb) {
        Preconditions.checkNotNull(c0116Bb);
        if (!C0810cQ.m4906new(str)) {
            return null;
        }
        boolean isEmpty = str.isEmpty();
        ConcurrentHashMap concurrentHashMap = this.f310do;
        if ((isEmpty || !concurrentHashMap.containsKey(str) || concurrentHashMap.get(str) == null) ? false : true) {
            return null;
        }
        boolean equals = "fiam".equals(str);
        C2904i2 c2904i2 = this.f309do;
        Object br = equals ? new BR(c2904i2, c0116Bb) : "clx".equals(str) ? new WR(c2904i2, c0116Bb) : null;
        if (br == null) {
            return null;
        }
        concurrentHashMap.put(str, br);
        return new B0();
    }

    @Override // defpackage.A0
    @KeepForSdk
    /* renamed from: try */
    public final int mo10try(String str) {
        return this.f309do.f13420do.zza(str);
    }
}
