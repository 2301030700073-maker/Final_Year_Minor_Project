.class public final synthetic Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "accountSpinner"

    .line 5
    .line 6
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p1, Ljava/util/List;

    .line 14
    .line 15
    sget v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->$r8$clinit:I

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->accountSpinner:Lcom/fsck/k9/ui/settings/account/AccountSelectionSpinner;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/settings/account/AccountSelectionSpinner;->setAccounts(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    return-object v3

    .line 28
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :pswitch_0
    check-cast p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    const-string v4, "accountUuid"

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->accountUuid:Ljava/lang/String;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    aput-object p1, v0, v1

    .line 47
    .line 48
    const-string p1, "Account with UUID %s not found"

    .line 49
    .line 50
    invoke-static {p1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1

    .line 61
    :cond_2
    iget-object v5, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->accountSpinner:Lcom/fsck/k9/ui/settings/account/AccountSelectionSpinner;

    .line 62
    .line 63
    if-eqz v5, :cond_5

    .line 64
    .line 65
    invoke-virtual {v5, p1}, Lcom/fsck/k9/ui/settings/account/AccountSelectionSpinner;->setSelection(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const v2, 0x7f090034

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-nez p1, :cond_4

    .line 80
    .line 81
    iget-boolean p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->fragmentAdded:Z

    .line 82
    .line 83
    if-nez p1, :cond_4

    .line 84
    .line 85
    iput-boolean v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->fragmentAdded:Z

    .line 86
    .line 87
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    new-instance v5, Landroidx/fragment/app/BackStackRecord;

    .line 95
    .line 96
    invoke-direct {v5, p1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 97
    .line 98
    .line 99
    sget p1, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->$r8$clinit:I

    .line 100
    .line 101
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->accountUuid:Ljava/lang/String;

    .line 102
    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->startScreenKey:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {p1, p0}, Lcom/fsck/k9/sasl/OAuthBearer;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {v5, v2, p0, v1, v0}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v1

    .line 122
    :cond_4
    :goto_0
    return-object v3

    .line 123
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v1

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
