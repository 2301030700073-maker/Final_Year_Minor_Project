.class public final Lleakcanary/internal/ObjectsKt$NO_OP_HANDLER$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field public static final INSTANCE:Lleakcanary/internal/ObjectsKt$NO_OP_HANDLER$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lleakcanary/internal/ObjectsKt$NO_OP_HANDLER$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lleakcanary/internal/ObjectsKt$NO_OP_HANDLER$1;->INSTANCE:Lleakcanary/internal/ObjectsKt$NO_OP_HANDLER$1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method
