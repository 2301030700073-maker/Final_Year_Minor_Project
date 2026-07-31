package com.braze.managers;

import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class n0 {
    public static final String b() {
        return "Error getting required SDK debugging fields in SdkDebugManager. Disabling SDK debugging.";
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x002a A[Catch: JSONException -> 0x001d, TryCatch #0 {JSONException -> 0x001d, blocks: (B:33:0x0012, B:4:0x0022, B:6:0x002a, B:7:0x0030, B:9:0x0036, B:10:0x0040, B:12:0x0066, B:16:0x0081, B:18:0x0085, B:20:0x0091, B:31:0x0070), top: B:32:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0036 A[Catch: JSONException -> 0x001d, TryCatch #0 {JSONException -> 0x001d, blocks: (B:33:0x0012, B:4:0x0022, B:6:0x002a, B:7:0x0030, B:9:0x0036, B:10:0x0040, B:12:0x0066, B:16:0x0081, B:18:0x0085, B:20:0x0091, B:31:0x0070), top: B:32:0x0012 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.braze.managers.o0 a(final org.json.JSONObject r14, boolean r15) {
        /*
            r13 = this;
            java.lang.String r0 = "expiration_time"
            java.lang.String r1 = "authorization_code"
            java.lang.String r2 = "jsonData"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r2)
            com.braze.managers.o0 r2 = new com.braze.managers.o0
            r2.<init>()
            r3 = 1
            r4 = 0
            if (r15 != 0) goto L21
            java.lang.String r15 = "enabled"
            boolean r15 = r14.getBoolean(r15)     // Catch: org.json.JSONException -> L1d
            if (r15 == 0) goto L1b
            goto L21
        L1b:
            r15 = r4
            goto L22
        L1d:
            r14 = move-exception
            r7 = r14
            goto La4
        L21:
            r15 = r3
        L22:
            r2.f127a = r15     // Catch: org.json.JSONException -> L1d
            boolean r15 = r14.has(r1)     // Catch: org.json.JSONException -> L1d
            if (r15 == 0) goto L30
            java.lang.String r15 = r14.getString(r1)     // Catch: org.json.JSONException -> L1d
            r2.c = r15     // Catch: org.json.JSONException -> L1d
        L30:
            boolean r15 = r14.has(r0)     // Catch: org.json.JSONException -> L1d
            if (r15 == 0) goto L40
            long r0 = r14.getLong(r0)     // Catch: org.json.JSONException -> L1d
            java.lang.Long r15 = java.lang.Long.valueOf(r0)     // Catch: org.json.JSONException -> L1d
            r2.b = r15     // Catch: org.json.JSONException -> L1d
        L40:
            java.lang.String r15 = "batching_config"
            org.json.JSONObject r15 = r14.getJSONObject(r15)     // Catch: org.json.JSONException -> L1d
            java.lang.String r0 = "flush_interval_size"
            long r0 = r15.getLong(r0)     // Catch: org.json.JSONException -> L1d
            r2.d = r0     // Catch: org.json.JSONException -> L1d
            java.lang.String r0 = "flush_interval_seconds"
            long r0 = r15.getLong(r0)     // Catch: org.json.JSONException -> L1d
            r2.e = r0     // Catch: org.json.JSONException -> L1d
            java.lang.String r0 = "max_payload_size"
            long r0 = r15.getLong(r0)     // Catch: org.json.JSONException -> L1d
            r2.f = r0     // Catch: org.json.JSONException -> L1d
            long r5 = r2.d     // Catch: org.json.JSONException -> L1d
            r7 = 0
            int r15 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r15 <= 0) goto L70
            long r5 = r2.e     // Catch: org.json.JSONException -> L1d
            int r15 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r15 <= 0) goto L70
            int r15 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r15 > 0) goto L81
        L70:
            com.braze.support.BrazeLogger r4 = com.braze.support.BrazeLogger.INSTANCE     // Catch: org.json.JSONException -> L1d
            com.braze.managers.n0$$ExternalSyntheticLambda0 r9 = new com.braze.managers.n0$$ExternalSyntheticLambda0     // Catch: org.json.JSONException -> L1d
            r9.<init>()     // Catch: org.json.JSONException -> L1d
            r10 = 7
            r11 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r5 = r13
            com.braze.support.BrazeLogger.brazelog$default(r4, r5, r6, r7, r8, r9, r10, r11)     // Catch: org.json.JSONException -> L1d
            r4 = r3
        L81:
            java.lang.Long r14 = r2.b     // Catch: org.json.JSONException -> L1d
            if (r14 == 0) goto La2
            long r14 = r14.longValue()     // Catch: org.json.JSONException -> L1d
            long r0 = com.braze.support.DateTimeUtils.nowInSeconds()     // Catch: org.json.JSONException -> L1d
            int r14 = (r14 > r0 ? 1 : (r14 == r0 ? 0 : -1))
            if (r14 >= 0) goto La2
            com.braze.support.BrazeLogger r5 = com.braze.support.BrazeLogger.INSTANCE     // Catch: org.json.JSONException -> L1d
            com.braze.managers.n0$$ExternalSyntheticLambda1 r10 = new com.braze.managers.n0$$ExternalSyntheticLambda1     // Catch: org.json.JSONException -> L1d
            r10.<init>()     // Catch: org.json.JSONException -> L1d
            r11 = 7
            r12 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r6 = r13
            com.braze.support.BrazeLogger.brazelog$default(r5, r6, r7, r8, r9, r10, r11, r12)     // Catch: org.json.JSONException -> L1d
            goto Lb4
        La2:
            r3 = r4
            goto Lb4
        La4:
            com.braze.support.BrazeLogger r4 = com.braze.support.BrazeLogger.INSTANCE
            com.braze.support.BrazeLogger$Priority r6 = com.braze.support.BrazeLogger.Priority.E
            com.braze.managers.n0$$ExternalSyntheticLambda2 r9 = new com.braze.managers.n0$$ExternalSyntheticLambda2
            r9.<init>()
            r10 = 4
            r11 = 0
            r8 = 0
            r5 = r13
            com.braze.support.BrazeLogger.brazelog$default(r4, r5, r6, r7, r8, r9, r10, r11)
        Lb4:
            if (r3 == 0) goto Lbb
            com.braze.managers.o0 r2 = new com.braze.managers.o0
            r2.<init>()
        Lbb:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.braze.managers.n0.a(org.json.JSONObject, boolean):com.braze.managers.o0");
    }

    public static final String a(JSONObject jSONObject) {
        return "sdkDebuggerObject contains invalid values. Disabling SDK debugging. " + jSONObject;
    }

    public static final String a() {
        return "SDK Debugger expiration time is in the past. Disabling SDK debugging.";
    }
}
