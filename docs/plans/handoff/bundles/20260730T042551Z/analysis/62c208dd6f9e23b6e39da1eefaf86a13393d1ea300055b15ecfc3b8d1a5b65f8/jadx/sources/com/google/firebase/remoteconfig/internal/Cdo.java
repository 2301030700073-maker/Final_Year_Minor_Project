package com.google.firebase.remoteconfig.internal;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.firebase.remoteconfig.internal.Cdo;
import com.google.firebase.remoteconfig.internal.Cif;
import com.google.firebase.remoteconfig.internal.Cnew;
import defpackage.C0123Bi;
import defpackage.C0145Ci;
import defpackage.C0233Gi;
import defpackage.Cpublic;
import defpackage.D9;
import defpackage.E9;
import defpackage.FG;
import defpackage.InterfaceC0598Xa;
import defpackage.LG;
import defpackage.O9;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.google.firebase.remoteconfig.internal.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    public final D9 f11983do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final O9 f11984do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f11985do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HttpURLConnection f11986do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Random f11987do = new Random();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Set<O9> f11988do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ScheduledExecutorService f11989do;

    /* renamed from: com.google.firebase.remoteconfig.internal.do$do, reason: invalid class name and collision with other inner class name */
    public class RunnableC0078do implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ long f11990do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f11992for;

        public RunnableC0078do(int i, long j) {
            this.f11992for = i;
            this.f11990do = j;
        }

        @Override // java.lang.Runnable
        public final void run() {
            final Cdo cdo = Cdo.this;
            int i = this.f11992for;
            final long j = this.f11990do;
            synchronized (cdo) {
                final int i2 = i - 1;
                final FG m6147new = cdo.f11985do.m6147new(3 - i2);
                final FG<E9> m354if = cdo.f11983do.m354if();
                LG.m1315else(m6147new, m354if).mo589break(cdo.f11989do, new InterfaceC0598Xa() { // from class: B9
                    @Override // defpackage.InterfaceC0598Xa
                    public final Object then(FG fg) {
                        Boolean valueOf;
                        JSONObject jSONObject;
                        Cdo cdo2 = Cdo.this;
                        FG fg2 = m6147new;
                        FG fg3 = m354if;
                        long j2 = j;
                        int i3 = i2;
                        cdo2.getClass();
                        if (!fg2.mo604throw()) {
                            return LG.m1319new(new C0123Bi("Failed to auto-fetch config update.", fg2.mo591catch()));
                        }
                        if (!fg3.mo604throw()) {
                            return LG.m1319new(new C0123Bi("Failed to get activated config for auto-fetch", fg3.mo591catch()));
                        }
                        Cif.Cdo cdo3 = (Cif.Cdo) fg2.mo592class();
                        E9 e9 = (E9) fg3.mo592class();
                        E9 e92 = cdo3.f12015do;
                        if (e92 != null) {
                            valueOf = Boolean.valueOf(e92.f739do >= j2);
                        } else {
                            valueOf = Boolean.valueOf(cdo3.f12014do == 1);
                        }
                        if (!valueOf.booleanValue()) {
                            cdo2.m6134do(i3, j2);
                            return LG.m1320try(null);
                        }
                        if (cdo3.f12015do == null) {
                            return LG.m1320try(null);
                        }
                        if (e9 == null) {
                            Date date = E9.f738if;
                            e9 = new E9(new JSONObject(), E9.f738if, new JSONArray(), new JSONObject(), 0L, new JSONArray());
                        }
                        E9 e93 = cdo3.f12015do;
                        E9 m436do = E9.m436do(new JSONObject(e93.f742do.toString()));
                        HashMap m437if = e9.m437if();
                        HashMap m437if2 = e93.m437if();
                        HashSet hashSet = new HashSet();
                        JSONObject jSONObject2 = e9.f745if;
                        Iterator<String> keys = jSONObject2.keys();
                        while (true) {
                            boolean hasNext = keys.hasNext();
                            jSONObject = m436do.f745if;
                            if (!hasNext) {
                                break;
                            }
                            String next = keys.next();
                            JSONObject jSONObject3 = e93.f745if;
                            if (!jSONObject3.has(next)) {
                                hashSet.add(next);
                            } else if (jSONObject2.get(next).equals(jSONObject3.get(next))) {
                                JSONObject jSONObject4 = e9.f743for;
                                boolean has = jSONObject4.has(next);
                                JSONObject jSONObject5 = e93.f743for;
                                if ((has && !jSONObject5.has(next)) || (!jSONObject4.has(next) && jSONObject5.has(next))) {
                                    hashSet.add(next);
                                } else if (jSONObject4.has(next) && jSONObject5.has(next) && !jSONObject4.getJSONObject(next).toString().equals(jSONObject5.getJSONObject(next).toString())) {
                                    hashSet.add(next);
                                } else if (m437if.containsKey(next) != m437if2.containsKey(next)) {
                                    hashSet.add(next);
                                } else if (m437if.containsKey(next) && m437if2.containsKey(next) && !((Map) m437if.get(next)).equals(m437if2.get(next))) {
                                    hashSet.add(next);
                                } else {
                                    jSONObject.remove(next);
                                }
                            } else {
                                hashSet.add(next);
                            }
                        }
                        Iterator<String> keys2 = jSONObject.keys();
                        while (keys2.hasNext()) {
                            hashSet.add(keys2.next());
                        }
                        if (hashSet.isEmpty()) {
                            return LG.m1320try(null);
                        }
                        new C3661s3(hashSet);
                        synchronized (cdo2) {
                            Iterator<O9> it = cdo2.f11988do.iterator();
                            while (it.hasNext()) {
                                it.next().mo1636do();
                            }
                        }
                        return LG.m1320try(null);
                    }
                });
            }
        }
    }

    public Cdo(HttpURLConnection httpURLConnection, Cif cif, D9 d9, Set set, Cnew.Cif cif2, ScheduledExecutorService scheduledExecutorService) {
        this.f11986do = httpURLConnection;
        this.f11985do = cif;
        this.f11983do = d9;
        this.f11988do = set;
        this.f11984do = cif2;
        this.f11989do = scheduledExecutorService;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6134do(int i, long j) {
        if (i == 0) {
            m6135for(new C0233Gi("Unable to fetch the latest version of the template."));
            return;
        }
        this.f11989do.schedule(new RunnableC0078do(i, j), this.f11987do.nextInt(4), TimeUnit.SECONDS);
    }

    /* renamed from: for, reason: not valid java name */
    public final synchronized void m6135for(C0145Ci c0145Ci) {
        Iterator<O9> it = this.f11988do.iterator();
        while (it.hasNext()) {
            it.next().mo1637if(c0145Ci);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m6136if(InputStream inputStream) {
        JSONObject jSONObject;
        boolean isEmpty;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "utf-8"));
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                break;
            }
            str = Cpublic.m7816case(str, readLine);
            if (readLine.contains("}")) {
                int indexOf = str.indexOf(123);
                int lastIndexOf = str.lastIndexOf(125);
                str = (indexOf < 0 || lastIndexOf < 0 || indexOf >= lastIndexOf) ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : str.substring(indexOf, lastIndexOf + 1);
                if (!str.isEmpty()) {
                    try {
                        jSONObject = new JSONObject(str);
                    } catch (JSONException e) {
                        m6135for(new C0123Bi(e.getCause()));
                    }
                    if (jSONObject.has("featureDisabled") && jSONObject.getBoolean("featureDisabled")) {
                        this.f11984do.mo1637if(new C0233Gi("The server is temporarily unavailable. Try again in a few minutes."));
                        break;
                    }
                    synchronized (this) {
                        isEmpty = this.f11988do.isEmpty();
                    }
                    if (isEmpty) {
                        break;
                    }
                    if (jSONObject.has("latestTemplateVersionNumber")) {
                        long j = this.f11985do.f12008do.f11995do.getLong("last_template_version", 0L);
                        long j2 = jSONObject.getLong("latestTemplateVersionNumber");
                        if (j2 > j) {
                            m6134do(3, j2);
                        }
                    }
                    str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                } else {
                    continue;
                }
            }
        }
        bufferedReader.close();
        inputStream.close();
    }
}
