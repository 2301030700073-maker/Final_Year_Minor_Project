.class public final Lorg/maplibre/android/location/LocationComponent$9;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic this$0:Lorg/maplibre/android/location/LocationComponent;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/LocationComponent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponent$9;->this$0:Lorg/maplibre/android/location/LocationComponent;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRenderModeChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent$9;->this$0:Lorg/maplibre/android/location/LocationComponent;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponent;->updateAnimatorListenerHolders()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->onRenderModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lorg/maplibre/android/location/LocationComponent$9;

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponent$9;->onRenderModeChanged()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method
