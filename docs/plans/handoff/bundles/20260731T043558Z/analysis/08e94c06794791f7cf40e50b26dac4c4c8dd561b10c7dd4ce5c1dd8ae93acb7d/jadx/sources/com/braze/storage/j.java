package com.braze.storage;

import android.content.SharedPreferences;
import com.braze.support.BrazeLogger;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* loaded from: classes2.dex */
public final class j extends SuspendLambda implements Function2 {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f224a;
    public final /* synthetic */ p b;
    public final /* synthetic */ ArrayList c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(p pVar, ArrayList arrayList, Continuation continuation) {
        super(2, continuation);
        this.b = pVar;
        this.c = arrayList;
    }

    public static final String a(String str) {
        return com.braze.i.a("Removing card from storage with id: ", str);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        j jVar = new j(this.b, this.c, continuation);
        jVar.f224a = obj;
        return jVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((j) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.f224a;
        SharedPreferences.Editor edit = this.b.i.edit();
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            final String str = (String) it.next();
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) coroutineScope, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.j$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return j.a(str);
                }
            }, 7, (Object) null);
            edit.remove(str);
        }
        edit.apply();
        return Unit.INSTANCE;
    }
}
