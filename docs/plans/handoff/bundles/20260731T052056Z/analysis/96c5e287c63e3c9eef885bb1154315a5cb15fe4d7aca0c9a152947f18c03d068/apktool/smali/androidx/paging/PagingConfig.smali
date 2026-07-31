.class public final Landroidx/paging/PagingConfig;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final initialLoadSize:I

.field public final pageSize:I

.field public final prefetchDistance:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    and-int/lit8 v0, p2, 0x2

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move v0, p1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 v0, 0x14

    .line 8
    .line 9
    :goto_0
    and-int/lit8 p2, p2, 0x8

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    mul-int/lit8 p2, p1, 0x3

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const/16 p2, 0x32

    .line 17
    .line 18
    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput p1, p0, Landroidx/paging/PagingConfig;->pageSize:I

    .line 22
    .line 23
    iput v0, p0, Landroidx/paging/PagingConfig;->prefetchDistance:I

    .line 24
    .line 25
    iput p2, p0, Landroidx/paging/PagingConfig;->initialLoadSize:I

    .line 26
    .line 27
    return-void
.end method
