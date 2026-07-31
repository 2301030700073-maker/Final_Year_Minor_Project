.class public final synthetic Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/pipe/Request$Listener;

.field public final synthetic f$1:Landroidx/camera/camera2/pipe/RequestMetadata;

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda5;->f$0:Landroidx/camera/camera2/pipe/Request$Listener;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda5;->f$1:Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda5;->f$2:J

    .line 9
    .line 10
    iput p5, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda5;->f$3:I

    .line 11
    .line 12
    iput p6, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda5;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v4, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda5;->f$3:I

    .line 2
    .line 3
    iget v5, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda5;->f$4:I

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda5;->f$0:Landroidx/camera/camera2/pipe/Request$Listener;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda5;->f$1:Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 8
    .line 9
    iget-wide v2, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda5;->f$2:J

    .line 10
    .line 11
    invoke-interface/range {v0 .. v5}, Landroidx/camera/camera2/pipe/Request$Listener;->onBufferLost-iiEMlm4(Landroidx/camera/camera2/pipe/RequestMetadata;JII)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
