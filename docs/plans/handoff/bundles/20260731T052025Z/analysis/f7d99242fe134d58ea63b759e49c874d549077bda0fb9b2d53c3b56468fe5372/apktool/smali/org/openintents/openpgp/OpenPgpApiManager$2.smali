.class public final Lorg/openintents/openpgp/OpenPgpApiManager$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpCallback;


# instance fields
.field public final synthetic this$0:Lorg/openintents/openpgp/OpenPgpApiManager;


# direct methods
.method public constructor <init>(Lorg/openintents/openpgp/OpenPgpApiManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/openintents/openpgp/OpenPgpApiManager$2;->this$0:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReturn(Landroid/content/Intent;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lorg/openintents/openpgp/OpenPgpApiManager$2;->this$0:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 4
    .line 5
    sget-object v1, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->UNCONFIGURED:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 6
    .line 7
    if-eq v0, v1, :cond_4

    .line 8
    .line 9
    const-string v0, "result_code"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eq v0, v3, :cond_3

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    if-eq v0, v4, :cond_2

    .line 21
    .line 22
    const-string v0, "error"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    sget-object v5, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->ERROR:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 29
    .line 30
    sget-object v6, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderError;->ConnectionFailed:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderError;

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    const-class v4, Lorg/openintents/openpgp/OpenPgpError;

    .line 35
    .line 36
    invoke-static {p1, v0, v4}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lorg/openintents/openpgp/OpenPgpError;

    .line 41
    .line 42
    new-array v0, v3, [Ljava/lang/Object;

    .line 43
    .line 44
    aput-object p1, v0, v2

    .line 45
    .line 46
    const-string v2, "OpenPGP Api error: %s"

    .line 47
    .line 48
    invoke-static {v2, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    if-eqz p1, :cond_0

    .line 52
    .line 53
    iget p1, p1, Lorg/openintents/openpgp/OpenPgpError;->errorId:I

    .line 54
    .line 55
    if-ne p1, v3, :cond_0

    .line 56
    .line 57
    sget-object p1, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderError;->VersionIncompatible:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderError;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/OpenPgpApiManager;->callbackOpenPgpProviderError(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderError;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lorg/openintents/openpgp/OpenPgpApiManager;->setOpenPgpProviderState(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0, v6}, Lorg/openintents/openpgp/OpenPgpApiManager;->callbackOpenPgpProviderError(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderError;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v5}, Lorg/openintents/openpgp/OpenPgpApiManager;->setOpenPgpProviderState(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0, v5}, Lorg/openintents/openpgp/OpenPgpApiManager;->setOpenPgpProviderState(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v6}, Lorg/openintents/openpgp/OpenPgpApiManager;->callbackOpenPgpProviderError(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderError;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    const-string v0, "intent"

    .line 81
    .line 82
    const-class v1, Landroid/app/PendingIntent;

    .line 83
    .line 84
    invoke-static {p1, v0, v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroid/app/PendingIntent;

    .line 89
    .line 90
    iput-object p1, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->userInteractionPendingIntent:Landroid/app/PendingIntent;

    .line 91
    .line 92
    sget-object p1, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->UI_REQUIRED:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/OpenPgpApiManager;->setOpenPgpProviderState(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_3
    sget-object p1, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->OK:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/OpenPgpApiManager;->setOpenPgpProviderState(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;)V

    .line 101
    .line 102
    .line 103
    :cond_4
    return-void
.end method
