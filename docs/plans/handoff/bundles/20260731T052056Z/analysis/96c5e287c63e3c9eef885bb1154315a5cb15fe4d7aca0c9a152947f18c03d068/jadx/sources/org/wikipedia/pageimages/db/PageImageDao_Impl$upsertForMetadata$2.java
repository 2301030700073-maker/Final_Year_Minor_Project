package org.wikipedia.pageimages.db;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.Service;
import org.wikipedia.history.HistoryEntry;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageImageDao_Impl$upsertForMetadata$2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ String $description;
    public final /* synthetic */ HistoryEntry $entry;
    public final /* synthetic */ Double $geoLat;
    public final /* synthetic */ Double $geoLon;
    public final /* synthetic */ String $imageName;
    public int label;
    public final /* synthetic */ PageImageDao_Impl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageImageDao_Impl$upsertForMetadata$2(PageImageDao_Impl pageImageDao_Impl, HistoryEntry historyEntry, String str, String str2, Double d, Double d2, Continuation continuation) {
        super(1, continuation);
        this.this$0 = pageImageDao_Impl;
        this.$entry = historyEntry;
        this.$imageName = str;
        this.$description = str2;
        this.$geoLat = d;
        this.$geoLon = d2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Double d = this.$geoLat;
        Double d2 = this.$geoLon;
        return new PageImageDao_Impl$upsertForMetadata$2(this.this$0, this.$entry, this.$imageName, this.$description, d, d2, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (Service.CC.upsertForMetadata$suspendImpl(this.this$0, this.$entry, this.$imageName, this.$description, this.$geoLat, this.$geoLon, this) == coroutineSingletons) {
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
