.class public final Lapp/k9mail/provider/K9AppNameProvider;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/common/provider/AppNameProvider;
.implements Lnet/thunderbird/core/common/provider/BrandNameProvider;
.implements Lcom/fsck/k9/preferences/FilePrefixProvider;


# instance fields
.field public final appName$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final brandName$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final filePrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, p1, v1}, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lapp/k9mail/provider/K9AppNameProvider;->appName$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 16
    .line 17
    new-instance v0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-direct {v0, p1, v1}, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Lkotlin/SynchronizedLazyImpl;

    .line 24
    .line 25
    invoke-direct {p1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lapp/k9mail/provider/K9AppNameProvider;->brandName$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 29
    .line 30
    const-string p1, "k9"

    .line 31
    .line 32
    iput-object p1, p0, Lapp/k9mail/provider/K9AppNameProvider;->filePrefix:Ljava/lang/String;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final getAppName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/k9mail/provider/K9AppNameProvider;->appName$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p0, Ljava/lang/String;

    .line 11
    .line 12
    return-object p0
.end method

.method public final getBrandName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/k9mail/provider/K9AppNameProvider;->brandName$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p0, Ljava/lang/String;

    .line 11
    .line 12
    return-object p0
.end method
