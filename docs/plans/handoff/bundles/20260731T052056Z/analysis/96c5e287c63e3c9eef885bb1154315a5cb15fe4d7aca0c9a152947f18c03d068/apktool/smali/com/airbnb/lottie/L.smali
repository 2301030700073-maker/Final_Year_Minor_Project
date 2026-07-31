.class public abstract Lcom/airbnb/lottie/L;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

.field public static final reducedMotionOption:Landroidx/collection/internal/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/airbnb/lottie/AsyncUpdates;->AUTOMATIC:Lcom/airbnb/lottie/AsyncUpdates;

    .line 2
    .line 3
    sput-object v0, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 4
    .line 5
    new-instance v0, Landroidx/collection/internal/Lock;

    .line 6
    .line 7
    const/16 v1, 0x15

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroidx/collection/internal/Lock;-><init>(I)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/airbnb/lottie/L;->reducedMotionOption:Landroidx/collection/internal/Lock;

    .line 13
    .line 14
    return-void
.end method
