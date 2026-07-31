.class public final synthetic Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/activity/MessageHomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/activity/MessageHomeActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;->f$0:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;->f$0:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 12
    .line 13
    new-instance v0, Lcom/fsck/k9/activity/MessageHomeActivity$createDrawerListener$1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/MessageHomeActivity$createDrawerListener$1;-><init>(Lcom/fsck/k9/activity/MessageHomeActivity;)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_0
    sget-object v0, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 20
    .line 21
    sget-object v0, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountSetup;->INSTANCE:Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountSetup;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroid/content/Intent;

    .line 27
    .line 28
    const-class v3, Lapp/k9mail/feature/launcher/FeatureLauncherActivity;

    .line 29
    .line 30
    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .line 32
    .line 33
    iget-object v3, v0, Lnet/openid/appauth/JsonUtil$Field;->key:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v3, Landroid/net/Uri;

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    iget-object v0, v0, Lnet/openid/appauth/JsonUtil$Field;->defaultValue:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Ljava/lang/Integer;

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    .line 55
    .line 56
    return-object v2

    .line 57
    :pswitch_1
    sget-object v0, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 58
    .line 59
    new-instance v0, Landroid/content/Intent;

    .line 60
    .line 61
    const-class v1, Lcom/fsck/k9/ui/settings/SettingsActivity;

    .line 62
    .line 63
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 67
    .line 68
    .line 69
    return-object v2

    .line 70
    :pswitch_2
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 71
    .line 72
    if-nez v0, :cond_1

    .line 73
    .line 74
    const-string p0, "Tried to open \"Manage folders\", but no account selected!"

    .line 75
    .line 76
    new-array v0, v1, [Ljava/lang/Object;

    .line 77
    .line 78
    invoke-static {p0, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .line 83
    .line 84
    const-class v3, Lcom/fsck/k9/ui/managefolders/ManageFoldersActivity;

    .line 85
    .line 86
    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .line 88
    .line 89
    const-string v3, "account"

    .line 90
    .line 91
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 97
    .line 98
    .line 99
    :goto_0
    return-object v2

    .line 100
    :pswitch_3
    sget-object v0, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 101
    .line 102
    const/4 v0, 0x1

    .line 103
    new-array v0, v0, [Ljava/lang/Object;

    .line 104
    .line 105
    aput-object p0, v0, v1

    .line 106
    .line 107
    invoke-static {v0}, Lokio/Options$Companion;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :pswitch_4
    sget-object v0, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageHomeActivity;->openUnifiedFolders()V

    .line 115
    .line 116
    .line 117
    return-object v2

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
