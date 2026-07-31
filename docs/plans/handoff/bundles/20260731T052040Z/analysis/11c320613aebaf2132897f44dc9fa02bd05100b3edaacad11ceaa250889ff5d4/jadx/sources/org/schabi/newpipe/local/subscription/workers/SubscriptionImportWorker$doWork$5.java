package org.schabi.newpipe.local.subscription.workers;

import android.widget.Toast;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SubscriptionImportWorker$doWork$5 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ SubscriptionImportWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubscriptionImportWorker$doWork$5(SubscriptionImportWorker subscriptionImportWorker, Continuation continuation) {
        super(2, continuation);
        this.this$0 = subscriptionImportWorker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SubscriptionImportWorker$doWork$5(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        SubscriptionImportWorker$doWork$5 subscriptionImportWorker$doWork$5 = (SubscriptionImportWorker$doWork$5) create((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.INSTANCE;
        subscriptionImportWorker$doWork$5.invokeSuspend(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        if (this.label != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        Toast.makeText(this.this$0.context, R.string.subscriptions_import_unsuccessful, 0).show();
        return Unit.INSTANCE;
    }
}
