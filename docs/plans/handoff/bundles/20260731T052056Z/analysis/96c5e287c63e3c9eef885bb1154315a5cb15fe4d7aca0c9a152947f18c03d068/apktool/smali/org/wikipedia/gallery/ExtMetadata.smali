.class public final Lorg/wikipedia/gallery/ExtMetadata;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/wikipedia/gallery/ExtMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/wikipedia/gallery/ExtMetadata$Companion;


# instance fields
.field public final artist:Lorg/wikipedia/gallery/ExtMetadata$Values;

.field public final credit:Lorg/wikipedia/gallery/ExtMetadata$Values;

.field public final dateTimeOriginal:Lorg/wikipedia/gallery/ExtMetadata$Values;

.field public final imageDescription:Lorg/wikipedia/gallery/ExtMetadata$Values;

.field public final license:Lorg/wikipedia/gallery/ExtMetadata$Values;

.field public final licenseShortName:Lorg/wikipedia/gallery/ExtMetadata$Values;

.field public final licenseUrl:Lorg/wikipedia/gallery/ExtMetadata$Values;

.field public final objectName:Lorg/wikipedia/gallery/ExtMetadata$Values;

.field public final usageTerms:Lorg/wikipedia/gallery/ExtMetadata$Values;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/wikipedia/gallery/ExtMetadata$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/gallery/ExtMetadata;->Companion:Lorg/wikipedia/gallery/ExtMetadata$Companion;

    .line 7
    .line 8
    new-instance v0, Lorg/maplibre/android/util/DefaultStyle$1;

    .line 9
    .line 10
    const/16 v1, 0x1d

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lorg/maplibre/android/util/DefaultStyle$1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/wikipedia/gallery/ExtMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object v1, p0, Lorg/wikipedia/gallery/ExtMetadata;->objectName:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/gallery/ExtMetadata;->objectName:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    iput-object v1, p0, Lorg/wikipedia/gallery/ExtMetadata;->imageDescription:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/gallery/ExtMetadata;->imageDescription:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 22
    .line 23
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 24
    .line 25
    if-nez p2, :cond_2

    .line 26
    .line 27
    iput-object v1, p0, Lorg/wikipedia/gallery/ExtMetadata;->dateTimeOriginal:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/gallery/ExtMetadata;->dateTimeOriginal:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 31
    .line 32
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 33
    .line 34
    if-nez p2, :cond_3

    .line 35
    .line 36
    iput-object v1, p0, Lorg/wikipedia/gallery/ExtMetadata;->artist:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    iput-object p5, p0, Lorg/wikipedia/gallery/ExtMetadata;->artist:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 40
    .line 41
    :goto_3
    and-int/lit8 p2, p1, 0x10

    .line 42
    .line 43
    if-nez p2, :cond_4

    .line 44
    .line 45
    iput-object v1, p0, Lorg/wikipedia/gallery/ExtMetadata;->credit:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_4
    iput-object p6, p0, Lorg/wikipedia/gallery/ExtMetadata;->credit:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 49
    .line 50
    :goto_4
    and-int/lit8 p2, p1, 0x20

    .line 51
    .line 52
    if-nez p2, :cond_5

    .line 53
    .line 54
    iput-object v1, p0, Lorg/wikipedia/gallery/ExtMetadata;->licenseShortName:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 55
    .line 56
    goto :goto_5

    .line 57
    :cond_5
    iput-object p7, p0, Lorg/wikipedia/gallery/ExtMetadata;->licenseShortName:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 58
    .line 59
    :goto_5
    and-int/lit8 p2, p1, 0x40

    .line 60
    .line 61
    if-nez p2, :cond_6

    .line 62
    .line 63
    iput-object v1, p0, Lorg/wikipedia/gallery/ExtMetadata;->usageTerms:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 64
    .line 65
    goto :goto_6

    .line 66
    :cond_6
    iput-object p8, p0, Lorg/wikipedia/gallery/ExtMetadata;->usageTerms:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 67
    .line 68
    :goto_6
    and-int/lit16 p2, p1, 0x80

    .line 69
    .line 70
    if-nez p2, :cond_7

    .line 71
    .line 72
    iput-object v1, p0, Lorg/wikipedia/gallery/ExtMetadata;->licenseUrl:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 73
    .line 74
    goto :goto_7

    .line 75
    :cond_7
    iput-object p9, p0, Lorg/wikipedia/gallery/ExtMetadata;->licenseUrl:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 76
    .line 77
    :goto_7
    and-int/lit16 p1, p1, 0x100

    .line 78
    .line 79
    if-nez p1, :cond_8

    .line 80
    .line 81
    iput-object v1, p0, Lorg/wikipedia/gallery/ExtMetadata;->license:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 82
    .line 83
    return-void

    .line 84
    :cond_8
    iput-object p10, p0, Lorg/wikipedia/gallery/ExtMetadata;->license:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 85
    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/wikipedia/gallery/ExtMetadata;->objectName:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 89
    iput-object p2, p0, Lorg/wikipedia/gallery/ExtMetadata;->imageDescription:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 90
    iput-object p3, p0, Lorg/wikipedia/gallery/ExtMetadata;->dateTimeOriginal:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 91
    iput-object p4, p0, Lorg/wikipedia/gallery/ExtMetadata;->artist:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 92
    iput-object p5, p0, Lorg/wikipedia/gallery/ExtMetadata;->credit:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 93
    iput-object p6, p0, Lorg/wikipedia/gallery/ExtMetadata;->licenseShortName:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 94
    iput-object p7, p0, Lorg/wikipedia/gallery/ExtMetadata;->usageTerms:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 95
    iput-object p8, p0, Lorg/wikipedia/gallery/ExtMetadata;->licenseUrl:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 96
    iput-object p9, p0, Lorg/wikipedia/gallery/ExtMetadata;->license:Lorg/wikipedia/gallery/ExtMetadata$Values;

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

.method public final imageDescription()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/gallery/ExtMetadata;->imageDescription:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/gallery/ExtMetadata$Values;->value:Ljava/lang/String;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    if-nez p0, :cond_1

    .line 10
    .line 11
    const-string p0, ""

    .line 12
    .line 13
    :cond_1
    return-object p0
.end method

.method public final licenseShortName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/gallery/ExtMetadata;->licenseShortName:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/gallery/ExtMetadata$Values;->value:Ljava/lang/String;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    if-nez p0, :cond_1

    .line 10
    .line 11
    const-string p0, ""

    .line 12
    .line 13
    :cond_1
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lorg/wikipedia/gallery/ExtMetadata;->objectName:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1, p2}, Lorg/wikipedia/gallery/ExtMetadata$Values;->writeToParcel(Landroid/os/Parcel;I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object v2, p0, Lorg/wikipedia/gallery/ExtMetadata;->imageDescription:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1, p2}, Lorg/wikipedia/gallery/ExtMetadata$Values;->writeToParcel(Landroid/os/Parcel;I)V

    .line 32
    .line 33
    .line 34
    :goto_1
    iget-object v2, p0, Lorg/wikipedia/gallery/ExtMetadata;->dateTimeOriginal:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 35
    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p1, p2}, Lorg/wikipedia/gallery/ExtMetadata$Values;->writeToParcel(Landroid/os/Parcel;I)V

    .line 46
    .line 47
    .line 48
    :goto_2
    iget-object v2, p0, Lorg/wikipedia/gallery/ExtMetadata;->artist:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 49
    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, p1, p2}, Lorg/wikipedia/gallery/ExtMetadata$Values;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    .line 61
    .line 62
    :goto_3
    iget-object v2, p0, Lorg/wikipedia/gallery/ExtMetadata;->credit:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 63
    .line 64
    if-nez v2, :cond_4

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, p1, p2}, Lorg/wikipedia/gallery/ExtMetadata$Values;->writeToParcel(Landroid/os/Parcel;I)V

    .line 74
    .line 75
    .line 76
    :goto_4
    iget-object v2, p0, Lorg/wikipedia/gallery/ExtMetadata;->licenseShortName:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 77
    .line 78
    if-nez v2, :cond_5

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, p1, p2}, Lorg/wikipedia/gallery/ExtMetadata$Values;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    .line 89
    .line 90
    :goto_5
    iget-object v2, p0, Lorg/wikipedia/gallery/ExtMetadata;->usageTerms:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 91
    .line 92
    if-nez v2, :cond_6

    .line 93
    .line 94
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_6

    .line 98
    :cond_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, p1, p2}, Lorg/wikipedia/gallery/ExtMetadata$Values;->writeToParcel(Landroid/os/Parcel;I)V

    .line 102
    .line 103
    .line 104
    :goto_6
    iget-object v2, p0, Lorg/wikipedia/gallery/ExtMetadata;->licenseUrl:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 105
    .line 106
    if-nez v2, :cond_7

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    .line 110
    .line 111
    goto :goto_7

    .line 112
    :cond_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, p1, p2}, Lorg/wikipedia/gallery/ExtMetadata$Values;->writeToParcel(Landroid/os/Parcel;I)V

    .line 116
    .line 117
    .line 118
    :goto_7
    iget-object p0, p0, Lorg/wikipedia/gallery/ExtMetadata;->license:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 119
    .line 120
    if-nez p0, :cond_8

    .line 121
    .line 122
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/gallery/ExtMetadata$Values;->writeToParcel(Landroid/os/Parcel;I)V

    .line 130
    .line 131
    .line 132
    return-void
.end method
