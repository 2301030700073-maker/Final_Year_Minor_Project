package com.braze.communication.dust;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* loaded from: classes2.dex */
public final class b extends ContinuationImpl {

    /* renamed from: a, reason: collision with root package name */
    public h f14a;
    public /* synthetic */ Object b;
    public final /* synthetic */ h c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(h hVar, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.c = hVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.c.a(this);
    }
}
