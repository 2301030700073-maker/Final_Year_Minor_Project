.class public Lorg/maplibre/geojson/PointAsCoordinatesTypeAdapter;
.super Lorg/maplibre/geojson/BaseCoordinatesTypeAdapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/maplibre/geojson/BaseCoordinatesTypeAdapter<",
        "Lorg/maplibre/geojson/Point;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/maplibre/geojson/BaseCoordinatesTypeAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/maplibre/geojson/PointAsCoordinatesTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lorg/maplibre/geojson/Point;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Lorg/maplibre/geojson/Point;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lorg/maplibre/geojson/BaseCoordinatesTypeAdapter;->readPoint(Lcom/google/gson/stream/JsonReader;)Lorg/maplibre/geojson/Point;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lorg/maplibre/geojson/Point;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/geojson/PointAsCoordinatesTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lorg/maplibre/geojson/Point;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lorg/maplibre/geojson/Point;)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/geojson/BaseCoordinatesTypeAdapter;->writePoint(Lcom/google/gson/stream/JsonWriter;Lorg/maplibre/geojson/Point;)V

    return-void
.end method
