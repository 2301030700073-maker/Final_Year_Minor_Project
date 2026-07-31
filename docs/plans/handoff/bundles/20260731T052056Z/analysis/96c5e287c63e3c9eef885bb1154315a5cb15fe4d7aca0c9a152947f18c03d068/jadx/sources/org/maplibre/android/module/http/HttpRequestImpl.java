package org.maplibre.android.module.http;

import okhttp3.OkHttpClient;
import okhttp3.internal.connection.RealCall;
import org.maplibre.android.http.HttpRequest;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HttpRequestImpl implements HttpRequest {
    public static final OkHttpClient DEFAULT_CLIENT;
    public static OkHttpClient client;
    public static final String userAgentString;
    public RealCall call;

    /* JADX WARN: Removed duplicated region for block: B:25:0x00ae  */
    static {
        /*
            android.content.Context r0 = org.maplibre.android.MapLibre.getApplicationContext()
            r1 = 0
            android.content.pm.PackageManager r2 = r0.getPackageManager()     // Catch: java.lang.Exception -> L3b
            java.lang.String r3 = r0.getPackageName()     // Catch: java.lang.Exception -> L3b
            android.content.pm.PackageInfo r2 = r2.getPackageInfo(r3, r1)     // Catch: java.lang.Exception -> L3b
            java.lang.String r0 = r0.getPackageName()     // Catch: java.lang.Exception -> L3b
            java.lang.String r3 = r2.versionName     // Catch: java.lang.Exception -> L3b
            int r2 = r2.versionCode     // Catch: java.lang.Exception -> L3b
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L3b
            r4.<init>()     // Catch: java.lang.Exception -> L3b
            r4.append(r0)     // Catch: java.lang.Exception -> L3b
            java.lang.String r0 = "/"
            r4.append(r0)     // Catch: java.lang.Exception -> L3b
            r4.append(r3)     // Catch: java.lang.Exception -> L3b
            java.lang.String r0 = " ("
            r4.append(r0)     // Catch: java.lang.Exception -> L3b
            r4.append(r2)     // Catch: java.lang.Exception -> L3b
            java.lang.String r0 = ")"
            r4.append(r0)     // Catch: java.lang.Exception -> L3b
            java.lang.String r0 = r4.toString()     // Catch: java.lang.Exception -> L3b
            goto L41
        L3b:
            r0 = move-exception
            kotlin.text.UStringsKt.strictModeViolation(r0)
            java.lang.String r0 = ""
        L41:
            int r2 = android.os.Build.VERSION.SDK_INT
            java.lang.String[] r3 = android.os.Build.SUPPORTED_ABIS
            r3 = r3[r1]
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>(r0)
            java.lang.String r0 = " MapLibre Android/13.0.2 (6849681) Android/"
            r4.append(r0)
            r4.append(r2)
            java.lang.String r0 = " ("
            r4.append(r0)
            r4.append(r3)
            java.lang.String r0 = ")"
            r4.append(r0)
            java.lang.String r0 = r4.toString()
            int r2 = r0.length()
            r3 = r1
        L6a:
            if (r3 >= r2) goto La1
            int r4 = r0.codePointAt(r3)
            r5 = 127(0x7f, float:1.78E-43)
            r6 = 31
            if (r4 <= r6) goto L7e
            if (r4 >= r5) goto L7e
            int r4 = java.lang.Character.charCount(r4)
            int r3 = r3 + r4
            goto L6a
        L7e:
            okio.Buffer r4 = new okio.Buffer
            r4.<init>()
            r4.writeUtf8(r1, r3, r0)
        L86:
            if (r3 >= r2) goto L9d
            int r1 = r0.codePointAt(r3)
            if (r1 <= r6) goto L92
            if (r1 >= r5) goto L92
            r7 = r1
            goto L94
        L92:
            r7 = 63
        L94:
            r4.writeUtf8CodePoint(r7)
            int r1 = java.lang.Character.charCount(r1)
            int r3 = r3 + r1
            goto L86
        L9d:
            java.lang.String r0 = r4.readUtf8()
        La1:
            org.maplibre.android.module.http.HttpRequestImpl.userAgentString = r0
            okhttp3.OkHttpClient$Builder r0 = new okhttp3.OkHttpClient$Builder
            r0.<init>()
            okhttp3.Dispatcher r1 = new okhttp3.Dispatcher
            r1.<init>()
            monitor-enter(r1)
            r2 = 20
            r1.maxRequestsPerHost = r2     // Catch: java.lang.Throwable -> Lc4
            monitor-exit(r1)
            r2 = 7
            r3 = 0
            okhttp3.Dispatcher.promoteAndExecute$default(r1, r3, r3, r3, r2)
            r0.dispatcher = r1
            okhttp3.OkHttpClient r1 = new okhttp3.OkHttpClient
            r1.<init>(r0)
            org.maplibre.android.module.http.HttpRequestImpl.DEFAULT_CLIENT = r1
            org.maplibre.android.module.http.HttpRequestImpl.client = r1
            return
        Lc4:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.maplibre.android.module.http.HttpRequestImpl.<clinit>():void");
    }
}
