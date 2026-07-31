package com.hcaptcha.sdk;

import android.content.Context;
import android.util.Log;
import android.webkit.JavascriptInterface;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HCaptchaDebugInfo implements Serializable {
    public static String sDebugInfo = "[]";
    public static String sSysDebug;
    public final transient WeakReference contextRef;

    public HCaptchaDebugInfo(Context context) {
        if (context != null) {
            this.contextRef = new WeakReference(context);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("context is marked non-null but is null");
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0065 A[EDGE_INSN: B:17:0x0065->B:18:0x0065 BREAK  A[LOOP:0: B:4:0x0020->B:21:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[LOOP:0: B:4:0x0020->B:21:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList debugInfo(java.lang.String r11, java.lang.String r12) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = 8
            r0.<init>(r1)
            java.lang.String r1 = "MD5"
            java.security.MessageDigest r2 = java.security.MessageDigest.getInstance(r1)
            java.security.MessageDigest r3 = java.security.MessageDigest.getInstance(r1)
            java.security.MessageDigest r1 = java.security.MessageDigest.getInstance(r1)
            dalvik.system.DexFile r4 = new dalvik.system.DexFile
            r4.<init>(r12)
            java.util.Enumeration r12 = r4.entries()     // Catch: java.lang.Throwable -> L4e
            r5 = 0
            r6 = r5
        L20:
            boolean r7 = r12.hasMoreElements()     // Catch: java.lang.Throwable -> L4e
            r8 = 1
            if (r7 == 0) goto L65
            java.lang.Object r7 = r12.nextElement()     // Catch: java.lang.Throwable -> L4e
            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Throwable -> L4e
            java.lang.String r9 = "com.google.android."
            boolean r9 = r7.startsWith(r9)     // Catch: java.lang.Throwable -> L4e
            java.lang.String r10 = "UTF-8"
            if (r9 != 0) goto L59
            java.lang.String r9 = "android."
            boolean r9 = r7.startsWith(r9)     // Catch: java.lang.Throwable -> L4e
            if (r9 == 0) goto L40
            goto L59
        L40:
            boolean r9 = r7.startsWith(r11)     // Catch: java.lang.Throwable -> L4e
            if (r9 == 0) goto L51
            byte[] r7 = r7.getBytes(r10)     // Catch: java.lang.Throwable -> L4e
            r3.update(r7)     // Catch: java.lang.Throwable -> L4e
            goto L60
        L4e:
            r11 = move-exception
            goto Le7
        L51:
            byte[] r7 = r7.getBytes(r10)     // Catch: java.lang.Throwable -> L4e
            r1.update(r7)     // Catch: java.lang.Throwable -> L4e
            goto L60
        L59:
            byte[] r7 = r7.getBytes(r10)     // Catch: java.lang.Throwable -> L4e
            r2.update(r7)     // Catch: java.lang.Throwable -> L4e
        L60:
            int r6 = r6 + r8
            r7 = 512(0x200, float:7.17E-43)
            if (r6 <= r7) goto L20
        L65:
            r4.close()
            java.math.BigInteger r11 = new java.math.BigInteger
            byte[] r12 = r2.digest()
            r11.<init>(r8, r12)
            java.lang.Object[] r12 = new java.lang.Object[r8]
            r12[r5] = r11
            java.lang.String r11 = "%032x"
            java.lang.String r12 = java.lang.String.format(r11, r12)
            java.lang.String r2 = "sys_"
            java.lang.String r12 = r2.concat(r12)
            r0.add(r12)
            java.math.BigInteger r12 = new java.math.BigInteger
            byte[] r1 = r1.digest()
            r12.<init>(r8, r1)
            java.lang.Object[] r1 = new java.lang.Object[r8]
            r1[r5] = r12
            java.lang.String r12 = java.lang.String.format(r11, r1)
            java.lang.String r1 = "deps_"
            java.lang.String r12 = r1.concat(r12)
            r0.add(r12)
            java.math.BigInteger r12 = new java.math.BigInteger
            byte[] r1 = r3.digest()
            r12.<init>(r8, r1)
            java.lang.Object[] r1 = new java.lang.Object[r8]
            r1[r5] = r12
            java.lang.String r11 = java.lang.String.format(r11, r1)
            java.lang.String r12 = "app_"
            java.lang.String r11 = r12.concat(r11)
            r0.add(r11)
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            java.lang.String r12 = "aver_"
            r11.<init>(r12)
            java.lang.String r12 = android.os.Build.VERSION.RELEASE
            r11.append(r12)
            java.lang.String r11 = r11.toString()
            r0.add(r11)
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            java.lang.String r12 = "sdk_"
            r11.<init>(r12)
            r12 = 46
            r1 = 95
            java.lang.String r2 = "4.4.0_56"
            java.lang.String r12 = r2.replace(r12, r1)
            r11.append(r12)
            java.lang.String r11 = r11.toString()
            r0.add(r11)
            return r0
        Le7:
            r4.close()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hcaptcha.sdk.HCaptchaDebugInfo.debugInfo(java.lang.String, java.lang.String):java.util.ArrayList");
    }

    public static HashMap roBuildProps() {
        HashMap hashMap = new HashMap();
        Process process = null;
        try {
            process = new ProcessBuilder("/system/bin/getprop").start();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream(), "UTF-8"));
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        bufferedReader.close();
                        process.destroy();
                        return hashMap;
                    }
                    if (readLine.endsWith("]")) {
                        sb.replace(0, sb.length() == 0 ? 0 : sb.length() - 1, readLine);
                        String[] split = sb.toString().split("]: \\[");
                        String substring = split[0].substring(1);
                        if (substring.startsWith("ro")) {
                            hashMap.put(substring, split[1].substring(0, r4.length() - 2));
                        }
                    } else {
                        sb.append(readLine);
                    }
                }
            } finally {
            }
        } catch (Throwable th) {
            if (process != null) {
                process.destroy();
            }
            throw th;
        }
    }

    public final boolean equals(Object obj) {
        return obj == this || (obj instanceof HCaptchaDebugInfo);
    }

    @JavascriptInterface
    public String getDebugInfo() {
        String str = sDebugInfo;
        if (str != null) {
            return str;
        }
        synchronized (this) {
            try {
                String str2 = sDebugInfo;
                if (str2 != null) {
                    return str2;
                }
                Context context = (Context) this.contextRef.get();
                if (context == null) {
                    Log.w("JSDI", "Context is null, cannot build debugInfo");
                    return "[]";
                }
                try {
                    String writeValueAsString = new ObjectMapper(0).writeValueAsString(debugInfo(context.getPackageName(), context.getPackageCodePath()));
                    sDebugInfo = writeValueAsString;
                    return writeValueAsString;
                } catch (IOException | NoSuchAlgorithmException unused) {
                    Log.d("JSDI", "Cannot build debugInfo");
                    return "[]";
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @JavascriptInterface
    public String getSysDebug() {
        String str = sSysDebug;
        if (str != null) {
            return str;
        }
        synchronized (this) {
            String str2 = sSysDebug;
            if (str2 != null) {
                return str2;
            }
            try {
                String writeValueAsString = new ObjectMapper(0).writeValueAsString(roBuildProps());
                sSysDebug = writeValueAsString;
                return writeValueAsString;
            } catch (IOException unused) {
                Log.d("JSDI", "Cannot build sysDebug");
                return "{}";
            }
        }
    }

    public final int hashCode() {
        return 1;
    }

    public final String toString() {
        return "HCaptchaDebugInfo(contextRef=" + this.contextRef + ")";
    }
}
