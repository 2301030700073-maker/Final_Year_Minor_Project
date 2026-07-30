package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import androidx.work.Constraints;
import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintsState;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.SendChannel;

/* compiled from: WorkConstraintsTracker.kt */
/* loaded from: classes.dex */
final class NetworkRequestConstraintController$track$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Constraints $constraints;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ NetworkRequestConstraintController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NetworkRequestConstraintController$track$1(Constraints constraints, NetworkRequestConstraintController networkRequestConstraintController, Continuation continuation) {
        super(2, continuation);
        this.$constraints = constraints;
        this.this$0 = networkRequestConstraintController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        NetworkRequestConstraintController$track$1 networkRequestConstraintController$track$1 = new NetworkRequestConstraintController$track$1(this.$constraints, this.this$0, continuation);
        networkRequestConstraintController$track$1.L$0 = obj;
        return networkRequestConstraintController$track$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope producerScope, Continuation continuation) {
        return ((NetworkRequestConstraintController$track$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [android.net.ConnectivityManager$NetworkCallback, androidx.work.impl.constraints.NetworkRequestConstraintController$track$1$networkCallback$1] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        final Job launch$default;
        String str;
        ConnectivityManager connectivityManager;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final ProducerScope producerScope = (ProducerScope) this.L$0;
            NetworkRequest requiredNetworkRequest = this.$constraints.getRequiredNetworkRequest();
            if (requiredNetworkRequest != null) {
                launch$default = BuildersKt__Builders_commonKt.launch$default(producerScope, null, null, new NetworkRequestConstraintController$track$1$job$1(this.this$0, producerScope, null), 3, null);
                final ?? r4 = new ConnectivityManager.NetworkCallback() { // from class: androidx.work.impl.constraints.NetworkRequestConstraintController$track$1$networkCallback$1
                    @Override // android.net.ConnectivityManager.NetworkCallback
                    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                        String str2;
                        Intrinsics.checkNotNullParameter(network, "network");
                        Intrinsics.checkNotNullParameter(networkCapabilities, "networkCapabilities");
                        Job.DefaultImpls.cancel$default(Job.this, null, 1, null);
                        Logger logger = Logger.get();
                        str2 = WorkConstraintsTrackerKt.TAG;
                        logger.debug(str2, "NetworkRequestConstraintController onCapabilitiesChanged callback");
                        producerScope.mo2833trySendJP2dKIU(ConstraintsState.ConstraintsMet.INSTANCE);
                    }

                    @Override // android.net.ConnectivityManager.NetworkCallback
                    public void onLost(Network network) {
                        String str2;
                        Intrinsics.checkNotNullParameter(network, "network");
                        Job.DefaultImpls.cancel$default(Job.this, null, 1, null);
                        Logger logger = Logger.get();
                        str2 = WorkConstraintsTrackerKt.TAG;
                        logger.debug(str2, "NetworkRequestConstraintController onLost callback");
                        producerScope.mo2833trySendJP2dKIU(new ConstraintsState.ConstraintsNotMet(7));
                    }
                };
                Logger logger = Logger.get();
                str = WorkConstraintsTrackerKt.TAG;
                logger.debug(str, "NetworkRequestConstraintController register callback");
                connectivityManager = this.this$0.connManager;
                connectivityManager.registerNetworkCallback(requiredNetworkRequest, (ConnectivityManager.NetworkCallback) r4);
                final NetworkRequestConstraintController networkRequestConstraintController = this.this$0;
                Function0 function0 = new Function0() { // from class: androidx.work.impl.constraints.NetworkRequestConstraintController$track$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m2570invoke();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m2570invoke() {
                        String str2;
                        ConnectivityManager connectivityManager2;
                        Logger logger2 = Logger.get();
                        str2 = WorkConstraintsTrackerKt.TAG;
                        logger2.debug(str2, "NetworkRequestConstraintController unregister callback");
                        connectivityManager2 = NetworkRequestConstraintController.this.connManager;
                        connectivityManager2.unregisterNetworkCallback(r4);
                    }
                };
                this.label = 1;
                if (ProduceKt.awaitClose(producerScope, function0, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                SendChannel.DefaultImpls.close$default(producerScope.getChannel(), null, 1, null);
                return Unit.INSTANCE;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
