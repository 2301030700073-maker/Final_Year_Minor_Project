.class public abstract Lcom/skydoves/landscapist/platforms/PlatformKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final platformCoroutineDispatcher:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    sput-object v0, Lcom/skydoves/landscapist/platforms/PlatformKt;->platformCoroutineDispatcher:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 6
    .line 7
    return-void
.end method
