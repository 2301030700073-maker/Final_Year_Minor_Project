.class public final synthetic Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Landroidx/compose/ui/text/AnnotatedString;

.field public final synthetic f$10:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field public final synthetic f$11:Landroidx/compose/foundation/text/modifiers/SelectionController;

.field public final synthetic f$13:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$15:I

.field public final synthetic f$16:I

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/util/Map;

.field public final synthetic f$5:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic f$6:I

.field public final synthetic f$7:Z

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/foundation/text/modifiers/SelectionController;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$0:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$1:Landroidx/compose/ui/text/AnnotatedString;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$2:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iput-boolean p4, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$3:Z

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$4:Ljava/util/Map;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$5:Landroidx/compose/ui/text/TextStyle;

    .line 15
    .line 16
    iput p7, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$6:I

    .line 17
    .line 18
    iput-boolean p8, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$7:Z

    .line 19
    .line 20
    iput p9, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$8:I

    .line 21
    .line 22
    iput p10, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$9:I

    .line 23
    .line 24
    iput-object p11, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$10:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 25
    .line 26
    iput-object p12, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$11:Landroidx/compose/foundation/text/modifiers/SelectionController;

    .line 27
    .line 28
    iput-object p13, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$13:Lkotlin/jvm/functions/Function1;

    .line 29
    .line 30
    iput p14, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$15:I

    .line 31
    .line 32
    iput p15, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$16:I

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget v1, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$15:I

    .line 15
    .line 16
    or-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 19
    .line 20
    .line 21
    move-result v14

    .line 22
    iget v1, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$16:I

    .line 23
    .line 24
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 25
    .line 26
    .line 27
    move-result v15

    .line 28
    iget-object v1, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$0:Landroidx/compose/ui/Modifier;

    .line 29
    .line 30
    move-object v2, v1

    .line 31
    iget-object v1, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$1:Landroidx/compose/ui/text/AnnotatedString;

    .line 32
    .line 33
    move-object v3, v2

    .line 34
    iget-object v2, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$2:Lkotlin/jvm/functions/Function1;

    .line 35
    .line 36
    move-object v4, v3

    .line 37
    iget-boolean v3, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$3:Z

    .line 38
    .line 39
    move-object v5, v4

    .line 40
    iget-object v4, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$4:Ljava/util/Map;

    .line 41
    .line 42
    move-object v6, v5

    .line 43
    iget-object v5, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$5:Landroidx/compose/ui/text/TextStyle;

    .line 44
    .line 45
    move-object v7, v6

    .line 46
    iget v6, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$6:I

    .line 47
    .line 48
    move-object v8, v7

    .line 49
    iget-boolean v7, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$7:Z

    .line 50
    .line 51
    move-object v9, v8

    .line 52
    iget v8, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$8:I

    .line 53
    .line 54
    move-object v10, v9

    .line 55
    iget v9, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$9:I

    .line 56
    .line 57
    move-object v11, v10

    .line 58
    iget-object v10, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$10:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 59
    .line 60
    move-object v12, v11

    .line 61
    iget-object v11, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$11:Landroidx/compose/foundation/text/modifiers/SelectionController;

    .line 62
    .line 63
    iget-object v0, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;->f$13:Lkotlin/jvm/functions/Function1;

    .line 64
    .line 65
    move-object/from16 v16, v12

    .line 66
    .line 67
    move-object v12, v0

    .line 68
    move-object/from16 v0, v16

    .line 69
    .line 70
    invoke-static/range {v0 .. v15}, Landroidx/compose/foundation/text/BasicTextKt;->LayoutWithLinksAndInlineContent-11Od_4g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/foundation/text/modifiers/SelectionController;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V

    .line 71
    .line 72
    .line 73
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 74
    .line 75
    return-object v0
.end method
