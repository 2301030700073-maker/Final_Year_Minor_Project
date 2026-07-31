.class public final synthetic Landroidx/camera/core/imagecapture/CaptureNode$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lokhttp3/internal/connection/RouteSelector;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/internal/connection/RouteSelector;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/camera/core/imagecapture/CaptureNode$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/core/imagecapture/CaptureNode$$ExternalSyntheticLambda3;->f$0:Lokhttp3/internal/connection/RouteSelector;

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
    iget v0, p0, Landroidx/camera/core/imagecapture/CaptureNode$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/camera/core/imagecapture/CaptureNode$$ExternalSyntheticLambda3;->f$0:Lokhttp3/internal/connection/RouteSelector;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lokhttp3/internal/connection/RouteSelector;->safeClose()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void

    .line 14
    :pswitch_0
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lokhttp3/internal/connection/RouteSelector;->safeClose()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void

    .line 20
    :pswitch_1
    invoke-virtual {p0}, Lokhttp3/internal/connection/RouteSelector;->safeClose()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_2
    invoke-virtual {p0}, Lokhttp3/internal/connection/RouteSelector;->safeClose()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_3
    invoke-virtual {p0}, Lokhttp3/internal/connection/RouteSelector;->safeClose()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
