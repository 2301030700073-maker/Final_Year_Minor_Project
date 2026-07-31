.class public final Lorg/maplibre/android/maps/Transform$2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$callback:Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/maplibre/android/maps/Transform$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/maplibre/android/maps/Transform$2;->val$callback:Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/maplibre/android/maps/Transform$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/maplibre/android/maps/Transform$2;->val$callback:Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;->onCancel()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-interface {p0}, Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;->onFinish()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :pswitch_1
    invoke-interface {p0}, Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;->onFinish()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
