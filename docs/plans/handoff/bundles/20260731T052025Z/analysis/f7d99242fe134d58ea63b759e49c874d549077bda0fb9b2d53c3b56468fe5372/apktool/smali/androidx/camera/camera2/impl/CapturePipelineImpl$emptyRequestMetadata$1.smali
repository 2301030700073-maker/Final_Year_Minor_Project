.class public final Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/pipe/RequestMetadata;


# instance fields
.field public final request:Landroidx/camera/camera2/pipe/Request;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/camera/camera2/pipe/Request;

    .line 5
    .line 6
    const/4 v5, 0x0

    .line 7
    const/16 v6, 0x3e

    .line 8
    .line 9
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/Request;-><init>(Ljava/util/List;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/RequestTemplate;I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;->request:Landroidx/camera/camera2/pipe/Request;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final get(Landroidx/camera/camera2/pipe/Metadata$Key;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public final getOrDefault(Landroidx/camera/camera2/pipe/Metadata$Key;Landroidx/camera/core/impl/TagBundle;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-object p2
.end method

.method public final getRepeating()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final getRequest()Landroidx/camera/camera2/pipe/Request;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;->request:Landroidx/camera/camera2/pipe/Request;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRequestNumber-my6kx4g()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getStreams()Ljava/util/Map;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public final unwrapAs(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
