.class public final synthetic Lorg/wikipedia/wiktionary/WiktionaryDialogScreenKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/ui/text/LinkInteractionListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/wiktionary/WiktionaryDialogScreenKt$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/wiktionary/WiktionaryDialogScreenKt$$ExternalSyntheticLambda6;->f$0:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/wiktionary/WiktionaryDialogScreenKt$$ExternalSyntheticLambda6;->f$1:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroidx/compose/ui/text/LinkAnnotation;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/wiktionary/WiktionaryDialogScreenKt$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "link"

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/wiktionary/WiktionaryDialogScreenKt$$ExternalSyntheticLambda6;->f$1:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/wiktionary/WiktionaryDialogScreenKt$$ExternalSyntheticLambda6;->f$0:Landroid/content/Context;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v1}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logClick(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    check-cast p1, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 24
    .line 25
    iget-object p0, p1, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v1}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logClick(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    check-cast p1, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 43
    .line 44
    iget-object p0, p1, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
