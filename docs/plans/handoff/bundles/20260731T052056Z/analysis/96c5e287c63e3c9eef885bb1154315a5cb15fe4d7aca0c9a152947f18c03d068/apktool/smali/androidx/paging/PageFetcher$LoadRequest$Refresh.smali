.class public final Landroidx/paging/PageFetcher$LoadRequest$Refresh;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final loadType:Landroidx/paging/LoadType;

.field public final type:Landroidx/paging/FlowExtKt;


# direct methods
.method public constructor <init>(ZLandroidx/paging/FlowExtKt;)V
    .locals 0

    .line 1
    sget-object p1, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/paging/PageFetcher$LoadRequest$Refresh;->loadType:Landroidx/paging/LoadType;

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/paging/PageFetcher$LoadRequest$Refresh;->type:Landroidx/paging/FlowExtKt;

    .line 9
    .line 10
    return-void
.end method
