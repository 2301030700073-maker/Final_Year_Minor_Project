.class public final Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/database/LocalItem;


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity$Companion;


# instance fields
.field public final index:I

.field public final playlistUid:J

.field public final streamUid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->Companion:Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->playlistUid:J

    .line 5
    .line 6
    iput-wide p3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->streamUid:J

    .line 7
    .line 8
    iput p5, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->index:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->playlistUid:J

    .line 14
    .line 15
    iget-wide v5, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->playlistUid:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->streamUid:J

    .line 23
    .line 24
    iget-wide v5, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->streamUid:J

    .line 25
    .line 26
    cmp-long v1, v3, v5

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget p0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->index:I

    .line 32
    .line 33
    iget p1, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->index:I

    .line 34
    .line 35
    if-eq p0, p1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    return v0
.end method

.method public final getLocalItemType()Lorg/schabi/newpipe/database/LocalItem$LocalItemType;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_STREAM_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->playlistUid:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    ushr-long v3, v0, v2

    .line 6
    .line 7
    xor-long/2addr v0, v3

    .line 8
    long-to-int v0, v0

    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->streamUid:J

    .line 12
    .line 13
    ushr-long v1, v3, v2

    .line 14
    .line 15
    xor-long/2addr v1, v3

    .line 16
    long-to-int v1, v1

    .line 17
    add-int/2addr v0, v1

    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    iget p0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->index:I

    .line 21
    .line 22
    add-int/2addr v0, p0

    .line 23
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "PlaylistStreamEntity(playlistUid="

    .line 2
    .line 3
    const-string v1, ", streamUid="

    .line 4
    .line 5
    iget-wide v2, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->playlistUid:J

    .line 6
    .line 7
    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-wide v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->streamUid:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", index="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget p0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->index:I

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p0, ")"

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method
