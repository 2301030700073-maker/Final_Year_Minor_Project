.class public final Lus/shandian/giga/get/MissionRecoveryInfo;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lus/shandian/giga/get/MissionRecoveryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private desired:Ljava/lang/String;

.field private desiredBitrate:I

.field private format:Lorg/schabi/newpipe/extractor/MediaFormat;

.field private isDesired2:Z

.field private kind:C

.field private validateCondition:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo$Creator;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/error/ErrorInfo$Creator;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lus/shandian/giga/get/MissionRecoveryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;ZICLjava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->format:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 85
    iput-object p2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desired:Ljava/lang/String;

    .line 86
    iput-boolean p3, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    .line 87
    iput p4, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desiredBitrate:I

    .line 88
    iput-char p5, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->kind:C

    .line 89
    iput-object p6, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->validateCondition:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/stream/Stream;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    move-object v0, p0

    .line 11
    invoke-direct/range {v0 .. v6}, Lus/shandian/giga/get/MissionRecoveryInfo;-><init>(Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;ZICLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    instance-of p0, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAverageBitrate()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    iput p0, v0, Lus/shandian/giga/get/MissionRecoveryInfo;->desiredBitrate:I

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    iput-boolean p0, v0, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    .line 28
    .line 29
    const/16 p0, 0x61

    .line 30
    .line 31
    iput-char p0, v0, Lus/shandian/giga/get/MissionRecoveryInfo;->kind:C

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    instance-of p0, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 39
    .line 40
    iget-object p0, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    .line 41
    .line 42
    iput-object p0, v0, Lus/shandian/giga/get/MissionRecoveryInfo;->desired:Ljava/lang/String;

    .line 43
    .line 44
    iget-boolean p0, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    .line 45
    .line 46
    iput-boolean p0, v0, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    .line 47
    .line 48
    const/16 p0, 0x76

    .line 49
    .line 50
    iput-char p0, v0, Lus/shandian/giga/get/MissionRecoveryInfo;->kind:C

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    instance-of p0, p1, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    .line 54
    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    .line 58
    .line 59
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->getLanguageTag()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    iput-object p0, v0, Lus/shandian/giga/get/MissionRecoveryInfo;->desired:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->isAutoGenerated()Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    iput-boolean p0, v0, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    .line 70
    .line 71
    const/16 p0, 0x73

    .line 72
    .line 73
    iput-char p0, v0, Lus/shandian/giga/get/MissionRecoveryInfo;->kind:C

    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    const-string p0, "Unknown stream kind"

    .line 77
    .line 78
    invoke-static {p0}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x0

    .line 82
    throw p0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getDesired()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desired:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDesiredBitrate()I
    .locals 0

    .line 1
    iget p0, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desiredBitrate:I

    .line 2
    .line 3
    return p0
.end method

.method public final getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->format:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKind()C
    .locals 0

    .line 1
    iget-char p0, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->kind:C

    .line 2
    .line 3
    return p0
.end method

.method public final getValidateCondition()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->validateCondition:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isDesired2()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    .line 2
    .line 3
    return p0
.end method

.method public final setValidateCondition(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->validateCondition:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{type="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-char v1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->kind:C

    .line 9
    .line 10
    const/16 v2, 0x61

    .line 11
    .line 12
    if-eq v1, v2, :cond_2

    .line 13
    .line 14
    const/16 v2, 0x73

    .line 15
    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    const/16 v2, 0x76

    .line 19
    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    const-string v1, "other"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ""

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v1, "video"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desired:Ljava/lang/String;

    .line 36
    .line 37
    iget-boolean v2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v4, "quality="

    .line 42
    .line 43
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, " videoOnly="

    .line 50
    .line 51
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const-string v1, "subtitles"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desired:Ljava/lang/String;

    .line 68
    .line 69
    iget-boolean v2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    .line 70
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v4, "language="

    .line 74
    .line 75
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, " autoGenerated="

    .line 82
    .line 83
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    const-string v1, "audio"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget v1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desiredBitrate:I

    .line 100
    .line 101
    const-string v2, "bitrate="

    .line 102
    .line 103
    invoke-static {v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :goto_0
    const-string v2, " format="

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->format:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 113
    .line 114
    if-eqz p0, :cond_3

    .line 115
    .line 116
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->name:Ljava/lang/String;

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    const/4 p0, 0x0

    .line 120
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const/16 p0, 0x20

    .line 124
    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const/16 p0, 0x7d

    .line 132
    .line 133
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->format:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object p2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desired:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-boolean p2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget p2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desiredBitrate:I

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    iget-char p2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->kind:C

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->validateCondition:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
