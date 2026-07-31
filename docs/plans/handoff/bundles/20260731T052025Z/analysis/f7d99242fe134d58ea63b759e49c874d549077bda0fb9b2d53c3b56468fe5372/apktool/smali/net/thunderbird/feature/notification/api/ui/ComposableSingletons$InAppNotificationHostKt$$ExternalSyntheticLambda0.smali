.class public final synthetic Lnet/thunderbird/feature/notification/api/ui/ComposableSingletons$InAppNotificationHostKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/thunderbird/feature/notification/api/ui/ComposableSingletons$InAppNotificationHostKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget p0, p0, Lnet/thunderbird/feature/notification/api/ui/ComposableSingletons$InAppNotificationHostKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Error;

    .line 11
    .line 12
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 13
    .line 14
    check-cast p3, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    and-int/lit8 p3, p0, 0x6

    .line 21
    .line 22
    if-nez p3, :cond_1

    .line 23
    .line 24
    move-object p3, p2

    .line 25
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 26
    .line 27
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-eqz p3, :cond_0

    .line 32
    .line 33
    const/4 p3, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p3, 0x2

    .line 36
    :goto_0
    or-int/2addr p0, p3

    .line 37
    :cond_1
    and-int/lit8 p3, p0, 0x13

    .line 38
    .line 39
    const/16 v3, 0x12

    .line 40
    .line 41
    if-eq p3, v3, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v2, v1

    .line 45
    :goto_1
    and-int/lit8 p3, p0, 0x1

    .line 46
    .line 47
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 48
    .line 49
    invoke-virtual {p2, p3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    if-eqz p3, :cond_4

    .line 54
    .line 55
    if-nez p1, :cond_3

    .line 56
    .line 57
    const p0, -0x1d2bcd98

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 61
    .line 62
    .line 63
    sget-object p0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 64
    .line 65
    const/4 p1, 0x6

    .line 66
    invoke-static {p0, p2, p1}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthRedirectScreenKt;->RedirectingUserContent(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    const p3, -0x1d2a3af5

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 77
    .line 78
    .line 79
    sget-object p3, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 80
    .line 81
    and-int/lit8 p0, p0, 0xe

    .line 82
    .line 83
    or-int/lit8 p0, p0, 0x30

    .line 84
    .line 85
    invoke-static {p1, p3, p2, p0}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthRedirectScreenKt;->ErrorDetails(Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Error;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 93
    .line 94
    .line 95
    :goto_2
    return-object v0

    .line 96
    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 97
    .line 98
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 99
    .line 100
    check-cast p3, Ljava/lang/Integer;

    .line 101
    .line 102
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    and-int/lit8 p1, p0, 0x11

    .line 110
    .line 111
    const/16 p3, 0x10

    .line 112
    .line 113
    if-eq p1, p3, :cond_5

    .line 114
    .line 115
    move v1, v2

    .line 116
    :cond_5
    and-int/2addr p0, v2

    .line 117
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 118
    .line 119
    invoke-virtual {p2, p0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-eqz p0, :cond_6

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_6
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 127
    .line 128
    .line 129
    :goto_3
    return-object v0

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
