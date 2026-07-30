.class public Lcom/android/contacts/list/ContactsRequest;
.super Ljava/lang/Object;
.source "ContactsRequest.java"


# instance fields
.field private mAccountWithDataSet:Lcom/android/contacts/model/account/AccountWithDataSet;

.field private mActionCode:I

.field private mContactUri:Landroid/net/Uri;

.field private mDirectorySearchEnabled:Z

.field private mIncludeFavorites:Z

.field private mLegacyCompatibilityMode:Z

.field private mQueryString:Ljava/lang/String;

.field private mRawContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchMode:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mValid:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    const/16 v1, 0xa

    .line 103
    iput v1, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    .line 109
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    return-void
.end method


# virtual methods
.method public getActionCode()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    return v0
.end method

.method public getActivityTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getContactUri()Landroid/net/Uri;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public isDirectorySearchEnabled()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    return v0
.end method

.method public isLegacyCompatibilityMode()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    return v0
.end method

.method public setAccountWithDataSet(Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mAccountWithDataSet:Lcom/android/contacts/model/account/AccountWithDataSet;

    return-void
.end method

.method public setActionCode(I)V
    .locals 0

    .line 151
    iput p1, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    return-void
.end method

.method public setActivityTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    return-void
.end method

.method public setLegacyCompatibilityMode(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    return-void
.end method

.method public setRawContactIds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mRawContactIds:Ljava/util/ArrayList;

    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    return-void
.end method

.method public shouldIncludeFavorites()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeFavorites:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ContactsRequest:mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mActionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mSearchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mQueryString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIncludeFavorites="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeFavorites:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLegacyCompatibilityMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mDirectorySearchEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mContactUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mAccountWithDataSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mAccountWithDataSet:Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRawContactIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
