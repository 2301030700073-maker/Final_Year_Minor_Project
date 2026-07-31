.class public final synthetic Lcom/fsck/k9/activity/MessageCompose$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat$OnResultListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/activity/MessageCompose;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/activity/MessageCompose;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/activity/MessageCompose$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$$ExternalSyntheticLambda2;->f$0:Lcom/fsck/k9/activity/MessageCompose;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onResult(Lnet/thunderbird/core/outcome/Outcome;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/MessageCompose$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose$$ExternalSyntheticLambda2;->f$0:Lcom/fsck/k9/activity/MessageCompose;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/fsck/k9/activity/MessageCompose;->PREFIX:Ljava/util/regex/Pattern;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    instance-of v0, p1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 20
    .line 21
    iget-object p1, p1, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Lnet/thunderbird/feature/notification/api/command/outcome/Success;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->activeInAppNotifications:Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-interface {p1}, Lnet/thunderbird/feature/notification/api/command/outcome/Success;->getRawNotificationId()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    instance-of p0, p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 40
    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 44
    .line 45
    iget-object p0, p1, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Lnet/thunderbird/feature/notification/api/command/outcome/Failure;

    .line 48
    .line 49
    sget-object p1, Lcom/fsck/k9/activity/MessageCompose;->PREFIX:Ljava/util/regex/Pattern;

    .line 50
    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v0, "Failed to send in-app notification. Failure = "

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    new-array p1, v1, [Ljava/lang/Object;

    .line 66
    .line 67
    invoke-static {v2, p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void

    .line 75
    :pswitch_0
    sget-object v0, Lcom/fsck/k9/activity/MessageCompose;->PREFIX:Ljava/util/regex/Pattern;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    instance-of v0, p1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 85
    .line 86
    iget-object p1, p1, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p1, Lnet/thunderbird/feature/notification/api/command/outcome/Success;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->activeInAppNotifications:Ljava/util/HashSet;

    .line 91
    .line 92
    invoke-interface {p1}, Lnet/thunderbird/feature/notification/api/command/outcome/Success;->getRawNotificationId()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    instance-of p0, p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 105
    .line 106
    if-eqz p0, :cond_3

    .line 107
    .line 108
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 109
    .line 110
    iget-object p0, p1, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p0, Lnet/thunderbird/feature/notification/api/command/outcome/Failure;

    .line 113
    .line 114
    sget-object p1, Lcom/fsck/k9/activity/MessageCompose;->PREFIX:Ljava/util/regex/Pattern;

    .line 115
    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v0, "Failed to dismiss in-app notification. Failure = "

    .line 119
    .line 120
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    new-array p1, v1, [Ljava/lang/Object;

    .line 131
    .line 132
    invoke-static {v2, p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_3
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 137
    .line 138
    .line 139
    :goto_1
    return-void

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
