.class Lcom/android/contacts/model/account/AccountInfo$1;
.super Ljava/lang/Object;
.source "AccountInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/model/account/AccountInfo;->sourceComparator(Lcom/android/contacts/model/account/AccountWithDataSet;)Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/contacts/model/account/AccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$accountComparator:Lcom/android/contacts/model/account/AccountComparator;


# direct methods
.method constructor <init>(Lcom/android/contacts/model/account/AccountComparator;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/contacts/model/account/AccountInfo$1;->val$accountComparator:Lcom/android/contacts/model/account/AccountComparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/model/account/AccountInfo;Lcom/android/contacts/model/account/AccountInfo;)I
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountInfo$1;->val$accountComparator:Lcom/android/contacts/model/account/AccountComparator;

    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountInfo;->getAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/contacts/model/account/AccountInfo;->getAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/model/account/AccountComparator;->compare(Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountWithDataSet;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 141
    check-cast p1, Lcom/android/contacts/model/account/AccountInfo;

    check-cast p2, Lcom/android/contacts/model/account/AccountInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/account/AccountInfo$1;->compare(Lcom/android/contacts/model/account/AccountInfo;Lcom/android/contacts/model/account/AccountInfo;)I

    move-result p1

    return p1
.end method
