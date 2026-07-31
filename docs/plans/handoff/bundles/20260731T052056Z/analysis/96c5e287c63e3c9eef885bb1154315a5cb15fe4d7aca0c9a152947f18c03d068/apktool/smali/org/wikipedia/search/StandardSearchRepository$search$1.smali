.class public final Lorg/wikipedia/search/StandardSearchRepository$search$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public I$0:I

.field public I$1:I

.field public I$2:I

.field public L$0:Ljava/lang/String;

.field public L$1:Ljava/lang/String;

.field public L$10:Ljava/lang/String;

.field public L$12:Ljava/util/Iterator;

.field public L$14:Ljava/lang/String;

.field public L$15:Lkotlin/jvm/internal/Ref$IntRef;

.field public L$2:Lorg/wikipedia/Constants$InvokeSource;

.field public L$4:Ljava/util/List;

.field public L$5:Lorg/wikipedia/dataclient/WikiSite;

.field public L$6:Ljava/util/List;

.field public L$8:Ljava/lang/Integer;

.field public L$9:Ljava/lang/String;

.field public Z$0:Z

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lokio/ByteString$Companion;


# direct methods
.method public constructor <init>(Lokio/ByteString$Companion;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/search/StandardSearchRepository$search$1;->this$0:Lokio/ByteString$Companion;

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
    .locals 9

    .line 1
    iput-object p1, p0, Lorg/wikipedia/search/StandardSearchRepository$search$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lorg/wikipedia/search/StandardSearchRepository$search$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lorg/wikipedia/search/StandardSearchRepository$search$1;->label:I

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    iget-object v0, p0, Lorg/wikipedia/search/StandardSearchRepository$search$1;->this$0:Lokio/ByteString$Companion;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    move-object v8, p0

    .line 20
    invoke-virtual/range {v0 .. v8}, Lokio/ByteString$Companion;->search(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/Integer;IZLjava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
