.class public final Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final __db:Landroidx/room/RoomDatabase;

.field public final __insertAdapterOfRecommendedPage:Landroidx/work/impl/model/WorkTagDao_Impl$1;

.field public final __updateAdapterOfRecommendedPage:Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 7
    .line 8
    const/16 v0, 0x11

    .line 9
    .line 10
    invoke-direct {p1, v0, p0}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;->__insertAdapterOfRecommendedPage:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 14
    .line 15
    new-instance p1, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

    .line 16
    .line 17
    const/16 v0, 0xb

    .line 18
    .line 19
    invoke-direct {p1, v0, p0}, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;->__updateAdapterOfRecommendedPage:Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

    .line 23
    .line 24
    return-void
.end method
