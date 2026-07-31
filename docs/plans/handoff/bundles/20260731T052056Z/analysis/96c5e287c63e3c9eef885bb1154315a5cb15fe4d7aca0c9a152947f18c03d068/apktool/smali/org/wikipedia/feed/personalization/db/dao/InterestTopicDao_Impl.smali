.class public final Lorg/wikipedia/feed/personalization/db/dao/InterestTopicDao_Impl;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final __db:Landroidx/room/RoomDatabase;

.field public final __deleteAdapterOfInterestTopic:Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

.field public final __insertAdapterOfInterestTopic:Landroidx/work/impl/model/WorkTagDao_Impl$1;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/feed/personalization/db/dao/InterestTopicDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 7
    .line 8
    const/16 v0, 0x9

    .line 9
    .line 10
    invoke-direct {p1, v0}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lorg/wikipedia/feed/personalization/db/dao/InterestTopicDao_Impl;->__insertAdapterOfInterestTopic:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 14
    .line 15
    new-instance p1, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-direct {p1, v0}, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lorg/wikipedia/feed/personalization/db/dao/InterestTopicDao_Impl;->__deleteAdapterOfInterestTopic:Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

    .line 22
    .line 23
    return-void
.end method
