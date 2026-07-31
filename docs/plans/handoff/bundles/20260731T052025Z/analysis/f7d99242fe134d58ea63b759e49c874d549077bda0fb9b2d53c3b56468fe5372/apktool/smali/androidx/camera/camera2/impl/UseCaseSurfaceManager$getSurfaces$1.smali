.class public final Landroidx/camera/camera2/impl/UseCaseSurfaceManager$getSurfaces$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Landroidx/camera/camera2/impl/UseCaseSurfaceManager;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$getSurfaces$1;->this$0:Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$getSurfaces$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$getSurfaces$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$getSurfaces$1;->label:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$getSurfaces$1;->this$0:Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    .line 14
    .line 15
    invoke-static {v2, p1, v0, v1, p0}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->access$getSurfaces(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Ljava/util/List;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
