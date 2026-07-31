.class public Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;
.super Ljava/lang/Object;
.source "BaseLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactnativecommunity/geolocation/BaseLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LocationOptions"
.end annotation


# instance fields
.field protected final distanceFilter:F

.field protected final fastestInterval:I

.field protected final highAccuracy:Z

.field protected final interval:I

.field protected final maximumAge:D

.field protected final timeout:J


# direct methods
.method private constructor <init>(IIJDZF)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->interval:I

    .line 98
    iput p2, p0, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->fastestInterval:I

    .line 99
    iput-wide p3, p0, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->timeout:J

    .line 100
    iput-wide p5, p0, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->maximumAge:D

    .line 101
    iput-boolean p7, p0, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->highAccuracy:Z

    .line 102
    iput p8, p0, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;->distanceFilter:F

    return-void
.end method

.method protected static fromReactMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;
    .locals 10

    .line 108
    const-string v0, "interval"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2710

    :goto_0
    move v2, v0

    .line 110
    const-string v0, "fastestInterval"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    move v3, v0

    .line 112
    const-string v0, "timeout"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    goto :goto_2

    :cond_2
    const-wide/32 v0, 0x927c0

    :goto_2
    move-wide v4, v0

    .line 114
    const-string v0, "maximumAge"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_3

    :cond_3
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_3
    move-wide v6, v0

    .line 116
    const-string v0, "enableHighAccuracy"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    move v8, v0

    .line 117
    const-string v0, "distanceFilter"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 118
    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float p0, v0

    goto :goto_5

    :cond_5
    const/high16 p0, 0x42c80000    # 100.0f

    :goto_5
    move v9, p0

    .line 121
    new-instance p0, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/reactnativecommunity/geolocation/BaseLocationManager$LocationOptions;-><init>(IIJDZF)V

    return-object p0
.end method
