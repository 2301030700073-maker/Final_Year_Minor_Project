.class public final Lorg/wikipedia/pageimages/db/PageImage;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/wikipedia/pageimages/db/PageImage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final apiTitle:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public geoLat:D

.field public geoLon:D

.field public imageName:Ljava/lang/String;

.field public final lang:Ljava/lang/String;

.field public final namespace:Ljava/lang/String;

.field public timeSpentSec:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/wikipedia/page/PageTitle$Creator;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Lorg/wikipedia/page/PageTitle$Creator;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/wikipedia/pageimages/db/PageImage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDD)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lorg/wikipedia/pageimages/db/PageImage;->lang:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p2, p0, Lorg/wikipedia/pageimages/db/PageImage;->namespace:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p3, p0, Lorg/wikipedia/pageimages/db/PageImage;->apiTitle:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p4, p0, Lorg/wikipedia/pageimages/db/PageImage;->imageName:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p5, p0, Lorg/wikipedia/pageimages/db/PageImage;->description:Ljava/lang/String;

    .line 22
    .line 23
    iput p6, p0, Lorg/wikipedia/pageimages/db/PageImage;->timeSpentSec:I

    .line 24
    .line 25
    iput-wide p7, p0, Lorg/wikipedia/pageimages/db/PageImage;->geoLat:D

    .line 26
    .line 27
    iput-wide p9, p0, Lorg/wikipedia/pageimages/db/PageImage;->geoLon:D

    .line 28
    .line 29
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
    instance-of v1, p1, Lorg/wikipedia/pageimages/db/PageImage;

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
    check-cast p1, Lorg/wikipedia/pageimages/db/PageImage;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/wikipedia/pageimages/db/PageImage;->lang:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/wikipedia/pageimages/db/PageImage;->lang:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/wikipedia/pageimages/db/PageImage;->namespace:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/wikipedia/pageimages/db/PageImage;->namespace:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/wikipedia/pageimages/db/PageImage;->apiTitle:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lorg/wikipedia/pageimages/db/PageImage;->apiTitle:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/wikipedia/pageimages/db/PageImage;->imageName:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lorg/wikipedia/pageimages/db/PageImage;->imageName:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/wikipedia/pageimages/db/PageImage;->description:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lorg/wikipedia/pageimages/db/PageImage;->description:Ljava/lang/String;

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
    iget v1, p0, Lorg/wikipedia/pageimages/db/PageImage;->timeSpentSec:I

    .line 69
    .line 70
    iget v3, p1, Lorg/wikipedia/pageimages/db/PageImage;->timeSpentSec:I

    .line 71
    .line 72
    if-eq v1, v3, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-wide v3, p0, Lorg/wikipedia/pageimages/db/PageImage;->geoLat:D

    .line 76
    .line 77
    iget-wide v5, p1, Lorg/wikipedia/pageimages/db/PageImage;->geoLat:D

    .line 78
    .line 79
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    iget-wide v3, p0, Lorg/wikipedia/pageimages/db/PageImage;->geoLon:D

    .line 87
    .line 88
    iget-wide p0, p1, Lorg/wikipedia/pageimages/db/PageImage;->geoLon:D

    .line 89
    .line 90
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Double;->compare(DD)I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_9

    .line 95
    .line 96
    return v2

    .line 97
    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/wikipedia/pageimages/db/PageImage;->lang:Ljava/lang/String;

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
    iget-object v2, p0, Lorg/wikipedia/pageimages/db/PageImage;->namespace:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lorg/wikipedia/pageimages/db/PageImage;->apiTitle:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lorg/wikipedia/pageimages/db/PageImage;->imageName:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    move v2, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    :goto_0
    add-int/2addr v0, v2

    .line 34
    mul-int/2addr v0, v1

    .line 35
    iget-object v2, p0, Lorg/wikipedia/pageimages/db/PageImage;->description:Ljava/lang/String;

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    :goto_1
    add-int/2addr v0, v3

    .line 45
    mul-int/2addr v0, v1

    .line 46
    iget v2, p0, Lorg/wikipedia/pageimages/db/PageImage;->timeSpentSec:I

    .line 47
    .line 48
    add-int/2addr v0, v2

    .line 49
    mul-int/2addr v0, v1

    .line 50
    iget-wide v2, p0, Lorg/wikipedia/pageimages/db/PageImage;->geoLat:D

    .line 51
    .line 52
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    const/16 v4, 0x20

    .line 57
    .line 58
    ushr-long v5, v2, v4

    .line 59
    .line 60
    xor-long/2addr v2, v5

    .line 61
    long-to-int v2, v2

    .line 62
    add-int/2addr v0, v2

    .line 63
    mul-int/2addr v0, v1

    .line 64
    iget-wide v1, p0, Lorg/wikipedia/pageimages/db/PageImage;->geoLon:D

    .line 65
    .line 66
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    ushr-long v3, v1, v4

    .line 71
    .line 72
    xor-long/2addr v1, v3

    .line 73
    long-to-int p0, v1

    .line 74
    add-int/2addr v0, p0

    .line 75
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/wikipedia/pageimages/db/PageImage;->imageName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/pageimages/db/PageImage;->description:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lorg/wikipedia/pageimages/db/PageImage;->timeSpentSec:I

    .line 6
    .line 7
    iget-wide v3, p0, Lorg/wikipedia/pageimages/db/PageImage;->geoLat:D

    .line 8
    .line 9
    iget-wide v5, p0, Lorg/wikipedia/pageimages/db/PageImage;->geoLon:D

    .line 10
    .line 11
    const-string v7, ", namespace="

    .line 12
    .line 13
    const-string v8, ", apiTitle="

    .line 14
    .line 15
    const-string v9, "PageImage(lang="

    .line 16
    .line 17
    iget-object v10, p0, Lorg/wikipedia/pageimages/db/PageImage;->lang:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v11, p0, Lorg/wikipedia/pageimages/db/PageImage;->namespace:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v9, v10, v7, v11, v8}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    const-string v8, ", imageName="

    .line 26
    .line 27
    const-string v9, ", description="

    .line 28
    .line 29
    iget-object p0, p0, Lorg/wikipedia/pageimages/db/PageImage;->apiTitle:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v7, p0, v8, v0, v9}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, ", timeSpentSec="

    .line 38
    .line 39
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, ", geoLat="

    .line 46
    .line 47
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ", geoLon="

    .line 54
    .line 55
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p0, ")"

    .line 62
    .line 63
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lorg/wikipedia/pageimages/db/PageImage;->lang:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lorg/wikipedia/pageimages/db/PageImage;->namespace:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lorg/wikipedia/pageimages/db/PageImage;->apiTitle:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lorg/wikipedia/pageimages/db/PageImage;->imageName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lorg/wikipedia/pageimages/db/PageImage;->description:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget p2, p0, Lorg/wikipedia/pageimages/db/PageImage;->timeSpentSec:I

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget-wide v0, p0, Lorg/wikipedia/pageimages/db/PageImage;->geoLat:D

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 37
    .line 38
    .line 39
    iget-wide v0, p0, Lorg/wikipedia/pageimages/db/PageImage;->geoLon:D

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
