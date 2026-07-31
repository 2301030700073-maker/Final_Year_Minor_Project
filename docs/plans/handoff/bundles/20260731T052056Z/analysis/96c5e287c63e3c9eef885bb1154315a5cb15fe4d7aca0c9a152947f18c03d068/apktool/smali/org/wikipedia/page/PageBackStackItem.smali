.class public final Lorg/wikipedia/page/PageBackStackItem;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/page/PageBackStackItem$Companion;


# instance fields
.field public historyEntry:Lorg/wikipedia/history/HistoryEntry;

.field public scrollY:I

.field public title:Lorg/wikipedia/page/PageTitle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/page/PageBackStackItem$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/page/PageBackStackItem;->Companion:Lorg/wikipedia/page/PageBackStackItem$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lorg/wikipedia/page/PageBackStackItem;->title:Lorg/wikipedia/page/PageTitle;

    .line 11
    .line 12
    iput-object p2, p0, Lorg/wikipedia/page/PageBackStackItem;->historyEntry:Lorg/wikipedia/history/HistoryEntry;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lorg/wikipedia/page/PageBackStackItem;->scrollY:I

    .line 16
    .line 17
    return-void
.end method
