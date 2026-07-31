.class public final synthetic Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Lorg/wikipedia/dataclient/WikiSite;

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/Integer;

.field public final synthetic f$5:J

.field public final synthetic f$6:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$7:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$8:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;IILjava/lang/Integer;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$0:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 7
    .line 8
    iput p3, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$4:Ljava/lang/Integer;

    .line 13
    .line 14
    iput-wide p6, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$5:J

    .line 15
    .line 16
    iput-object p8, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$6:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    iput-object p9, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$7:Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    iput-object p10, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$8:Lkotlin/jvm/functions/Function0;

    .line 21
    .line 22
    iput-object p11, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 23
    .line 24
    iput p12, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$10:I

    .line 25
    .line 26
    iput p13, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$11:I

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    move-object v11, p1

    .line 2
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    move-object/from16 v0, p2

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Integer;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$10:I

    .line 12
    .line 13
    or-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 16
    .line 17
    .line 18
    move-result v12

    .line 19
    iget-object v0, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$0:Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    iget-object v1, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 22
    .line 23
    iget v2, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$2:I

    .line 24
    .line 25
    iget v3, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$3:I

    .line 26
    .line 27
    iget-object v4, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$4:Ljava/lang/Integer;

    .line 28
    .line 29
    iget-wide v5, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$5:J

    .line 30
    .line 31
    iget-object v7, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$6:Lkotlin/jvm/functions/Function0;

    .line 32
    .line 33
    iget-object v8, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$7:Lkotlin/jvm/functions/Function0;

    .line 34
    .line 35
    iget-object v9, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$8:Lkotlin/jvm/functions/Function0;

    .line 36
    .line 37
    iget-object v10, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 38
    .line 39
    iget v13, p0, Lorg/wikipedia/feed/CommunityModuleContainerKt$$ExternalSyntheticLambda3;->f$11:I

    .line 40
    .line 41
    invoke-static/range {v0 .. v13}, Lorg/wikipedia/feed/ForYouCardKt;->CommunityModuleContainer-Yod850M(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;IILjava/lang/Integer;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 42
    .line 43
    .line 44
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p0
.end method
