.class public final Lorg/wikipedia/watchlist/WatchlistFilterActivity$Filter;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final filterCode:Ljava/lang/String;

.field public final isCheckBox:Z

.field public final synthetic this$0:Lorg/wikipedia/watchlist/WatchlistFilterActivity;

.field public final type:I


# direct methods
.method public constructor <init>(Lorg/wikipedia/watchlist/WatchlistFilterActivity;ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$Filter;->this$0:Lorg/wikipedia/watchlist/WatchlistFilterActivity;

    .line 8
    .line 9
    iput p2, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$Filter;->type:I

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$Filter;->filterCode:Ljava/lang/String;

    .line 12
    .line 13
    iput-boolean p4, p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity$Filter;->isCheckBox:Z

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/watchlist/WatchlistFilterActivity;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0, p1, v0, p2, v1}, Lorg/wikipedia/watchlist/WatchlistFilterActivity$Filter;-><init>(Lorg/wikipedia/watchlist/WatchlistFilterActivity;ILjava/lang/String;Z)V

    return-void
.end method
