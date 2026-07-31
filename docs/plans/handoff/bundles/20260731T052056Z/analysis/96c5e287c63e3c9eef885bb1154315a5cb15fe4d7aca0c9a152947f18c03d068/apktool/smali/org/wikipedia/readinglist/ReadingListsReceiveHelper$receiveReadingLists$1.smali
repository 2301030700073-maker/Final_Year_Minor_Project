.class public final Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public I$0:I

.field public I$1:I

.field public I$2:I

.field public I$3:I

.field public L$11:Lorg/wikipedia/dataclient/WikiSite;

.field public L$13:Ljava/util/Iterator;

.field public L$18:Ljava/util/List;

.field public L$19:Ljava/util/List;

.field public L$20:Ljava/util/ArrayList;

.field public L$4:Ljava/lang/String;

.field public L$5:Ljava/lang/String;

.field public L$6:Ljava/util/List;

.field public L$8:Ljava/util/Iterator;

.field public Z$0:Z

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;


# direct methods
.method public constructor <init>(Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->this$0:Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;

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
    .locals 6

    .line 1
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->label:I

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper$receiveReadingLists$1;->this$0:Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    move-object v5, p0

    .line 17
    invoke-virtual/range {v0 .. v5}, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;->receiveReadingLists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
