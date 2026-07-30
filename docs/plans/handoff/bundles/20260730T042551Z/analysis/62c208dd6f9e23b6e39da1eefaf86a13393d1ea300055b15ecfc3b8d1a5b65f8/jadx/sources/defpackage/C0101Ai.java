package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.firebase.remoteconfig.internal.Cfor;
import com.google.firebase.remoteconfig.internal.Cif;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: Ai, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0101Ai {

    /* renamed from: do, reason: not valid java name */
    public final D9 f124do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final H9 f125do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final I9 f126do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0605Xh f127do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f128do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f129do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f130do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3227ki f131do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3845vA f132do;

    /* renamed from: if, reason: not valid java name */
    public final D9 f133if;

    public C0101Ai(InterfaceC3227ki interfaceC3227ki, C0605Xh c0605Xh, ScheduledExecutorService scheduledExecutorService, D9 d9, D9 d92, D9 d93, Cif cif, H9 h9, Cfor cfor, I9 i9, C3845vA c3845vA) {
        this.f131do = interfaceC3227ki;
        this.f127do = c0605Xh;
        this.f130do = scheduledExecutorService;
        this.f124do = d9;
        this.f133if = d92;
        this.f129do = cif;
        this.f125do = h9;
        this.f128do = cfor;
        this.f126do = i9;
        this.f132do = c3845vA;
    }

    /* renamed from: try, reason: not valid java name */
    public static ArrayList m89try(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            HashMap hashMap = new HashMap();
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.getString(next));
            }
            arrayList.add(hashMap);
        }
        return arrayList;
    }

    /* renamed from: do, reason: not valid java name */
    public final HashMap m90do() {
        C0277Ii c0277Ii;
        H9 h9 = this.f125do;
        h9.getClass();
        HashSet hashSet = new HashSet();
        D9 d9 = h9.f1302do;
        hashSet.addAll(H9.m817for(d9));
        D9 d92 = h9.f1305if;
        hashSet.addAll(H9.m817for(d92));
        HashMap hashMap = new HashMap();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            String m818new = H9.m818new(d9, str);
            if (m818new != null) {
                h9.m820if(d9.m353for(), str);
                c0277Ii = new C0277Ii(m818new, 2);
            } else {
                String m818new2 = H9.m818new(d92, str);
                if (m818new2 != null) {
                    c0277Ii = new C0277Ii(m818new2, 1);
                } else {
                    String.format("No value of type '%s' exists for parameter key '%s'.", "FirebaseRemoteConfigValue", str);
                    c0277Ii = new C0277Ii(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 0);
                }
            }
            hashMap.put(str, c0277Ii);
        }
        return hashMap;
    }

    /* renamed from: for, reason: not valid java name */
    public final String m91for() {
        H9 h9 = this.f125do;
        D9 d9 = h9.f1302do;
        String m818new = H9.m818new(d9, "ab_test_iap_rewarded_adsv2_");
        if (m818new != null) {
            h9.m820if(d9.m353for(), "ab_test_iap_rewarded_adsv2_");
            return m818new;
        }
        String m818new2 = H9.m818new(h9.f1305if, "ab_test_iap_rewarded_adsv2_");
        if (m818new2 != null) {
            return m818new2;
        }
        String.format("No value of type '%s' exists for parameter key '%s'.", "String", "ab_test_iap_rewarded_adsv2_");
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    /* renamed from: if, reason: not valid java name */
    public final C0189Ei m92if() {
        C0189Ei c0189Ei;
        Cfor cfor = this.f128do;
        synchronized (cfor.f11996do) {
            cfor.f11995do.getLong("last_fetch_time_in_millis", -1L);
            int i = cfor.f11995do.getInt("last_fetch_status", 0);
            int[] iArr = Cif.f12004do;
            long j = cfor.f11995do.getLong("fetch_timeout_in_seconds", 60L);
            if (j < 0) {
                throw new IllegalArgumentException(String.format("Fetch connection timeout has to be a non-negative number. %d is an invalid argument", Long.valueOf(j)));
            }
            long j2 = cfor.f11995do.getLong("minimum_fetch_interval_in_seconds", Cif.f12003do);
            if (j2 < 0) {
                throw new IllegalArgumentException("Minimum interval between fetches has to be a non-negative number. " + j2 + " is an invalid argument");
            }
            c0189Ei = new C0189Ei(i);
        }
        return c0189Ei;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m93new(boolean z) {
        I9 i9 = this.f126do;
        synchronized (i9) {
            i9.f1459do.f12032for = z;
            if (!z) {
                i9.m920do();
            }
        }
    }
}
