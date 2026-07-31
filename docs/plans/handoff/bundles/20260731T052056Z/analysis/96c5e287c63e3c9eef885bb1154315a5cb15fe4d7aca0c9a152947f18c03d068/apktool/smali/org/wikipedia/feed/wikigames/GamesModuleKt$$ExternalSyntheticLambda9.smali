.class public final synthetic Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Lorg/wikipedia/dataclient/WikiSite;

.field public final synthetic f$2:Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState;

.field public final synthetic f$3:F

.field public final synthetic f$4:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$6:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$7:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState;FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda9;->f$0:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda9;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda9;->f$2:Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState;

    .line 9
    .line 10
    iput p4, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda9;->f$3:F

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda9;->f$4:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda9;->f$5:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda9;->f$6:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda9;->f$7:Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v8, p1

    .line 2
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x7

    .line 10
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 11
    .line 12
    .line 13
    move-result v9

    .line 14
    iget-object v0, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda9;->f$0:Landroidx/compose/ui/Modifier;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda9;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 17
    .line 18
    iget-object v2, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda9;->f$2:Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState;

    .line 19
    .line 20
    iget v3, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda9;->f$3:F

    .line 21
    .line 22
    iget-object v4, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda9;->f$4:Lkotlin/jvm/functions/Function0;

    .line 23
    .line 24
    iget-object v5, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda9;->f$5:Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    iget-object v6, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda9;->f$6:Lkotlin/jvm/functions/Function0;

    .line 27
    .line 28
    iget-object v7, p0, Lorg/wikipedia/feed/wikigames/GamesModuleKt$$ExternalSyntheticLambda9;->f$7:Lkotlin/jvm/functions/Function0;

    .line 29
    .line 30
    invoke-static/range {v0 .. v9}, Lorg/wikipedia/feed/wikigames/GamesModuleKt;->OnThisDayGameModuleCard-aA_HZ9I(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState;FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method
