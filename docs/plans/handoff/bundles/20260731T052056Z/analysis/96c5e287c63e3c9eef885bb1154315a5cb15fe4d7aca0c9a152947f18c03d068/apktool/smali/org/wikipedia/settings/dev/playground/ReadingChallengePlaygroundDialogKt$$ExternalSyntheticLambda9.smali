.class public final synthetic Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$3:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$4:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$5:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$6:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$7:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda9;->f$1:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda9;->f$2:Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda9;->f$3:Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda9;->f$4:Landroidx/compose/runtime/MutableState;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda9;->f$5:Landroidx/compose/runtime/MutableState;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda9;->f$6:Landroidx/compose/runtime/MutableState;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda9;->f$7:Landroidx/compose/runtime/MutableState;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    const v0, 0x7f120651

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 8
    .line 9
    .line 10
    const v0, 0x7f12064b

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 14
    .line 15
    .line 16
    const v0, 0x7f12064f

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 20
    .line 21
    .line 22
    const v0, 0x7f12064d

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 26
    .line 27
    .line 28
    const v0, 0x7f12064e

    .line 29
    .line 30
    .line 31
    const-string v1, ""

    .line 32
    .line 33
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const v0, 0x7f12064a

    .line 37
    .line 38
    .line 39
    const-string v2, "2026-06-18"

    .line 40
    .line 41
    invoke-static {v0, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const v3, 0x7f120650

    .line 45
    .line 46
    .line 47
    const-string v4, "2026-05-11"

    .line 48
    .line 49
    invoke-static {v3, v4}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingChallengeStreak()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    iget-object v6, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda9;->f$1:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 57
    .line 58
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingChallengeEnrolled()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    iget-object v6, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda9;->f$2:Landroidx/compose/runtime/MutableState;

    .line 70
    .line 71
    invoke-interface {v6, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingChallengeLastReadDate()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    iget-object v6, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda9;->f$3:Landroidx/compose/runtime/MutableState;

    .line 79
    .line 80
    invoke-interface {v6, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v3, v4}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    if-nez v3, :cond_0

    .line 88
    .line 89
    move-object v3, v1

    .line 90
    :cond_0
    iget-object v4, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda9;->f$4:Landroidx/compose/runtime/MutableState;

    .line 91
    .line 92
    invoke-interface {v4, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-nez v0, :cond_1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    move-object v1, v0

    .line 103
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda9;->f$5:Landroidx/compose/runtime/MutableState;

    .line 104
    .line 105
    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingChallengeOnboardingShown()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-object v1, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda9;->f$6:Landroidx/compose/runtime/MutableState;

    .line 117
    .line 118
    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingChallengeInstallPromptShown()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iget-object v1, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda9;->f$7:Landroidx/compose/runtime/MutableState;

    .line 130
    .line 131
    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iget-object p0, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/functions/Function0;

    .line 135
    .line 136
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 140
    .line 141
    return-object p0
.end method
