package org.wikimedia.testkitchen;

import androidx.compose.animation.core.Animation;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import org.wikimedia.testkitchen.config.DestinationEventService;
import org.wikimedia.testkitchen.event.Event;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EventProcessor$sendEventsToDestination$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ DestinationEventService $destinationEventService;
    public final /* synthetic */ List $pendingValidEvents;
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ Request.Builder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ EventProcessor$sendEventsToDestination$1(Request.Builder builder, DestinationEventService destinationEventService, List list, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = builder;
        this.$destinationEventService = destinationEventService;
        this.$pendingValidEvents = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                return new EventProcessor$sendEventsToDestination$1(this.this$0, this.$destinationEventService, this.$pendingValidEvents, continuation, 0);
            default:
                return new EventProcessor$sendEventsToDestination$1(this.this$0, this.$destinationEventService, this.$pendingValidEvents, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((EventProcessor$sendEventsToDestination$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = Unit.INSTANCE;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 != 0) {
                    if (i2 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj2;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                DefaultScheduler defaultScheduler = Dispatchers.Default;
                DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
                EventProcessor$sendEventsToDestination$1 eventProcessor$sendEventsToDestination$1 = new EventProcessor$sendEventsToDestination$1(this.this$0, this.$destinationEventService, this.$pendingValidEvents, null, 1);
                this.label = 1;
                return AwaitKt.withContext(defaultIoScheduler, eventProcessor$sendEventsToDestination$1, this) == coroutineSingletons ? coroutineSingletons : obj2;
            default:
                Request.Builder builder = this.this$0;
                ByteString.Companion companion = (ByteString.Companion) builder.body;
                Object obj3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                List list = this.$pendingValidEvents;
                try {
                    if (i3 == 0) {
                        ResultKt.throwOnFailure(obj);
                        TestKitchenAdapter testKitchenAdapter = (TestKitchenAdapter) builder.headers;
                        DestinationEventService destinationEventService = this.$destinationEventService;
                        this.label = 1;
                        if (testKitchenAdapter.sendEvents(destinationEventService, list, this) == obj3) {
                            obj2 = obj3;
                        }
                    } else {
                        if (i3 != 1) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    return obj2;
                } catch (SocketTimeoutException e) {
                    companion.error(Animation.CC.m(list.size(), "Network error while sending ", " events. Adding back to queue."), e);
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        builder.addToQueue((Event) it.next(), false, false);
                    }
                    return obj2;
                } catch (UnknownHostException e2) {
                    companion.error(Animation.CC.m(list.size(), "Network error while sending ", " events. Adding back to queue."), e2);
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        builder.addToQueue((Event) it2.next(), false, false);
                    }
                    return obj2;
                } catch (Exception e3) {
                    companion.error(Animation.CC.m(list.size(), "Failed to send ", " events."), e3);
                    return obj2;
                }
        }
    }
}
