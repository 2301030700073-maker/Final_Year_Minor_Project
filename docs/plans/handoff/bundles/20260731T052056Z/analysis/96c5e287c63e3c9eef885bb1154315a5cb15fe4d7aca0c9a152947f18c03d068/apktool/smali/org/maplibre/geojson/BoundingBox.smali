.class public Lorg/maplibre/geojson/BoundingBox;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final northeast:Lorg/maplibre/geojson/Point;

.field private final southwest:Lorg/maplibre/geojson/Point;


# direct methods
.method public constructor <init>(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Point;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iput-object p1, p0, Lorg/maplibre/geojson/BoundingBox;->southwest:Lorg/maplibre/geojson/Point;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iput-object p2, p0, Lorg/maplibre/geojson/BoundingBox;->northeast:Lorg/maplibre/geojson/Point;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p0, "Null northeast"

    .line 15
    .line 16
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :cond_1
    const-string p0, "Null southwest"

    .line 21
    .line 22
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public static fromCoordinates(DDDD)Lorg/maplibre/geojson/BoundingBox;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static/range {p0 .. p7}, Lorg/maplibre/geojson/BoundingBox;->fromLngLats(DDDD)Lorg/maplibre/geojson/BoundingBox;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static fromCoordinates(DDDDDD)Lorg/maplibre/geojson/BoundingBox;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-static/range {p0 .. p11}, Lorg/maplibre/geojson/BoundingBox;->fromLngLats(DDDDDD)Lorg/maplibre/geojson/BoundingBox;

    move-result-object p0

    return-object p0
.end method

.method public static fromJson(Ljava/lang/String;)Lorg/maplibre/geojson/BoundingBox;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/gson/GsonBuilder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/gson/GsonBuilder;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lorg/maplibre/geojson/gson/BoundingBoxTypeAdapter;

    .line 8
    .line 9
    invoke-direct {v1}, Lorg/maplibre/geojson/gson/BoundingBoxTypeAdapter;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Lorg/maplibre/geojson/gson/BoundingBoxTypeAdapter;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-class v1, Lorg/maplibre/geojson/BoundingBox;

    .line 20
    .line 21
    invoke-virtual {v0, v1, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lorg/maplibre/geojson/BoundingBox;

    .line 26
    .line 27
    return-object p0
.end method

.method public static fromLngLats(DDDD)Lorg/maplibre/geojson/BoundingBox;
    .locals 1

    .line 1
    new-instance v0, Lorg/maplibre/geojson/BoundingBox;

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p4, p5, p6, p7}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, p0, p1}, Lorg/maplibre/geojson/BoundingBox;-><init>(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Point;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static fromLngLats(DDDDDD)Lorg/maplibre/geojson/BoundingBox;
    .locals 1

    .line 15
    new-instance v0, Lorg/maplibre/geojson/BoundingBox;

    .line 16
    invoke-static/range {p0 .. p5}, Lorg/maplibre/geojson/Point;->fromLngLat(DDD)Lorg/maplibre/geojson/Point;

    move-result-object p0

    .line 17
    invoke-static/range {p6 .. p11}, Lorg/maplibre/geojson/Point;->fromLngLat(DDD)Lorg/maplibre/geojson/Point;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/maplibre/geojson/BoundingBox;-><init>(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Point;)V

    return-object v0
.end method

.method public static fromPoints(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Point;)Lorg/maplibre/geojson/BoundingBox;
    .locals 1

    .line 1
    new-instance v0, Lorg/maplibre/geojson/BoundingBox;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/maplibre/geojson/BoundingBox;-><init>(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Point;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter;"
        }
    .end annotation

    .line 1
    new-instance p0, Lorg/maplibre/geojson/gson/BoundingBoxTypeAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/maplibre/geojson/gson/BoundingBoxTypeAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final east()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->northeast()Lorg/maplibre/geojson/Point;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->longitude()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
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
    instance-of v1, p1, Lorg/maplibre/geojson/BoundingBox;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p1, Lorg/maplibre/geojson/BoundingBox;

    .line 11
    .line 12
    iget-object v1, p0, Lorg/maplibre/geojson/BoundingBox;->southwest:Lorg/maplibre/geojson/Point;

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/maplibre/geojson/BoundingBox;->southwest()Lorg/maplibre/geojson/Point;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v3}, Lorg/maplibre/geojson/Point;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lorg/maplibre/geojson/BoundingBox;->northeast:Lorg/maplibre/geojson/Point;

    .line 25
    .line 26
    invoke-virtual {p1}, Lorg/maplibre/geojson/BoundingBox;->northeast()Lorg/maplibre/geojson/Point;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Lorg/maplibre/geojson/Point;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    return v0

    .line 37
    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/maplibre/geojson/BoundingBox;->southwest:Lorg/maplibre/geojson/Point;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/maplibre/geojson/Point;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0xf4243

    .line 8
    .line 9
    .line 10
    xor-int/2addr v0, v1

    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-object p0, p0, Lorg/maplibre/geojson/BoundingBox;->northeast:Lorg/maplibre/geojson/Point;

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    xor-int/2addr p0, v0

    .line 19
    return p0
.end method

.method public final north()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->northeast()Lorg/maplibre/geojson/Point;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->latitude()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public northeast()Lorg/maplibre/geojson/Point;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/geojson/BoundingBox;->northeast:Lorg/maplibre/geojson/Point;

    .line 2
    .line 3
    return-object p0
.end method

.method public final south()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->southwest()Lorg/maplibre/geojson/Point;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->latitude()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public southwest()Lorg/maplibre/geojson/Point;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/geojson/BoundingBox;->southwest:Lorg/maplibre/geojson/Point;

    .line 2
    .line 3
    return-object p0
.end method

.method public final toJson()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/gson/GsonBuilder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/gson/GsonBuilder;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lorg/maplibre/geojson/gson/BoundingBoxTypeAdapter;

    .line 8
    .line 9
    invoke-direct {v1}, Lorg/maplibre/geojson/gson/BoundingBoxTypeAdapter;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Lorg/maplibre/geojson/gson/BoundingBoxTypeAdapter;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-class v1, Lorg/maplibre/geojson/BoundingBox;

    .line 20
    .line 21
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/io/Serializable;Ljava/lang/Class;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BoundingBox{southwest="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/maplibre/geojson/BoundingBox;->southwest:Lorg/maplibre/geojson/Point;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", northeast="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lorg/maplibre/geojson/BoundingBox;->northeast:Lorg/maplibre/geojson/Point;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string/jumbo p0, "}"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public final west()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->southwest()Lorg/maplibre/geojson/Point;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->longitude()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method
