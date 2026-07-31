.class public final Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList$Companion;


# instance fields
.field public final created:Lj$/time/LocalDateTime;

.field public final description:Ljava/lang/String;

.field public final id:J

.field public final isDefault:Z

.field public final isDeleted:Z

.field public final name:Ljava/lang/String;

.field public final updated:Lj$/time/LocalDateTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->Companion:Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(IJZLjava/lang/String;Ljava/lang/String;ZLj$/time/LocalDateTime;Lj$/time/LocalDateTime;)V
    .locals 3

    .line 1
    and-int/lit8 v0, p1, 0x4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    if-ne v2, v0, :cond_6

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    and-int/lit8 v0, p1, 0x1

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-wide/16 p2, 0x0

    .line 15
    .line 16
    :cond_0
    iput-wide p2, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->id:J

    .line 17
    .line 18
    and-int/lit8 p2, p1, 0x2

    .line 19
    .line 20
    const/4 p3, 0x0

    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    iput-boolean p3, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDefault:Z

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iput-boolean p4, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDefault:Z

    .line 27
    .line 28
    :goto_0
    iput-object p5, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name:Ljava/lang/String;

    .line 29
    .line 30
    and-int/lit8 p2, p1, 0x8

    .line 31
    .line 32
    if-nez p2, :cond_2

    .line 33
    .line 34
    iput-object v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->description:Ljava/lang/String;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iput-object p6, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->description:Ljava/lang/String;

    .line 38
    .line 39
    :goto_1
    and-int/lit8 p2, p1, 0x10

    .line 40
    .line 41
    if-nez p2, :cond_3

    .line 42
    .line 43
    iput-boolean p3, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDeleted:Z

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    iput-boolean p7, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDeleted:Z

    .line 47
    .line 48
    :goto_2
    and-int/lit8 p2, p1, 0x20

    .line 49
    .line 50
    if-nez p2, :cond_4

    .line 51
    .line 52
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iput-object p2, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->created:Lj$/time/LocalDateTime;

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_4
    iput-object p8, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->created:Lj$/time/LocalDateTime;

    .line 63
    .line 64
    :goto_3
    and-int/lit8 p1, p1, 0x40

    .line 65
    .line 66
    if-nez p1, :cond_5

    .line 67
    .line 68
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->updated:Lj$/time/LocalDateTime;

    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    iput-object p9, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->updated:Lj$/time/LocalDateTime;

    .line 79
    .line 80
    return-void

    .line 81
    :cond_6
    sget-object p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList$$serializer;->INSTANCE:Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList$$serializer;

    .line 82
    .line 83
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 88
    .line 89
    .line 90
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 91
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    .line 94
    iput-wide v2, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->id:J

    const/4 v2, 0x0

    .line 95
    iput-boolean v2, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDefault:Z

    .line 96
    iput-object p1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->description:Ljava/lang/String;

    .line 98
    iput-boolean v2, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDeleted:Z

    .line 99
    iput-object v0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->created:Lj$/time/LocalDateTime;

    .line 100
    iput-object v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->updated:Lj$/time/LocalDateTime;

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
    instance-of v1, p1, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;

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
    check-cast p1, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->id:J

    .line 14
    .line 15
    iget-wide v5, p1, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->id:J

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
    iget-boolean v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDefault:Z

    .line 23
    .line 24
    iget-boolean v3, p1, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDefault:Z

    .line 25
    .line 26
    if-eq v1, v3, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iget-object v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, p1, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget-object v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->description:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v3, p1, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->description:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_5

    .line 49
    .line 50
    return v2

    .line 51
    :cond_5
    iget-boolean v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDeleted:Z

    .line 52
    .line 53
    iget-boolean v3, p1, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDeleted:Z

    .line 54
    .line 55
    if-eq v1, v3, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    iget-object v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->created:Lj$/time/LocalDateTime;

    .line 59
    .line 60
    iget-object v3, p1, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->created:Lj$/time/LocalDateTime;

    .line 61
    .line 62
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_7

    .line 67
    .line 68
    return v2

    .line 69
    :cond_7
    iget-object p0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->updated:Lj$/time/LocalDateTime;

    .line 70
    .line 71
    iget-object p1, p1, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->updated:Lj$/time/LocalDateTime;

    .line 72
    .line 73
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_8

    .line 78
    .line 79
    return v2

    .line 80
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    iget-wide v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->id:J

    .line 4
    .line 5
    ushr-long v3, v1, v0

    .line 6
    .line 7
    xor-long/2addr v1, v3

    .line 8
    long-to-int v0, v1

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-boolean v2, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDefault:Z

    .line 13
    .line 14
    const/16 v3, 0x4d5

    .line 15
    .line 16
    const/16 v4, 0x4cf

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    move v2, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v3

    .line 23
    :goto_0
    add-int/2addr v0, v2

    .line 24
    mul-int/2addr v0, v1

    .line 25
    iget-object v2, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-object v2, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->description:Ljava/lang/String;

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    :goto_1
    add-int/2addr v0, v2

    .line 42
    mul-int/2addr v0, v1

    .line 43
    iget-boolean v2, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDeleted:Z

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    move v3, v4

    .line 48
    :cond_2
    add-int/2addr v0, v3

    .line 49
    mul-int/2addr v0, v1

    .line 50
    iget-object v2, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->created:Lj$/time/LocalDateTime;

    .line 51
    .line 52
    invoke-virtual {v2}, Lj$/time/LocalDateTime;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    add-int/2addr v2, v0

    .line 57
    mul-int/2addr v2, v1

    .line 58
    iget-object p0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->updated:Lj$/time/LocalDateTime;

    .line 59
    .line 60
    invoke-virtual {p0}, Lj$/time/LocalDateTime;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    add-int/2addr p0, v2

    .line 65
    return p0
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v0, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    .line 4
    .line 5
    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RemoteReadingList(id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->id:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", isDefault="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDefault:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", name="

    .line 24
    .line 25
    const-string v2, ", description="

    .line 26
    .line 27
    iget-object v3, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v4, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->description:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v1, v3, v2, v4}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v1, ", isDeleted="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-boolean v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDeleted:Z

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", created="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->created:Lj$/time/LocalDateTime;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", updated="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->updated:Lj$/time/LocalDateTime;

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p0, ")"

    .line 65
    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method
