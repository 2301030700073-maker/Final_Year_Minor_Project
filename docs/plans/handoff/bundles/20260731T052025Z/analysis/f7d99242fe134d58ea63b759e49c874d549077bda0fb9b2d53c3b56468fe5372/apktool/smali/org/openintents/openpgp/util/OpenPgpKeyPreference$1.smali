.class public final Lorg/openintents/openpgp/util/OpenPgpKeyPreference$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpCallback;


# instance fields
.field public final synthetic this$0:Lorg/openintents/openpgp/util/OpenPgpKeyPreference;


# direct methods
.method public constructor <init>(Lorg/openintents/openpgp/util/OpenPgpKeyPreference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference$1;->this$0:Lorg/openintents/openpgp/util/OpenPgpKeyPreference;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReturn(Landroid/content/Intent;)V
    .locals 7

    .line 1
    const-string v0, "result_code"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string v0, "intent"

    .line 18
    .line 19
    const-class v2, Landroid/app/PendingIntent;

    .line 20
    .line 21
    invoke-static {p1, v0, v2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/app/PendingIntent;

    .line 26
    .line 27
    const-string v2, "sign_key_id"

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iget-object p0, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference$1;->this$0:Lorg/openintents/openpgp/util/OpenPgpKeyPreference;

    .line 34
    .line 35
    const-wide/16 v4, 0x0

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    const-string v6, "key_creation_time"

    .line 44
    .line 45
    invoke-virtual {p1, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    const-string v6, "primary_user_id"

    .line 50
    .line 51
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, v2, v3}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->setAndPersist(J)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->keyPrimaryUserId:Ljava/lang/String;

    .line 59
    .line 60
    iput-wide v4, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->keyCreationTime:J

    .line 61
    .line 62
    iput-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->pendingIntentSelectKey:Landroid/app/PendingIntent;

    .line 63
    .line 64
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    iget-boolean p1, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->pendingIntentRunImmediately:Z

    .line 72
    .line 73
    if-nez p1, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iput-boolean v1, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->pendingIntentRunImmediately:Z

    .line 77
    .line 78
    invoke-virtual {p0}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->apiStartPendingIntent()V

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-virtual {p0}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->refreshTitleAndSummary()V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->keyPrimaryUserId:Ljava/lang/String;

    .line 87
    .line 88
    iput-wide v4, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->keyCreationTime:J

    .line 89
    .line 90
    iput-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->pendingIntentSelectKey:Landroid/app/PendingIntent;

    .line 91
    .line 92
    iget-boolean p1, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->pendingIntentRunImmediately:Z

    .line 93
    .line 94
    if-nez p1, :cond_3

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    iput-boolean v1, p0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->pendingIntentRunImmediately:Z

    .line 98
    .line 99
    invoke-virtual {p0}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->apiStartPendingIntent()V

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-virtual {p0}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->refreshTitleAndSummary()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_4
    const-string p0, "error"

    .line 107
    .line 108
    const-class v0, Lorg/openintents/openpgp/OpenPgpError;

    .line 109
    .line 110
    invoke-static {p1, p0, v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    check-cast p0, Lorg/openintents/openpgp/OpenPgpError;

    .line 115
    .line 116
    iget-object p0, p0, Lorg/openintents/openpgp/OpenPgpError;->message:Ljava/lang/String;

    .line 117
    .line 118
    new-array p1, v2, [Ljava/lang/Object;

    .line 119
    .line 120
    aput-object p0, p1, v1

    .line 121
    .line 122
    const-string p0, "RESULT_CODE_ERROR: %s"

    .line 123
    .line 124
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method
