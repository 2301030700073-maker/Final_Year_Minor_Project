.class public final Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final __db:Landroidx/room/RoomDatabase;

.field public final __deleteAdapterOfOfflineObject:Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

.field public final __insertAdapterOfOfflineObject:Landroidx/work/impl/model/WorkTagDao_Impl$1;

.field public final __updateAdapterOfOfflineObject:Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 7
    .line 8
    const/16 v0, 0xd

    .line 9
    .line 10
    invoke-direct {p1, v0}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;->__insertAdapterOfOfflineObject:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 14
    .line 15
    new-instance p1, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

    .line 16
    .line 17
    const/4 v0, 0x5

    .line 18
    invoke-direct {p1, v0}, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;->__deleteAdapterOfOfflineObject:Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

    .line 22
    .line 23
    new-instance p1, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

    .line 24
    .line 25
    const/4 v0, 0x6

    .line 26
    invoke-direct {p1, v0}, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;->__updateAdapterOfOfflineObject:Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

    .line 30
    .line 31
    return-void
.end method

.method public static deleteFilesForObject(Lorg/wikipedia/offline/db/OfflineObject;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/offline/db/OfflineObject;->path:Ljava/lang/String;

    .line 5
    .line 6
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ".0"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/io/File;

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p0, ".1"

    .line 39
    .line 40
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    :catch_0
    return-void
.end method
