.class public abstract Lcurtains/internal/WindowManagerSpy;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final mViewsField$delegate:Lkotlin/Lazy;

.field public static final windowManagerClass$delegate:Lkotlin/Lazy;

.field public static final windowManagerInstance$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 2
    .line 3
    sget-object v1, Lcurtains/internal/WindowManagerSpy$mViewsField$2;->INSTANCE$1:Lcurtains/internal/WindowManagerSpy$mViewsField$2;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sput-object v1, Lcurtains/internal/WindowManagerSpy;->windowManagerClass$delegate:Lkotlin/Lazy;

    .line 10
    .line 11
    sget-object v1, Lcurtains/internal/WindowManagerSpy$mViewsField$2;->INSTANCE$2:Lcurtains/internal/WindowManagerSpy$mViewsField$2;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lcurtains/internal/WindowManagerSpy;->windowManagerInstance$delegate:Lkotlin/Lazy;

    .line 18
    .line 19
    sget-object v1, Lcurtains/internal/WindowManagerSpy$mViewsField$2;->INSTANCE:Lcurtains/internal/WindowManagerSpy$mViewsField$2;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcurtains/internal/WindowManagerSpy;->mViewsField$delegate:Lkotlin/Lazy;

    .line 26
    .line 27
    return-void
.end method
