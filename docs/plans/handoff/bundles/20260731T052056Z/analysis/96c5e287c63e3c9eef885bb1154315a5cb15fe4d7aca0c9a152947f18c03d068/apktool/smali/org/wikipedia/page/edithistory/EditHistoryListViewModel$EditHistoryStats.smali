.class public final Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryStats;
.super Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryItemModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final allEdits:Lorg/wikipedia/dataclient/restbase/EditCount;

.field public final anonEdits:Lorg/wikipedia/dataclient/restbase/EditCount;

.field public final botEdits:Lorg/wikipedia/dataclient/restbase/EditCount;

.field public final metrics:Ljava/util/List;

.field public final revision:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

.field public final userEdits:Lorg/wikipedia/dataclient/restbase/EditCount;


# direct methods
.method public constructor <init>(Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;Ljava/util/List;Lorg/wikipedia/dataclient/restbase/EditCount;Lorg/wikipedia/dataclient/restbase/EditCount;Lorg/wikipedia/dataclient/restbase/EditCount;Lorg/wikipedia/dataclient/restbase/EditCount;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryStats;->revision:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 23
    .line 24
    iput-object p2, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryStats;->metrics:Ljava/util/List;

    .line 25
    .line 26
    iput-object p3, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryStats;->allEdits:Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 27
    .line 28
    iput-object p4, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryStats;->userEdits:Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 29
    .line 30
    iput-object p5, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryStats;->anonEdits:Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 31
    .line 32
    iput-object p6, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryStats;->botEdits:Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 33
    .line 34
    return-void
.end method
