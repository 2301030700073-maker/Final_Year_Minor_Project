.class public final synthetic Lorg/wikipedia/activitytab/ActivityTabFragmentKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Landroidx/compose/ui/graphics/painter/Painter;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Ljava/lang/String;ZZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/activitytab/ActivityTabFragmentKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/activitytab/ActivityTabFragmentKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/graphics/painter/Painter;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/activitytab/ActivityTabFragmentKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/activitytab/ActivityTabFragmentKt$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p5, p0, Lorg/wikipedia/activitytab/ActivityTabFragmentKt$$ExternalSyntheticLambda0;->f$4:Z

    .line 13
    .line 14
    iput-boolean p6, p0, Lorg/wikipedia/activitytab/ActivityTabFragmentKt$$ExternalSyntheticLambda0;->f$5:Z

    .line 15
    .line 16
    iput p7, p0, Lorg/wikipedia/activitytab/ActivityTabFragmentKt$$ExternalSyntheticLambda0;->f$6:I

    .line 17
    .line 18
    iput p8, p0, Lorg/wikipedia/activitytab/ActivityTabFragmentKt$$ExternalSyntheticLambda0;->f$7:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    move-object v6, p1

    .line 2
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lorg/wikipedia/activitytab/ActivityTabFragmentKt$$ExternalSyntheticLambda0;->f$6:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    iget-object v0, p0, Lorg/wikipedia/activitytab/ActivityTabFragmentKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/Modifier;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/wikipedia/activitytab/ActivityTabFragmentKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/graphics/painter/Painter;

    .line 20
    .line 21
    iget-object v2, p0, Lorg/wikipedia/activitytab/ActivityTabFragmentKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, p0, Lorg/wikipedia/activitytab/ActivityTabFragmentKt$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 24
    .line 25
    iget-boolean v4, p0, Lorg/wikipedia/activitytab/ActivityTabFragmentKt$$ExternalSyntheticLambda0;->f$4:Z

    .line 26
    .line 27
    iget-boolean v5, p0, Lorg/wikipedia/activitytab/ActivityTabFragmentKt$$ExternalSyntheticLambda0;->f$5:Z

    .line 28
    .line 29
    iget v8, p0, Lorg/wikipedia/activitytab/ActivityTabFragmentKt$$ExternalSyntheticLambda0;->f$7:I

    .line 30
    .line 31
    invoke-static/range {v0 .. v8}, Lorg/wikipedia/activitytab/ImpactModuleKt;->CommonCardHeader(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/runtime/GapComposer;II)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method
