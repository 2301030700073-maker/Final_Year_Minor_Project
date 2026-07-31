.class public final Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final __dateTypeConverter:Lorg/wikipedia/login/LoginClient;

.field public final __db:Landroidx/room/RoomDatabase;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/login/LoginClient;

    .line 5
    .line 6
    const/16 v1, 0xf

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lorg/wikipedia/login/LoginClient;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;->__dateTypeConverter:Lorg/wikipedia/login/LoginClient;

    .line 12
    .line 13
    iput-object p1, p0, Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 14
    .line 15
    return-void
.end method
