.class public final synthetic Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/core/common/provider/BrandNameProvider;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/core/common/provider/BrandNameProvider;I)V
    .locals 0

    .line 1
    iput p2, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda1;->f$0:Lnet/thunderbird/core/common/provider/BrandNameProvider;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda1;->f$0:Lnet/thunderbird/core/common/provider/BrandNameProvider;

    .line 11
    .line 12
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 13
    .line 14
    check-cast p2, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    and-int/lit8 v0, p2, 0x3

    .line 24
    .line 25
    if-eq v0, v3, :cond_0

    .line 26
    .line 27
    move v0, v5

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v4

    .line 30
    :goto_0
    and-int/2addr p2, v5

    .line 31
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 32
    .line 33
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    check-cast p0, Lapp/k9mail/provider/K9AppNameProvider;

    .line 40
    .line 41
    invoke-virtual {p0}, Lapp/k9mail/provider/K9AppNameProvider;->getBrandName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    sget-object p2, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    .line 46
    .line 47
    invoke-static {p1}, Landroidx/compose/foundation/layout/FlowRowOverflow;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iget-object p2, p2, Landroidx/compose/foundation/layout/WindowInsetsHolder;->statusBars:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 52
    .line 53
    invoke-static {p1}, Landroidx/compose/foundation/layout/FlowRowOverflow;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v0, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->displayCutout:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 58
    .line 59
    new-instance v3, Landroidx/compose/foundation/layout/UnionInsets;

    .line 60
    .line 61
    invoke-direct {v3, p2, v0}, Landroidx/compose/foundation/layout/UnionInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-static {p0, p2, p1, v4, v4}, Landroidx/room/util/DBUtil;->AppTitleTopHeader(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 73
    .line 74
    .line 75
    :goto_1
    return-object v1

    .line 76
    :pswitch_0
    and-int/lit8 v0, p2, 0x3

    .line 77
    .line 78
    if-eq v0, v3, :cond_2

    .line 79
    .line 80
    move v0, v5

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    move v0, v4

    .line 83
    :goto_2
    and-int/2addr p2, v5

    .line 84
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 85
    .line 86
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_3

    .line 91
    .line 92
    check-cast p0, Lapp/k9mail/provider/K9AppNameProvider;

    .line 93
    .line 94
    invoke-virtual {p0}, Lapp/k9mail/provider/K9AppNameProvider;->getBrandName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    sget-object p2, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    .line 99
    .line 100
    invoke-static {p1}, Landroidx/compose/foundation/layout/FlowRowOverflow;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    iget-object p2, p2, Landroidx/compose/foundation/layout/WindowInsetsHolder;->statusBars:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 105
    .line 106
    invoke-static {p1}, Landroidx/compose/foundation/layout/FlowRowOverflow;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v0, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->displayCutout:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 111
    .line 112
    new-instance v3, Landroidx/compose/foundation/layout/UnionInsets;

    .line 113
    .line 114
    invoke-direct {v3, p2, v0}, Landroidx/compose/foundation/layout/UnionInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-static {p0, p2, p1, v4, v4}, Landroidx/room/util/DBUtil;->AppTitleTopHeader(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 126
    .line 127
    .line 128
    :goto_3
    return-object v1

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
