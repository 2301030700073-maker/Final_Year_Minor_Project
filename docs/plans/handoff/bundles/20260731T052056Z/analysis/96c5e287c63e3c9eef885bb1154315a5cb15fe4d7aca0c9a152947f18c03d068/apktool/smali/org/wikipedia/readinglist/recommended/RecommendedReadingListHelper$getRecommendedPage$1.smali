.class public final Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public I$0:I

.field public I$1:I

.field public I$2:I

.field public I$3:I

.field public L$1:Lorg/wikipedia/dataclient/WikiSite;

.field public L$5:Ljava/util/Collection;

.field public L$6:Ljava/util/Iterator;

.field public L$7:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;


# direct methods
.method public constructor <init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->this$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;

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
    .locals 2

    .line 1
    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->label:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    const/4 v0, 0x0

    .line 12
    iget-object v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper$getRecommendedPage$1;->this$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;

    .line 13
    .line 14
    invoke-virtual {v1, p1, v0, v0, p0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;->getRecommendedPage(Lorg/wikipedia/readinglist/recommended/SourceWithOffset;IILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method
