.class public abstract Lleakcanary/internal/HandlersKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final mainHandler$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lleakcanary/internal/HandlersKt$mainHandler$2;->INSTANCE:Lleakcanary/internal/HandlersKt$mainHandler$2;

    .line 2
    .line 3
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 6
    .line 7
    .line 8
    sput-object v1, Lleakcanary/internal/HandlersKt;->mainHandler$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 9
    .line 10
    return-void
.end method
