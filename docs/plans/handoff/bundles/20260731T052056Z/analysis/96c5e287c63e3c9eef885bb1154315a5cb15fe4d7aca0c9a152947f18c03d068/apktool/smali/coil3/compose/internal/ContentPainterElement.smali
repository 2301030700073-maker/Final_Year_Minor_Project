.class public final Lcoil3/compose/internal/ContentPainterElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0081\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcoil3/compose/internal/ContentPainterElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Lcoil3/compose/internal/ContentPainterNode;",
        "coil-compose-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final alignment:Landroidx/compose/ui/Alignment;

.field public final contentDescription:Ljava/lang/String;

.field public final contentScale:Landroidx/compose/ui/layout/ContentScale;

.field public final imageLoader:Lcoil3/RealImageLoader;

.field public final modelEqualityDelegate:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

.field public final onState:Lkotlin/jvm/functions/Function1;

.field public final previewHandler:Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;

.field public final request:Lcoil3/request/ImageRequest;

.field public final transform:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcoil3/request/ImageRequest;Lcoil3/RealImageLoader;Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/compose/internal/ContentPainterElement;->request:Lcoil3/request/ImageRequest;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/compose/internal/ContentPainterElement;->imageLoader:Lcoil3/RealImageLoader;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil3/compose/internal/ContentPainterElement;->modelEqualityDelegate:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 9
    .line 10
    iput-object p4, p0, Lcoil3/compose/internal/ContentPainterElement;->transform:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    iput-object p5, p0, Lcoil3/compose/internal/ContentPainterElement;->onState:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    iput-object p6, p0, Lcoil3/compose/internal/ContentPainterElement;->alignment:Landroidx/compose/ui/Alignment;

    .line 15
    .line 16
    iput-object p7, p0, Lcoil3/compose/internal/ContentPainterElement;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 17
    .line 18
    iput-object p8, p0, Lcoil3/compose/internal/ContentPainterElement;->previewHandler:Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;

    .line 19
    .line 20
    iput-object p9, p0, Lcoil3/compose/internal/ContentPainterElement;->contentDescription:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 10

    .line 1
    new-instance v0, Lcoil3/compose/AsyncImagePainter$Input;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->modelEqualityDelegate:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 4
    .line 5
    iget-object v2, p0, Lcoil3/compose/internal/ContentPainterElement;->imageLoader:Lcoil3/RealImageLoader;

    .line 6
    .line 7
    iget-object v3, p0, Lcoil3/compose/internal/ContentPainterElement;->request:Lcoil3/request/ImageRequest;

    .line 8
    .line 9
    invoke-direct {v0, v2, v3, v1}, Lcoil3/compose/AsyncImagePainter$Input;-><init>(Lcoil3/RealImageLoader;Lcoil3/request/ImageRequest;Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;)V

    .line 10
    .line 11
    .line 12
    new-instance v5, Lcoil3/compose/AsyncImagePainter;

    .line 13
    .line 14
    invoke-direct {v5, v0}, Lcoil3/compose/AsyncImagePainter;-><init>(Lcoil3/compose/AsyncImagePainter$Input;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->transform:Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    iput-object v1, v5, Lcoil3/compose/AsyncImagePainter;->transform:Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->onState:Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    iput-object v1, v5, Lcoil3/compose/AsyncImagePainter;->onState:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 26
    .line 27
    iput-object v1, v5, Lcoil3/compose/AsyncImagePainter;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 28
    .line 29
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->previewHandler:Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;

    .line 30
    .line 31
    iput-object v1, v5, Lcoil3/compose/AsyncImagePainter;->previewHandler:Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;

    .line 32
    .line 33
    invoke-virtual {v5, v0}, Lcoil3/compose/AsyncImagePainter;->set_input$coil_compose_core(Lcoil3/compose/AsyncImagePainter$Input;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v3, Lcoil3/request/ImageRequest;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 37
    .line 38
    instance-of v1, v0, Lcoil3/compose/ConstraintsSizeResolver;

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    check-cast v0, Lcoil3/compose/ConstraintsSizeResolver;

    .line 43
    .line 44
    :goto_0
    move-object v9, v0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    goto :goto_0

    .line 48
    :goto_1
    new-instance v4, Lcoil3/compose/internal/ContentPainterNode;

    .line 49
    .line 50
    iget-object v6, p0, Lcoil3/compose/internal/ContentPainterElement;->alignment:Landroidx/compose/ui/Alignment;

    .line 51
    .line 52
    iget-object v7, p0, Lcoil3/compose/internal/ContentPainterElement;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 53
    .line 54
    iget-object v8, p0, Lcoil3/compose/internal/ContentPainterElement;->contentDescription:Ljava/lang/String;

    .line 55
    .line 56
    invoke-direct/range {v4 .. v9}, Lcoil3/compose/internal/ContentPainterNode;-><init>(Lcoil3/compose/AsyncImagePainter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Lcoil3/compose/ConstraintsSizeResolver;)V

    .line 57
    .line 58
    .line 59
    return-object v4
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lcoil3/compose/internal/ContentPainterElement;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_1
    check-cast p1, Lcoil3/compose/internal/ContentPainterElement;

    .line 13
    .line 14
    iget-object v0, p0, Lcoil3/compose/internal/ContentPainterElement;->request:Lcoil3/request/ImageRequest;

    .line 15
    .line 16
    iget-object v2, p1, Lcoil3/compose/internal/ContentPainterElement;->request:Lcoil3/request/ImageRequest;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lcoil3/request/ImageRequest;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iget-object v0, p0, Lcoil3/compose/internal/ContentPainterElement;->imageLoader:Lcoil3/RealImageLoader;

    .line 26
    .line 27
    iget-object v2, p1, Lcoil3/compose/internal/ContentPainterElement;->imageLoader:Lcoil3/RealImageLoader;

    .line 28
    .line 29
    if-eq v0, v2, :cond_3

    .line 30
    .line 31
    return v1

    .line 32
    :cond_3
    iget-object v0, p0, Lcoil3/compose/internal/ContentPainterElement;->modelEqualityDelegate:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 33
    .line 34
    iget-object v2, p1, Lcoil3/compose/internal/ContentPainterElement;->modelEqualityDelegate:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 35
    .line 36
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    iget-object v0, p0, Lcoil3/compose/internal/ContentPainterElement;->transform:Lkotlin/jvm/functions/Function1;

    .line 44
    .line 45
    iget-object v2, p1, Lcoil3/compose/internal/ContentPainterElement;->transform:Lkotlin/jvm/functions/Function1;

    .line 46
    .line 47
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_5

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_5
    iget-object v0, p0, Lcoil3/compose/internal/ContentPainterElement;->onState:Lkotlin/jvm/functions/Function1;

    .line 55
    .line 56
    iget-object v2, p1, Lcoil3/compose/internal/ContentPainterElement;->onState:Lkotlin/jvm/functions/Function1;

    .line 57
    .line 58
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_6

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_6
    iget-object v0, p0, Lcoil3/compose/internal/ContentPainterElement;->alignment:Landroidx/compose/ui/Alignment;

    .line 66
    .line 67
    iget-object v2, p1, Lcoil3/compose/internal/ContentPainterElement;->alignment:Landroidx/compose/ui/Alignment;

    .line 68
    .line 69
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_7

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_7
    iget-object v0, p0, Lcoil3/compose/internal/ContentPainterElement;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 77
    .line 78
    iget-object v2, p1, Lcoil3/compose/internal/ContentPainterElement;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 79
    .line 80
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_8

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 88
    .line 89
    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_9

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_9
    iget-object v0, p0, Lcoil3/compose/internal/ContentPainterElement;->previewHandler:Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;

    .line 97
    .line 98
    iget-object v2, p1, Lcoil3/compose/internal/ContentPainterElement;->previewHandler:Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;

    .line 99
    .line 100
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_a

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_a
    iget-object p0, p0, Lcoil3/compose/internal/ContentPainterElement;->contentDescription:Ljava/lang/String;

    .line 108
    .line 109
    iget-object p1, p1, Lcoil3/compose/internal/ContentPainterElement;->contentDescription:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-nez p0, :cond_b

    .line 116
    .line 117
    :goto_0
    return v1

    .line 118
    :cond_b
    :goto_1
    const/4 p0, 0x1

    .line 119
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/compose/internal/ContentPainterElement;->request:Lcoil3/request/ImageRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcoil3/request/ImageRequest;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->imageLoader:Lcoil3/RealImageLoader;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Lcoil3/compose/internal/ContentPainterElement;->modelEqualityDelegate:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->transform:Lkotlin/jvm/functions/Function1;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v1, v0

    .line 34
    mul-int/lit8 v1, v1, 0x1f

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iget-object v2, p0, Lcoil3/compose/internal/ContentPainterElement;->onState:Lkotlin/jvm/functions/Function1;

    .line 38
    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    move v2, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    :goto_0
    add-int/2addr v1, v2

    .line 48
    mul-int/lit8 v1, v1, 0x1f

    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    mul-int/lit8 v1, v1, 0x1f

    .line 53
    .line 54
    iget-object v2, p0, Lcoil3/compose/internal/ContentPainterElement;->alignment:Landroidx/compose/ui/Alignment;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    add-int/2addr v2, v1

    .line 61
    mul-int/lit8 v2, v2, 0x1f

    .line 62
    .line 63
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v1, v2

    .line 70
    mul-int/lit8 v1, v1, 0x1f

    .line 71
    .line 72
    const/high16 v2, 0x3f800000    # 1.0f

    .line 73
    .line 74
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    add-int/2addr v2, v1

    .line 79
    mul-int/lit16 v2, v2, 0x3c1

    .line 80
    .line 81
    add-int/lit16 v2, v2, 0x4cf

    .line 82
    .line 83
    mul-int/lit8 v2, v2, 0x1f

    .line 84
    .line 85
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->previewHandler:Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;

    .line 86
    .line 87
    if-nez v1, :cond_1

    .line 88
    .line 89
    move v1, v0

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    :goto_1
    add-int/2addr v2, v1

    .line 96
    mul-int/lit8 v2, v2, 0x1f

    .line 97
    .line 98
    iget-object p0, p0, Lcoil3/compose/internal/ContentPainterElement;->contentDescription:Ljava/lang/String;

    .line 99
    .line 100
    if-nez p0, :cond_2

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    :goto_2
    add-int/2addr v2, v0

    .line 108
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ContentPainterElement(request="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->request:Lcoil3/request/ImageRequest;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", imageLoader="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->imageLoader:Lcoil3/RealImageLoader;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", modelEqualityDelegate="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->modelEqualityDelegate:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", transform="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->transform:Lkotlin/jvm/functions/Function1;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", onState="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->onState:Lkotlin/jvm/functions/Function1;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", filterQuality="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, "Low"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", alignment="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->alignment:Landroidx/compose/ui/Alignment;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", contentScale="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", alpha=1.0, colorFilter=null, clipToBounds=true, previewHandler="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->previewHandler:Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", contentDescription="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object p0, p0, Lcoil3/compose/internal/ContentPainterElement;->contentDescription:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p0, ")"

    .line 104
    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 8

    .line 1
    check-cast p1, Lcoil3/compose/internal/ContentPainterNode;

    .line 2
    .line 3
    iget-object v0, p1, Lcoil3/compose/internal/ContentPainterNode;->painter:Lcoil3/compose/AsyncImagePainter;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcoil3/compose/AsyncImagePainter;->getIntrinsicSize-NH-jbRc()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->constraintSizeResolver:Lcoil3/compose/ConstraintsSizeResolver;

    .line 10
    .line 11
    new-instance v3, Lcoil3/compose/AsyncImagePainter$Input;

    .line 12
    .line 13
    iget-object v4, p0, Lcoil3/compose/internal/ContentPainterElement;->modelEqualityDelegate:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 14
    .line 15
    iget-object v5, p0, Lcoil3/compose/internal/ContentPainterElement;->imageLoader:Lcoil3/RealImageLoader;

    .line 16
    .line 17
    iget-object v6, p0, Lcoil3/compose/internal/ContentPainterElement;->request:Lcoil3/request/ImageRequest;

    .line 18
    .line 19
    invoke-direct {v3, v5, v6, v4}, Lcoil3/compose/AsyncImagePainter$Input;-><init>(Lcoil3/RealImageLoader;Lcoil3/request/ImageRequest;Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;)V

    .line 20
    .line 21
    .line 22
    iget-object v4, p1, Lcoil3/compose/internal/ContentPainterNode;->painter:Lcoil3/compose/AsyncImagePainter;

    .line 23
    .line 24
    iget-object v5, p0, Lcoil3/compose/internal/ContentPainterElement;->transform:Lkotlin/jvm/functions/Function1;

    .line 25
    .line 26
    iput-object v5, v4, Lcoil3/compose/AsyncImagePainter;->transform:Lkotlin/jvm/functions/Function1;

    .line 27
    .line 28
    iget-object v5, p0, Lcoil3/compose/internal/ContentPainterElement;->onState:Lkotlin/jvm/functions/Function1;

    .line 29
    .line 30
    iput-object v5, v4, Lcoil3/compose/AsyncImagePainter;->onState:Lkotlin/jvm/functions/Function1;

    .line 31
    .line 32
    iget-object v5, p0, Lcoil3/compose/internal/ContentPainterElement;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 33
    .line 34
    iput-object v5, v4, Lcoil3/compose/AsyncImagePainter;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 35
    .line 36
    iget-object v7, p0, Lcoil3/compose/internal/ContentPainterElement;->previewHandler:Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;

    .line 37
    .line 38
    iput-object v7, v4, Lcoil3/compose/AsyncImagePainter;->previewHandler:Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;

    .line 39
    .line 40
    invoke-virtual {v4, v3}, Lcoil3/compose/AsyncImagePainter;->set_input$coil_compose_core(Lcoil3/compose/AsyncImagePainter$Input;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Lcoil3/compose/AsyncImagePainter;->getIntrinsicSize-NH-jbRc()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object v1, p0, Lcoil3/compose/internal/ContentPainterElement;->alignment:Landroidx/compose/ui/Alignment;

    .line 52
    .line 53
    iput-object v1, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->alignment:Landroidx/compose/ui/Alignment;

    .line 54
    .line 55
    iget-object v1, v6, Lcoil3/request/ImageRequest;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 56
    .line 57
    instance-of v3, v1, Lcoil3/compose/ConstraintsSizeResolver;

    .line 58
    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    check-cast v1, Lcoil3/compose/ConstraintsSizeResolver;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 v1, 0x0

    .line 65
    :goto_0
    iput-object v1, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->constraintSizeResolver:Lcoil3/compose/ConstraintsSizeResolver;

    .line 66
    .line 67
    iput-object v5, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 68
    .line 69
    const/high16 v1, 0x3f800000    # 1.0f

    .line 70
    .line 71
    iput v1, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->alpha:F

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    iput-boolean v1, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->clipToBounds:Z

    .line 75
    .line 76
    iget-object v1, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->contentDescription:Ljava/lang/String;

    .line 77
    .line 78
    iget-object p0, p0, Lcoil3/compose/internal/ContentPainterElement;->contentDescription:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_1

    .line 85
    .line 86
    iput-object p0, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->contentDescription:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {p1}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    iget-object p0, p1, Lcoil3/compose/internal/AbstractContentPainterNode;->constraintSizeResolver:Lcoil3/compose/ConstraintsSizeResolver;

    .line 92
    .line 93
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    if-nez p0, :cond_3

    .line 100
    .line 101
    :cond_2
    invoke-static {p1}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    invoke-static {p1}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method
