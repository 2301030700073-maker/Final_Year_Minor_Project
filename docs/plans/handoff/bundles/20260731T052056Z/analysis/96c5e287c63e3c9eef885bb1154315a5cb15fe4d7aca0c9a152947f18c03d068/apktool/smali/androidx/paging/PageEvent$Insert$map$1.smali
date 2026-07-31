.class public final Landroidx/paging/PageEvent$Insert$map$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public L$0:Lkotlin/jvm/functions/Function2;

.field public L$1:Landroidx/paging/PageEvent$Insert;

.field public L$10:Ljava/util/Collection;

.field public L$2:Landroidx/paging/LoadType;

.field public L$3:Ljava/util/Collection;

.field public L$4:Ljava/util/Iterator;

.field public L$5:Landroidx/paging/TransformablePage;

.field public L$6:[I

.field public L$7:Ljava/util/Collection;

.field public L$8:Ljava/util/Iterator;

.field public L$9:Ljava/util/Collection;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Landroidx/paging/PageEvent$Insert;


# direct methods
.method public constructor <init>(Landroidx/paging/PageEvent$Insert;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/paging/PageEvent$Insert$map$1;->this$0:Landroidx/paging/PageEvent$Insert;

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
    iput-object p1, p0, Landroidx/paging/PageEvent$Insert$map$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Landroidx/paging/PageEvent$Insert$map$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroidx/paging/PageEvent$Insert$map$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/paging/PageEvent$Insert$map$1;->this$0:Landroidx/paging/PageEvent$Insert;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, p0}, Landroidx/paging/PageEvent$Insert;->map(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
