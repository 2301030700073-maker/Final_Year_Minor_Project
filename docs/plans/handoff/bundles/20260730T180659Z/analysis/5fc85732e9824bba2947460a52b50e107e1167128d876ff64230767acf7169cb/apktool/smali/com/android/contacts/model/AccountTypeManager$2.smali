.class Lcom/android/contacts/model/AccountTypeManager$2;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/model/AccountTypeManager;->getWritableGoogleAccounts()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "Lcom/android/contacts/model/account/AccountInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/contacts/model/AccountTypeManager;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/contacts/model/account/AccountInfo;)Z
    .locals 1

    .line 224
    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountInfo;->getType()Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountInfo;->getType()Lcom/android/contacts/model/account/AccountType;

    move-result-object p1

    iget-object p1, p1, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    const-string v0, "com.google"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 221
    check-cast p1, Lcom/android/contacts/model/account/AccountInfo;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/AccountTypeManager$2;->apply(Lcom/android/contacts/model/account/AccountInfo;)Z

    move-result p1

    return p1
.end method
