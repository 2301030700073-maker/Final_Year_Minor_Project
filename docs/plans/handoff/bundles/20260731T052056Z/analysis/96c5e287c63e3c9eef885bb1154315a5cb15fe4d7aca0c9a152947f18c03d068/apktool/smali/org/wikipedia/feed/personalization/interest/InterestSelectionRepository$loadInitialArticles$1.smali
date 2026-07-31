.class public final Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public I$0:I

.field public I$1:I

.field public L$0:Ljava/util/List;

.field public L$1:Ljava/util/ArrayList;

.field public L$3:Ljava/util/Map;

.field public L$4:Ljava/util/List;

.field public L$5:Ljava/util/Iterator;

.field public L$7:Lorg/wikipedia/dataclient/WikiSite;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lretrofit2/Retrofit;


# direct methods
.method public constructor <init>(Lretrofit2/Retrofit;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->this$0:Lretrofit2/Retrofit;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->this$0:Lretrofit2/Retrofit;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lretrofit2/Retrofit;->loadInitialArticles(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
