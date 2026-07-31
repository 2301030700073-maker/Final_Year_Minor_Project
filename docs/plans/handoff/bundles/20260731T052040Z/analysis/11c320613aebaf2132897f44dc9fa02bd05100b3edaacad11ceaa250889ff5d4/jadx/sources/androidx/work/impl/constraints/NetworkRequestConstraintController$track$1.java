package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import android.net.NetworkRequest;
import android.os.Build;
import androidx.work.Constraints;
import androidx.work.Logger$LogcatLogger;
import androidx.work.NetworkType;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.model.WorkTagDao_Impl$$ExternalSyntheticLambda1;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerCoroutine;
import kotlinx.coroutines.channels.ProducerScope;
import okhttp3.Handshake$$ExternalSyntheticLambda0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda0;
import us.shandian.giga.service.DownloadManagerService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NetworkRequestConstraintController$track$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Constraints $constraints;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ NetworkRequestConstraintController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkRequestConstraintController$track$1(Constraints constraints, NetworkRequestConstraintController networkRequestConstraintController, Continuation continuation) {
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
    public final Object invoke(Object obj, Object obj2) {
        return ((NetworkRequestConstraintController$track$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Function0 connectPlan$$ExternalSyntheticLambda0;
        int i = this.label;
        Unit unit = Unit.INSTANCE;
        int i2 = 1;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return unit;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        ProducerScope producerScope = (ProducerScope) this.L$0;
        NetworkRequest requiredNetworkRequest = this.$constraints.getRequiredNetworkRequest();
        if (requiredNetworkRequest == null) {
            NetworkType networkType = this.$constraints.requiredNetworkType;
            networkType.getClass();
            if (networkType == NetworkType.NOT_REQUIRED) {
                requiredNetworkRequest = null;
            } else {
                NetworkRequest.Builder removeCapability = new NetworkRequest.Builder().addCapability(12).addCapability(16).removeCapability(15).removeCapability(13);
                if (Build.VERSION.SDK_INT < 30 || networkType != NetworkType.TEMPORARILY_UNMETERED) {
                    int ordinal = networkType.ordinal();
                    if (ordinal == 2) {
                        removeCapability = removeCapability.addCapability(11);
                    } else if (ordinal == 3) {
                        removeCapability = removeCapability.addCapability(18);
                    } else if (ordinal == 4) {
                        removeCapability = removeCapability.addTransportType(0);
                    }
                    requiredNetworkRequest = removeCapability.build();
                } else {
                    requiredNetworkRequest = removeCapability.addCapability(25).build();
                }
            }
        }
        if (requiredNetworkRequest == null) {
            ProducerCoroutine producerCoroutine = (ProducerCoroutine) producerScope;
            producerCoroutine.getClass();
            producerCoroutine.close(null);
            return unit;
        }
        WorkTagDao_Impl$$ExternalSyntheticLambda1 workTagDao_Impl$$ExternalSyntheticLambda1 = new WorkTagDao_Impl$$ExternalSyntheticLambda1(JobKt.launch$default(producerScope, null, null, new NetworkRequestConstraintController$track$1$timeoutJob$1(this.this$0, producerScope, null), 3), producerScope, i2);
        if (Build.VERSION.SDK_INT >= 30) {
            SharedNetworkCallback sharedNetworkCallback = SharedNetworkCallback.INSTANCE;
            ConnectivityManager connectivityManager = this.this$0.connManager;
            sharedNetworkCallback.getClass();
            connectPlan$$ExternalSyntheticLambda0 = SharedNetworkCallback.addCallback(connectivityManager, requiredNetworkRequest, workTagDao_Impl$$ExternalSyntheticLambda1);
        } else {
            int i3 = DownloadManagerService.AnonymousClass1.$r8$clinit;
            ConnectivityManager connectivityManager2 = this.this$0.connManager;
            DownloadManagerService.AnonymousClass1 anonymousClass1 = new DownloadManagerService.AnonymousClass1(workTagDao_Impl$$ExternalSyntheticLambda1);
            Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
            try {
                Logger$LogcatLogger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController register callback");
                connectivityManager2.registerNetworkCallback(requiredNetworkRequest, anonymousClass1);
                ref$BooleanRef.element = true;
            } catch (RuntimeException e) {
                if (!StringsKt__StringsJVMKt.endsWith(e.getClass().getName(), "TooManyRequestsException", false)) {
                    throw e;
                }
                Logger$LogcatLogger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController couldn't register callback", e);
                workTagDao_Impl$$ExternalSyntheticLambda1.invoke(new ConstraintsState.ConstraintsNotMet(7));
            }
            connectPlan$$ExternalSyntheticLambda0 = new ConnectPlan$$ExternalSyntheticLambda0(8, ref$BooleanRef, connectivityManager2, anonymousClass1);
        }
        Handshake$$ExternalSyntheticLambda0 handshake$$ExternalSyntheticLambda0 = new Handshake$$ExternalSyntheticLambda0(2, connectPlan$$ExternalSyntheticLambda0);
        this.label = 1;
        Object awaitClose = ProduceKt.awaitClose(producerScope, handshake$$ExternalSyntheticLambda0, this);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return awaitClose == coroutineSingletons ? coroutineSingletons : unit;
    }
}
