.class public final synthetic Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda7;->f$0:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->DELETE_FROM_HISTORY:Lorg/schabi/newpipe/error/UserAction;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda7;->f$0:Landroid/content/Context;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 12
    .line 13
    sget p1, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->$r8$clinit:I

    .line 14
    .line 15
    const p1, 0x7f13053a

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    .line 27
    .line 28
    sget v0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->$r8$clinit:I

    .line 29
    .line 30
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 31
    .line 32
    const-string v1, "Delete search history"

    .line 33
    .line 34
    invoke-direct {v0, p1, v2, v1}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v0}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->openActivity(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    .line 47
    .line 48
    sget v0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->$r8$clinit:I

    .line 49
    .line 50
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 51
    .line 52
    const-string v1, "Clear orphaned records"

    .line 53
    .line 54
    invoke-direct {v0, p1, v2, v1}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sget-object p1, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v0}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->openActivity(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_2
    check-cast p1, Ljava/lang/Throwable;

    .line 67
    .line 68
    sget v0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->$r8$clinit:I

    .line 69
    .line 70
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 71
    .line 72
    const-string v1, "Delete playback states"

    .line 73
    .line 74
    invoke-direct {v0, p1, v2, v1}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget-object p1, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-static {p0, v0}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->openActivity(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    .line 87
    .line 88
    sget p1, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->$r8$clinit:I

    .line 89
    .line 90
    const p1, 0x7f13053b

    .line 91
    .line 92
    .line 93
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_4
    check-cast p1, Ljava/lang/Throwable;

    .line 102
    .line 103
    sget v0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->$r8$clinit:I

    .line 104
    .line 105
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 106
    .line 107
    const-string v1, "Delete from history"

    .line 108
    .line 109
    invoke-direct {v0, p1, v2, v1}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sget-object p1, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-static {p0, v0}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->openActivity(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    .line 122
    .line 123
    sget p1, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->$r8$clinit:I

    .line 124
    .line 125
    const p1, 0x7f13043b

    .line 126
    .line 127
    .line 128
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
