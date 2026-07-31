.class public final Lokio/internal/ZipEntry;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final canonicalPath:Lokio/Path;

.field public final children:Ljava/util/ArrayList;

.field public final comment:Ljava/lang/String;

.field public final compressedSize:J

.field public final compressionMethod:I

.field public final crc:J

.field public final dosLastModifiedAtDate:I

.field public final dosLastModifiedAtTime:I

.field public final extendedCreatedAtSeconds:Ljava/lang/Integer;

.field public final extendedLastAccessedAtSeconds:Ljava/lang/Integer;

.field public final extendedLastModifiedAtSeconds:Ljava/lang/Integer;

.field public final isDirectory:Z

.field public final ntfsCreatedAtFiletime:Ljava/lang/Long;

.field public final ntfsLastAccessedAtFiletime:Ljava/lang/Long;

.field public final ntfsLastModifiedAtFiletime:Ljava/lang/Long;

.field public final offset:J

.field public final size:J


# direct methods
.method public synthetic constructor <init>(Lokio/Path;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;I)V
    .locals 23

    .line 1
    move/from16 v0, p18

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x4

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    move-object v5, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v5, p3

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v1, v0, 0x8

    .line 14
    .line 15
    const-wide/16 v2, -0x1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    move-wide v6, v2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-wide/from16 v6, p4

    .line 22
    .line 23
    :goto_1
    and-int/lit8 v1, v0, 0x10

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    move-wide v8, v2

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move-wide/from16 v8, p6

    .line 30
    .line 31
    :goto_2
    and-int/lit8 v1, v0, 0x20

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    move-wide v10, v2

    .line 36
    goto :goto_3

    .line 37
    :cond_3
    move-wide/from16 v10, p8

    .line 38
    .line 39
    :goto_3
    and-int/lit8 v1, v0, 0x40

    .line 40
    .line 41
    const/4 v4, -0x1

    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    move v12, v4

    .line 45
    goto :goto_4

    .line 46
    :cond_4
    move/from16 v12, p10

    .line 47
    .line 48
    :goto_4
    and-int/lit16 v1, v0, 0x80

    .line 49
    .line 50
    if-eqz v1, :cond_5

    .line 51
    .line 52
    move-wide v13, v2

    .line 53
    goto :goto_5

    .line 54
    :cond_5
    move-wide/from16 v13, p11

    .line 55
    .line 56
    :goto_5
    and-int/lit16 v1, v0, 0x100

    .line 57
    .line 58
    if-eqz v1, :cond_6

    .line 59
    .line 60
    move v15, v4

    .line 61
    goto :goto_6

    .line 62
    :cond_6
    move/from16 v15, p13

    .line 63
    .line 64
    :goto_6
    and-int/lit16 v1, v0, 0x200

    .line 65
    .line 66
    if-eqz v1, :cond_7

    .line 67
    .line 68
    move/from16 v16, v4

    .line 69
    .line 70
    goto :goto_7

    .line 71
    :cond_7
    move/from16 v16, p14

    .line 72
    .line 73
    :goto_7
    and-int/lit16 v1, v0, 0x400

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    if-eqz v1, :cond_8

    .line 77
    .line 78
    move-object/from16 v17, v2

    .line 79
    .line 80
    goto :goto_8

    .line 81
    :cond_8
    move-object/from16 v17, p15

    .line 82
    .line 83
    :goto_8
    and-int/lit16 v1, v0, 0x800

    .line 84
    .line 85
    if-eqz v1, :cond_9

    .line 86
    .line 87
    move-object/from16 v18, v2

    .line 88
    .line 89
    goto :goto_9

    .line 90
    :cond_9
    move-object/from16 v18, p16

    .line 91
    .line 92
    :goto_9
    and-int/lit16 v0, v0, 0x1000

    .line 93
    .line 94
    if-eqz v0, :cond_a

    .line 95
    .line 96
    move-object/from16 v19, v2

    .line 97
    .line 98
    goto :goto_a

    .line 99
    :cond_a
    move-object/from16 v19, p17

    .line 100
    .line 101
    :goto_a
    const/16 v20, 0x0

    .line 102
    .line 103
    const/16 v21, 0x0

    .line 104
    .line 105
    const/16 v22, 0x0

    .line 106
    .line 107
    move-object/from16 v2, p0

    .line 108
    .line 109
    move-object/from16 v3, p1

    .line 110
    .line 111
    move/from16 v4, p2

    .line 112
    .line 113
    invoke-direct/range {v2 .. v22}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public constructor <init>(Lokio/Path;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    .line 119
    iput-boolean p2, p0, Lokio/internal/ZipEntry;->isDirectory:Z

    .line 120
    iput-object p3, p0, Lokio/internal/ZipEntry;->comment:Ljava/lang/String;

    .line 121
    iput-wide p4, p0, Lokio/internal/ZipEntry;->crc:J

    .line 122
    iput-wide p6, p0, Lokio/internal/ZipEntry;->compressedSize:J

    .line 123
    iput-wide p8, p0, Lokio/internal/ZipEntry;->size:J

    .line 124
    iput p10, p0, Lokio/internal/ZipEntry;->compressionMethod:I

    .line 125
    iput-wide p11, p0, Lokio/internal/ZipEntry;->offset:J

    .line 126
    iput p13, p0, Lokio/internal/ZipEntry;->dosLastModifiedAtDate:I

    .line 127
    iput p14, p0, Lokio/internal/ZipEntry;->dosLastModifiedAtTime:I

    .line 128
    iput-object p15, p0, Lokio/internal/ZipEntry;->ntfsLastModifiedAtFiletime:Ljava/lang/Long;

    move-object/from16 p1, p16

    .line 129
    iput-object p1, p0, Lokio/internal/ZipEntry;->ntfsLastAccessedAtFiletime:Ljava/lang/Long;

    move-object/from16 p1, p17

    .line 130
    iput-object p1, p0, Lokio/internal/ZipEntry;->ntfsCreatedAtFiletime:Ljava/lang/Long;

    move-object/from16 p1, p18

    .line 131
    iput-object p1, p0, Lokio/internal/ZipEntry;->extendedLastModifiedAtSeconds:Ljava/lang/Integer;

    move-object/from16 p1, p19

    .line 132
    iput-object p1, p0, Lokio/internal/ZipEntry;->extendedLastAccessedAtSeconds:Ljava/lang/Integer;

    move-object/from16 p1, p20

    .line 133
    iput-object p1, p0, Lokio/internal/ZipEntry;->extendedCreatedAtSeconds:Ljava/lang/Integer;

    .line 134
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lokio/internal/ZipEntry;->children:Ljava/util/ArrayList;

    return-void
.end method
