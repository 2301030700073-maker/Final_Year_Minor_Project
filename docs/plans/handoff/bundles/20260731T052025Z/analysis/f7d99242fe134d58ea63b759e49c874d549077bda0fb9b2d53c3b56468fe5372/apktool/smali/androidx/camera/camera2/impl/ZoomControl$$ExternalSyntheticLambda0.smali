.class public final synthetic Landroidx/camera/camera2/impl/ZoomControl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/camera/camera2/impl/ZoomControl;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/impl/ZoomControl;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/camera/camera2/impl/ZoomControl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/camera2/impl/ZoomControl$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/camera2/impl/ZoomControl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/camera/camera2/impl/ZoomControl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/camera/camera2/impl/ZoomControl$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/camera2/impl/ZoomControl;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/camera/camera2/impl/ZoomControl;->defaultZoomState$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 11
    .line 12
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/camera/camera2/adapter/ZoomValue;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :pswitch_0
    new-instance v0, Landroidx/camera/camera2/adapter/ZoomValue;

    .line 23
    .line 24
    iget v1, p0, Landroidx/camera/camera2/impl/ZoomControl;->minZoomRatio:F

    .line 25
    .line 26
    iget p0, p0, Landroidx/camera/camera2/impl/ZoomControl;->maxZoomRatio:F

    .line 27
    .line 28
    invoke-direct {v0, v1, p0}, Landroidx/camera/camera2/adapter/ZoomValue;-><init>(FF)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
