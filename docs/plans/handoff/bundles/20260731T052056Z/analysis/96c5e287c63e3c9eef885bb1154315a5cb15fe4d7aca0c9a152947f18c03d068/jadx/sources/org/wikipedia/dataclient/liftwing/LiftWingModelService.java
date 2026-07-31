package org.wikipedia.dataclient.liftwing;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.Body;
import retrofit2.http.POST;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u001a\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007À\u0006\u0003"}, d2 = {"Lorg/wikipedia/dataclient/liftwing/LiftWingModelService;", "", "Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request;", "body", "Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Response;", "getDescriptionSuggestion", "(Lorg/wikipedia/dataclient/liftwing/DescriptionSuggestion$Request;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public interface LiftWingModelService {
    @POST("models/article-descriptions:predict")
    Object getDescriptionSuggestion(@Body DescriptionSuggestion$Request descriptionSuggestion$Request, Continuation<? super DescriptionSuggestion$Response> continuation);
}
