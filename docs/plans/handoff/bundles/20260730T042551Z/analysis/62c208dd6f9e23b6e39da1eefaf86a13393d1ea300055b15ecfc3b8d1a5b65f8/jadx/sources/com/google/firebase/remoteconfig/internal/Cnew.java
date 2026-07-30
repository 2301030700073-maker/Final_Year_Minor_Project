package com.google.firebase.remoteconfig.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.firebase.remoteconfig.internal.Cdo;
import com.google.firebase.remoteconfig.internal.Cfor;
import com.google.firebase.remoteconfig.internal.Cnew;
import defpackage.C0123Bi;
import defpackage.C0145Ci;
import defpackage.C0706ai;
import defpackage.D9;
import defpackage.FG;
import defpackage.InterfaceC0598Xa;
import defpackage.InterfaceC3227ki;
import defpackage.LG;
import defpackage.O9;
import defpackage.XV;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: com.google.firebase.remoteconfig.internal.new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f12019do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final D9 f12020do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0706ai f12021do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f12022do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f12024do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final com.google.firebase.remoteconfig.internal.Cif f12025do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f12026do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Set<O9> f12028do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ScheduledExecutorService f12029do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3227ki f12030do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[] f12018do = {2, 4, 8, 16, 32, 64, 128, 256};

    /* renamed from: do, reason: not valid java name */
    public static final Pattern f12017do = Pattern.compile("^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f12031do = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Random f12027do = new Random();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Clock f12023do = DefaultClock.getInstance();

    /* renamed from: if, reason: not valid java name */
    public boolean f12033if = false;

    /* renamed from: for, reason: not valid java name */
    public boolean f12032for = false;

    /* renamed from: com.google.firebase.remoteconfig.internal.new$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            final Cnew cnew = Cnew.this;
            if (cnew.m6155do()) {
                if (new Date(cnew.f12023do.currentTimeMillis()).before(cnew.f12024do.m6141if().f12002do)) {
                    cnew.m6156else();
                    return;
                }
                InterfaceC3227ki interfaceC3227ki = cnew.f12030do;
                final XV mo7155do = interfaceC3227ki.mo7155do();
                final XV mo7159if = interfaceC3227ki.mo7159if();
                FG<List<FG<?>>> m1315else = LG.m1315else(mo7155do, mo7159if);
                InterfaceC0598Xa<List<FG<?>>, FG<TContinuationResult>> interfaceC0598Xa = new InterfaceC0598Xa() { // from class: K9
                    @Override // defpackage.InterfaceC0598Xa
                    public final Object then(FG fg) {
                        Cnew cnew2 = Cnew.this;
                        cnew2.getClass();
                        FG fg2 = mo7155do;
                        if (!fg2.mo604throw()) {
                            return LG.m1319new(new C0123Bi("Firebase Installations failed to get installation auth token for config update listener connection.", fg2.mo591catch()));
                        }
                        FG fg3 = mo7159if;
                        if (!fg3.mo604throw()) {
                            return LG.m1319new(new C0123Bi("Firebase Installations failed to get installation ID for config update listener connection.", fg3.mo591catch()));
                        }
                        URL url = null;
                        try {
                            try {
                                String str = cnew2.f12026do;
                                Object[] objArr = new Object[2];
                                C0706ai c0706ai = cnew2.f12021do;
                                c0706ai.m3147do();
                                Matcher matcher = Cnew.f12017do.matcher(c0706ai.f4989do.f14828if);
                                objArr[0] = matcher.matches() ? matcher.group(1) : null;
                                objArr[1] = str;
                                url = new URL(String.format("https://firebaseremoteconfigrealtime.googleapis.com/v1/projects/%s/namespaces/%s:streamFetchInvalidations", objArr));
                            } catch (IOException e) {
                                return LG.m1319new(new C0123Bi("Failed to open HTTP stream connection", e));
                            }
                        } catch (MalformedURLException unused) {
                        }
                        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                        cnew2.m6159this(httpURLConnection, (String) fg3.mo592class(), ((AbstractC2771fo) fg2.mo592class()).mo6509do());
                        return LG.m1320try(httpURLConnection);
                    }
                };
                ScheduledExecutorService scheduledExecutorService = cnew.f12029do;
                final FG mo589break = m1315else.mo589break(scheduledExecutorService, interfaceC0598Xa);
                LG.m1315else(mo589break).mo598goto(scheduledExecutorService, new InterfaceC0598Xa() { // from class: J9
                    @Override // defpackage.InterfaceC0598Xa
                    public final Object then(FG fg) {
                        Integer num;
                        HttpURLConnection httpURLConnection;
                        C0233Gi c0233Gi;
                        boolean m6149for;
                        Cnew cnew2 = Cnew.this;
                        FG fg2 = mo589break;
                        cnew2.getClass();
                        HttpURLConnection httpURLConnection2 = null;
                        try {
                        } catch (IOException unused) {
                            httpURLConnection = null;
                            num = null;
                        } catch (Throwable th) {
                            th = th;
                            num = null;
                        }
                        if (!fg2.mo604throw()) {
                            throw new IOException(fg2.mo591catch());
                        }
                        cnew2.m6157goto(true);
                        httpURLConnection = (HttpURLConnection) fg2.mo592class();
                        try {
                            num = Integer.valueOf(httpURLConnection.getResponseCode());
                            try {
                                if (num.intValue() == 200) {
                                    synchronized (cnew2) {
                                        cnew2.f12019do = 8;
                                    }
                                    cnew2.f12024do.m6143try(0, Cfor.f11994if);
                                    Cdo m6152break = cnew2.m6152break(httpURLConnection);
                                    HttpURLConnection httpURLConnection3 = m6152break.f11986do;
                                    if (httpURLConnection3 != null) {
                                        try {
                                            InputStream inputStream = httpURLConnection3.getInputStream();
                                            m6152break.m6136if(inputStream);
                                            inputStream.close();
                                        } catch (IOException unused2) {
                                        } catch (Throwable th2) {
                                            httpURLConnection3.disconnect();
                                            throw th2;
                                        }
                                        httpURLConnection3.disconnect();
                                    }
                                }
                                Cnew.m6150if(httpURLConnection);
                                cnew2.m6157goto(false);
                                m6149for = Cnew.m6149for(num.intValue());
                                if (m6149for) {
                                    cnew2.m6154catch(new Date(cnew2.f12023do.currentTimeMillis()));
                                }
                            } catch (IOException unused3) {
                                Cnew.m6150if(httpURLConnection);
                                cnew2.m6157goto(false);
                                boolean z = num == null || Cnew.m6149for(num.intValue());
                                if (z) {
                                    cnew2.m6154catch(new Date(cnew2.f12023do.currentTimeMillis()));
                                }
                                if (!z && num.intValue() != 200) {
                                    String format = String.format("Unable to connect to the server. Try again in a few minutes. HTTP status code: %d", num);
                                    if (num.intValue() == 403) {
                                        format = Cnew.m6151try(httpURLConnection.getErrorStream());
                                    }
                                    c0233Gi = new C0233Gi(num.intValue(), format, 0);
                                    cnew2.m6153case(c0233Gi);
                                    return LG.m1320try(null);
                                }
                                cnew2.m6156else();
                                return LG.m1320try(null);
                            } catch (Throwable th3) {
                                httpURLConnection2 = httpURLConnection;
                                th = th3;
                                Cnew.m6150if(httpURLConnection2);
                                cnew2.m6157goto(false);
                                boolean z2 = num == null || Cnew.m6149for(num.intValue());
                                if (z2) {
                                    cnew2.m6154catch(new Date(cnew2.f12023do.currentTimeMillis()));
                                }
                                if (z2 || num.intValue() == 200) {
                                    cnew2.m6156else();
                                } else {
                                    String format2 = String.format("Unable to connect to the server. Try again in a few minutes. HTTP status code: %d", num);
                                    if (num.intValue() == 403) {
                                        format2 = Cnew.m6151try(httpURLConnection2.getErrorStream());
                                    }
                                    cnew2.m6153case(new C0233Gi(num.intValue(), format2, 0));
                                }
                                throw th;
                            }
                        } catch (IOException unused4) {
                            num = null;
                        } catch (Throwable th4) {
                            httpURLConnection2 = httpURLConnection;
                            th = th4;
                            num = null;
                        }
                        if (!m6149for && num.intValue() != 200) {
                            String format3 = String.format("Unable to connect to the server. Try again in a few minutes. HTTP status code: %d", num);
                            if (num.intValue() == 403) {
                                format3 = Cnew.m6151try(httpURLConnection.getErrorStream());
                            }
                            c0233Gi = new C0233Gi(num.intValue(), format3, 0);
                            cnew2.m6153case(c0233Gi);
                            return LG.m1320try(null);
                        }
                        cnew2.m6156else();
                        return LG.m1320try(null);
                    }
                });
            }
        }
    }

    /* renamed from: com.google.firebase.remoteconfig.internal.new$if, reason: invalid class name */
    public class Cif implements O9 {
        public Cif() {
        }

        @Override // defpackage.O9
        /* renamed from: do */
        public final void mo1636do() {
        }

        @Override // defpackage.O9
        /* renamed from: if */
        public final void mo1637if(C0145Ci c0145Ci) {
            Cnew cnew = Cnew.this;
            synchronized (cnew) {
                cnew.f12033if = true;
            }
            Cnew.this.m6153case(c0145Ci);
        }
    }

    public Cnew(C0706ai c0706ai, InterfaceC3227ki interfaceC3227ki, com.google.firebase.remoteconfig.internal.Cif cif, D9 d9, Context context, String str, LinkedHashSet linkedHashSet, Cfor cfor, ScheduledExecutorService scheduledExecutorService) {
        this.f12028do = linkedHashSet;
        this.f12029do = scheduledExecutorService;
        this.f12019do = Math.max(8 - cfor.m6141if().f12001do, 1);
        this.f12021do = c0706ai;
        this.f12025do = cif;
        this.f12030do = interfaceC3227ki;
        this.f12020do = d9;
        this.f12022do = context;
        this.f12026do = str;
        this.f12024do = cfor;
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m6149for(int i) {
        return i == 408 || i == 429 || i == 502 || i == 503 || i == 504;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m6150if(HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
            try {
                httpURLConnection.getInputStream().close();
                if (httpURLConnection.getErrorStream() != null) {
                    httpURLConnection.getErrorStream().close();
                }
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static String m6151try(InputStream inputStream) {
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
            }
        } catch (IOException unused) {
            if (sb.length() == 0) {
                return "Unable to connect to the server, access is forbidden. HTTP status code: 403";
            }
        }
        return sb.toString();
    }

    @SuppressLint({"VisibleForTests"})
    /* renamed from: break, reason: not valid java name */
    public final synchronized com.google.firebase.remoteconfig.internal.Cdo m6152break(HttpURLConnection httpURLConnection) {
        return new com.google.firebase.remoteconfig.internal.Cdo(httpURLConnection, this.f12025do, this.f12020do, this.f12028do, new Cif(), this.f12029do);
    }

    /* renamed from: case, reason: not valid java name */
    public final synchronized void m6153case(C0145Ci c0145Ci) {
        Iterator<O9> it = this.f12028do.iterator();
        while (it.hasNext()) {
            it.next().mo1637if(c0145Ci);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m6154catch(Date date) {
        Cfor cfor = this.f12024do;
        int i = cfor.m6141if().f12001do + 1;
        cfor.m6143try(i, new Date(date.getTime() + (TimeUnit.MINUTES.toMillis(f12018do[(i < 8 ? i : 8) - 1]) / 2) + this.f12027do.nextInt((int) r2)));
    }

    /* renamed from: do, reason: not valid java name */
    public final synchronized boolean m6155do() {
        boolean z;
        if (!this.f12028do.isEmpty() && !this.f12031do && !this.f12033if) {
            z = this.f12032for ? false : true;
        }
        return z;
    }

    @SuppressLint({"VisibleForTests"})
    /* renamed from: else, reason: not valid java name */
    public final synchronized void m6156else() {
        m6158new(Math.max(0L, this.f12024do.m6141if().f12002do.getTime() - new Date(this.f12023do.currentTimeMillis()).getTime()));
    }

    /* renamed from: goto, reason: not valid java name */
    public final synchronized void m6157goto(boolean z) {
        this.f12031do = z;
    }

    /* renamed from: new, reason: not valid java name */
    public final synchronized void m6158new(long j) {
        if (m6155do()) {
            int i = this.f12019do;
            if (i > 0) {
                this.f12019do = i - 1;
                this.f12029do.schedule(new Cdo(), j, TimeUnit.MILLISECONDS);
            } else if (!this.f12032for) {
                m6153case(new C0123Bi());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0071  */
    @android.annotation.SuppressLint({"VisibleForTests"})
    /* renamed from: this, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6159this(java.net.HttpURLConnection r7, java.lang.String r8, java.lang.String r9) {
        /*
            r6 = this;
            java.lang.String r0 = "POST"
            r7.setRequestMethod(r0)
            java.lang.String r0 = "X-Goog-Firebase-Installations-Auth"
            r7.setRequestProperty(r0, r9)
            ai r9 = r6.f12021do
            r9.m3147do()
            oi r0 = r9.f4989do
            java.lang.String r1 = r0.f14825do
            java.lang.String r2 = "X-Goog-Api-Key"
            r7.setRequestProperty(r2, r1)
            android.content.Context r1 = r6.f12022do
            java.lang.String r2 = r1.getPackageName()
            java.lang.String r3 = "X-Android-Package"
            r7.setRequestProperty(r3, r2)
            r2 = 0
            java.lang.String r3 = r1.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L38
            byte[] r3 = com.google.android.gms.common.util.AndroidUtilsLight.getPackageCertificateHashBytes(r1, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L38
            if (r3 != 0) goto L32
            r1.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L38
            goto L3b
        L32:
            r4 = 0
            java.lang.String r1 = com.google.android.gms.common.util.Hex.bytesToStringUppercase(r3, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L38
            goto L3c
        L38:
            r1.getPackageName()
        L3b:
            r1 = r2
        L3c:
            java.lang.String r3 = "X-Android-Cert"
            r7.setRequestProperty(r3, r1)
            java.lang.String r1 = "X-Google-GFE-Can-Retry"
            java.lang.String r3 = "yes"
            r7.setRequestProperty(r1, r3)
            java.lang.String r1 = "X-Accept-Response-Streaming"
            java.lang.String r3 = "true"
            r7.setRequestProperty(r1, r3)
            java.lang.String r1 = "Content-Type"
            java.lang.String r3 = "application/json"
            r7.setRequestProperty(r1, r3)
            java.lang.String r1 = "Accept"
            r7.setRequestProperty(r1, r3)
            java.util.HashMap r1 = new java.util.HashMap
            r1.<init>()
            r9.m3147do()
            java.lang.String r3 = r0.f14828if
            java.util.regex.Pattern r4 = com.google.firebase.remoteconfig.internal.Cnew.f12017do
            java.util.regex.Matcher r3 = r4.matcher(r3)
            boolean r4 = r3.matches()
            if (r4 == 0) goto L76
            r2 = 1
            java.lang.String r2 = r3.group(r2)
        L76:
            java.lang.String r3 = "project"
            r1.put(r3, r2)
            java.lang.String r2 = "namespace"
            java.lang.String r3 = r6.f12026do
            r1.put(r2, r3)
            com.google.firebase.remoteconfig.internal.if r2 = r6.f12025do
            com.google.firebase.remoteconfig.internal.for r2 = r2.f12008do
            android.content.SharedPreferences r2 = r2.f11995do
            java.lang.String r3 = "last_template_version"
            r4 = 0
            long r2 = r2.getLong(r3, r4)
            java.lang.String r2 = java.lang.Long.toString(r2)
            java.lang.String r3 = "lastKnownVersionNumber"
            r1.put(r3, r2)
            r9.m3147do()
            java.lang.String r9 = r0.f14828if
            java.lang.String r0 = "appId"
            r1.put(r0, r9)
            java.lang.String r9 = "sdkVersion"
            java.lang.String r0 = "22.0.1"
            r1.put(r9, r0)
            java.lang.String r9 = "appInstanceId"
            r1.put(r9, r8)
            org.json.JSONObject r8 = new org.json.JSONObject
            r8.<init>(r1)
            java.lang.String r8 = r8.toString()
            java.lang.String r9 = "utf-8"
            byte[] r8 = r8.getBytes(r9)
            java.io.BufferedOutputStream r9 = new java.io.BufferedOutputStream
            java.io.OutputStream r7 = r7.getOutputStream()
            r9.<init>(r7)
            r9.write(r8)
            r9.flush()
            r9.close()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.remoteconfig.internal.Cnew.m6159this(java.net.HttpURLConnection, java.lang.String, java.lang.String):void");
    }
}
