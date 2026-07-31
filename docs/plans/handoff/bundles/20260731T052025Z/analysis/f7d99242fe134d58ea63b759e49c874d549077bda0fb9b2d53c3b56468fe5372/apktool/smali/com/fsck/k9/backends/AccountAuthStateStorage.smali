.class public final Lcom/fsck/k9/backends/AccountAuthStateStorage;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mail/oauth/AuthStateStorage;


# instance fields
.field public final accountId:Lnet/thunderbird/feature/account/AccountId;

.field public final accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lnet/thunderbird/feature/account/AccountId;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/fsck/k9/backends/AccountAuthStateStorage;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/fsck/k9/backends/AccountAuthStateStorage;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getAccountById(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccount;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/backends/AccountAuthStateStorage;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getByIdSync(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string p0, "Account not found: "

    .line 11
    .line 12
    invoke-static {p1, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public final getAuthorizationState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/backends/AccountAuthStateStorage;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/fsck/k9/backends/AccountAuthStateStorage;->getAccountById(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->oAuthState:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method public final updateAuthorizationState(Ljava/lang/String;)V
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/fsck/k9/backends/AccountAuthStateStorage;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/fsck/k9/backends/AccountAuthStateStorage;->getAccountById(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/16 v40, -0x1

    .line 10
    .line 11
    const v41, 0x7fffff

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x0

    .line 21
    const/4 v11, 0x0

    .line 22
    const/4 v12, 0x0

    .line 23
    const/4 v13, 0x0

    .line 24
    const/4 v14, 0x0

    .line 25
    const/4 v15, 0x0

    .line 26
    const/16 v16, 0x0

    .line 27
    .line 28
    const/16 v17, 0x0

    .line 29
    .line 30
    const/16 v18, 0x0

    .line 31
    .line 32
    const/16 v19, 0x0

    .line 33
    .line 34
    const/16 v20, 0x0

    .line 35
    .line 36
    const/16 v21, 0x0

    .line 37
    .line 38
    const/16 v22, 0x0

    .line 39
    .line 40
    const/16 v23, 0x0

    .line 41
    .line 42
    const/16 v24, 0x0

    .line 43
    .line 44
    const/16 v25, 0x0

    .line 45
    .line 46
    const/16 v26, 0x0

    .line 47
    .line 48
    const/16 v27, 0x0

    .line 49
    .line 50
    const/16 v28, 0x0

    .line 51
    .line 52
    const/16 v29, 0x0

    .line 53
    .line 54
    const/16 v30, 0x0

    .line 55
    .line 56
    const/16 v31, 0x0

    .line 57
    .line 58
    const/16 v32, 0x0

    .line 59
    .line 60
    const/16 v33, 0x0

    .line 61
    .line 62
    const/16 v34, 0x0

    .line 63
    .line 64
    const/16 v35, 0x0

    .line 65
    .line 66
    const/16 v36, 0x0

    .line 67
    .line 68
    const/16 v37, 0x0

    .line 69
    .line 70
    const/16 v38, 0x0

    .line 71
    .line 72
    const/16 v39, -0x101

    .line 73
    .line 74
    move-object/from16 v6, p1

    .line 75
    .line 76
    invoke-static/range {v2 .. v41}, Lnet/thunderbird/core/android/account/LegacyAccount;->copy$default(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;Lnet/thunderbird/feature/account/storage/profile/ProfileDto;Lnet/thunderbird/core/android/account/DeletePolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;Ljava/lang/Long;Lnet/thunderbird/core/android/account/SortType;Ljava/util/LinkedHashMap;Lnet/thunderbird/core/android/account/ShowPictures;ZLnet/thunderbird/core/android/account/Expunge;IIIIZZZILjava/lang/Long;Ljava/lang/String;ZLjava/lang/String;III)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-object v0, v0, Lcom/fsck/k9/backends/AccountAuthStateStorage;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccount;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
