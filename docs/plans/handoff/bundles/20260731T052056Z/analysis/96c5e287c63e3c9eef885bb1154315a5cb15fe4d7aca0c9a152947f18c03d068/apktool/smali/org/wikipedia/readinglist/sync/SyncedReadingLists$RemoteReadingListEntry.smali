.class public final Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry$Companion;


# instance fields
.field public final created:Lj$/time/LocalDateTime;

.field public final id:J

.field public final isDeleted:Z

.field public final listId:J

.field public final project:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final updated:Lj$/time/LocalDateTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->Companion:Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(IJJLjava/lang/String;Ljava/lang/String;ZLj$/time/LocalDateTime;Lj$/time/LocalDateTime;)V
    .locals 3

    .line 1
    and-int/lit8 v0, p1, 0xc

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    if-ne v1, v0, :cond_5

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    and-int/lit8 v0, p1, 0x1

    .line 11
    .line 12
    const-wide/16 v1, -0x1

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iput-wide v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->id:J

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput-wide p2, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->id:J

    .line 20
    .line 21
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 22
    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    iput-wide v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->listId:J

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iput-wide p4, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->listId:J

    .line 29
    .line 30
    :goto_1
    iput-object p6, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->project:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p7, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->title:Ljava/lang/String;

    .line 33
    .line 34
    and-int/lit8 p2, p1, 0x10

    .line 35
    .line 36
    if-nez p2, :cond_2

    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    iput-boolean p2, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->isDeleted:Z

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    iput-boolean p8, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->isDeleted:Z

    .line 43
    .line 44
    :goto_2
    and-int/lit8 p2, p1, 0x20

    .line 45
    .line 46
    if-nez p2, :cond_3

    .line 47
    .line 48
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iput-object p2, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->created:Lj$/time/LocalDateTime;

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    iput-object p9, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->created:Lj$/time/LocalDateTime;

    .line 59
    .line 60
    :goto_3
    and-int/lit8 p1, p1, 0x40

    .line 61
    .line 62
    if-nez p1, :cond_4

    .line 63
    .line 64
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->updated:Lj$/time/LocalDateTime;

    .line 72
    .line 73
    return-void

    .line 74
    :cond_4
    iput-object p10, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->updated:Lj$/time/LocalDateTime;

    .line 75
    .line 76
    return-void

    .line 77
    :cond_5
    sget-object p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry$$serializer;->INSTANCE:Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry$$serializer;

    .line 78
    .line 79
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 84
    .line 85
    .line 86
    const/4 p0, 0x0

    .line 87
    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lj$/time/LocalDateTime;Lj$/time/LocalDateTime;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 89
    iput-wide v0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->id:J

    .line 90
    iput-wide v0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->listId:J

    .line 91
    iput-object p1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->project:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->title:Ljava/lang/String;

    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->isDeleted:Z

    .line 94
    iput-object p3, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->created:Lj$/time/LocalDateTime;

    .line 95
    iput-object p4, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->updated:Lj$/time/LocalDateTime;

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
    instance-of v1, p1, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

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
    check-cast p1, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->id:J

    .line 14
    .line 15
    iget-wide v5, p1, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->id:J

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
    iget-wide v3, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->listId:J

    .line 23
    .line 24
    iget-wide v5, p1, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->listId:J

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
    iget-object v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->project:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->project:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->title:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->title:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-boolean v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->isDeleted:Z

    .line 54
    .line 55
    iget-boolean v3, p1, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->isDeleted:Z

    .line 56
    .line 57
    if-eq v1, v3, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    iget-object v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->created:Lj$/time/LocalDateTime;

    .line 61
    .line 62
    iget-object v3, p1, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->created:Lj$/time/LocalDateTime;

    .line 63
    .line 64
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    iget-object p0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->updated:Lj$/time/LocalDateTime;

    .line 72
    .line 73
    iget-object p1, p1, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->updated:Lj$/time/LocalDateTime;

    .line 74
    .line 75
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-nez p0, :cond_8

    .line 80
    .line 81
    return v2

    .line 82
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->id:J

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
    const/16 v1, 0x1f

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-wide v3, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->listId:J

    .line 13
    .line 14
    ushr-long v5, v3, v2

    .line 15
    .line 16
    xor-long/2addr v3, v5

    .line 17
    long-to-int v2, v3

    .line 18
    add-int/2addr v0, v2

    .line 19
    mul-int/2addr v0, v1

    .line 20
    iget-object v2, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->project:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v2, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->title:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-boolean v2, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->isDeleted:Z

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    const/16 v2, 0x4cf

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/16 v2, 0x4d5

    .line 40
    .line 41
    :goto_0
    add-int/2addr v0, v2

    .line 42
    mul-int/2addr v0, v1

    .line 43
    iget-object v2, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->created:Lj$/time/LocalDateTime;

    .line 44
    .line 45
    invoke-virtual {v2}, Lj$/time/LocalDateTime;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    add-int/2addr v2, v0

    .line 50
    mul-int/2addr v2, v1

    .line 51
    iget-object p0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->updated:Lj$/time/LocalDateTime;

    .line 52
    .line 53
    invoke-virtual {p0}, Lj$/time/LocalDateTime;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    add-int/2addr p0, v2

    .line 58
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RemoteReadingListEntry(id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->id:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", listId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->listId:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", project="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->project:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", title="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->title:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", isDeleted="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->isDeleted:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", created="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->created:Lj$/time/LocalDateTime;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", updated="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->updated:Lj$/time/LocalDateTime;

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p0, ")"

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method
