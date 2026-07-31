.class public final synthetic Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/maps/OnMapReadyCallback;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/places/PlacesFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/places/PlacesFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/places/PlacesFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMapReady(Lorg/maplibre/android/maps/MapLibreMap;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/maplibre/android/maps/Style$Builder;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/maplibre/android/maps/Style$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 12
    .line 13
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v1, v1, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const-string v1, "asset://mapstyle-dark.json"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v1, "asset://mapstyle.json"

    .line 29
    .line 30
    :goto_0
    iput-object v1, v0, Lorg/maplibre/android/maps/Style$Builder;->styleUri:Ljava/lang/Object;

    .line 31
    .line 32
    new-instance v1, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda16;

    .line 33
    .line 34
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/places/PlacesFragment;

    .line 35
    .line 36
    invoke-direct {v1, p0, p1}, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda16;-><init>(Lorg/wikipedia/places/PlacesFragment;Lorg/maplibre/android/maps/MapLibreMap;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, v1}, Lorg/maplibre/android/maps/MapLibreMap;->setStyle(Lorg/maplibre/android/maps/Style$Builder;Lorg/maplibre/android/maps/Style$OnStyleLoaded;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
