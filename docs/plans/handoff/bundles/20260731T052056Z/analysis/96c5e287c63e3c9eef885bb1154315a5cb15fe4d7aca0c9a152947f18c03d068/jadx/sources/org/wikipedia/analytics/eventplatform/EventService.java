package org.wikipedia.analytics.eventplatform;

import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.POST;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J&\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u000e\b\u0001\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H§@¢\u0006\u0004\b\u0007\u0010\bJ&\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u000e\b\u0001\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H§@¢\u0006\u0004\b\t\u0010\bJ&\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u000e\b\u0001\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\n0\u0002H§@¢\u0006\u0004\b\u000b\u0010\bJ&\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u000e\b\u0001\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\n0\u0002H§@¢\u0006\u0004\b\f\u0010\b¨\u0006\rÀ\u0006\u0003"}, d2 = {"Lorg/wikipedia/analytics/eventplatform/EventService;", "", "", "Lorg/wikipedia/analytics/eventplatform/Event;", "events", "Lretrofit2/Response;", "", "postEventsHasty", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "postEvents", "Lorg/wikimedia/testkitchen/event/Event;", "postEventsHastyTk", "postEventsTk", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public interface EventService {
    @POST("/v1/events")
    Object postEvents(@Body List<Event> list, Continuation<? super Response<Unit>> continuation);

    @POST("/v1/events?hasty=true")
    Object postEventsHasty(@Body List<Event> list, Continuation<? super Response<Unit>> continuation);

    @POST("/v1/events?hasty=true")
    Object postEventsHastyTk(@Body List<org.wikimedia.testkitchen.event.Event> list, Continuation<? super Response<Unit>> continuation);

    @POST("/v1/events")
    Object postEventsTk(@Body List<org.wikimedia.testkitchen.event.Event> list, Continuation<? super Response<Unit>> continuation);
}
