.class public final Lexpo/modules/video/VideoModule$definition$lambda$60$lambda$57$$inlined$Function$7;
.super Ljava/lang/Object;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/video/VideoModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$8\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 VideoModule.kt\nexpo/modules/video/VideoModule\n*L\n1#1,611:1\n18#2:612\n287#3,2:613\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$8\n*L\n140#1:612\n*E\n"
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


# instance fields
.field final synthetic this$0:Lexpo/modules/video/VideoModule;


# direct methods
.method public constructor <init>(Lexpo/modules/video/VideoModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/video/VideoModule$definition$lambda$60$lambda$57$$inlined$Function$7;->this$0:Lexpo/modules/video/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 142
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/video/VideoModule$definition$lambda$60$lambda$57$$inlined$Function$7;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 139
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    .line 141
    move-object v3, p1

    check-cast v3, Lexpo/modules/kotlin/types/Either;

    move-object v2, v0

    check-cast v2, Lexpo/modules/video/player/VideoPlayer;

    .line 613
    iget-object v1, p0, Lexpo/modules/video/VideoModule$definition$lambda$60$lambda$57$$inlined$Function$7;->this$0:Lexpo/modules/video/VideoModule;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lexpo/modules/video/VideoModule;->replaceImpl$default(Lexpo/modules/video/VideoModule;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/kotlin/types/Either;Lexpo/modules/kotlin/Promise;ILjava/lang/Object;)V

    .line 614
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
