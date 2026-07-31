.class public final Landroidx/paging/PagingData;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final cachedPageEvent:Lkotlin/jvm/functions/Function0;

.field public final flow:Lkotlinx/coroutines/flow/Flow;

.field public final hintReceiver:Landroidx/paging/HintHandler;

.field public final uiReceiver:Landroidx/paging/UiReceiver;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Landroidx/paging/UiReceiver;Landroidx/paging/HintHandler;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroidx/paging/PagingData;->flow:Lkotlinx/coroutines/flow/Flow;

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/paging/PagingData;->uiReceiver:Landroidx/paging/UiReceiver;

    .line 13
    .line 14
    iput-object p3, p0, Landroidx/paging/PagingData;->hintReceiver:Landroidx/paging/HintHandler;

    .line 15
    .line 16
    iput-object p4, p0, Landroidx/paging/PagingData;->cachedPageEvent:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    return-void
.end method
