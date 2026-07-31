.class public final synthetic Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$10:I

.field public final synthetic f$12:I

.field public final synthetic f$14:I

.field public final synthetic f$2:Landroidx/compose/ui/text/TextLinkStyles;

.field public final synthetic f$3:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic f$4:J

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:J

.field public final synthetic f$8:Landroidx/compose/ui/text/LinkInteractionListener;

.field public final synthetic f$9:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/TextStyle;JIIJLandroidx/compose/ui/text/LinkInteractionListener;Lkotlin/jvm/functions/Function2;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/text/TextLinkStyles;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/ui/text/TextStyle;

    .line 11
    .line 12
    iput-wide p5, p0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$4:J

    .line 13
    .line 14
    iput p7, p0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$5:I

    .line 15
    .line 16
    iput p8, p0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$6:I

    .line 17
    .line 18
    iput-wide p9, p0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$7:J

    .line 19
    .line 20
    iput-object p11, p0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$8:Landroidx/compose/ui/text/LinkInteractionListener;

    .line 21
    .line 22
    iput-object p12, p0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$9:Lkotlin/jvm/functions/Function2;

    .line 23
    .line 24
    iput p13, p0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$10:I

    .line 25
    .line 26
    iput p14, p0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$12:I

    .line 27
    .line 28
    iput p15, p0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$14:I

    .line 29
    .line 30
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
    iget v1, v0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$12:I

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
    iget-object v1, v0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 23
    .line 24
    move-object v2, v1

    .line 25
    iget-object v1, v0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 26
    .line 27
    move-object v3, v2

    .line 28
    iget-object v2, v0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/text/TextLinkStyles;

    .line 29
    .line 30
    move-object v4, v3

    .line 31
    iget-object v3, v0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/ui/text/TextStyle;

    .line 32
    .line 33
    move-object v6, v4

    .line 34
    iget-wide v4, v0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$4:J

    .line 35
    .line 36
    move-object v7, v6

    .line 37
    iget v6, v0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$5:I

    .line 38
    .line 39
    move-object v8, v7

    .line 40
    iget v7, v0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$6:I

    .line 41
    .line 42
    move-object v10, v8

    .line 43
    iget-wide v8, v0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$7:J

    .line 44
    .line 45
    move-object v11, v10

    .line 46
    iget-object v10, v0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$8:Landroidx/compose/ui/text/LinkInteractionListener;

    .line 47
    .line 48
    move-object v12, v11

    .line 49
    iget-object v11, v0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$9:Lkotlin/jvm/functions/Function2;

    .line 50
    .line 51
    move-object v15, v12

    .line 52
    iget v12, v0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$10:I

    .line 53
    .line 54
    iget v0, v0, Lorg/wikipedia/compose/components/HtmlTextKt$$ExternalSyntheticLambda1;->f$14:I

    .line 55
    .line 56
    move-object/from16 v16, v15

    .line 57
    .line 58
    move v15, v0

    .line 59
    move-object/from16 v0, v16

    .line 60
    .line 61
    invoke-static/range {v0 .. v15}, Lorg/wikipedia/compose/components/TabsBoxKt;->HtmlText-KiACRJU(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/TextStyle;JIIJLandroidx/compose/ui/text/LinkInteractionListener;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/GapComposer;II)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 65
    .line 66
    return-object v0
.end method
