.class public final synthetic Lorg/wikipedia/compose/components/WikiLangCodeBoxKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field public final synthetic f$5:J

.field public final synthetic f$6:J

.field public final synthetic f$7:I

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;JJLandroidx/compose/foundation/shape/RoundedCornerShape;JJII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/compose/components/WikiLangCodeBoxKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/compose/components/WikiLangCodeBoxKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lorg/wikipedia/compose/components/WikiLangCodeBoxKt$$ExternalSyntheticLambda0;->f$2:J

    .line 9
    .line 10
    iput-wide p5, p0, Lorg/wikipedia/compose/components/WikiLangCodeBoxKt$$ExternalSyntheticLambda0;->f$3:J

    .line 11
    .line 12
    iput-object p7, p0, Lorg/wikipedia/compose/components/WikiLangCodeBoxKt$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 13
    .line 14
    iput-wide p8, p0, Lorg/wikipedia/compose/components/WikiLangCodeBoxKt$$ExternalSyntheticLambda0;->f$5:J

    .line 15
    .line 16
    iput-wide p10, p0, Lorg/wikipedia/compose/components/WikiLangCodeBoxKt$$ExternalSyntheticLambda0;->f$6:J

    .line 17
    .line 18
    iput p12, p0, Lorg/wikipedia/compose/components/WikiLangCodeBoxKt$$ExternalSyntheticLambda0;->f$7:I

    .line 19
    .line 20
    iput p13, p0, Lorg/wikipedia/compose/components/WikiLangCodeBoxKt$$ExternalSyntheticLambda0;->f$8:I

    .line 21
    .line 22
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
    iget v0, p0, Lorg/wikipedia/compose/components/WikiLangCodeBoxKt$$ExternalSyntheticLambda0;->f$7:I

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
    iget-object v0, p0, Lorg/wikipedia/compose/components/WikiLangCodeBoxKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    iget-object v1, p0, Lorg/wikipedia/compose/components/WikiLangCodeBoxKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 22
    .line 23
    iget-wide v2, p0, Lorg/wikipedia/compose/components/WikiLangCodeBoxKt$$ExternalSyntheticLambda0;->f$2:J

    .line 24
    .line 25
    iget-wide v4, p0, Lorg/wikipedia/compose/components/WikiLangCodeBoxKt$$ExternalSyntheticLambda0;->f$3:J

    .line 26
    .line 27
    iget-object v6, p0, Lorg/wikipedia/compose/components/WikiLangCodeBoxKt$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 28
    .line 29
    iget-wide v7, p0, Lorg/wikipedia/compose/components/WikiLangCodeBoxKt$$ExternalSyntheticLambda0;->f$5:J

    .line 30
    .line 31
    iget-wide v9, p0, Lorg/wikipedia/compose/components/WikiLangCodeBoxKt$$ExternalSyntheticLambda0;->f$6:J

    .line 32
    .line 33
    iget v13, p0, Lorg/wikipedia/compose/components/WikiLangCodeBoxKt$$ExternalSyntheticLambda0;->f$8:I

    .line 34
    .line 35
    invoke-static/range {v0 .. v13}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikiLangCodeBox-fdREj3A(Landroidx/compose/ui/Modifier;Ljava/lang/String;JJLandroidx/compose/foundation/shape/RoundedCornerShape;JJLandroidx/compose/runtime/GapComposer;II)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method
