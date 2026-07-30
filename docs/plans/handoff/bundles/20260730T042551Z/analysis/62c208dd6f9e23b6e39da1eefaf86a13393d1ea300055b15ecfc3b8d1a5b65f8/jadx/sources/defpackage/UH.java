package defpackage;

import android.adservices.topics.GetTopicsRequest;
import android.adservices.topics.TopicsManager;
import android.annotation.SuppressLint;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class UH extends AbstractC3134j6 {

    /* renamed from: do, reason: not valid java name */
    public final TopicsManager f3856do;

    @InterfaceC0761bd(c = "androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon", f = "TopicsManagerImplCommon.kt", l = {22}, m = "getTopics$suspendImpl")
    /* renamed from: UH$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0620Ya {

        /* renamed from: do, reason: not valid java name */
        public UH f3857do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public /* synthetic */ Object f3858do;

        /* renamed from: for, reason: not valid java name */
        public int f3859for;

        public Cdo(InterfaceC0576Wa<? super Cdo> interfaceC0576Wa) {
            super(interfaceC0576Wa);
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            this.f3858do = obj;
            this.f3859for |= Integer.MIN_VALUE;
            return UH.m2370while(UH.this, null, this);
        }
    }

    public UH(TopicsManager topicsManager) {
        this.f3856do = topicsManager;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x007f A[LOOP:0: B:11:0x0079->B:13:0x007f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* renamed from: while, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m2370while(defpackage.UH r7, defpackage.C0630Yk r8, defpackage.InterfaceC0576Wa<? super defpackage.C0652Zk> r9) {
        /*
            boolean r0 = r9 instanceof defpackage.UH.Cdo
            if (r0 == 0) goto L13
            r0 = r9
            UH$do r0 = (defpackage.UH.Cdo) r0
            int r1 = r0.f3859for
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f3859for = r1
            goto L18
        L13:
            UH$do r0 = new UH$do
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f3858do
            tb r1 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
            int r2 = r0.f3859for
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            UH r7 = r0.f3857do
            defpackage.C3645ro.m8017synchronized(r9)
            goto L62
        L29:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L31:
            defpackage.C3645ro.m8017synchronized(r9)
            android.adservices.topics.GetTopicsRequest r8 = r7.mo2127throw(r8)
            r0.f3857do = r7
            r0.f3859for = r3
            U6 r9 = new U6
            Wa r2 = defpackage.C3645ro.m8008package(r0)
            r9.<init>(r3, r2)
            r9.m2359static()
            js r2 = new js
            r2.<init>(r3)
            ab r3 = defpackage.C3645ro.m8000for(r9)
            android.adservices.topics.TopicsManager r4 = r7.f3856do
            r4.getTopics(r8, r2, r3)
            java.lang.Object r9 = r9.m2358return()
            if (r9 != r1) goto L5f
            defpackage.C3850vF.m8455native(r0)
        L5f:
            if (r9 != r1) goto L62
            return r1
        L62:
            android.adservices.topics.GetTopicsResponse r9 = (android.adservices.topics.GetTopicsResponse) r9
            r7.getClass()
            java.lang.String r7 = "response"
            defpackage.C0173Do.m401try(r9, r7)
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            java.util.List r8 = r9.getTopics()
            java.util.Iterator r8 = r8.iterator()
        L79:
            boolean r9 = r8.hasNext()
            if (r9 == 0) goto L9b
            java.lang.Object r9 = r8.next()
            android.adservices.topics.Topic r9 = (android.adservices.topics.Topic) r9
            PH r6 = new PH
            long r1 = r9.getTaxonomyVersion()
            long r3 = r9.getModelVersion()
            int r5 = r9.getTopicId()
            r0 = r6
            r0.<init>(r1, r3, r5)
            r7.add(r6)
            goto L79
        L9b:
            Zk r8 = new Zk
            r8.<init>(r7)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.UH.m2370while(UH, Yk, Wa):java.lang.Object");
    }

    @Override // defpackage.AbstractC3134j6
    /* renamed from: break, reason: not valid java name */
    public Object mo2371break(C0630Yk c0630Yk, InterfaceC0576Wa<? super C0652Zk> interfaceC0576Wa) {
        return m2370while(this, c0630Yk, interfaceC0576Wa);
    }

    /* renamed from: throw */
    public GetTopicsRequest mo2127throw(C0630Yk c0630Yk) {
        C0173Do.m401try(c0630Yk, "request");
        GetTopicsRequest build = new GetTopicsRequest.Builder().setAdsSdkName(c0630Yk.m2946do()).build();
        C0173Do.m399new(build, "Builder()\n            .s…ame)\n            .build()");
        return build;
    }
}
