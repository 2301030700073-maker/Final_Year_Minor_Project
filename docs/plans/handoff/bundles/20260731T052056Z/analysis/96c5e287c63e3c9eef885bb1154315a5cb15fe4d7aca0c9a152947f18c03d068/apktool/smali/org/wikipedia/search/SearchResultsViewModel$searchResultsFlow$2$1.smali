.class public final Lorg/wikipedia/search/SearchResultsViewModel$searchResultsFlow$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $lang:Ljava/lang/String;

.field public final synthetic $repository:Lokio/ByteString$Companion;

.field public final synthetic $term:Ljava/lang/String;

.field public final synthetic this$0:Lorg/wikipedia/search/SearchResultsViewModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/search/SearchResultsViewModel;Lokio/ByteString$Companion;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/search/SearchResultsViewModel$searchResultsFlow$2$1;->$term:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/search/SearchResultsViewModel$searchResultsFlow$2$1;->$lang:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/search/SearchResultsViewModel$searchResultsFlow$2$1;->this$0:Lorg/wikipedia/search/SearchResultsViewModel;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/search/SearchResultsViewModel$searchResultsFlow$2$1;->$repository:Lokio/ByteString$Companion;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v0, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/search/SearchResultsViewModel$searchResultsFlow$2$1;->this$0:Lorg/wikipedia/search/SearchResultsViewModel;

    .line 4
    .line 5
    iget-object v3, v1, Lorg/wikipedia/search/SearchResultsViewModel;->countsPerLanguageCode:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Lorg/wikipedia/search/SearchResultsViewModel;->getInvokeSource()Lorg/wikipedia/Constants$InvokeSource;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    new-instance v6, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;

    .line 12
    .line 13
    const/16 v2, 0xa

    .line 14
    .line 15
    invoke-direct {v6, v2, v1}, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/wikipedia/search/SearchResultsViewModel$searchResultsFlow$2$1;->$term:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p0, Lorg/wikipedia/search/SearchResultsViewModel$searchResultsFlow$2$1;->$lang:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v5, p0, Lorg/wikipedia/search/SearchResultsViewModel$searchResultsFlow$2$1;->$repository:Lokio/ByteString$Companion;

    .line 23
    .line 24
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/wikipedia/Constants$InvokeSource;Lokio/ByteString$Companion;Lcoil3/network/okhttp/internal/CallsKt$await$2$1;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method
