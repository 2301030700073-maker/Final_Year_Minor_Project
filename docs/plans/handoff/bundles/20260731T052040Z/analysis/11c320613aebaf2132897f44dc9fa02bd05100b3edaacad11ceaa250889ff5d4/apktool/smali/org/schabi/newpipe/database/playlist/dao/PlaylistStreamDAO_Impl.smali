.class public final Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$Companion;


# instance fields
.field public final __converters:Lokio/Path$Companion;

.field public final __db:Landroidx/room/RoomDatabase;

.field public final __insertAdapterOfPlaylistStreamEntity:Landroidx/work/impl/model/WorkTagDao_Impl$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->Companion:Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokio/Path$Companion;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lokio/Path$Companion;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__converters:Lokio/Path$Companion;

    .line 12
    .line 13
    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 14
    .line 15
    new-instance p1, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 16
    .line 17
    const/16 v0, 0xe

    .line 18
    .line 19
    invoke-direct {p1, v0}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__insertAdapterOfPlaylistStreamEntity:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 23
    .line 24
    return-void
.end method
