.class public final Lcurtains/internal/RootViewsSpy;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final delegatingViewList:Lcurtains/internal/RootViewsSpy$delegatingViewList$1;

.field public final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcurtains/internal/RootViewsSpy;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    new-instance v0, Lcurtains/internal/RootViewsSpy$delegatingViewList$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcurtains/internal/RootViewsSpy$delegatingViewList$1;-><init>(Lcurtains/internal/RootViewsSpy;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcurtains/internal/RootViewsSpy;->delegatingViewList:Lcurtains/internal/RootViewsSpy$delegatingViewList$1;

    .line 17
    .line 18
    return-void
.end method
