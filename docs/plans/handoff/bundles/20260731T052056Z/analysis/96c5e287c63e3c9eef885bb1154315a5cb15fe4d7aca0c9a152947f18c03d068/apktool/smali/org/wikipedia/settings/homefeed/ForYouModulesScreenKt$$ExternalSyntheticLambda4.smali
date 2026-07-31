.class public final synthetic Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lorg/wikipedia/settings/homefeed/ModulesViewModel;

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$3:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lorg/wikipedia/settings/homefeed/ModulesViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    iput p5, p0, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda4;->f$1:Lorg/wikipedia/settings/homefeed/ModulesViewModel;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda4;->f$2:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    iput-object p4, p0, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda4;->f$3:Landroidx/compose/runtime/MutableState;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda4;->f$3:Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    iget-object v4, p0, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda4;->f$2:Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    iget-object v5, p0, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda4;->f$1:Lorg/wikipedia/settings/homefeed/ModulesViewModel;

    .line 11
    .line 12
    iget-object p0, p0, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-interface {v4, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    const/4 v12, 0x0

    .line 29
    const/16 v13, 0xf2

    .line 30
    .line 31
    const-string v7, "click"

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    const-string v9, "feed_community"

    .line 35
    .line 36
    const-string v10, "modules_off_cancel"

    .line 37
    .line 38
    const/4 v11, 0x0

    .line 39
    invoke-static/range {v6 .. v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v5, p0, v2}, Lorg/wikipedia/settings/homefeed/ModulesViewModel;->toggleModuleVisibility(Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    return-object v1

    .line 52
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-interface {v4, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    if-eqz v6, :cond_1

    .line 62
    .line 63
    const/4 v12, 0x0

    .line 64
    const/16 v13, 0xf2

    .line 65
    .line 66
    const-string v7, "click"

    .line 67
    .line 68
    const/4 v8, 0x0

    .line 69
    const-string v9, "feed_for_you"

    .line 70
    .line 71
    const-string v10, "modules_off_cancel"

    .line 72
    .line 73
    const/4 v11, 0x0

    .line 74
    invoke-static/range {v6 .. v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v5, p0, v2}, Lorg/wikipedia/settings/homefeed/ModulesViewModel;->toggleModuleVisibility(Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    return-object v1

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
