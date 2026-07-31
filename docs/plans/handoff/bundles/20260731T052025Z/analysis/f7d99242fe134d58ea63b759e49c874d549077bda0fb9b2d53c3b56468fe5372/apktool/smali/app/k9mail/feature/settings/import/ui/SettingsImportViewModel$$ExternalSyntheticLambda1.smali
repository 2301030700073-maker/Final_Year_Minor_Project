.class public final synthetic Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;I)V
    .locals 0

    .line 1
    iput p2, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$$ExternalSyntheticLambda1;->f$0:Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

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
    .locals 12

    .line 1
    iget v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$$ExternalSyntheticLambda1;->f$0:Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 5
    .line 6
    check-cast p1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget v3, p1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;->accountIndex:I

    .line 15
    .line 16
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->accountStateMap:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lapp/k9mail/feature/settings/import/ui/AccountState;

    .line 27
    .line 28
    new-instance v2, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;

    .line 29
    .line 30
    iget-object v4, p1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;->displayName:Ljava/lang/String;

    .line 31
    .line 32
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->accountsMap:Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {p0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-object v5, p0

    .line 46
    check-cast v5, Ljava/lang/String;

    .line 47
    .line 48
    iget-boolean v6, p1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->selected:Z

    .line 49
    .line 50
    iget-object v7, p1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->importStatus:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    iget-object p0, v0, Lapp/k9mail/feature/settings/import/ui/AccountState;->incomingServerName:Ljava/lang/String;

    .line 55
    .line 56
    move-object v8, p0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move-object v8, v1

    .line 59
    :goto_0
    if-eqz v0, :cond_1

    .line 60
    .line 61
    iget-object v1, v0, Lapp/k9mail/feature/settings/import/ui/AccountState;->outgoingServerName:Ljava/lang/String;

    .line 62
    .line 63
    :cond_1
    move-object v9, v1

    .line 64
    const/4 p0, 0x0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-boolean p1, v0, Lapp/k9mail/feature/settings/import/ui/AccountState;->incomingServerPasswordNeeded:Z

    .line 68
    .line 69
    move v10, p1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    move v10, p0

    .line 72
    :goto_1
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iget-boolean p0, v0, Lapp/k9mail/feature/settings/import/ui/AccountState;->outgoingServerPasswordNeeded:Z

    .line 75
    .line 76
    :cond_3
    move v11, p0

    .line 77
    invoke-direct/range {v2 .. v11}, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;-><init>(ILjava/lang/String;Ljava/lang/String;ZLapp/k9mail/feature/settings/import/ui/ImportStatus;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 78
    .line 79
    .line 80
    return-object v2

    .line 81
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->accountsMap:Ljava/util/LinkedHashMap;

    .line 85
    .line 86
    iget p1, p1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;->accountIndex:I

    .line 87
    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    check-cast p0, Ljava/lang/String;

    .line 97
    .line 98
    if-eqz p0, :cond_4

    .line 99
    .line 100
    move-object v1, p0

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    const-string p0, "Unknown account index: "

    .line 103
    .line 104
    invoke-static {p0, p1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;I)V

    .line 105
    .line 106
    .line 107
    :goto_2
    return-object v1

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
