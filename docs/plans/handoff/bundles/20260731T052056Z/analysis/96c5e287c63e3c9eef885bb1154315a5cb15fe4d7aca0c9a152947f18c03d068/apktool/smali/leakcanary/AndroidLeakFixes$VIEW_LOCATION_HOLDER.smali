.class public final Lleakcanary/AndroidLeakFixes$VIEW_LOCATION_HOLDER;
.super Lleakcanary/AndroidLeakFixes;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "VIEW_LOCATION_HOLDER"

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Landroid/app/Application;)V
    .locals 1

    .line 1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v0, 0x1c

    .line 4
    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object p0, Lcurtains/Curtains;->rootViewsSpy$delegate:Lkotlin/Lazy;

    .line 9
    .line 10
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcurtains/internal/RootViewsSpy;

    .line 15
    .line 16
    iget-object p0, p0, Lcurtains/internal/RootViewsSpy;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    new-instance v0, Lleakcanary/ViewLocationHolderLeakFix$applyFix$1;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lleakcanary/ViewLocationHolderLeakFix$applyFix$1;-><init>(Landroid/app/Application;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    new-instance p0, Lleakcanary/ViewLocationHolderLeakFix$applyFix$2;

    .line 27
    .line 28
    invoke-direct {p0, p1}, Lleakcanary/ViewLocationHolderLeakFix$applyFix$2;-><init>(Landroid/app/Application;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
