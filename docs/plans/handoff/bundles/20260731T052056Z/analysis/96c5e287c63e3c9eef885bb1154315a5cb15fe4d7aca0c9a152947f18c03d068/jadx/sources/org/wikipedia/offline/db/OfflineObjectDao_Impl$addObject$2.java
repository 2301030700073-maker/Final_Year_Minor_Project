package org.wikipedia.offline.db;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.Service;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OfflineObjectDao_Impl$addObject$2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ String $lang;
    public final /* synthetic */ String $pageTitle;
    public final /* synthetic */ String $path;
    public final /* synthetic */ String $url;
    public int label;
    public final /* synthetic */ OfflineObjectDao_Impl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OfflineObjectDao_Impl$addObject$2(OfflineObjectDao_Impl offlineObjectDao_Impl, String str, String str2, String str3, String str4, Continuation continuation) {
        super(1, continuation);
        this.this$0 = offlineObjectDao_Impl;
        this.$url = str;
        this.$lang = str2;
        this.$path = str3;
        this.$pageTitle = str4;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = this.$path;
        String str2 = this.$pageTitle;
        return new OfflineObjectDao_Impl$addObject$2(this.this$0, this.$url, this.$lang, str, str2, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (Service.CC.addObject$suspendImpl(this.this$0, this.$url, this.$lang, this.$path, this.$pageTitle, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
