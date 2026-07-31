.class public final Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final bitrate:I

.field public final channels:I

.field public final codec:I

.field public final mediaType:Ljava/lang/String;

.field public final profile:I

.field public final sampleRate:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->codec:I

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->mediaType:Ljava/lang/String;

    .line 9
    .line 10
    iput p3, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->bitrate:I

    .line 11
    .line 12
    iput p4, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->sampleRate:I

    .line 13
    .line 14
    iput p5, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->channels:I

    .line 15
    .line 16
    iput p6, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->profile:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string p0, "Null mediaType"

    .line 20
    .line 21
    invoke-static {p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p1, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;

    .line 11
    .line 12
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->codec:I

    .line 13
    .line 14
    iget v3, p1, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->codec:I

    .line 15
    .line 16
    if-ne v1, v3, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->mediaType:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v3, p1, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->mediaType:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->bitrate:I

    .line 29
    .line 30
    iget v3, p1, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->bitrate:I

    .line 31
    .line 32
    if-ne v1, v3, :cond_1

    .line 33
    .line 34
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->sampleRate:I

    .line 35
    .line 36
    iget v3, p1, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->sampleRate:I

    .line 37
    .line 38
    if-ne v1, v3, :cond_1

    .line 39
    .line 40
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->channels:I

    .line 41
    .line 42
    iget v3, p1, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->channels:I

    .line 43
    .line 44
    if-ne v1, v3, :cond_1

    .line 45
    .line 46
    iget p0, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->profile:I

    .line 47
    .line 48
    iget p1, p1, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->profile:I

    .line 49
    .line 50
    if-ne p0, p1, :cond_1

    .line 51
    .line 52
    return v0

    .line 53
    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->codec:I

    .line 2
    .line 3
    const v1, 0xf4243

    .line 4
    .line 5
    .line 6
    xor-int/2addr v0, v1

    .line 7
    mul-int/2addr v0, v1

    .line 8
    iget-object v2, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->mediaType:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    xor-int/2addr v0, v2

    .line 15
    mul-int/2addr v0, v1

    .line 16
    iget v2, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->bitrate:I

    .line 17
    .line 18
    xor-int/2addr v0, v2

    .line 19
    mul-int/2addr v0, v1

    .line 20
    iget v2, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->sampleRate:I

    .line 21
    .line 22
    xor-int/2addr v0, v2

    .line 23
    mul-int/2addr v0, v1

    .line 24
    iget v2, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->channels:I

    .line 25
    .line 26
    xor-int/2addr v0, v2

    .line 27
    mul-int/2addr v0, v1

    .line 28
    iget p0, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->profile:I

    .line 29
    .line 30
    xor-int/2addr p0, v0

    .line 31
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AudioProfileProxy{codec="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->codec:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mediaType="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->mediaType:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", bitrate="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->bitrate:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", sampleRate="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->sampleRate:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", channels="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->channels:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", profile="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget p0, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_AudioProfileProxy;->profile:I

    .line 59
    .line 60
    const-string/jumbo v1, "}"

    .line 61
    .line 62
    .line 63
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method
