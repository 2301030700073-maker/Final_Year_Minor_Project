.class public final Landroidx/camera/camera2/pipe/MetadataTransform$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final MEDIA_CODEC:Landroidx/camera/camera2/pipe/MetadataTransform$1;

.field public static final MEDIA_RECORDER:Landroidx/camera/camera2/pipe/MetadataTransform$1;

.field public static final SURFACE:Landroidx/camera/camera2/pipe/MetadataTransform$1;

.field public static final SURFACE_DEFERRED_FOR_QUERY_ONLY:Landroidx/camera/camera2/pipe/MetadataTransform$1;

.field public static final SURFACE_TEXTURE:Landroidx/camera/camera2/pipe/MetadataTransform$1;

.field public static final SURFACE_VIEW:Landroidx/camera/camera2/pipe/MetadataTransform$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/camera/camera2/pipe/MetadataTransform$1;->SURFACE:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 7
    .line 8
    new-instance v0, Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/camera/camera2/pipe/MetadataTransform$1;->SURFACE_VIEW:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 14
    .line 15
    new-instance v0, Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroidx/camera/camera2/pipe/MetadataTransform$1;->SURFACE_TEXTURE:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 21
    .line 22
    new-instance v0, Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Landroidx/camera/camera2/pipe/MetadataTransform$1;->SURFACE_DEFERRED_FOR_QUERY_ONLY:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 28
    .line 29
    new-instance v0, Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Landroidx/camera/camera2/pipe/MetadataTransform$1;->MEDIA_CODEC:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 35
    .line 36
    new-instance v0, Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Landroidx/camera/camera2/pipe/MetadataTransform$1;->MEDIA_RECORDER:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 42
    .line 43
    return-void
.end method

.method public static create-vBYXiEU$default(IILandroid/util/Size;Landroidx/camera/camera2/pipe/MetadataTransform$1;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/lang/String;)Landroidx/camera/camera2/pipe/OutputStream$Config;
    .locals 17

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x8

    .line 4
    .line 5
    sget-object v2, Landroidx/camera/camera2/pipe/MetadataTransform$1;->SURFACE:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v7, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v7, p3

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v1, v0, 0x40

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    move-object v9, v3

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-object/from16 v9, p4

    .line 21
    .line 22
    :goto_1
    and-int/lit16 v1, v0, 0x80

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    move-object v10, v3

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move-object/from16 v10, p6

    .line 29
    .line 30
    :goto_2
    and-int/lit16 v0, v0, 0x100

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    move-object v11, v3

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move-object/from16 v11, p7

    .line 37
    .line 38
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    sget-object v0, Landroidx/camera/camera2/pipe/MetadataTransform$1;->SURFACE_TEXTURE:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 42
    .line 43
    sget-object v12, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 44
    .line 45
    if-eq v7, v0, :cond_7

    .line 46
    .line 47
    sget-object v0, Landroidx/camera/camera2/pipe/MetadataTransform$1;->SURFACE_VIEW:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 48
    .line 49
    if-eq v7, v0, :cond_7

    .line 50
    .line 51
    sget-object v0, Landroidx/camera/camera2/pipe/MetadataTransform$1;->MEDIA_CODEC:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 52
    .line 53
    if-eq v7, v0, :cond_4

    .line 54
    .line 55
    sget-object v0, Landroidx/camera/camera2/pipe/MetadataTransform$1;->MEDIA_RECORDER:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 56
    .line 57
    if-eq v7, v0, :cond_4

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 61
    .line 62
    const/16 v1, 0x23

    .line 63
    .line 64
    if-lt v0, v1, :cond_5

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_5
    :goto_4
    if-ne v7, v2, :cond_6

    .line 68
    .line 69
    new-instance v8, Landroidx/camera/camera2/pipe/OutputStream$Config$SimpleOutputConfig;

    .line 70
    .line 71
    move-object v13, v9

    .line 72
    move-object v14, v10

    .line 73
    move-object v15, v11

    .line 74
    move-object/from16 v16, v12

    .line 75
    .line 76
    move/from16 v10, p0

    .line 77
    .line 78
    move-object/from16 v9, p2

    .line 79
    .line 80
    move-object/from16 v12, p5

    .line 81
    .line 82
    move-object/from16 v11, p8

    .line 83
    .line 84
    invoke-direct/range {v8 .. v16}, Landroidx/camera/camera2/pipe/OutputStream$Config;-><init>(Landroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    return-object v8

    .line 88
    :cond_6
    const-string v0, "Check failed."

    .line 89
    .line 90
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-object v3

    .line 94
    :cond_7
    :goto_5
    new-instance v3, Landroidx/camera/camera2/pipe/OutputStream$Config$LazyOutputConfig;

    .line 95
    .line 96
    move/from16 v5, p0

    .line 97
    .line 98
    move-object/from16 v4, p2

    .line 99
    .line 100
    move-object/from16 v8, p5

    .line 101
    .line 102
    move-object/from16 v6, p8

    .line 103
    .line 104
    invoke-direct/range {v3 .. v12}, Landroidx/camera/camera2/pipe/OutputStream$Config$LazyOutputConfig;-><init>(Landroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/MetadataTransform$1;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    return-object v3
.end method
