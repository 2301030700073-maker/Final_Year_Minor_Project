.class public final Lexpo/modules/kotlin/functions/FunctionBuilder$Body$$inlined$toArgsArray$default$23;
.super Ljava/lang/Object;
.source "AnyType.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/functions/FunctionBuilder;->Body(Ljava/lang/String;Lkotlin/jvm/functions/Function7;)Lexpo/modules/kotlin/functions/SyncFunctionComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/KType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0xb0
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/kotlin/functions/FunctionBuilder$Body$$inlined$toArgsArray$default$23;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/kotlin/functions/FunctionBuilder$Body$$inlined$toArgsArray$default$23;

    invoke-direct {v0}, Lexpo/modules/kotlin/functions/FunctionBuilder$Body$$inlined$toArgsArray$default$23;-><init>()V

    sput-object v0, Lexpo/modules/kotlin/functions/FunctionBuilder$Body$$inlined$toArgsArray$default$23;->INSTANCE:Lexpo/modules/kotlin/functions/FunctionBuilder$Body$$inlined$toArgsArray$default$23;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lexpo/modules/kotlin/functions/FunctionBuilder$Body$$inlined$toArgsArray$default$23;->invoke()Lkotlin/reflect/KType;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/reflect/KType;
    .locals 2

    const/4 v0, 0x6

    .line 168
    const-string v1, "P1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
