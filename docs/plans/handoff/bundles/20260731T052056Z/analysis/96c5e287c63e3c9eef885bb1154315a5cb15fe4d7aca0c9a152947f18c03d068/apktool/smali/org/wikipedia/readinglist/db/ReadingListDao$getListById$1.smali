.class public final Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public J$0:J

.field public L$1:Lorg/wikipedia/readinglist/database/ReadingList;

.field public Z$0:Z

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;


# direct methods
.method public constructor <init>(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;->this$0:Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

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
    .locals 3

    .line 1
    iput-object p1, p0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;->label:I

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iget-object v2, p0, Lorg/wikipedia/readinglist/db/ReadingListDao$getListById$1;->this$0:Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 14
    .line 15
    invoke-static {v2, v0, v1, p1, p0}, Lorg/wikipedia/dataclient/Service$-CC;->getListById$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;JZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
