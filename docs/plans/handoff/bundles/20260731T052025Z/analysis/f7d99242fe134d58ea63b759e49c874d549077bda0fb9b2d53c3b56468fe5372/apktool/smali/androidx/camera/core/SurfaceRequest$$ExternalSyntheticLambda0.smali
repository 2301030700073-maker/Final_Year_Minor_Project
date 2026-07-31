.class public final synthetic Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;

.field public final synthetic f$1:Landroidx/camera/core/AutoValue_SurfaceRequest_TransformationInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;Landroidx/camera/core/AutoValue_SurfaceRequest_TransformationInfo;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda0;->f$1:Landroidx/camera/core/AutoValue_SurfaceRequest_TransformationInfo;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda0;->f$1:Landroidx/camera/core/AutoValue_SurfaceRequest_TransformationInfo;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v1}, Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;->onTransformationInfoUpdate(Landroidx/camera/core/AutoValue_SurfaceRequest_TransformationInfo;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-interface {p0, v1}, Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;->onTransformationInfoUpdate(Landroidx/camera/core/AutoValue_SurfaceRequest_TransformationInfo;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
