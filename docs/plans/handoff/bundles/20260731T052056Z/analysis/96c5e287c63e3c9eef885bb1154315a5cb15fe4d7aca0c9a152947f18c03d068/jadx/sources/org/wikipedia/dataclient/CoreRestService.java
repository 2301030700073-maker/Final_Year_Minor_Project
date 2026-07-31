package org.wikipedia.dataclient;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import org.wikipedia.dataclient.growthtasks.GrowthImageSuggestion;
import org.wikipedia.dataclient.growthtasks.GrowthUserImpact;
import org.wikipedia.dataclient.restbase.DiffResponse;
import org.wikipedia.dataclient.restbase.EditCount;
import org.wikipedia.dataclient.restbase.Revision;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.PUT;
import retrofit2.http.Path;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J$\u0010\u0006\u001a\u00020\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\f\u001a\u00020\u000b2\b\b\u0001\u0010\t\u001a\u00020\b2\b\b\u0001\u0010\n\u001a\u00020\bH§@¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\b\u0001\u0010\u000e\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0010\u0010\u0011J$\u0010\u0015\u001a\u00020\u00142\b\b\u0001\u0010\t\u001a\u00020\b2\b\b\u0001\u0010\u0013\u001a\u00020\u0012H§@¢\u0006\u0004\b\u0015\u0010\u0016J\u001a\u0010\u001a\u001a\u00020\u00192\b\b\u0001\u0010\u0018\u001a\u00020\u0017H§@¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001cÀ\u0006\u0003"}, d2 = {"Lorg/wikipedia/dataclient/CoreRestService;", "", "", "oldRev", "newRev", "Lorg/wikipedia/dataclient/restbase/DiffResponse;", "getDiff", "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "title", "editType", "Lorg/wikipedia/dataclient/restbase/EditCount;", "getEditCount", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "rev", "Lorg/wikipedia/dataclient/restbase/Revision;", "getRevision", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$AddImageFeedbackBody;", "body", "", "addImageFeedback", "(Ljava/lang/String;Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$AddImageFeedbackBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "userId", "Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;", "getUserImpact", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public interface CoreRestService {
    @PUT("growthexperiments/v0/suggestions/addimage/feedback/{title}")
    Object addImageFeedback(@Path("title") String str, @Body GrowthImageSuggestion.AddImageFeedbackBody addImageFeedbackBody, Continuation<? super Unit> continuation);

    @GET("v1/revision/{oldRev}/compare/{newRev}")
    Object getDiff(@Path("oldRev") long j, @Path("newRev") long j2, Continuation<? super DiffResponse> continuation);

    @GET("v1/page/{title}/history/counts/{editType}")
    Object getEditCount(@Path("title") String str, @Path("editType") String str2, Continuation<? super EditCount> continuation);

    @GET("v1/revision/{rev}")
    Object getRevision(@Path("rev") long j, Continuation<? super Revision> continuation);

    @GET("growthexperiments/v0/user-impact/%23{userId}")
    Object getUserImpact(@Path("userId") int i, Continuation<? super GrowthUserImpact> continuation);
}
