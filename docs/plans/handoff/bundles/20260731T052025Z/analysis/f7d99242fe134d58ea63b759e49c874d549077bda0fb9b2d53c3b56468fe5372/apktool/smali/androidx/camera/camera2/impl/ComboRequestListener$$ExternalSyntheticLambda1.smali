.class public final synthetic Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/camera/camera2/pipe/Request$Listener;

.field public final synthetic f$1:Landroidx/camera/camera2/pipe/RequestMetadata;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda1;->f$0:Landroidx/camera/camera2/pipe/Request$Listener;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda1;->f$1:Landroidx/camera/camera2/pipe/RequestMetadata;

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
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda1;->f$0:Landroidx/camera/camera2/pipe/Request$Listener;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda1;->f$1:Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 9
    .line 10
    invoke-interface {v0, p0}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceSubmitted(Landroidx/camera/camera2/pipe/RequestMetadata;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda1;->f$0:Landroidx/camera/camera2/pipe/Request$Listener;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda1;->f$1:Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceCreated(Landroidx/camera/camera2/pipe/RequestMetadata;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-object v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda1;->f$0:Landroidx/camera/camera2/pipe/Request$Listener;

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda1;->f$1:Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 25
    .line 26
    invoke-interface {v0, p0}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceAborted(Landroidx/camera/camera2/pipe/RequestMetadata;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
