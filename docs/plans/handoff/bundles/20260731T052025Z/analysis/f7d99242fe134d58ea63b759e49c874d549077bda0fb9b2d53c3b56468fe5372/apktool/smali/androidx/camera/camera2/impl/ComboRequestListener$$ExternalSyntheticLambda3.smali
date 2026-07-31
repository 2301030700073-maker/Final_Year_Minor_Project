.class public final synthetic Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/camera/camera2/pipe/Request$Listener;

.field public final synthetic f$1:Landroidx/camera/camera2/pipe/RequestMetadata;

.field public final synthetic f$2:J

.field public final synthetic f$3:Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/compat/AndroidFrameInfo;I)V
    .locals 0

    .line 1
    iput p6, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda3;->f$0:Landroidx/camera/camera2/pipe/Request$Listener;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda3;->f$1:Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 6
    .line 7
    iput-wide p3, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda3;->f$2:J

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda3;->f$3:Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda3;->f$3:Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;

    .line 4
    .line 5
    iget-wide v2, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda3;->f$2:J

    .line 6
    .line 7
    iget-object v4, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda3;->f$1:Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda3;->f$0:Landroidx/camera/camera2/pipe/Request$Listener;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v4, v2, v3, v1}, Landroidx/camera/camera2/pipe/Request$Listener;->onComplete-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/compat/AndroidFrameInfo;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    invoke-interface {p0, v4, v2, v3, v1}, Landroidx/camera/camera2/pipe/Request$Listener;->onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/compat/AndroidFrameInfo;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
