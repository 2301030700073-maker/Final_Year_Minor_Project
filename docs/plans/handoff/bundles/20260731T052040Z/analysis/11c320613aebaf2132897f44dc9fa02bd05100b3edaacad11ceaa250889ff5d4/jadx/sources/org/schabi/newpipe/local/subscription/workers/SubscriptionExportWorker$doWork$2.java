package org.schabi.newpipe.local.subscription.workers;

import android.net.Uri;
import java.io.OutputStream;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SubscriptionExportWorker$doWork$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ List<SubscriptionItem> $subscriptions;
    final /* synthetic */ Uri $uri;
    int label;
    final /* synthetic */ SubscriptionExportWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubscriptionExportWorker$doWork$2(SubscriptionExportWorker subscriptionExportWorker, Uri uri, List list, Continuation continuation) {
        super(2, continuation);
        this.this$0 = subscriptionExportWorker;
        this.$uri = uri;
        this.$subscriptions = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SubscriptionExportWorker$doWork$2(this.this$0, this.$uri, this.$subscriptions, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SubscriptionExportWorker$doWork$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        if (this.label != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        OutputStream openOutputStream = this.this$0.mAppContext.getContentResolver().openOutputStream(this.$uri, "wt");
        if (openOutputStream == null) {
            return null;
        }
        try {
            ImportExportJsonHelper.writeTo(this.$subscriptions, openOutputStream);
            openOutputStream.close();
            return Unit.INSTANCE;
        } finally {
        }
    }
}
