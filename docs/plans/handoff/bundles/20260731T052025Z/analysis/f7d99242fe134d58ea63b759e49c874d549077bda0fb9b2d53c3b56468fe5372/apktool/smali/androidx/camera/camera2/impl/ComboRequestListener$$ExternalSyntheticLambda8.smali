.class public final synthetic Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/pipe/Request$Listener;

.field public final synthetic f$1:Landroidx/camera/camera2/pipe/RequestMetadata;

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda8;->f$0:Landroidx/camera/camera2/pipe/Request$Listener;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda8;->f$1:Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda8;->f$2:J

    .line 9
    .line 10
    iput-wide p5, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda8;->f$3:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-wide v2, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda8;->f$2:J

    .line 2
    .line 3
    iget-wide v4, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda8;->f$3:J

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda8;->f$0:Landroidx/camera/camera2/pipe/Request$Listener;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda8;->f$1:Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 8
    .line 9
    invoke-interface/range {v0 .. v5}, Landroidx/camera/camera2/pipe/Request$Listener;->onStarted-uGKBvU4(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
