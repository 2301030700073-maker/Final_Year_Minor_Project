package com.braze.communication.dust;

import com.braze.i;
import com.braze.managers.x;
import java.net.HttpURLConnection;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;

/* loaded from: classes2.dex */
public final class g extends SuspendLambda implements Function2 {

    /* renamed from: a, reason: collision with root package name */
    public Ref.ObjectRef f19a;
    public Ref.ObjectRef b;
    public int c;
    public /* synthetic */ Object d;
    public final /* synthetic */ h e;
    public final /* synthetic */ x f;
    public final /* synthetic */ String g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(h hVar, x xVar, String str, Continuation continuation) {
        super(2, continuation);
        this.e = hVar;
        this.f = xVar;
        this.g = str;
    }

    public static final String a(String str) {
        return i.a("Starting DUST stream to ", str);
    }

    public static final String b() {
        return "Caught unexpected exception listening to DUST stream";
    }

    public static final String c() {
        return "Stream connection job cancelled";
    }

    public static final String d() {
        return "Closing stream connection data";
    }

    public static final String e() {
        return "Stream job finished";
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        g gVar = new g(this.e, this.f, this.g, continuation);
        gVar.d = obj;
        return gVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((g) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0112, code lost:
    
        if (r0 == null) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0173, code lost:
    
        com.braze.support.BrazeLogger.brazelog$default(com.braze.support.BrazeLogger.INSTANCE, com.braze.communication.dust.h.b, (com.braze.support.BrazeLogger.Priority) null, (java.lang.Throwable) null, false, new com.braze.communication.dust.g$$ExternalSyntheticLambda6(), 14, (java.lang.Object) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0187, code lost:
    
        return kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0170, code lost:
    
        r0.disconnect();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x016e, code lost:
    
        if (r0 != null) goto L62;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x012f A[Catch: all -> 0x0125, TryCatch #3 {all -> 0x0125, blocks: (B:8:0x0018, B:9:0x00ea, B:19:0x0129, B:21:0x012f, B:24:0x0142, B:67:0x0061), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0142 A[Catch: all -> 0x0125, TRY_LEAVE, TryCatch #3 {all -> 0x0125, blocks: (B:8:0x0018, B:9:0x00ea, B:19:0x0129, B:21:0x012f, B:24:0x0142, B:67:0x0061), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01a0  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r4v6, types: [T, java.net.HttpURLConnection] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r24) {
        /*
            Method dump skipped, instructions count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.braze.communication.dust.g.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final String a(Ref.ObjectRef objectRef) {
        return "DUST stream response code " + ((HttpURLConnection) objectRef.element).getResponseCode();
    }

    public static final String a() {
        return "Stream job coroutine no longer active";
    }
}
