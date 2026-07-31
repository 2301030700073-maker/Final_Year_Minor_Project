.class public final Lorg/maplibre/android/location/engine/LocationEngineRequest;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final fastestInterval:J


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p1, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->fastestInterval:J

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->fastestInterval:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    if-eqz p1, :cond_3

    .line 5
    .line 6
    const-class v0, Lorg/maplibre/android/location/engine/LocationEngineRequest;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    check-cast p1, Lorg/maplibre/android/location/engine/LocationEngineRequest;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    iget-wide v0, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->fastestInterval:J

    .line 26
    .line 27
    iget-wide p0, p1, Lorg/maplibre/android/location/engine/LocationEngineRequest;->fastestInterval:J

    .line 28
    .line 29
    cmp-long p0, v0, p0

    .line 30
    .line 31
    if-nez p0, :cond_3

    .line 32
    .line 33
    :goto_0
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/maplibre/android/location/engine/LocationEngineRequest;->fastestInterval:J

    .line 2
    .line 3
    const/16 p0, 0x20

    .line 4
    .line 5
    ushr-long v2, v0, p0

    .line 6
    .line 7
    xor-long/2addr v0, v2

    .line 8
    long-to-int p0, v0

    .line 9
    const v0, 0x370bcfe8

    .line 10
    .line 11
    .line 12
    add-int/2addr v0, p0

    .line 13
    return v0
.end method
