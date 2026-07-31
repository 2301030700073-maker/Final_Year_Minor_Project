.class public abstract Lorg/maplibre/android/style/layers/Layer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public detached:Z

.field private invalidated:Z

.field private nativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/maplibre/android/LibraryLoader;->load()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Lorg/maplibre/android/style/layers/Layer;->nativePtr:J

    .line 8
    .line 9
    return-void
.end method

.method public static checkThread()V
    .locals 1

    .line 1
    const-string v0, "Mbgl-Layer"

    .line 2
    .line 3
    invoke-static {v0}, Lokio/Okio__JvmOkioKt;->checkThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public native finalize()V
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->nativeGetId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/maplibre/android/style/layers/Layer;->nativePtr:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public native nativeGetFilter()Lcom/google/gson/JsonElement;
.end method

.method public native nativeGetId()Ljava/lang/String;
.end method

.method public native nativeGetMaxZoom()F
.end method

.method public native nativeGetMinZoom()F
.end method

.method public native nativeGetSourceId()Ljava/lang/String;
.end method

.method public native nativeGetSourceLayer()Ljava/lang/String;
.end method

.method public native nativeGetVisibility()Ljava/lang/Object;
.end method

.method public native nativeSetFilter([Ljava/lang/Object;)V
.end method

.method public native nativeSetLayoutProperty(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public native nativeSetMaxZoom(F)V
.end method

.method public native nativeSetMinZoom(F)V
.end method

.method public native nativeSetPaintProperty(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public native nativeSetSourceLayer(Ljava/lang/String;)V
.end method

.method public final varargs setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/maplibre/android/style/layers/Layer;->detached:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    invoke-static {}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    .line 7
    .line 8
    .line 9
    array-length v0, p1

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_1
    array-length v0, p1

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_5

    .line 16
    .line 17
    aget-object v2, p1, v1

    .line 18
    .line 19
    iget-object v3, v2, Lorg/maplibre/android/style/layers/PropertyValue;->value:Ljava/lang/Object;

    .line 20
    .line 21
    instance-of v4, v3, Lorg/maplibre/android/style/expressions/Expression;

    .line 22
    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    check-cast v3, Lorg/maplibre/android/style/expressions/Expression;

    .line 26
    .line 27
    invoke-virtual {v3}, Lorg/maplibre/android/style/expressions/Expression;->toArray()[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    instance-of v4, v3, Lorg/maplibre/android/style/types/Formatted;

    .line 33
    .line 34
    if-eqz v4, :cond_3

    .line 35
    .line 36
    check-cast v3, Lorg/maplibre/android/style/types/Formatted;

    .line 37
    .line 38
    invoke-virtual {v3}, Lorg/maplibre/android/style/types/Formatted;->toArray()[Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    :cond_3
    :goto_1
    instance-of v4, v2, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 43
    .line 44
    iget-object v2, v2, Lorg/maplibre/android/style/layers/PropertyValue;->name:Ljava/lang/String;

    .line 45
    .line 46
    if-eqz v4, :cond_4

    .line 47
    .line 48
    invoke-virtual {p0, v2, v3}, Lorg/maplibre/android/style/layers/Layer;->nativeSetPaintProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_4
    invoke-virtual {p0, v2, v3}, Lorg/maplibre/android/style/layers/Layer;->nativeSetLayoutProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_5
    :goto_3
    return-void
.end method
