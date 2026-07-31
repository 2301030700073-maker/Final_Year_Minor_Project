.class public final synthetic Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:D

.field public final synthetic f$5:Z

.field public final synthetic f$6:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$7:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;IIIDZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda3;->f$0:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda3;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda3;->f$3:I

    .line 11
    .line 12
    iput-wide p5, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda3;->f$4:D

    .line 13
    .line 14
    iput-boolean p7, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda3;->f$5:Z

    .line 15
    .line 16
    iput-object p8, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda3;->f$6:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    iput-object p9, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda3;->f$7:Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    iput p10, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda3;->f$8:I

    .line 21
    .line 22
    iput p11, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda3;->f$9:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    move-object v9, p1

    .line 2
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda3;->f$8:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 14
    .line 15
    .line 16
    move-result v10

    .line 17
    iget-object v0, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda3;->f$0:Landroidx/compose/ui/Modifier;

    .line 18
    .line 19
    iget v1, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda3;->f$1:I

    .line 20
    .line 21
    iget v2, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda3;->f$2:I

    .line 22
    .line 23
    iget v3, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda3;->f$3:I

    .line 24
    .line 25
    iget-wide v4, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda3;->f$4:D

    .line 26
    .line 27
    iget-boolean v6, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda3;->f$5:Z

    .line 28
    .line 29
    iget-object v7, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda3;->f$6:Lkotlin/jvm/functions/Function0;

    .line 30
    .line 31
    iget-object v8, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda3;->f$7:Lkotlin/jvm/functions/Function0;

    .line 32
    .line 33
    iget v11, p0, Lorg/wikipedia/activitytab/WikiGamesModuleKt$$ExternalSyntheticLambda3;->f$9:I

    .line 34
    .line 35
    invoke-static/range {v0 .. v11}, Lorg/wikipedia/activitytab/ImpactModuleKt;->WikiGamesStatsCard(Landroidx/compose/ui/Modifier;IIIDZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;II)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method
