.class public final Lorg/wikipedia/page/PageProperties;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/wikipedia/page/PageProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public canEdit:Z

.field public final descriptionSource:Ljava/lang/String;

.field public final displayTitle:Ljava/lang/String;

.field public editProtectionStatus:Ljava/lang/String;

.field public final geo:Landroid/location/Location;

.field public final isMainPage:Z

.field public final lastModified:Ljava/util/Date;

.field public final leadImageHeight:I

.field public final leadImageName:Ljava/lang/String;

.field public final leadImageUrl:Ljava/lang/String;

.field public final leadImageWidth:I

.field public final namespace:Lorg/wikipedia/page/Namespace;

.field public final pageId:I

.field public protection:Lorg/wikipedia/dataclient/page/Protection;

.field public final revisionId:J

.field public final wikiBaseItem:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/wikipedia/page/PageTitle$Creator;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Lorg/wikipedia/page/PageTitle$Creator;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/wikipedia/page/PageProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(ILorg/wikipedia/page/Namespace;JLjava/util/Date;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput p1, p0, Lorg/wikipedia/page/PageProperties;->pageId:I

    .line 14
    .line 15
    iput-object p2, p0, Lorg/wikipedia/page/PageProperties;->namespace:Lorg/wikipedia/page/Namespace;

    .line 16
    .line 17
    iput-wide p3, p0, Lorg/wikipedia/page/PageProperties;->revisionId:J

    .line 18
    .line 19
    iput-object p5, p0, Lorg/wikipedia/page/PageProperties;->lastModified:Ljava/util/Date;

    .line 20
    .line 21
    iput-object p6, p0, Lorg/wikipedia/page/PageProperties;->displayTitle:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p7, p0, Lorg/wikipedia/page/PageProperties;->editProtectionStatus:Ljava/lang/String;

    .line 24
    .line 25
    iput-boolean p8, p0, Lorg/wikipedia/page/PageProperties;->isMainPage:Z

    .line 26
    .line 27
    iput-object p9, p0, Lorg/wikipedia/page/PageProperties;->leadImageUrl:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p10, p0, Lorg/wikipedia/page/PageProperties;->leadImageName:Ljava/lang/String;

    .line 30
    .line 31
    iput p11, p0, Lorg/wikipedia/page/PageProperties;->leadImageWidth:I

    .line 32
    .line 33
    iput p12, p0, Lorg/wikipedia/page/PageProperties;->leadImageHeight:I

    .line 34
    .line 35
    iput-object p13, p0, Lorg/wikipedia/page/PageProperties;->geo:Landroid/location/Location;

    .line 36
    .line 37
    iput-object p14, p0, Lorg/wikipedia/page/PageProperties;->wikiBaseItem:Ljava/lang/String;

    .line 38
    .line 39
    iput-object p15, p0, Lorg/wikipedia/page/PageProperties;->descriptionSource:Ljava/lang/String;

    .line 40
    .line 41
    move/from16 p1, p16

    .line 42
    .line 43
    iput-boolean p1, p0, Lorg/wikipedia/page/PageProperties;->canEdit:Z

    .line 44
    .line 45
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
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/page/PageProperties;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    check-cast p1, Lorg/wikipedia/page/PageProperties;

    .line 12
    .line 13
    iget v0, p0, Lorg/wikipedia/page/PageProperties;->pageId:I

    .line 14
    .line 15
    iget v1, p1, Lorg/wikipedia/page/PageProperties;->pageId:I

    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/page/PageProperties;->namespace:Lorg/wikipedia/page/Namespace;

    .line 22
    .line 23
    iget-object v1, p1, Lorg/wikipedia/page/PageProperties;->namespace:Lorg/wikipedia/page/Namespace;

    .line 24
    .line 25
    if-eq v0, v1, :cond_3

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_3
    iget-wide v0, p0, Lorg/wikipedia/page/PageProperties;->revisionId:J

    .line 30
    .line 31
    iget-wide v2, p1, Lorg/wikipedia/page/PageProperties;->revisionId:J

    .line 32
    .line 33
    cmp-long v0, v0, v2

    .line 34
    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_4
    iget-object v0, p0, Lorg/wikipedia/page/PageProperties;->lastModified:Ljava/util/Date;

    .line 40
    .line 41
    iget-object v1, p1, Lorg/wikipedia/page/PageProperties;->lastModified:Ljava/util/Date;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_5

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_5
    iget-object v0, p0, Lorg/wikipedia/page/PageProperties;->displayTitle:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v1, p1, Lorg/wikipedia/page/PageProperties;->displayTitle:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_6

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_6
    iget-object v0, p0, Lorg/wikipedia/page/PageProperties;->editProtectionStatus:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v1, p1, Lorg/wikipedia/page/PageProperties;->editProtectionStatus:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_7

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_7
    iget-boolean v0, p0, Lorg/wikipedia/page/PageProperties;->isMainPage:Z

    .line 74
    .line 75
    iget-boolean v1, p1, Lorg/wikipedia/page/PageProperties;->isMainPage:Z

    .line 76
    .line 77
    if-eq v0, v1, :cond_8

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_8
    iget-object v0, p0, Lorg/wikipedia/page/PageProperties;->leadImageUrl:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v1, p1, Lorg/wikipedia/page/PageProperties;->leadImageUrl:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_9

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_9
    iget-object v0, p0, Lorg/wikipedia/page/PageProperties;->leadImageName:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v1, p1, Lorg/wikipedia/page/PageProperties;->leadImageName:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_a

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_a
    iget v0, p0, Lorg/wikipedia/page/PageProperties;->leadImageWidth:I

    .line 103
    .line 104
    iget v1, p1, Lorg/wikipedia/page/PageProperties;->leadImageWidth:I

    .line 105
    .line 106
    if-eq v0, v1, :cond_b

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_b
    iget v0, p0, Lorg/wikipedia/page/PageProperties;->leadImageHeight:I

    .line 110
    .line 111
    iget v1, p1, Lorg/wikipedia/page/PageProperties;->leadImageHeight:I

    .line 112
    .line 113
    if-eq v0, v1, :cond_c

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_c
    iget-object v0, p0, Lorg/wikipedia/page/PageProperties;->geo:Landroid/location/Location;

    .line 117
    .line 118
    iget-object v1, p1, Lorg/wikipedia/page/PageProperties;->geo:Landroid/location/Location;

    .line 119
    .line 120
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_d

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_d
    iget-object v0, p0, Lorg/wikipedia/page/PageProperties;->wikiBaseItem:Ljava/lang/String;

    .line 128
    .line 129
    iget-object v1, p1, Lorg/wikipedia/page/PageProperties;->wikiBaseItem:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_e

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_e
    iget-object v0, p0, Lorg/wikipedia/page/PageProperties;->descriptionSource:Ljava/lang/String;

    .line 139
    .line 140
    iget-object v1, p1, Lorg/wikipedia/page/PageProperties;->descriptionSource:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_f

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_f
    iget-boolean p0, p0, Lorg/wikipedia/page/PageProperties;->canEdit:Z

    .line 150
    .line 151
    iget-boolean p1, p1, Lorg/wikipedia/page/PageProperties;->canEdit:Z

    .line 152
    .line 153
    if-eq p0, p1, :cond_10

    .line 154
    .line 155
    :goto_0
    const/4 p0, 0x0

    .line 156
    return p0

    .line 157
    :cond_10
    :goto_1
    const/4 p0, 0x1

    .line 158
    return p0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget v0, p0, Lorg/wikipedia/page/PageProperties;->pageId:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    iget-object v2, p0, Lorg/wikipedia/page/PageProperties;->namespace:Lorg/wikipedia/page/Namespace;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    add-int/2addr v2, v0

    .line 13
    mul-int/2addr v2, v1

    .line 14
    const/16 v0, 0x20

    .line 15
    .line 16
    iget-wide v3, p0, Lorg/wikipedia/page/PageProperties;->revisionId:J

    .line 17
    .line 18
    ushr-long v5, v3, v0

    .line 19
    .line 20
    xor-long/2addr v3, v5

    .line 21
    long-to-int v0, v3

    .line 22
    add-int/2addr v2, v0

    .line 23
    mul-int/2addr v2, v1

    .line 24
    iget-object v0, p0, Lorg/wikipedia/page/PageProperties;->lastModified:Ljava/util/Date;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    add-int/2addr v0, v2

    .line 31
    mul-int/2addr v0, v1

    .line 32
    iget-object v2, p0, Lorg/wikipedia/page/PageProperties;->displayTitle:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v2, p0, Lorg/wikipedia/page/PageProperties;->editProtectionStatus:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget-boolean v2, p0, Lorg/wikipedia/page/PageProperties;->isMainPage:Z

    .line 45
    .line 46
    const/16 v3, 0x4d5

    .line 47
    .line 48
    const/16 v4, 0x4cf

    .line 49
    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    move v2, v4

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move v2, v3

    .line 55
    :goto_0
    add-int/2addr v0, v2

    .line 56
    mul-int/2addr v0, v1

    .line 57
    const/4 v2, 0x0

    .line 58
    iget-object v5, p0, Lorg/wikipedia/page/PageProperties;->leadImageUrl:Ljava/lang/String;

    .line 59
    .line 60
    if-nez v5, :cond_1

    .line 61
    .line 62
    move v5, v2

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    :goto_1
    add-int/2addr v0, v5

    .line 69
    mul-int/2addr v0, v1

    .line 70
    iget-object v5, p0, Lorg/wikipedia/page/PageProperties;->leadImageName:Ljava/lang/String;

    .line 71
    .line 72
    if-nez v5, :cond_2

    .line 73
    .line 74
    move v5, v2

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    :goto_2
    add-int/2addr v0, v5

    .line 81
    mul-int/2addr v0, v1

    .line 82
    iget v5, p0, Lorg/wikipedia/page/PageProperties;->leadImageWidth:I

    .line 83
    .line 84
    add-int/2addr v0, v5

    .line 85
    mul-int/2addr v0, v1

    .line 86
    iget v5, p0, Lorg/wikipedia/page/PageProperties;->leadImageHeight:I

    .line 87
    .line 88
    add-int/2addr v0, v5

    .line 89
    mul-int/2addr v0, v1

    .line 90
    iget-object v5, p0, Lorg/wikipedia/page/PageProperties;->geo:Landroid/location/Location;

    .line 91
    .line 92
    if-nez v5, :cond_3

    .line 93
    .line 94
    move v5, v2

    .line 95
    goto :goto_3

    .line 96
    :cond_3
    invoke-virtual {v5}, Landroid/location/Location;->hashCode()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    :goto_3
    add-int/2addr v0, v5

    .line 101
    mul-int/2addr v0, v1

    .line 102
    iget-object v5, p0, Lorg/wikipedia/page/PageProperties;->wikiBaseItem:Ljava/lang/String;

    .line 103
    .line 104
    if-nez v5, :cond_4

    .line 105
    .line 106
    move v5, v2

    .line 107
    goto :goto_4

    .line 108
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    :goto_4
    add-int/2addr v0, v5

    .line 113
    mul-int/2addr v0, v1

    .line 114
    iget-object v5, p0, Lorg/wikipedia/page/PageProperties;->descriptionSource:Ljava/lang/String;

    .line 115
    .line 116
    if-nez v5, :cond_5

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    :goto_5
    add-int/2addr v0, v2

    .line 124
    mul-int/2addr v0, v1

    .line 125
    iget-boolean p0, p0, Lorg/wikipedia/page/PageProperties;->canEdit:Z

    .line 126
    .line 127
    if-eqz p0, :cond_6

    .line 128
    .line 129
    move v3, v4

    .line 130
    :cond_6
    add-int/2addr v0, v3

    .line 131
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/PageProperties;->editProtectionStatus:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v1, p0, Lorg/wikipedia/page/PageProperties;->canEdit:Z

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "PageProperties(pageId="

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v3, p0, Lorg/wikipedia/page/PageProperties;->pageId:I

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v3, ", namespace="

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lorg/wikipedia/page/PageProperties;->namespace:Lorg/wikipedia/page/Namespace;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, ", revisionId="

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-wide v3, p0, Lorg/wikipedia/page/PageProperties;->revisionId:J

    .line 33
    .line 34
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, ", lastModified="

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lorg/wikipedia/page/PageProperties;->lastModified:Ljava/util/Date;

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, ", displayTitle="

    .line 48
    .line 49
    const-string v4, ", editProtectionStatus="

    .line 50
    .line 51
    iget-object v5, p0, Lorg/wikipedia/page/PageProperties;->displayTitle:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v2, v3, v5, v4, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, ", isMainPage="

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-boolean v0, p0, Lorg/wikipedia/page/PageProperties;->isMainPage:Z

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, ", leadImageUrl="

    .line 67
    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lorg/wikipedia/page/PageProperties;->leadImageUrl:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ", leadImageName="

    .line 77
    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lorg/wikipedia/page/PageProperties;->leadImageName:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v0, ", leadImageWidth="

    .line 87
    .line 88
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v0, p0, Lorg/wikipedia/page/PageProperties;->leadImageWidth:I

    .line 92
    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v0, ", leadImageHeight="

    .line 97
    .line 98
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget v0, p0, Lorg/wikipedia/page/PageProperties;->leadImageHeight:I

    .line 102
    .line 103
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v0, ", geo="

    .line 107
    .line 108
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lorg/wikipedia/page/PageProperties;->geo:Landroid/location/Location;

    .line 112
    .line 113
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, ", wikiBaseItem="

    .line 117
    .line 118
    const-string v3, ", descriptionSource="

    .line 119
    .line 120
    iget-object v4, p0, Lorg/wikipedia/page/PageProperties;->wikiBaseItem:Ljava/lang/String;

    .line 121
    .line 122
    iget-object p0, p0, Lorg/wikipedia/page/PageProperties;->descriptionSource:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v2, v0, v4, v3, p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string p0, ", canEdit="

    .line 128
    .line 129
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string p0, ")"

    .line 136
    .line 137
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/wikipedia/page/PageProperties;->pageId:I

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/wikipedia/page/PageProperties;->namespace:Lorg/wikipedia/page/Namespace;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-wide v0, p0, Lorg/wikipedia/page/PageProperties;->revisionId:J

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/wikipedia/page/PageProperties;->lastModified:Ljava/util/Date;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lorg/wikipedia/page/PageProperties;->displayTitle:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lorg/wikipedia/page/PageProperties;->editProtectionStatus:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-boolean v0, p0, Lorg/wikipedia/page/PageProperties;->isMainPage:Z

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lorg/wikipedia/page/PageProperties;->leadImageUrl:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lorg/wikipedia/page/PageProperties;->leadImageName:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget v0, p0, Lorg/wikipedia/page/PageProperties;->leadImageWidth:I

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    .line 61
    .line 62
    iget v0, p0, Lorg/wikipedia/page/PageProperties;->leadImageHeight:I

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lorg/wikipedia/page/PageProperties;->geo:Landroid/location/Location;

    .line 68
    .line 69
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Lorg/wikipedia/page/PageProperties;->wikiBaseItem:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p2, p0, Lorg/wikipedia/page/PageProperties;->descriptionSource:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-boolean p0, p0, Lorg/wikipedia/page/PageProperties;->canEdit:Z

    .line 83
    .line 84
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
