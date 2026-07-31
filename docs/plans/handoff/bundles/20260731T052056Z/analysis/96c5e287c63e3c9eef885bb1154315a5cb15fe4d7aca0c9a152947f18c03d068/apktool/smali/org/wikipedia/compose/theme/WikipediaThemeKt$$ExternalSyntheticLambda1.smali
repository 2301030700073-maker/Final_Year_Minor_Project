.class public final synthetic Lorg/wikipedia/compose/theme/WikipediaThemeKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 0

    .line 16
    iput p5, p0, Lorg/wikipedia/compose/theme/WikipediaThemeKt$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/compose/theme/WikipediaThemeKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/compose/theme/WikipediaThemeKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput p3, p0, Lorg/wikipedia/compose/theme/WikipediaThemeKt$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lorg/wikipedia/compose/theme/WikipediaThemeKt$$ExternalSyntheticLambda1;->f$3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;ILkotlin/jvm/functions/Function1;I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lorg/wikipedia/compose/theme/WikipediaThemeKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/compose/theme/WikipediaThemeKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput p2, p0, Lorg/wikipedia/compose/theme/WikipediaThemeKt$$ExternalSyntheticLambda1;->f$2:I

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/compose/theme/WikipediaThemeKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 12
    .line 13
    iput p4, p0, Lorg/wikipedia/compose/theme/WikipediaThemeKt$$ExternalSyntheticLambda1;->f$3:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/compose/theme/WikipediaThemeKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget v2, p0, Lorg/wikipedia/compose/theme/WikipediaThemeKt$$ExternalSyntheticLambda1;->f$3:I

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/compose/theme/WikipediaThemeKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    iget v4, p0, Lorg/wikipedia/compose/theme/WikipediaThemeKt$$ExternalSyntheticLambda1;->f$2:I

    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/compose/theme/WikipediaThemeKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p0, Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;

    .line 17
    .line 18
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    check-cast p2, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    or-int/lit8 p2, v2, 0x1

    .line 28
    .line 29
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-static {p0, v4, v3, p1, p2}, Lorg/jsoup/Jsoup;->DefinitionWithExamples(Lorg/wikipedia/dataclient/restbase/RbDefinition$Definition;ILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :pswitch_0
    check-cast p0, Landroidx/compose/ui/Modifier;

    .line 38
    .line 39
    check-cast v3, Lorg/wikipedia/compose/components/OnboardingItem;

    .line 40
    .line 41
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 42
    .line 43
    check-cast p2, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    or-int/lit8 p2, v4, 0x1

    .line 49
    .line 50
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-static {p0, v3, p1, p2, v2}, Lorg/wikipedia/compose/components/TabsBoxKt;->OnboardingListItem(Landroidx/compose/ui/Modifier;Lorg/wikipedia/compose/components/OnboardingItem;Landroidx/compose/runtime/GapComposer;II)V

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    :pswitch_1
    check-cast p0, Ljava/util/Date;

    .line 59
    .line 60
    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 61
    .line 62
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 63
    .line 64
    check-cast p2, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    or-int/lit8 p2, v4, 0x1

    .line 70
    .line 71
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    invoke-static {p0, v3, p1, p2, v2}, Lorg/wikipedia/activitytab/timeline/TimelineModuleKt;->TimelineDateSeparator(Ljava/util/Date;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 76
    .line 77
    .line 78
    return-object v1

    .line 79
    :pswitch_2
    check-cast p0, Lorg/wikipedia/theme/Theme;

    .line 80
    .line 81
    check-cast v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 82
    .line 83
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 84
    .line 85
    check-cast p2, Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    or-int/lit8 p2, v4, 0x1

    .line 91
    .line 92
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    invoke-static {p0, v3, p1, p2, v2}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 97
    .line 98
    .line 99
    return-object v1

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
