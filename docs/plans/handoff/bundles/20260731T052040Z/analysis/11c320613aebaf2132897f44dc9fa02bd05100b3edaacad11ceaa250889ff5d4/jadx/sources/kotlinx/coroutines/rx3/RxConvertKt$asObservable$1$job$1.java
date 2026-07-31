package kotlinx.coroutines.rx3;

import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.FocusInteraction$Unfocus;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.HoverInteraction$Exit;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.platform.MotionDurationScaleImpl;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import androidx.work.WorkerKt$$ExternalSyntheticLambda2;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.internal.operators.observable.ObservableCreate$CreateEmitter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.database.AppDatabase;
import org.schabi.newpipe.database.subscription.SubscriptionDAO_Impl;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.extractor.channel.ChannelInfo;
import org.schabi.newpipe.local.subscription.SubscriptionManager;
import org.schabi.newpipe.local.subscription.workers.SubscriptionImportWorker;
import org.schabi.newpipe.util.image.ImageStrategy;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RxConvertKt$asObservable$1$job$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ ObservableEmitter $emitter;
    final /* synthetic */ Flow $this_asObservable;
    private /* synthetic */ Object L$0;
    int label;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: kotlinx.coroutines.rx3.RxConvertKt$asObservable$1$job$1$1, reason: invalid class name */
    public final class AnonymousClass1 implements FlowCollector {
        public final /* synthetic */ Object $emitter;
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass1(Object obj, int i) {
            this.$r8$classId = i;
            this.$emitter = obj;
        }

        @Override // kotlinx.coroutines.flow.FlowCollector
        public final Object emit(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            Object obj2 = this.$emitter;
            switch (i) {
                case 0:
                    ((ObservableCreate$CreateEmitter) ((ObservableEmitter) obj2)).onNext(obj);
                    break;
                case 1:
                    Interaction interaction = (Interaction) obj;
                    SnapshotStateList snapshotStateList = (SnapshotStateList) obj2;
                    if (interaction instanceof HoverInteraction$Enter) {
                        snapshotStateList.add(interaction);
                        break;
                    } else if (interaction instanceof HoverInteraction$Exit) {
                        snapshotStateList.remove(((HoverInteraction$Exit) interaction).enter);
                        break;
                    } else if (interaction instanceof FocusInteraction$Focus) {
                        snapshotStateList.add(interaction);
                        break;
                    } else if (interaction instanceof FocusInteraction$Unfocus) {
                        snapshotStateList.remove(((FocusInteraction$Unfocus) interaction).focus);
                        break;
                    } else if (interaction instanceof PressInteraction.Press) {
                        snapshotStateList.add(interaction);
                        break;
                    } else if (interaction instanceof PressInteraction.Release) {
                        snapshotStateList.remove(((PressInteraction.Release) interaction).press);
                        break;
                    } else if (interaction instanceof PressInteraction.Cancel) {
                        snapshotStateList.remove(((PressInteraction.Cancel) interaction).press);
                        break;
                    }
                    break;
                case 2:
                    ((MotionDurationScaleImpl) obj2)._scaleFactor$delegate.setFloatValue(((Number) obj).floatValue());
                    break;
                default:
                    List<Pair> list = (List) obj;
                    SubscriptionManager subscriptionManager = ((SubscriptionImportWorker) obj2).subscriptionManager;
                    subscriptionManager.getClass();
                    list.getClass();
                    ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                    for (Pair pair : list) {
                        SubscriptionEntity.Companion companion = SubscriptionEntity.Companion;
                        ChannelInfo channelInfo = (ChannelInfo) pair.getFirst();
                        companion.getClass();
                        channelInfo.getClass();
                        int serviceId = channelInfo.getServiceId();
                        String url = channelInfo.getUrl();
                        String name = channelInfo.getName();
                        List avatars = channelInfo.getAvatars();
                        avatars.getClass();
                        arrayList.add(new SubscriptionEntity(serviceId, url, name, ImageStrategy.imageListToDbUrl(avatars), Long.valueOf(channelInfo.getSubscriberCount()), channelInfo.getDescription(), 129));
                    }
                    SubscriptionDAO_Impl subscriptionDAO_Impl = subscriptionManager.subscriptionTable;
                    subscriptionDAO_Impl.getClass();
                    AppDatabase appDatabase = subscriptionManager.database;
                    WorkerKt$$ExternalSyntheticLambda2 workerKt$$ExternalSyntheticLambda2 = new WorkerKt$$ExternalSyntheticLambda2(16, list, subscriptionManager, arrayList);
                    appDatabase.getClass();
                    appDatabase.runInTransaction(new Worker$$ExternalSyntheticLambda0(workerKt$$ExternalSyntheticLambda2, 15));
                    break;
            }
            return unit;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RxConvertKt$asObservable$1$job$1(Flow flow, ObservableEmitter observableEmitter, Continuation continuation) {
        super(2, continuation);
        this.$this_asObservable = flow;
        this.$emitter = observableEmitter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        RxConvertKt$asObservable$1$job$1 rxConvertKt$asObservable$1$job$1 = new RxConvertKt$asObservable$1$job$1(this.$this_asObservable, this.$emitter, continuation);
        rxConvertKt$asObservable$1$job$1.L$0 = obj;
        return rxConvertKt$asObservable$1$job$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RxConvertKt$asObservable$1$job$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Flow flow = this.$this_asObservable;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$emitter, 0);
                this.L$0 = coroutineScope;
                this.label = 1;
                Object collect = flow.collect(anonymousClass1, this);
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (collect == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            ((ObservableCreate$CreateEmitter) this.$emitter).onComplete();
        } catch (Throwable th) {
            boolean z = th instanceof CancellationException;
            ObservableEmitter observableEmitter = this.$emitter;
            if (z) {
                ((ObservableCreate$CreateEmitter) observableEmitter).onComplete();
            } else if (!((ObservableCreate$CreateEmitter) observableEmitter).tryOnError(th)) {
                CloseableKt.handleUndeliverableException(th, coroutineScope.getCoroutineContext());
            }
        }
        return Unit.INSTANCE;
    }
}
