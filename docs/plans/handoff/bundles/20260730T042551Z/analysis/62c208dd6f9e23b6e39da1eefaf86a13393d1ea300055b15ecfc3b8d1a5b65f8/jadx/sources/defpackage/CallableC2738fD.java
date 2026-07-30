package defpackage;

import java.util.concurrent.Callable;

/* renamed from: fD, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final /* synthetic */ class CallableC2738fD implements Callable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f12860do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f12861do;

    public /* synthetic */ CallableC2738fD(Object obj, int i) {
        this.f12860do = i;
        this.f12861do = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x007e A[Catch: IOException | Exception -> 0x0086, TRY_LEAVE, TryCatch #0 {IOException | Exception -> 0x0086, blocks: (B:7:0x003a, B:18:0x007e), top: B:6:0x003a }] */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    @Override // java.util.concurrent.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object call() {
        /*
            r7 = this;
            int r0 = r7.f12860do
            r1 = 0
            switch(r0) {
                case 0: goto L8;
                default: goto L6;
            }
        L6:
            goto L87
        L8:
            java.lang.Object r0 = r7.f12861do
            gD r0 = (defpackage.C2797gD) r0
            hD r0 = r0.f13078do
            mD r2 = r0.f13265do
            lD r0 = r0.f13264do
            xd r2 = (defpackage.C3988xd) r2
            r2.getClass()
            jc$do r3 = defpackage.C3162jc.f13733do
            r3.getClass()
            java.lang.String r3 = defpackage.C3162jc.Cdo.m7145if()
            java.lang.String r4 = "threadName"
            defpackage.C0173Do.m399new(r3, r4)
            java.lang.String r4 = "Firebase Blocking Thread #"
            boolean r3 = defpackage.EF.k(r3, r4)
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r3)
            boolean r3 = r3.booleanValue()
            if (r3 != 0) goto L3a
            gc r3 = defpackage.C2818gc.f13191do
            r3.mo585new()
        L3a:
            java.util.HashMap r3 = defpackage.C3988xd.m8655for(r0)     // Catch: java.lang.Throwable -> L86
            HQ r4 = r2.f16590do     // Catch: java.lang.Throwable -> L86
            r4.getClass()     // Catch: java.lang.Throwable -> L86
            Bm r4 = new Bm     // Catch: java.lang.Throwable -> L86
            java.lang.String r2 = r2.f16591do     // Catch: java.lang.Throwable -> L86
            r4.<init>(r2, r3)     // Catch: java.lang.Throwable -> L86
            java.lang.String r2 = "User-Agent"
            java.lang.String r5 = "Crashlytics Android SDK/19.2.1"
            java.util.HashMap r6 = r4.f280do     // Catch: java.lang.Throwable -> L86
            r6.put(r2, r5)     // Catch: java.lang.Throwable -> L86
            java.lang.String r2 = "X-CRASHLYTICS-DEVELOPER-TOKEN"
            java.lang.String r5 = "470fa2b4ae81cd56ecbcda9735803434cec591fa"
            java.util.HashMap r6 = r4.f280do     // Catch: java.lang.Throwable -> L86
            r6.put(r2, r5)     // Catch: java.lang.Throwable -> L86
            defpackage.C3988xd.m8654do(r4, r0)     // Catch: java.lang.Throwable -> L86
            r3.toString()     // Catch: java.lang.Throwable -> L86
            Fm r0 = r4.m215if()     // Catch: java.lang.Throwable -> L86
            int r2 = r0.f1084do     // Catch: java.lang.Throwable -> L86
            r3 = 200(0xc8, float:2.8E-43)
            if (r2 == r3) goto L7b
            r3 = 201(0xc9, float:2.82E-43)
            if (r2 == r3) goto L7b
            r3 = 202(0xca, float:2.83E-43)
            if (r2 == r3) goto L7b
            r3 = 203(0xcb, float:2.84E-43)
            if (r2 != r3) goto L79
            goto L7b
        L79:
            r2 = 0
            goto L7c
        L7b:
            r2 = 1
        L7c:
            if (r2 == 0) goto L86
            java.lang.String r0 = r0.f1085do     // Catch: java.lang.Throwable -> L86
            org.json.JSONObject r2 = new org.json.JSONObject
            r2.<init>(r0)
            r1 = r2
        L86:
            return r1
        L87:
            java.lang.Object r0 = r7.f12861do
            md r0 = (defpackage.C3340md) r0
            monitor-enter(r0)
            ry<am> r2 = r0.f14371do     // Catch: java.lang.Throwable -> La9
            java.lang.Object r2 = r2.get()     // Catch: java.lang.Throwable -> La9
            am r2 = (defpackage.C0710am) r2     // Catch: java.lang.Throwable -> La9
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> La9
            ry<FJ> r5 = r0.f14372if     // Catch: java.lang.Throwable -> La9
            java.lang.Object r5 = r5.get()     // Catch: java.lang.Throwable -> La9
            FJ r5 = (defpackage.FJ) r5     // Catch: java.lang.Throwable -> La9
            java.lang.String r5 = r5.mo81do()     // Catch: java.lang.Throwable -> La9
            r2.m3156catch(r3, r5)     // Catch: java.lang.Throwable -> La9
            monitor-exit(r0)     // Catch: java.lang.Throwable -> La9
            return r1
        La9:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> La9
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.CallableC2738fD.call():java.lang.Object");
    }
}
