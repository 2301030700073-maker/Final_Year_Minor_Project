.class public final Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final __db:Landroidx/room/RoomDatabase;

.field public final __deleteAdapterOfInterestArticle:Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

.field public final __insertAdapterOfInterestArticle:Landroidx/work/impl/model/WorkTagDao_Impl$1;

.field public final __namespaceTypeConverter:Lokio/ByteString$Companion;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokio/ByteString$Companion;

    .line 5
    .line 6
    const/16 v1, 0xe

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lokio/ByteString$Companion;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;->__namespaceTypeConverter:Lokio/ByteString$Companion;

    .line 12
    .line 13
    iput-object p1, p0, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 14
    .line 15
    new-instance p1, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 16
    .line 17
    const/16 v0, 0x8

    .line 18
    .line 19
    invoke-direct {p1, v0, p0}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;->__insertAdapterOfInterestArticle:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 23
    .line 24
    new-instance p1, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-direct {p1, v0, p0}, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;-><init>(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;->__deleteAdapterOfInterestArticle:Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

    .line 31
    .line 32
    return-void
.end method
