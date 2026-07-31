.class public final Lnet/newpipe/app/platform/AndroidBuildInfo;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lnet/newpipe/app/platform/BuildInfo;


# instance fields
.field public final context:Landroid/content/Context;

.field public final isDebug:Z

.field public final isReleaseApk$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/newpipe/app/platform/AndroidBuildInfo;->context:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    and-int/2addr p1, v0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    iput-boolean p1, p0, Lnet/newpipe/app/platform/AndroidBuildInfo;->isDebug:Z

    .line 20
    .line 21
    new-instance p1, Lorg/koin/core/scope/Scope$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-direct {p1, p0, v0}, Lorg/koin/core/scope/Scope$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lnet/newpipe/app/platform/AndroidBuildInfo;->isReleaseApk$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 32
    .line 33
    return-void
.end method
