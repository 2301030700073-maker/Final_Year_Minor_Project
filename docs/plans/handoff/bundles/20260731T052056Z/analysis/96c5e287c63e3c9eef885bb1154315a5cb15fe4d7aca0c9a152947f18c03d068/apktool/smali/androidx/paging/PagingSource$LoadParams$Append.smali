.class public final Landroidx/paging/PagingSource$LoadParams$Append;
.super Landroidx/paging/PagingSource$LoadParams;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final key:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroidx/paging/PagingSource$LoadParams;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Landroidx/paging/PagingSource$LoadParams$Append;->key:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/paging/PagingSource$LoadParams$Append;->key:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method
