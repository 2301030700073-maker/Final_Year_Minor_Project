.class public final synthetic Lapp/k9mail/core/ui/compose/designsystem/molecule/ContentLoadingErrorViewKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/ContentLoadingErrorViewKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/ContentLoadingErrorViewKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 7
    .line 8
    iput-object p3, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/ContentLoadingErrorViewKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    iput p4, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/ContentLoadingErrorViewKt$$ExternalSyntheticLambda1;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 2
    .line 3
    check-cast p2, Lapp/k9mail/core/ui/compose/designsystem/molecule/LoadingErrorState;

    .line 4
    .line 5
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 6
    .line 7
    check-cast p4, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p4

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    and-int/lit8 p1, p4, 0x30

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    and-int/lit8 p1, p4, 0x40

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    move-object p1, p3

    .line 33
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object p1, p3

    .line 41
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    :goto_0
    if-eqz p1, :cond_1

    .line 48
    .line 49
    const/16 p1, 0x20

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/16 p1, 0x10

    .line 53
    .line 54
    :goto_1
    or-int/2addr p4, p1

    .line 55
    :cond_2
    and-int/lit16 p1, p4, 0x91

    .line 56
    .line 57
    const/16 v2, 0x90

    .line 58
    .line 59
    if-eq p1, v2, :cond_3

    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move p1, v0

    .line 64
    :goto_2
    and-int/lit8 v2, p4, 0x1

    .line 65
    .line 66
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 67
    .line 68
    invoke-virtual {p3, v2, p1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_6

    .line 73
    .line 74
    invoke-interface {p2}, Lapp/k9mail/core/ui/compose/designsystem/molecule/LoadingErrorState;->getError()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-interface {p2}, Lapp/k9mail/core/ui/compose/designsystem/molecule/LoadingErrorState;->isLoading()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    const p1, 0x4d8de563    # 2.9757757E8f

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/ContentLoadingErrorViewKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 91
    .line 92
    invoke-virtual {p0, p3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_4
    if-eqz p1, :cond_5

    .line 100
    .line 101
    const p2, 0x4d8deb6b    # 2.9762698E8f

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 105
    .line 106
    .line 107
    iget-object p0, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/ContentLoadingErrorViewKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 108
    .line 109
    invoke-virtual {p0, p1, p3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_5
    const p1, 0x4d8df0ae    # 2.9767008E8f

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 120
    .line 121
    .line 122
    iget p1, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/ContentLoadingErrorViewKt$$ExternalSyntheticLambda1;->f$3:I

    .line 123
    .line 124
    and-int/lit8 p1, p1, 0x8

    .line 125
    .line 126
    shr-int/lit8 p4, p4, 0x3

    .line 127
    .line 128
    and-int/lit8 p4, p4, 0xe

    .line 129
    .line 130
    or-int/2addr p1, p4

    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget-object p0, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/ContentLoadingErrorViewKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 136
    .line 137
    invoke-virtual {p0, p2, p3, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_6
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 145
    .line 146
    .line 147
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 148
    .line 149
    return-object p0
.end method
