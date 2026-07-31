.class public final Lcoil3/util/CoilUtils;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final INSTANCE:Lcoil3/util/CoilUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcoil3/util/CoilUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcoil3/util/CoilUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcoil3/util/CoilUtils;->INSTANCE:Lcoil3/util/CoilUtils;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final dispose(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcoil3/request/ViewTargetRequestManagerKt;->getRequestManager(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcoil3/request/ViewTargetRequestManager;->dispose()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final result(Landroid/view/View;)Lcoil3/request/ImageResult;
    .locals 0

    .line 1
    invoke-static {p0}, Lcoil3/request/ViewTargetRequestManagerKt;->getRequestManager(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcoil3/request/ViewTargetRequestManager;->getResult()Lcoil3/request/ImageResult;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
