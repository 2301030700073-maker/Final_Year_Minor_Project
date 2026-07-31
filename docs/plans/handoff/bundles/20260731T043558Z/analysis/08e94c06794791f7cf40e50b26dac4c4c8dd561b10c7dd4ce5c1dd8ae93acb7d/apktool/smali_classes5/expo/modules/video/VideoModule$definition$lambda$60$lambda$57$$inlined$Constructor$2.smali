.class public final Lexpo/modules/video/VideoModule$definition$lambda$60$lambda$57$$inlined$Constructor$2;
.super Ljava/lang/Object;
.source "ClassComponentBuilder.kt"

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
    value = "SMAP\nClassComponentBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassComponentBuilder.kt\nexpo/modules/kotlin/classcomponent/ClassComponentBuilder$Constructor$3\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 VideoModule.kt\nexpo/modules/video/VideoModule\n*L\n1#1,197:1\n11#2:198\n70#3,5:199\n*S KotlinDebug\n*F\n+ 1 ClassComponentBuilder.kt\nexpo/modules/kotlin/classcomponent/ClassComponentBuilder$Constructor$3\n*L\n97#1:198\n*E\n"
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

    iput-object p1, p0, Lexpo/modules/video/VideoModule$definition$lambda$60$lambda$57$$inlined$Constructor$2;->this$0:Lexpo/modules/video/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 99
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/video/VideoModule$definition$lambda$60$lambda$57$$inlined$Constructor$2;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 96
    aget-object p1, p1, v0

    .line 98
    check-cast p1, Lexpo/modules/video/records/VideoSource;

    .line 199
    new-instance v0, Lexpo/modules/video/player/VideoPlayer;

    iget-object v1, p0, Lexpo/modules/video/VideoModule$definition$lambda$60$lambda$57$$inlined$Constructor$2;->this$0:Lexpo/modules/video/VideoModule;

    invoke-virtual {v1}, Lexpo/modules/video/VideoModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/kotlin/AppContext;->getThrowingActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lexpo/modules/video/VideoModule$definition$lambda$60$lambda$57$$inlined$Constructor$2;->this$0:Lexpo/modules/video/VideoModule;

    invoke-virtual {v2}, Lexpo/modules/video/VideoModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lexpo/modules/video/player/VideoPlayer;-><init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/records/VideoSource;)V

    .line 200
    iget-object p1, p0, Lexpo/modules/video/VideoModule$definition$lambda$60$lambda$57$$inlined$Constructor$2;->this$0:Lexpo/modules/video/VideoModule;

    invoke-virtual {p1}, Lexpo/modules/video/VideoModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object p1

    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance p1, Lexpo/modules/video/VideoModule$definition$1$8$1$1;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Lexpo/modules/video/VideoModule$definition$1$8$1$1;-><init>(Lexpo/modules/video/player/VideoPlayer;Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-object v0
.end method
