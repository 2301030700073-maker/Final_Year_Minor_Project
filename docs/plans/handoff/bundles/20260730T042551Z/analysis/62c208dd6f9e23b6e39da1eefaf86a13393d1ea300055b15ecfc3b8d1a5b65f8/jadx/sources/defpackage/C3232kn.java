package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;

/* renamed from: kn, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3232kn implements InterfaceC0712ao {

    /* renamed from: do, reason: not valid java name */
    public static final Pattern f14041do = Pattern.compile("[^\\p{Alnum}]");

    /* renamed from: if, reason: not valid java name */
    public static final String f14042if = Pattern.quote("/");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0247Ha f14043do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0271Ic f14044do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f14045do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0788c4 f14046do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f14047do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3227ki f14048do;

    public C3232kn(Context context, String str, InterfaceC3227ki interfaceC3227ki, C0271Ic c0271Ic) {
        if (str == null) {
            throw new IllegalArgumentException("appIdentifier must not be null");
        }
        this.f14045do = context;
        this.f14047do = str;
        this.f14048do = interfaceC3227ki;
        this.f14044do = c0271Ic;
        this.f14043do = new C0247Ha();
    }

    /* renamed from: do, reason: not valid java name */
    public final synchronized String m7278do(SharedPreferences sharedPreferences, String str) {
        String lowerCase;
        lowerCase = f14041do.matcher(UUID.randomUUID().toString()).replaceAll(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).toLowerCase(Locale.US);
        sharedPreferences.edit().putString("crashlytics.installation.id", lowerCase).putString("firebase.installation.id", str).apply();
        return lowerCase;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001c A[Catch: all -> 0x0016, TRY_LEAVE, TryCatch #0 {all -> 0x0016, blocks: (B:3:0x0001, B:5:0x0007, B:7:0x000b, B:12:0x001c, B:16:0x0020, B:18:0x0037, B:20:0x003f, B:22:0x0043, B:23:0x005b, B:25:0x005e, B:27:0x0066, B:28:0x00c7, B:31:0x0078, B:33:0x008c, B:37:0x0098, B:38:0x00a6), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0020 A[Catch: all -> 0x0016, TRY_ENTER, TryCatch #0 {all -> 0x0016, blocks: (B:3:0x0001, B:5:0x0007, B:7:0x000b, B:12:0x001c, B:16:0x0020, B:18:0x0037, B:20:0x003f, B:22:0x0043, B:23:0x005b, B:25:0x005e, B:27:0x0066, B:28:0x00c7, B:31:0x0078, B:33:0x008c, B:37:0x0098, B:38:0x00a6), top: B:2:0x0001 }] */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized defpackage.InterfaceC0712ao.Cdo m7279for() {
        /*
            r6 = this;
            monitor-enter(r6)
            c4 r0 = r6.f14046do     // Catch: java.lang.Throwable -> L16
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L19
            java.lang.String r0 = r0.f8485if     // Catch: java.lang.Throwable -> L16
            if (r0 != 0) goto L14
            Ic r0 = r6.f14044do     // Catch: java.lang.Throwable -> L16
            boolean r0 = r0.m958do()     // Catch: java.lang.Throwable -> L16
            if (r0 == 0) goto L14
            goto L19
        L14:
            r0 = 0
            goto L1a
        L16:
            r0 = move-exception
            goto Ld0
        L19:
            r0 = 1
        L1a:
            if (r0 != 0) goto L20
            c4 r0 = r6.f14046do     // Catch: java.lang.Throwable -> L16
            monitor-exit(r6)
            return r0
        L20:
            android.content.Context r0 = r6.f14045do     // Catch: java.lang.Throwable -> L16
            java.lang.String r3 = "com.google.firebase.crashlytics"
            android.content.SharedPreferences r0 = r0.getSharedPreferences(r3, r2)     // Catch: java.lang.Throwable -> L16
            java.lang.String r3 = "firebase.installation.id"
            r4 = 0
            java.lang.String r3 = r0.getString(r3, r4)     // Catch: java.lang.Throwable -> L16
            Ic r5 = r6.f14044do     // Catch: java.lang.Throwable -> L16
            boolean r5 = r5.m958do()     // Catch: java.lang.Throwable -> L16
            if (r5 == 0) goto L8a
            ei r1 = r6.m7280if(r2)     // Catch: java.lang.Throwable -> L16
            java.lang.String r2 = r1.f12697do     // Catch: java.lang.Throwable -> L16
            if (r2 != 0) goto L5e
            ei r1 = new ei     // Catch: java.lang.Throwable -> L16
            if (r3 != 0) goto L5a
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L16
            java.lang.String r5 = "SYN_"
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L16
            java.util.UUID r5 = java.util.UUID.randomUUID()     // Catch: java.lang.Throwable -> L16
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L16
            r2.append(r5)     // Catch: java.lang.Throwable -> L16
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L16
            goto L5b
        L5a:
            r2 = r3
        L5b:
            r1.<init>(r2, r4)     // Catch: java.lang.Throwable -> L16
        L5e:
            java.lang.String r2 = r1.f12697do     // Catch: java.lang.Throwable -> L16
            boolean r2 = j$.util.Objects.equals(r2, r3)     // Catch: java.lang.Throwable -> L16
            if (r2 == 0) goto L78
            java.lang.String r2 = "crashlytics.installation.id"
            java.lang.String r0 = r0.getString(r2, r4)     // Catch: java.lang.Throwable -> L16
            c4 r2 = new c4     // Catch: java.lang.Throwable -> L16
            java.lang.String r3 = r1.f12697do     // Catch: java.lang.Throwable -> L16
            java.lang.String r1 = r1.f12698if     // Catch: java.lang.Throwable -> L16
            r2.<init>(r0, r3, r1)     // Catch: java.lang.Throwable -> L16
            r6.f14046do = r2     // Catch: java.lang.Throwable -> L16
            goto Lc7
        L78:
            java.lang.String r2 = r1.f12697do     // Catch: java.lang.Throwable -> L16
            java.lang.String r0 = r6.m7278do(r0, r2)     // Catch: java.lang.Throwable -> L16
            c4 r2 = new c4     // Catch: java.lang.Throwable -> L16
            java.lang.String r3 = r1.f12697do     // Catch: java.lang.Throwable -> L16
            java.lang.String r1 = r1.f12698if     // Catch: java.lang.Throwable -> L16
            r2.<init>(r0, r3, r1)     // Catch: java.lang.Throwable -> L16
            r6.f14046do = r2     // Catch: java.lang.Throwable -> L16
            goto Lc7
        L8a:
            if (r3 == 0) goto L95
            java.lang.String r5 = "SYN_"
            boolean r3 = r3.startsWith(r5)     // Catch: java.lang.Throwable -> L16
            if (r3 == 0) goto L95
            goto L96
        L95:
            r1 = 0
        L96:
            if (r1 == 0) goto La6
            java.lang.String r1 = "crashlytics.installation.id"
            java.lang.String r0 = r0.getString(r1, r4)     // Catch: java.lang.Throwable -> L16
            c4 r1 = new c4     // Catch: java.lang.Throwable -> L16
            r1.<init>(r0, r4, r4)     // Catch: java.lang.Throwable -> L16
            r6.f14046do = r1     // Catch: java.lang.Throwable -> L16
            goto Lc7
        La6:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L16
            java.lang.String r2 = "SYN_"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L16
            java.util.UUID r2 = java.util.UUID.randomUUID()     // Catch: java.lang.Throwable -> L16
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L16
            r1.append(r2)     // Catch: java.lang.Throwable -> L16
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L16
            java.lang.String r0 = r6.m7278do(r0, r1)     // Catch: java.lang.Throwable -> L16
            c4 r1 = new c4     // Catch: java.lang.Throwable -> L16
            r1.<init>(r0, r4, r4)     // Catch: java.lang.Throwable -> L16
            r6.f14046do = r1     // Catch: java.lang.Throwable -> L16
        Lc7:
            c4 r0 = r6.f14046do     // Catch: java.lang.Throwable -> L16
            j$.util.Objects.toString(r0)     // Catch: java.lang.Throwable -> L16
            c4 r0 = r6.f14046do     // Catch: java.lang.Throwable -> L16
            monitor-exit(r6)
            return r0
        Ld0:
            monitor-exit(r6)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3232kn.m7279for():ao$do");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:0|1|(7:12|13|4|5|6|7|8)|3|4|5|6|7|8) */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.C2706ei m7280if(boolean r6) {
        /*
            r5 = this;
            jc$do r0 = defpackage.C3162jc.f13733do
            r0.getClass()
            hc r1 = new hc
            r1.<init>(r0)
            ic r0 = defpackage.C2936ic.f13527do
            defpackage.C3162jc.Cdo.m7144do(r1, r0)
            r0 = 10000(0x2710, double:4.9407E-320)
            ki r2 = r5.f14048do
            r3 = 0
            if (r6 == 0) goto L27
            XV r6 = r2.mo7155do()     // Catch: java.lang.Exception -> L27
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Exception -> L27
            java.lang.Object r6 = defpackage.LG.m1318if(r6, r0, r4)     // Catch: java.lang.Exception -> L27
            fo r6 = (defpackage.AbstractC2771fo) r6     // Catch: java.lang.Exception -> L27
            java.lang.String r6 = r6.mo6509do()     // Catch: java.lang.Exception -> L27
            goto L28
        L27:
            r6 = r3
        L28:
            XV r2 = r2.mo7159if()     // Catch: java.lang.Exception -> L35
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Exception -> L35
            java.lang.Object r0 = defpackage.LG.m1318if(r2, r0, r4)     // Catch: java.lang.Exception -> L35
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Exception -> L35
            r3 = r0
        L35:
            ei r0 = new ei
            r0.<init>(r3, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3232kn.m7280if(boolean):ei");
    }

    /* renamed from: new, reason: not valid java name */
    public final String m7281new() {
        String str;
        C0247Ha c0247Ha = this.f14043do;
        Context context = this.f14045do;
        synchronized (c0247Ha) {
            if (c0247Ha.f1359do == null) {
                String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
                if (installerPackageName == null) {
                    installerPackageName = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                c0247Ha.f1359do = installerPackageName;
            }
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED.equals(c0247Ha.f1359do) ? null : c0247Ha.f1359do;
        }
        return str;
    }
}
