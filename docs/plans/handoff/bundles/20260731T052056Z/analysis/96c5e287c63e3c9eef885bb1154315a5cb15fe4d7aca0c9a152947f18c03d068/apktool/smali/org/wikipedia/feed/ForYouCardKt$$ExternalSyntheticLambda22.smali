.class public final synthetic Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lorg/wikipedia/dataclient/WikiSite;

.field public final synthetic f$10:I

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$6:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$7:I

.field public final synthetic f$8:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(ZLorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/functions/Function0;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;->f$0:Z

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;->f$2:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;->f$3:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;->f$4:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;->f$5:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;->f$6:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    iput p8, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;->f$7:I

    .line 19
    .line 20
    iput-object p9, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;->f$8:Lkotlin/jvm/functions/Function0;

    .line 21
    .line 22
    iput p10, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;->f$9:I

    .line 23
    .line 24
    iput p11, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;->f$10:I

    .line 25
    .line 26
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
    iget p1, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;->f$9:I

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
    iget-boolean v0, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;->f$0:Z

    .line 18
    .line 19
    iget-object v1, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 20
    .line 21
    iget-object v2, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;->f$2:Lkotlin/jvm/functions/Function0;

    .line 22
    .line 23
    iget-object v3, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;->f$3:Lkotlin/jvm/functions/Function0;

    .line 24
    .line 25
    iget-object v4, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;->f$4:Lkotlin/jvm/functions/Function0;

    .line 26
    .line 27
    iget-object v5, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;->f$5:Lkotlin/jvm/functions/Function0;

    .line 28
    .line 29
    iget-object v6, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;->f$6:Lkotlin/jvm/functions/Function0;

    .line 30
    .line 31
    iget v7, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;->f$7:I

    .line 32
    .line 33
    iget-object v8, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;->f$8:Lkotlin/jvm/functions/Function0;

    .line 34
    .line 35
    iget v11, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda22;->f$10:I

    .line 36
    .line 37
    invoke-static/range {v0 .. v11}, Lorg/wikipedia/feed/ForYouCardKt;->ForYouCardDropdownMenu(ZLorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;II)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method
