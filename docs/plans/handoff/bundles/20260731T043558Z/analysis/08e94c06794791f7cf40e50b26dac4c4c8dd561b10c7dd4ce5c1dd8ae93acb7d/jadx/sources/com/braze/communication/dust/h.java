package com.braze.communication.dust;

import com.braze.coroutine.BrazeCoroutineScope;
import com.braze.i;
import com.braze.managers.x;
import com.braze.support.BrazeLogger;
import com.braze.support.JsonUtils;
import java.util.concurrent.CancellationException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Job;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class h {
    public static final String b = BrazeLogger.getBrazeLogTag((Class<?>) h.class);

    /* renamed from: a, reason: collision with root package name */
    public Job f20a;

    public static final String a(String str) {
        return com.braze.b.a("Received new line: '", str, '\'');
    }

    public static final String b(String str) {
        return i.a("Got un-actionable stream line:\n", str);
    }

    public static final String c(String str) {
        return i.a("Failed to parse data line:\n", str);
    }

    public static final String d(String str) {
        return i.a("Got call to startStream() for url ", str);
    }

    public static final String d(h hVar) {
        return "Started stream job " + hVar.f20a;
    }

    public static final String a(h hVar) {
        return "Got call to endStream(). Stream job: " + hVar.f20a;
    }

    public final void a(final String url, x ingestor, boolean z) {
        Job launch$default;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(ingestor, "ingestor");
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.h$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.d(url);
            }
        }, 7, (Object) null);
        if (!z || this.f20a == null) {
            BuildersKt__BuildersKt.runBlocking$default(null, new e(this, null), 1, null);
            launch$default = BuildersKt__Builders_commonKt.launch$default(BrazeCoroutineScope.INSTANCE, null, null, new g(this, ingestor, url, null), 3, null);
            this.f20a = launch$default;
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.h$$ExternalSyntheticLambda13
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return h.d(h.this);
                }
            }, 7, (Object) null);
            return;
        }
        BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.h$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.c(h.this);
            }
        }, 7, (Object) null);
    }

    public final void b() {
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.h$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.a(h.this);
            }
        }, 7, (Object) null);
        Job job = this.f20a;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.f20a = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final String b(Ref.ObjectRef objectRef) {
        return "Recorded data type: " + ((String) objectRef.element);
    }

    public static final String b(h hVar) {
        return "Got call to endStreamAndJoin(). Stream job: " + hVar.f20a;
    }

    public static final String b(String str, String str2) {
        return "Not handling event: '" + str + "' and data: '" + str2 + '\'';
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002b  */
    /* JADX WARN: Type inference failed for: r0v14, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v17, types: [T, java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v3, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x009b -> B:10:0x00a0). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlinx.coroutines.CoroutineScope r26, kotlinx.coroutines.channels.ReceiveChannel r27, com.braze.managers.x r28, kotlin.coroutines.jvm.internal.ContinuationImpl r29) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.braze.communication.dust.h.a(kotlinx.coroutines.CoroutineScope, kotlinx.coroutines.channels.ReceiveChannel, com.braze.managers.x, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final String c(h hVar) {
        return "Not restarting stream since " + hVar.f20a + " is still active.";
    }

    public static final String a() {
        return "Waiting to consume new line";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final String a(Ref.ObjectRef objectRef) {
        return "Recorded event type: " + ((String) objectRef.element);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final String a(Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2) {
        return "Handling full event on blank line. lastEventType: '" + ((String) objectRef.element) + "' \ndata: '" + ((String) objectRef2.element) + '\'';
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            r13 = this;
            boolean r0 = r14 instanceof com.braze.communication.dust.b
            if (r0 == 0) goto L13
            r0 = r14
            com.braze.communication.dust.b r0 = (com.braze.communication.dust.b) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.braze.communication.dust.b r0 = new com.braze.communication.dust.b
            r0.<init>(r13, r14)
        L18:
            java.lang.Object r14 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L36
            if (r2 != r3) goto L2e
            com.braze.communication.dust.h r0 = r0.f14a
            kotlin.ResultKt.throwOnFailure(r14)
            goto L71
        L2e:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r0)
            throw r14
        L36:
            com.braze.communication.dust.h r2 = r0.f14a
            kotlin.ResultKt.throwOnFailure(r14)
            goto L61
        L3c:
            kotlin.ResultKt.throwOnFailure(r14)
            com.braze.support.BrazeLogger r5 = com.braze.support.BrazeLogger.INSTANCE
            java.lang.String r6 = com.braze.communication.dust.h.b
            com.braze.communication.dust.h$$ExternalSyntheticLambda14 r10 = new com.braze.communication.dust.h$$ExternalSyntheticLambda14
            r10.<init>()
            r11 = 14
            r12 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            com.braze.support.BrazeLogger.brazelog$default(r5, r6, r7, r8, r9, r10, r11, r12)
            kotlinx.coroutines.Job r14 = r13.f20a
            if (r14 == 0) goto L70
            r0.f14a = r13
            r0.d = r4
            java.lang.Object r14 = kotlinx.coroutines.JobKt.cancelAndJoin(r14, r0)
            if (r14 != r1) goto L60
            return r1
        L60:
            r2 = r13
        L61:
            r0.f14a = r2
            r0.d = r3
            r3 = 50
            java.lang.Object r14 = kotlinx.coroutines.DelayKt.delay(r3, r0)
            if (r14 != r1) goto L6e
            return r1
        L6e:
            r0 = r2
            goto L71
        L70:
            r0 = r13
        L71:
            r14 = 0
            r0.f20a = r14
            kotlin.Unit r14 = kotlin.Unit.INSTANCE
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.braze.communication.dust.h.a(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static void a(final String str, final String str2, Function1 function1) {
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        String str3 = b;
        BrazeLogger.brazelog$default(brazeLogger, str3, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.h$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.a(str, str2);
            }
        }, 14, (Object) null);
        if (Intrinsics.areEqual(str, "msg")) {
            try {
                final JSONObject jSONObject = new JSONObject(str2);
                BrazeLogger.brazelog$default(brazeLogger, str3, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.h$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h.a(jSONObject);
                    }
                }, 14, (Object) null);
                function1.invoke(com.braze.models.dust.c.f148a.a(jSONObject));
                return;
            } catch (Exception e) {
                BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, b, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.communication.dust.h$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h.c(str2);
                    }
                }, 8, (Object) null);
                return;
            }
        }
        BrazeLogger.brazelog$default(brazeLogger, str3, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.communication.dust.h$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return h.b(str, str2);
            }
        }, 14, (Object) null);
    }

    public static final String a(String str, String str2) {
        return "Got event '" + str + "' and data: '" + str2 + '\'';
    }

    public static final String a(JSONObject jSONObject) {
        return "Parsed dust message json to:\n" + JsonUtils.getPrettyPrintedString(jSONObject);
    }
}
