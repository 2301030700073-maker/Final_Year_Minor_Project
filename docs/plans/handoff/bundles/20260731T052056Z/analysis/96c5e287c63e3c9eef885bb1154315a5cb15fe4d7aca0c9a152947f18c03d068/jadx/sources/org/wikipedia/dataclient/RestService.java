package org.wikipedia.dataclient;

import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import okhttp3.ResponseBody;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.dataclient.page.TalkPage;
import org.wikipedia.dataclient.restbase.Metrics;
import org.wikipedia.dataclient.restbase.PreviewRequest;
import org.wikipedia.dataclient.restbase.RbDefinition$Usage;
import org.wikipedia.dataclient.restbase.UserEdits;
import org.wikipedia.feed.aggregated.AggregatedFeedContent;
import org.wikipedia.feed.onthisday.OnThisDay;
import org.wikipedia.gallery.MediaList;
import org.wikipedia.readinglist.sync.SyncedReadingLists;
import org.wikipedia.settings.RemoteConfig$RemoteConfigImpl;
import retrofit2.Call;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000º\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001JV\u0010\n\u001a\u00020\t2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\b\n\u0010\u000bJ\\\u0010\r\u001a\b\u0012\u0004\u0012\u00020\t0\f2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\b\r\u0010\u000bJ,\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f0\u000e2\b\b\u0001\u0010\u0003\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\tH§@¢\u0006\u0004\b\u0013\u0010\u0014JJ\u0010\u0016\u001a\u00020\u00152\b\b\u0001\u0010\u0003\u001a\u00020\u00022\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\b\u0016\u0010\u0017J$\u0010\u0016\u001a\u00020\u00152\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0019\u001a\u00020\u0018H§@¢\u0006\u0004\b\u0016\u0010\u001aJ$\u0010\u001f\u001a\u00020\u001e2\b\b\u0001\u0010\u001c\u001a\u00020\u001b2\b\b\u0001\u0010\u001d\u001a\u00020\u001bH§@¢\u0006\u0004\b\u001f\u0010 J@\u0010$\u001a\u00020#2\n\b\u0001\u0010!\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u001d\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\"\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\b$\u0010%J!\u0010)\u001a\b\u0012\u0004\u0012\u00020(0'2\n\b\u0001\u0010&\u001a\u0004\u0018\u00010\u0002H'¢\u0006\u0004\b)\u0010*J!\u0010+\u001a\b\u0012\u0004\u0012\u00020(0'2\n\b\u0001\u0010&\u001a\u0004\u0018\u00010\u0002H'¢\u0006\u0004\b+\u0010*J!\u0010.\u001a\b\u0012\u0004\u0012\u00020-0'2\n\b\u0001\u0010,\u001a\u0004\u0018\u00010\u0002H'¢\u0006\u0004\b.\u0010*J-\u00102\u001a\b\u0012\u0004\u0012\u0002010'2\n\b\u0001\u0010&\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u00100\u001a\u0004\u0018\u00010/H'¢\u0006\u0004\b2\u00103J7\u00105\u001a\b\u0012\u0004\u0012\u00020(0'2\b\b\u0001\u00104\u001a\u00020\u00182\n\b\u0001\u0010&\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u00100\u001a\u0004\u0018\u00010/H'¢\u0006\u0004\b5\u00106J+\u00107\u001a\b\u0012\u0004\u0012\u00020(0'2\b\b\u0001\u00104\u001a\u00020\u00182\n\b\u0001\u0010&\u001a\u0004\u0018\u00010\u0002H'¢\u0006\u0004\b7\u00108J-\u0010:\u001a\b\u0012\u0004\u0012\u00020-0'2\n\b\u0001\u00109\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010,\u001a\u0004\u0018\u00010\u0002H'¢\u0006\u0004\b:\u0010;J+\u0010<\u001a\b\u0012\u0004\u0012\u00020-0'2\b\b\u0001\u00104\u001a\u00020\u00182\n\b\u0001\u0010,\u001a\u0004\u0018\u00010\u0002H'¢\u0006\u0004\b<\u00108J7\u0010?\u001a\b\u0012\u0004\u0012\u0002010'2\b\b\u0001\u00104\u001a\u00020\u00182\n\b\u0001\u0010&\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010>\u001a\u0004\u0018\u00010=H'¢\u0006\u0004\b?\u0010@J7\u0010D\u001a\b\u0012\u0004\u0012\u00020C0'2\b\b\u0001\u00104\u001a\u00020\u00182\n\b\u0001\u0010&\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010B\u001a\u0004\u0018\u00010AH'¢\u0006\u0004\bD\u0010EJ5\u0010G\u001a\b\u0012\u0004\u0012\u00020(0'2\b\b\u0001\u00104\u001a\u00020\u00182\b\b\u0001\u0010F\u001a\u00020\u00182\n\b\u0001\u0010&\u001a\u0004\u0018\u00010\u0002H'¢\u0006\u0004\bG\u0010HJ\u001c\u0010J\u001a\u00020I2\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\bJ\u0010\u0012J8\u0010O\u001a\u00020N2\b\b\u0001\u0010K\u001a\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010L\u001a\u00020\u00022\b\b\u0001\u0010M\u001a\u00020\u0002H§@¢\u0006\u0004\bO\u0010%J.\u0010R\u001a\u00020Q2\b\b\u0001\u0010P\u001a\u00020\u001b2\b\b\u0001\u0010L\u001a\u00020\u00022\b\b\u0001\u0010M\u001a\u00020\u0002H§@¢\u0006\u0004\bR\u0010SJ$\u0010W\u001a\u00020V2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010U\u001a\u00020TH§@¢\u0006\u0004\bW\u0010XJ\u0010\u0010Z\u001a\u00020YH§@¢\u0006\u0004\bZ\u0010\u0014¨\u0006[À\u0006\u0003"}, d2 = {"Lorg/wikipedia/dataclient/RestService;", "", "", "title", "referrerUrl", "cacheControl", "saveHeader", "langHeader", "titleHeader", "Lorg/wikipedia/dataclient/page/PageSummary;", "getPageSummary", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lretrofit2/Response;", "getSummaryResponse", "", "", "Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;", "getDefinition", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getRandomSummary", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lorg/wikipedia/gallery/MediaList;", "getMediaList", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "revision", "(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "month", "day", "Lorg/wikipedia/feed/onthisday/OnThisDay;", "getOnThisDay", "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "year", "lang", "Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;", "getFeedFeatured", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "token", "Lretrofit2/Call;", "", "setupReadingLists", "(Ljava/lang/String;)Lretrofit2/Call;", "tearDownReadingLists", "next", "Lorg/wikipedia/readinglist/sync/SyncedReadingLists;", "getReadingLists", "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;", "list", "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;", "createReadingList", "(Ljava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;)Lretrofit2/Call;", "listId", "updateReadingList", "(JLjava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;)Lretrofit2/Call;", "deleteReadingList", "(JLjava/lang/String;)Lretrofit2/Call;", "iso8601Date", "getReadingListChangesSince", "(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;", "getReadingListEntries", "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;", "entry", "addEntryToReadingList", "(JLjava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)Lretrofit2/Call;", "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntryBatch;", "batch", "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponseBatch;", "addEntriesToReadingList", "(JLjava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntryBatch;)Lretrofit2/Call;", "entryId", "deleteEntryFromReadingList", "(JJLjava/lang/String;)Lretrofit2/Call;", "Lorg/wikipedia/dataclient/page/TalkPage;", "getTalkPage", "wikiAuthority", "fromDate", "toDate", "Lorg/wikipedia/dataclient/restbase/Metrics;", "getArticleMetrics", "globalUserId", "Lorg/wikipedia/dataclient/restbase/UserEdits;", "getEditsPerGlobalUserMonthly", "(ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lorg/wikipedia/dataclient/restbase/PreviewRequest;", "body", "Lokhttp3/ResponseBody;", "getHtmlPreviewFromWikitext", "(Ljava/lang/String;Lorg/wikipedia/dataclient/restbase/PreviewRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;", "getConfiguration", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public interface RestService {
    @POST("data/lists/{id}/entries/batch")
    Call<SyncedReadingLists.RemoteIdResponseBatch> addEntriesToReadingList(@Path("id") long listId, @Query("csrf_token") String token, @Body SyncedReadingLists.RemoteReadingListEntryBatch batch);

    @POST("data/lists/{id}/entries/")
    Call<SyncedReadingLists.RemoteIdResponse> addEntryToReadingList(@Path("id") long listId, @Query("csrf_token") String token, @Body SyncedReadingLists.RemoteReadingListEntry entry);

    @POST("data/lists/")
    Call<SyncedReadingLists.RemoteIdResponse> createReadingList(@Query("csrf_token") String token, @Body SyncedReadingLists.RemoteReadingList list);

    @DELETE("data/lists/{id}/entries/{entry_id}")
    @Headers({"Cache-Control: no-cache"})
    Call<Unit> deleteEntryFromReadingList(@Path("id") long listId, @Path("entry_id") long entryId, @Query("csrf_token") String token);

    @DELETE("data/lists/{id}")
    @Headers({"Cache-Control: no-cache"})
    Call<Unit> deleteReadingList(@Path("id") long listId, @Query("csrf_token") String token);

    @Headers({"Cache-Control: no-cache"})
    @GET("metrics/edits/per-page/{wikiAuthority}/{title}/all-editor-types/monthly/{fromDate}/{toDate}")
    Object getArticleMetrics(@Path("wikiAuthority") String str, @Path("title") String str2, @Path("fromDate") String str3, @Path("toDate") String str4, Continuation<? super Metrics> continuation);

    @GET("feed/configuration")
    Object getConfiguration(Continuation<? super RemoteConfig$RemoteConfigImpl> continuation);

    @Headers({"Accept: application/json; charset=utf-8; profile=\"https://www.mediawiki.org/wiki/Specs/definition/0.7.2\""})
    @GET("page/definition/{title}")
    Object getDefinition(@Path("title") String str, Continuation<? super Map<String, ? extends List<RbDefinition$Usage>>> continuation);

    @GET("metrics/edits/v3/per_editor/{globalUserId}/all_page_types/monthly/{fromDate}/{toDate}")
    Object getEditsPerGlobalUserMonthly(@Path("globalUserId") int i, @Path("fromDate") String str, @Path("toDate") String str2, Continuation<? super UserEdits> continuation);

    @Headers({"Accept: application/json; charset=utf-8; profile=\"https://www.mediawiki.org/wiki/Specs/aggregated-feed/0.5.0\""})
    @GET("feed/featured/{year}/{month}/{day}")
    Object getFeedFeatured(@Path("year") String str, @Path("month") String str2, @Path("day") String str3, @Query("lang") String str4, Continuation<? super AggregatedFeedContent> continuation);

    @POST("transform/wikitext/to/mobile-html/{title}")
    Object getHtmlPreviewFromWikitext(@Path("title") String str, @Body PreviewRequest previewRequest, Continuation<? super ResponseBody> continuation);

    @GET("page/media-list/{title}/{revision}")
    Object getMediaList(@Path("title") String str, @Path("revision") long j, Continuation<? super MediaList> continuation);

    @GET("page/media-list/{title}")
    Object getMediaList(@Path("title") String str, @Header("Cache-Control") String str2, @Header("X-Offline-Save") String str3, @Header("X-Offline-Lang") String str4, @Header("X-Offline-Title") String str5, Continuation<? super MediaList> continuation);

    @GET("feed/onthisday/events/{mm}/{dd}")
    Object getOnThisDay(@Path("mm") int i, @Path("dd") int i2, Continuation<? super OnThisDay> continuation);

    @Headers({"x-analytics: preview=1", "Accept: application/json; charset=utf-8; profile=\"https://www.mediawiki.org/wiki/Specs/Summary/1.2.0\""})
    @GET("page/summary/{title}")
    Object getPageSummary(@Path("title") String str, @Header("Referer") String str2, @Header("Cache-Control") String str3, @Header("X-Offline-Save") String str4, @Header("X-Offline-Lang") String str5, @Header("X-Offline-Title") String str6, Continuation<? super PageSummary> continuation);

    @Headers({"Accept: application/json; charset=utf-8; profile=\"https://www.mediawiki.org/wiki/Specs/Summary/1.2.0\""})
    @GET("page/random/summary")
    Object getRandomSummary(Continuation<? super PageSummary> continuation);

    @Headers({"Cache-Control: no-cache"})
    @GET("data/lists/changes/since/{date}")
    Call<SyncedReadingLists> getReadingListChangesSince(@Path("date") String iso8601Date, @Query("next") String next);

    @Headers({"Cache-Control: no-cache"})
    @GET("data/lists/{id}/entries/")
    Call<SyncedReadingLists> getReadingListEntries(@Path("id") long listId, @Query("next") String next);

    @Headers({"Cache-Control: no-cache"})
    @GET("data/lists/")
    Call<SyncedReadingLists> getReadingLists(@Query("next") String next);

    @Headers({"x-analytics: preview=1", "Accept: application/json; charset=utf-8; profile=\"https://www.mediawiki.org/wiki/Specs/Summary/1.2.0\""})
    @GET("page/summary/{title}")
    Object getSummaryResponse(@Path("title") String str, @Header("Referer") String str2, @Header("Cache-Control") String str3, @Header("X-Offline-Save") String str4, @Header("X-Offline-Lang") String str5, @Header("X-Offline-Title") String str6, Continuation<? super Response<PageSummary>> continuation);

    @Headers({"Cache-Control: no-cache"})
    @GET("page/talk/{title}")
    Object getTalkPage(@Path("title") String str, Continuation<? super TalkPage> continuation);

    @POST("data/lists/setup")
    Call<Unit> setupReadingLists(@Query("csrf_token") String token);

    @POST("data/lists/teardown")
    Call<Unit> tearDownReadingLists(@Query("csrf_token") String token);

    @Headers({"Cache-Control: no-cache"})
    @PUT("data/lists/{id}")
    Call<Unit> updateReadingList(@Path("id") long listId, @Query("csrf_token") String token, @Body SyncedReadingLists.RemoteReadingList list);
}
