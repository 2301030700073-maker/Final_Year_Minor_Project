.class public final Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
.super Lexpo/modules/kotlin/views/ModuleDefinitionBuilderWithCompose;
.source "ModuleDefinitionBuilder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;",
        "Lexpo/modules/kotlin/views/ModuleDefinitionBuilderWithCompose;",
        "module",
        "Lexpo/modules/kotlin/modules/Module;",
        "<init>",
        "(Lexpo/modules/kotlin/modules/Module;)V",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lexpo/modules/kotlin/modules/Module;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/views/ModuleDefinitionBuilderWithCompose;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    return-void
.end method

.method public synthetic constructor <init>(Lexpo/modules/kotlin/modules/Module;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 32
    :cond_0
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    return-void
.end method
