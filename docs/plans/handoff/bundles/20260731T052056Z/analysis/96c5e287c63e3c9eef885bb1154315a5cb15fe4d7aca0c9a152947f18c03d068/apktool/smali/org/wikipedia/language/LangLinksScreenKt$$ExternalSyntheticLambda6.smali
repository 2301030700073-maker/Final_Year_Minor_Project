.class public final synthetic Lorg/wikipedia/language/LangLinksScreenKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$2:Landroidx/compose/ui/text/TextStyle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;II)V
    .locals 0

    .line 1
    iput p5, p0, Lorg/wikipedia/language/LangLinksScreenKt$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/language/LangLinksScreenKt$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/language/LangLinksScreenKt$$ExternalSyntheticLambda6;->f$1:Landroidx/compose/ui/Modifier;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/language/LangLinksScreenKt$$ExternalSyntheticLambda6;->f$2:Landroidx/compose/ui/text/TextStyle;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/language/LangLinksScreenKt$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/16 v2, 0x31

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/language/LangLinksScreenKt$$ExternalSyntheticLambda6;->f$2:Landroidx/compose/ui/text/TextStyle;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/wikipedia/language/LangLinksScreenKt$$ExternalSyntheticLambda6;->f$1:Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/language/LangLinksScreenKt$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    check-cast p2, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-static {p0, v4, v3, p1, p2}, Lokhttp3/Cookie$Companion;->ListHeader(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;I)V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :pswitch_0
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-static {p0, v4, v3, p1, p2}, Lorg/wikipedia/util/TabUtil;->ListHeader(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;I)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
