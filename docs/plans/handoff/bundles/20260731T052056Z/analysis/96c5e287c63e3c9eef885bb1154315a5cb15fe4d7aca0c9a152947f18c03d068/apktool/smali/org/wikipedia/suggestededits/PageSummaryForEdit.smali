.class public final Lorg/wikipedia/suggestededits/PageSummaryForEdit;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/wikipedia/suggestededits/PageSummaryForEdit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final description:Ljava/lang/String;

.field public final displayTitle:Ljava/lang/String;

.field public final extract:Ljava/lang/String;

.field public extractHtml:Ljava/lang/String;

.field public final lang:Ljava/lang/String;

.field public metadata:Lorg/wikipedia/gallery/ExtMetadata;

.field public final pageTitle:Lorg/wikipedia/page/PageTitle;

.field public final thumbnailUrl:Ljava/lang/String;

.field public timestamp:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/suggestededits/PageSummaryForEdit$Creator;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 15

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x40

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v10, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v10, p7

    .line 11
    .line 12
    :goto_0
    and-int/lit16 v0, v0, 0x80

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    move-object v11, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object/from16 v11, p8

    .line 19
    .line 20
    :goto_1
    const/4 v12, 0x0

    .line 21
    const/4 v13, 0x0

    .line 22
    const/4 v14, 0x0

    .line 23
    move-object v3, p0

    .line 24
    move-object/from16 v4, p1

    .line 25
    .line 26
    move-object/from16 v5, p2

    .line 27
    .line 28
    move-object/from16 v6, p3

    .line 29
    .line 30
    move-object/from16 v7, p4

    .line 31
    .line 32
    move-object/from16 v8, p5

    .line 33
    .line 34
    move-object/from16 v9, p6

    .line 35
    .line 36
    invoke-direct/range {v3 .. v14}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/ExtMetadata;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/ExtMetadata;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->title:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->lang:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 44
    iput-object p4, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->displayTitle:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->description:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->thumbnailUrl:Ljava/lang/String;

    .line 47
    iput-object p7, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->extract:Ljava/lang/String;

    .line 48
    iput-object p8, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->extractHtml:Ljava/lang/String;

    .line 49
    iput-object p9, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->timestamp:Ljava/lang/String;

    .line 50
    iput-object p10, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->user:Ljava/lang/String;

    .line 51
    iput-object p11, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

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
    check-cast p1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->title:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->title:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->lang:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->lang:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 36
    .line 37
    iget-object v3, p1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->displayTitle:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->displayTitle:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->description:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->description:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->thumbnailUrl:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->thumbnailUrl:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->extract:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, p1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->extract:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->extractHtml:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->extractHtml:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-object v1, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->timestamp:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v3, p1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->timestamp:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->user:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v3, p1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->user:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-object p0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 124
    .line 125
    iget-object p1, p1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 126
    .line 127
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    if-nez p0, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    return v0
.end method

.method public final getPreferredSizeThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/util/ImageUrlUtil;->WIDTH_IN_IMAGE_URL_REGEX:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->thumbnailUrl:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x3c0

    .line 9
    .line 10
    invoke-static {v0, p0}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->title:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->lang:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 17
    .line 18
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v0

    .line 23
    mul-int/2addr v2, v1

    .line 24
    iget-object v0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->displayTitle:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v2, v1, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v2, 0x0

    .line 31
    iget-object v3, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->description:Ljava/lang/String;

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    move v3, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    :goto_0
    add-int/2addr v0, v3

    .line 42
    mul-int/2addr v0, v1

    .line 43
    iget-object v3, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->thumbnailUrl:Ljava/lang/String;

    .line 44
    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    move v3, v2

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    :goto_1
    add-int/2addr v0, v3

    .line 54
    mul-int/2addr v0, v1

    .line 55
    iget-object v3, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->extract:Ljava/lang/String;

    .line 56
    .line 57
    if-nez v3, :cond_2

    .line 58
    .line 59
    move v3, v2

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    :goto_2
    add-int/2addr v0, v3

    .line 66
    mul-int/2addr v0, v1

    .line 67
    iget-object v3, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->extractHtml:Ljava/lang/String;

    .line 68
    .line 69
    if-nez v3, :cond_3

    .line 70
    .line 71
    move v3, v2

    .line 72
    goto :goto_3

    .line 73
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    :goto_3
    add-int/2addr v0, v3

    .line 78
    mul-int/2addr v0, v1

    .line 79
    iget-object v3, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->timestamp:Ljava/lang/String;

    .line 80
    .line 81
    if-nez v3, :cond_4

    .line 82
    .line 83
    move v3, v2

    .line 84
    goto :goto_4

    .line 85
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    :goto_4
    add-int/2addr v0, v3

    .line 90
    mul-int/2addr v0, v1

    .line 91
    iget-object v3, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->user:Ljava/lang/String;

    .line 92
    .line 93
    if-nez v3, :cond_5

    .line 94
    .line 95
    move v3, v2

    .line 96
    goto :goto_5

    .line 97
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    :goto_5
    add-int/2addr v0, v3

    .line 102
    mul-int/2addr v0, v1

    .line 103
    iget-object p0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 104
    .line 105
    if-nez p0, :cond_6

    .line 106
    .line 107
    goto :goto_6

    .line 108
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    :goto_6
    add-int/2addr v0, v2

    .line 113
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->extractHtml:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->timestamp:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->user:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 8
    .line 9
    const-string v4, ", lang="

    .line 10
    .line 11
    const-string v5, ", pageTitle="

    .line 12
    .line 13
    const-string v6, "PageSummaryForEdit(title="

    .line 14
    .line 15
    iget-object v7, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->title:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->lang:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v6, v7, v4, v8, v5}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget-object v5, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v5, ", displayTitle="

    .line 29
    .line 30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v5, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->displayTitle:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v5, ", description="

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v5, ", thumbnailUrl="

    .line 44
    .line 45
    const-string v6, ", extract="

    .line 46
    .line 47
    iget-object v7, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->description:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v8, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->thumbnailUrl:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v4, v7, v5, v8, v6}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v5, ", extractHtml="

    .line 55
    .line 56
    const-string v6, ", timestamp="

    .line 57
    .line 58
    iget-object p0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->extract:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v4, p0, v5, v0, v6}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string p0, ", user="

    .line 64
    .line 65
    const-string v0, ", metadata="

    .line 66
    .line 67
    invoke-static {v4, v1, p0, v2, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p0, ")"

    .line 74
    .line 75
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->title:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->lang:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Lorg/wikipedia/page/PageTitle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->displayTitle:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->description:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->thumbnailUrl:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->extract:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->extractHtml:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->timestamp:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->user:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 55
    .line 56
    if-nez p0, :cond_0

    .line 57
    .line 58
    const/4 p0, 0x0

    .line 59
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x1

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/gallery/ExtMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
