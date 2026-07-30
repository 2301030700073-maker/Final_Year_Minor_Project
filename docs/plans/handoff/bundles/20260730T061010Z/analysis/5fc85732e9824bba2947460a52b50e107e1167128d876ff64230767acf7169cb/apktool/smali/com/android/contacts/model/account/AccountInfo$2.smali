.class Lcom/android/contacts/model/account/AccountInfo$2;
.super Ljava/lang/Object;
.source "AccountInfo.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/account/AccountInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Lcom/android/contacts/model/account/AccountInfo;",
        "Lcom/android/contacts/model/account/AccountWithDataSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/contacts/model/account/AccountInfo;)Lcom/android/contacts/model/account/AccountWithDataSet;
    .locals 0

    .line 153
    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountInfo;->getAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 150
    check-cast p1, Lcom/android/contacts/model/account/AccountInfo;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountInfo$2;->apply(Lcom/android/contacts/model/account/AccountInfo;)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p1

    return-object p1
.end method
