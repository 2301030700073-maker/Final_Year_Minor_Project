.class public interface abstract Lorg/wikipedia/dataclient/RestService;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ba\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001JV\u0010\n\u001a\u00020\t2\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\\\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000c2\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0004\u0008\r\u0010\u000bJ,\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u000e2\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\tH\u00a7@\u00a2\u0006\u0004\u0008\u0013\u0010\u0014JJ\u0010\u0016\u001a\u00020\u00152\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J$\u0010\u0016\u001a\u00020\u00152\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u0018H\u00a7@\u00a2\u0006\u0004\u0008\u0016\u0010\u001aJ$\u0010\u001f\u001a\u00020\u001e2\u0008\u0008\u0001\u0010\u001c\u001a\u00020\u001b2\u0008\u0008\u0001\u0010\u001d\u001a\u00020\u001bH\u00a7@\u00a2\u0006\u0004\u0008\u001f\u0010 J@\u0010$\u001a\u00020#2\n\u0008\u0001\u0010!\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\u001d\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010\"\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0004\u0008$\u0010%J!\u0010)\u001a\u0008\u0012\u0004\u0012\u00020(0\'2\n\u0008\u0001\u0010&\u001a\u0004\u0018\u00010\u0002H\'\u00a2\u0006\u0004\u0008)\u0010*J!\u0010+\u001a\u0008\u0012\u0004\u0012\u00020(0\'2\n\u0008\u0001\u0010&\u001a\u0004\u0018\u00010\u0002H\'\u00a2\u0006\u0004\u0008+\u0010*J!\u0010.\u001a\u0008\u0012\u0004\u0012\u00020-0\'2\n\u0008\u0001\u0010,\u001a\u0004\u0018\u00010\u0002H\'\u00a2\u0006\u0004\u0008.\u0010*J-\u00102\u001a\u0008\u0012\u0004\u0012\u0002010\'2\n\u0008\u0001\u0010&\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u00100\u001a\u0004\u0018\u00010/H\'\u00a2\u0006\u0004\u00082\u00103J7\u00105\u001a\u0008\u0012\u0004\u0012\u00020(0\'2\u0008\u0008\u0001\u00104\u001a\u00020\u00182\n\u0008\u0001\u0010&\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u00100\u001a\u0004\u0018\u00010/H\'\u00a2\u0006\u0004\u00085\u00106J+\u00107\u001a\u0008\u0012\u0004\u0012\u00020(0\'2\u0008\u0008\u0001\u00104\u001a\u00020\u00182\n\u0008\u0001\u0010&\u001a\u0004\u0018\u00010\u0002H\'\u00a2\u0006\u0004\u00087\u00108J-\u0010:\u001a\u0008\u0012\u0004\u0012\u00020-0\'2\n\u0008\u0001\u00109\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010,\u001a\u0004\u0018\u00010\u0002H\'\u00a2\u0006\u0004\u0008:\u0010;J+\u0010<\u001a\u0008\u0012\u0004\u0012\u00020-0\'2\u0008\u0008\u0001\u00104\u001a\u00020\u00182\n\u0008\u0001\u0010,\u001a\u0004\u0018\u00010\u0002H\'\u00a2\u0006\u0004\u0008<\u00108J7\u0010?\u001a\u0008\u0012\u0004\u0012\u0002010\'2\u0008\u0008\u0001\u00104\u001a\u00020\u00182\n\u0008\u0001\u0010&\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010>\u001a\u0004\u0018\u00010=H\'\u00a2\u0006\u0004\u0008?\u0010@J7\u0010D\u001a\u0008\u0012\u0004\u0012\u00020C0\'2\u0008\u0008\u0001\u00104\u001a\u00020\u00182\n\u0008\u0001\u0010&\u001a\u0004\u0018\u00010\u00022\n\u0008\u0001\u0010B\u001a\u0004\u0018\u00010AH\'\u00a2\u0006\u0004\u0008D\u0010EJ5\u0010G\u001a\u0008\u0012\u0004\u0012\u00020(0\'2\u0008\u0008\u0001\u00104\u001a\u00020\u00182\u0008\u0008\u0001\u0010F\u001a\u00020\u00182\n\u0008\u0001\u0010&\u001a\u0004\u0018\u00010\u0002H\'\u00a2\u0006\u0004\u0008G\u0010HJ\u001c\u0010J\u001a\u00020I2\n\u0008\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u00a7@\u00a2\u0006\u0004\u0008J\u0010\u0012J8\u0010O\u001a\u00020N2\u0008\u0008\u0001\u0010K\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010L\u001a\u00020\u00022\u0008\u0008\u0001\u0010M\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008O\u0010%J.\u0010R\u001a\u00020Q2\u0008\u0008\u0001\u0010P\u001a\u00020\u001b2\u0008\u0008\u0001\u0010L\u001a\u00020\u00022\u0008\u0008\u0001\u0010M\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008R\u0010SJ$\u0010W\u001a\u00020V2\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010U\u001a\u00020TH\u00a7@\u00a2\u0006\u0004\u0008W\u0010XJ\u0010\u0010Z\u001a\u00020YH\u00a7@\u00a2\u0006\u0004\u0008Z\u0010\u0014\u00a8\u0006[\u00c0\u0006\u0003"
    }
    d2 = {
        "Lorg/wikipedia/dataclient/RestService;",
        "",
        "",
        "title",
        "referrerUrl",
        "cacheControl",
        "saveHeader",
        "langHeader",
        "titleHeader",
        "Lorg/wikipedia/dataclient/page/PageSummary;",
        "getPageSummary",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lretrofit2/Response;",
        "getSummaryResponse",
        "",
        "",
        "Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;",
        "getDefinition",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getRandomSummary",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lorg/wikipedia/gallery/MediaList;",
        "getMediaList",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "revision",
        "(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "month",
        "day",
        "Lorg/wikipedia/feed/onthisday/OnThisDay;",
        "getOnThisDay",
        "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "year",
        "lang",
        "Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;",
        "getFeedFeatured",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "token",
        "Lretrofit2/Call;",
        "",
        "setupReadingLists",
        "(Ljava/lang/String;)Lretrofit2/Call;",
        "tearDownReadingLists",
        "next",
        "Lorg/wikipedia/readinglist/sync/SyncedReadingLists;",
        "getReadingLists",
        "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;",
        "list",
        "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;",
        "createReadingList",
        "(Ljava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;)Lretrofit2/Call;",
        "listId",
        "updateReadingList",
        "(JLjava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;)Lretrofit2/Call;",
        "deleteReadingList",
        "(JLjava/lang/String;)Lretrofit2/Call;",
        "iso8601Date",
        "getReadingListChangesSince",
        "(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;",
        "getReadingListEntries",
        "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;",
        "entry",
        "addEntryToReadingList",
        "(JLjava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)Lretrofit2/Call;",
        "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntryBatch;",
        "batch",
        "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponseBatch;",
        "addEntriesToReadingList",
        "(JLjava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntryBatch;)Lretrofit2/Call;",
        "entryId",
        "deleteEntryFromReadingList",
        "(JJLjava/lang/String;)Lretrofit2/Call;",
        "Lorg/wikipedia/dataclient/page/TalkPage;",
        "getTalkPage",
        "wikiAuthority",
        "fromDate",
        "toDate",
        "Lorg/wikipedia/dataclient/restbase/Metrics;",
        "getArticleMetrics",
        "globalUserId",
        "Lorg/wikipedia/dataclient/restbase/UserEdits;",
        "getEditsPerGlobalUserMonthly",
        "(ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lorg/wikipedia/dataclient/restbase/PreviewRequest;",
        "body",
        "Lokhttp3/ResponseBody;",
        "getHtmlPreviewFromWikitext",
        "(Ljava/lang/String;Lorg/wikipedia/dataclient/restbase/PreviewRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;",
        "getConfiguration",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract addEntriesToReadingList(JLjava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntryBatch;)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "csrf_token"
        .end annotation
    .end param
    .param p4    # Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntryBatch;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntryBatch;",
            ")",
            "Lretrofit2/Call<",
            "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponseBatch;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "data/lists/{id}/entries/batch"
    .end annotation
.end method

.method public abstract addEntryToReadingList(JLjava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "csrf_token"
        .end annotation
    .end param
    .param p4    # Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;",
            ")",
            "Lretrofit2/Call<",
            "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "data/lists/{id}/entries/"
    .end annotation
.end method

.method public abstract createReadingList(Ljava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "csrf_token"
        .end annotation
    .end param
    .param p2    # Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;",
            ")",
            "Lretrofit2/Call<",
            "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteIdResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "data/lists/"
    .end annotation
.end method

.method public abstract deleteEntryFromReadingList(JJLjava/lang/String;)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "entry_id"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "csrf_token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "data/lists/{id}/entries/{entry_id}"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract deleteReadingList(JLjava/lang/String;)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "csrf_token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "data/lists/{id}"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract getArticleMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "wikiAuthority"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "title"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "fromDate"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "toDate"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/restbase/Metrics;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "metrics/edits/per-page/{wikiAuthority}/{title}/all-editor-types/monthly/{fromDate}/{toDate}"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract getConfiguration(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "feed/configuration"
    .end annotation
.end method

.method public abstract getDefinition(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "title"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/restbase/RbDefinition$Usage;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "page/definition/{title}"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json; charset=utf-8; profile=\"https://www.mediawiki.org/wiki/Specs/definition/0.7.2\""
        }
    .end annotation
.end method

.method public abstract getEditsPerGlobalUserMonthly(ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "globalUserId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "fromDate"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "toDate"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/restbase/UserEdits;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "metrics/edits/v3/per_editor/{globalUserId}/all_page_types/monthly/{fromDate}/{toDate}"
    .end annotation
.end method

.method public abstract getFeedFeatured(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "year"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "month"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "day"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "lang"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "feed/featured/{year}/{month}/{day}"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json; charset=utf-8; profile=\"https://www.mediawiki.org/wiki/Specs/aggregated-feed/0.5.0\""
        }
    .end annotation
.end method

.method public abstract getHtmlPreviewFromWikitext(Ljava/lang/String;Lorg/wikipedia/dataclient/restbase/PreviewRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "title"
        .end annotation
    .end param
    .param p2    # Lorg/wikipedia/dataclient/restbase/PreviewRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/wikipedia/dataclient/restbase/PreviewRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lokhttp3/ResponseBody;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "transform/wikitext/to/mobile-html/{title}"
    .end annotation
.end method

.method public abstract getMediaList(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "title"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "revision"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/gallery/MediaList;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "page/media-list/{title}/{revision}"
    .end annotation
.end method

.method public abstract getMediaList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "title"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Cache-Control"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Offline-Save"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Offline-Lang"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Offline-Title"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/gallery/MediaList;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "page/media-list/{title}"
    .end annotation
.end method

.method public abstract getOnThisDay(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "mm"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "dd"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/feed/onthisday/OnThisDay;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "feed/onthisday/events/{mm}/{dd}"
    .end annotation
.end method

.method public abstract getPageSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "title"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Referer"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Cache-Control"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Offline-Save"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Offline-Lang"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Offline-Title"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "page/summary/{title}"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "x-analytics: preview=1",
            "Accept: application/json; charset=utf-8; profile=\"https://www.mediawiki.org/wiki/Specs/Summary/1.2.0\""
        }
    .end annotation
.end method

.method public abstract getRandomSummary(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "page/random/summary"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json; charset=utf-8; profile=\"https://www.mediawiki.org/wiki/Specs/Summary/1.2.0\""
        }
    .end annotation
.end method

.method public abstract getReadingListChangesSince(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "date"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "next"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lorg/wikipedia/readinglist/sync/SyncedReadingLists;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "data/lists/changes/since/{date}"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract getReadingListEntries(JLjava/lang/String;)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "next"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lorg/wikipedia/readinglist/sync/SyncedReadingLists;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "data/lists/{id}/entries/"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract getReadingLists(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "next"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lorg/wikipedia/readinglist/sync/SyncedReadingLists;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "data/lists/"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract getSummaryResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "title"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Referer"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Cache-Control"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Offline-Save"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Offline-Lang"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Offline-Title"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lorg/wikipedia/dataclient/page/PageSummary;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "page/summary/{title}"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "x-analytics: preview=1",
            "Accept: application/json; charset=utf-8; profile=\"https://www.mediawiki.org/wiki/Specs/Summary/1.2.0\""
        }
    .end annotation
.end method

.method public abstract getTalkPage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "title"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/wikipedia/dataclient/page/TalkPage;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "page/talk/{title}"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation
.end method

.method public abstract setupReadingLists(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "csrf_token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "data/lists/setup"
    .end annotation
.end method

.method public abstract tearDownReadingLists(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "csrf_token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "data/lists/teardown"
    .end annotation
.end method

.method public abstract updateReadingList(JLjava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "csrf_token"
        .end annotation
    .end param
    .param p4    # Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;",
            ")",
            "Lretrofit2/Call<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control: no-cache"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "data/lists/{id}"
    .end annotation
.end method
