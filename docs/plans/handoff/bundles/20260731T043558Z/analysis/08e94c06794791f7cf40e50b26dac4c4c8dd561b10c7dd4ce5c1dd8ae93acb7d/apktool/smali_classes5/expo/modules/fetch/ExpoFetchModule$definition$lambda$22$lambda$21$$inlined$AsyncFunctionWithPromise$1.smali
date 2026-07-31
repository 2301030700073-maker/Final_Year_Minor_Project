.class public final Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$22$lambda$21$$inlined$AsyncFunctionWithPromise$1;
.super Ljava/lang/Object;
.source "AnyType.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/fetch/ExpoFetchModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$22$lambda$21$$inlined$AsyncFunctionWithPromise$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$22$lambda$21$$inlined$AsyncFunctionWithPromise$1;

    invoke-direct {v0}, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$22$lambda$21$$inlined$AsyncFunctionWithPromise$1;-><init>()V

    sput-object v0, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$22$lambda$21$$inlined$AsyncFunctionWithPromise$1;->INSTANCE:Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$22$lambda$21$$inlined$AsyncFunctionWithPromise$1;

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
    invoke-virtual {p0}, Lexpo/modules/fetch/ExpoFetchModule$definition$lambda$22$lambda$21$$inlined$AsyncFunctionWithPromise$1;->invoke()Lkotlin/reflect/KType;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/reflect/KType;
    .locals 1

    .line 168
    const-class v0, Lexpo/modules/fetch/NativeRequest;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v0

    return-object v0
.end method
