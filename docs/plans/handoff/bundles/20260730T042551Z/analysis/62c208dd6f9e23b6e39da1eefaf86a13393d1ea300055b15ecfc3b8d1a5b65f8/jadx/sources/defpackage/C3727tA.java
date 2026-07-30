package defpackage;

/* renamed from: tA, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3727tA {

    /* renamed from: do, reason: not valid java name */
    public final D9 f15630do;

    /* renamed from: if, reason: not valid java name */
    public final D9 f15631if;

    public C3727tA(D9 d9, D9 d92) {
        this.f15630do = d9;
        this.f15631if = d92;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004e A[Catch: JSONException -> 0x00a8, TRY_ENTER, TRY_LEAVE, TryCatch #1 {JSONException -> 0x00a8, blocks: (B:5:0x0013, B:7:0x002a, B:8:0x0036, B:13:0x004e, B:22:0x0062, B:24:0x006b, B:26:0x0075, B:28:0x0079, B:30:0x0090, B:31:0x0097, B:34:0x0098, B:35:0x009f, B:37:0x00a0, B:38:0x00a7), top: B:4:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006b A[Catch: JSONException -> 0x00a8, TryCatch #1 {JSONException -> 0x00a8, blocks: (B:5:0x0013, B:7:0x002a, B:8:0x0036, B:13:0x004e, B:22:0x0062, B:24:0x006b, B:26:0x0075, B:28:0x0079, B:30:0x0090, B:31:0x0097, B:34:0x0098, B:35:0x009f, B:37:0x00a0, B:38:0x00a7), top: B:4:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a0 A[SYNTHETIC] */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.C3486p4 m8221do(defpackage.E9 r13) {
        /*
            r12 = this;
            java.lang.String r0 = ""
            long r1 = r13.f739do
            java.util.HashSet r3 = new java.util.HashSet
            r3.<init>()
            r4 = 0
            r5 = 0
        Lb:
            org.json.JSONArray r6 = r13.f744if
            int r7 = r6.length()
            if (r5 >= r7) goto Lb1
            org.json.JSONObject r6 = r6.getJSONObject(r5)     // Catch: org.json.JSONException -> La8
            java.lang.String r7 = "rolloutId"
            java.lang.String r7 = r6.getString(r7)     // Catch: org.json.JSONException -> La8
            java.lang.String r8 = "affectedParameterKeys"
            org.json.JSONArray r8 = r6.getJSONArray(r8)     // Catch: org.json.JSONException -> La8
            int r9 = r8.length()     // Catch: org.json.JSONException -> La8
            r10 = 1
            if (r9 <= r10) goto L36
            java.lang.String r9 = "Rollout has multiple affected parameter keys.Only the first key will be included in RolloutsState. rolloutId: %s, affectedParameterKeys: %s"
            r11 = 2
            java.lang.Object[] r11 = new java.lang.Object[r11]     // Catch: org.json.JSONException -> La8
            r11[r4] = r7     // Catch: org.json.JSONException -> La8
            r11[r10] = r8     // Catch: org.json.JSONException -> La8
            java.lang.String.format(r9, r11)     // Catch: org.json.JSONException -> La8
        L36:
            java.lang.String r8 = r8.optString(r4, r0)     // Catch: org.json.JSONException -> La8
            D9 r9 = r12.f15630do     // Catch: org.json.JSONException -> La8
            E9 r9 = r9.m353for()     // Catch: org.json.JSONException -> La8
            r11 = 0
            if (r9 != 0) goto L45
        L43:
            r9 = r11
            goto L4b
        L45:
            org.json.JSONObject r9 = r9.f745if     // Catch: org.json.JSONException -> L43
            java.lang.String r9 = r9.getString(r8)     // Catch: org.json.JSONException -> L43
        L4b:
            if (r9 == 0) goto L4e
            goto L62
        L4e:
            D9 r9 = r12.f15631if     // Catch: org.json.JSONException -> La8
            E9 r9 = r9.m353for()     // Catch: org.json.JSONException -> La8
            if (r9 != 0) goto L57
            goto L5d
        L57:
            org.json.JSONObject r9 = r9.f745if     // Catch: org.json.JSONException -> L5d
            java.lang.String r11 = r9.getString(r8)     // Catch: org.json.JSONException -> L5d
        L5d:
            if (r11 == 0) goto L61
            r9 = r11
            goto L62
        L61:
            r9 = r0
        L62:
            int r11 = defpackage.AbstractC3492pA.f14890do     // Catch: org.json.JSONException -> La8
            n4$do r11 = new n4$do     // Catch: org.json.JSONException -> La8
            r11.<init>()     // Catch: org.json.JSONException -> La8
            if (r7 == 0) goto La0
            r11.f14444do = r7     // Catch: org.json.JSONException -> La8
            java.lang.String r7 = "variantId"
            java.lang.String r6 = r6.getString(r7)     // Catch: org.json.JSONException -> La8
            if (r6 == 0) goto L98
            r11.f14446if = r6     // Catch: org.json.JSONException -> La8
            if (r8 == 0) goto L90
            r11.f14445for = r8     // Catch: org.json.JSONException -> La8
            r11.f14447new = r9     // Catch: org.json.JSONException -> La8
            r11.f14443do = r1     // Catch: org.json.JSONException -> La8
            byte r6 = r11.f14442do     // Catch: org.json.JSONException -> La8
            r6 = r6 | r10
            byte r6 = (byte) r6     // Catch: org.json.JSONException -> La8
            r11.f14442do = r6     // Catch: org.json.JSONException -> La8
            n4 r6 = r11.m7545do()     // Catch: org.json.JSONException -> La8
            r3.add(r6)     // Catch: org.json.JSONException -> La8
            int r5 = r5 + 1
            goto Lb
        L90:
            java.lang.NullPointerException r13 = new java.lang.NullPointerException     // Catch: org.json.JSONException -> La8
            java.lang.String r0 = "Null parameterKey"
            r13.<init>(r0)     // Catch: org.json.JSONException -> La8
            throw r13     // Catch: org.json.JSONException -> La8
        L98:
            java.lang.NullPointerException r13 = new java.lang.NullPointerException     // Catch: org.json.JSONException -> La8
            java.lang.String r0 = "Null variantId"
            r13.<init>(r0)     // Catch: org.json.JSONException -> La8
            throw r13     // Catch: org.json.JSONException -> La8
        La0:
            java.lang.NullPointerException r13 = new java.lang.NullPointerException     // Catch: org.json.JSONException -> La8
            java.lang.String r0 = "Null rolloutId"
            r13.<init>(r0)     // Catch: org.json.JSONException -> La8
            throw r13     // Catch: org.json.JSONException -> La8
        La8:
            r13 = move-exception
            Bi r0 = new Bi
            java.lang.String r1 = "Exception parsing rollouts metadata to create RolloutsState."
            r0.<init>(r1, r13)
            throw r0
        Lb1:
            p4 r13 = new p4
            r13.<init>(r3)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3727tA.m8221do(E9):p4");
    }
}
