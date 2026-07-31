.class public abstract Lorg/maplibre/geojson/GeometryAdapterFactory;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# static fields
.field private static geometryTypeFactory:Lcom/google/gson/TypeAdapterFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static create()Lcom/google/gson/TypeAdapterFactory;
    .locals 3

    .line 1
    sget-object v0, Lorg/maplibre/geojson/GeometryAdapterFactory;->geometryTypeFactory:Lcom/google/gson/TypeAdapterFactory;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "type"

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const-class v2, Lorg/maplibre/geojson/Geometry;

    .line 10
    .line 11
    invoke-static {v2, v0, v1}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->of(Ljava/lang/Class;Ljava/lang/String;Z)Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-class v1, Lorg/maplibre/geojson/GeometryCollection;

    .line 16
    .line 17
    const-string v2, "GeometryCollection"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-class v1, Lorg/maplibre/geojson/Point;

    .line 24
    .line 25
    const-string v2, "Point"

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-class v1, Lorg/maplibre/geojson/MultiPoint;

    .line 32
    .line 33
    const-string v2, "MultiPoint"

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-class v1, Lorg/maplibre/geojson/LineString;

    .line 40
    .line 41
    const-string v2, "LineString"

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-class v1, Lorg/maplibre/geojson/MultiLineString;

    .line 48
    .line 49
    const-string v2, "MultiLineString"

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-class v1, Lorg/maplibre/geojson/Polygon;

    .line 56
    .line 57
    const-string v2, "Polygon"

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-class v1, Lorg/maplibre/geojson/MultiPolygon;

    .line 64
    .line 65
    const-string v2, "MultiPolygon"

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lorg/maplibre/geojson/GeometryAdapterFactory;->geometryTypeFactory:Lcom/google/gson/TypeAdapterFactory;

    .line 72
    .line 73
    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract synthetic create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.end method
