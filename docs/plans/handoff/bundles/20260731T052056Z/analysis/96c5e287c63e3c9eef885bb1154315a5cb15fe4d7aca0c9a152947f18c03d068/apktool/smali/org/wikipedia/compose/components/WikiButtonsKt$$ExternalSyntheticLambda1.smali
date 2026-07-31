.class public final synthetic Lorg/wikipedia/compose/components/WikiButtonsKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJLkotlin/jvm/functions/Function2;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/compose/components/WikiButtonsKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/compose/components/WikiButtonsKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-wide p3, p0, Lorg/wikipedia/compose/components/WikiButtonsKt$$ExternalSyntheticLambda1;->f$2:J

    .line 9
    .line 10
    iput-wide p5, p0, Lorg/wikipedia/compose/components/WikiButtonsKt$$ExternalSyntheticLambda1;->f$3:J

    .line 11
    .line 12
    iput-object p7, p0, Lorg/wikipedia/compose/components/WikiButtonsKt$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    iput p8, p0, Lorg/wikipedia/compose/components/WikiButtonsKt$$ExternalSyntheticLambda1;->f$5:I

    .line 15
    .line 16
    iput p9, p0, Lorg/wikipedia/compose/components/WikiButtonsKt$$ExternalSyntheticLambda1;->f$6:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lorg/wikipedia/compose/components/WikiButtonsKt$$ExternalSyntheticLambda1;->f$5:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 14
    .line 15
    .line 16
    move-result v8

    .line 17
    iget-object v0, p0, Lorg/wikipedia/compose/components/WikiButtonsKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/wikipedia/compose/components/WikiButtonsKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    iget-wide v2, p0, Lorg/wikipedia/compose/components/WikiButtonsKt$$ExternalSyntheticLambda1;->f$2:J

    .line 22
    .line 23
    iget-wide v4, p0, Lorg/wikipedia/compose/components/WikiButtonsKt$$ExternalSyntheticLambda1;->f$3:J

    .line 24
    .line 25
    iget-object v6, p0, Lorg/wikipedia/compose/components/WikiButtonsKt$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function2;

    .line 26
    .line 27
    iget v9, p0, Lorg/wikipedia/compose/components/WikiButtonsKt$$ExternalSyntheticLambda1;->f$6:I

    .line 28
    .line 29
    invoke-static/range {v0 .. v9}, Lorg/wikipedia/compose/components/TabsBoxKt;->AppButton-t6yy7ic(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;II)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method
