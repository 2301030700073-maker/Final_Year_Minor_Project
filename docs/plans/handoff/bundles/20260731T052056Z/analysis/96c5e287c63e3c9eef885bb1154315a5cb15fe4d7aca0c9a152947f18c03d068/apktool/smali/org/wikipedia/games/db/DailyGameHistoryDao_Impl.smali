.class public final Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final __db:Landroidx/room/RoomDatabase;

.field public final __upsertAdapterOfDailyGameHistory:Lcoil3/svg/internal/AndroidSvg;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lcoil3/svg/internal/AndroidSvg;

    .line 7
    .line 8
    new-instance v0, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    invoke-direct {v1, v2}, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v0, v1}, Lcoil3/svg/internal/AndroidSvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;->__upsertAdapterOfDailyGameHistory:Lcoil3/svg/internal/AndroidSvg;

    .line 25
    .line 26
    return-void
.end method
