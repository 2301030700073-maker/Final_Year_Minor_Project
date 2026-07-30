.class public Lcom/android/contacts/model/account/AccountComparator;
.super Ljava/lang/Object;
.source "AccountComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/contacts/model/account/AccountWithDataSet;",
        ">;"
    }
.end annotation


# instance fields
.field private mDefaultAccount:Lcom/android/contacts/model/account/AccountWithDataSet;


# direct methods
.method public constructor <init>(Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/contacts/model/account/AccountComparator;->mDefaultAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    return-void
.end method

.method private static isWritableGoogleAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Z
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    const-string v1, "com.google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public compare(Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountWithDataSet;)I
    .locals 4

    .line 34
    iget-object v0, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 35
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 37
    :cond_0
    iget-object v0, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    iget-object v0, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_2

    .line 39
    :cond_1
    iget-object v0, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    .line 41
    :cond_2
    invoke-static {p1}, Lcom/android/contacts/model/account/AccountComparator;->isWritableGoogleAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/model/account/AccountComparator;->mDefaultAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/account/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 43
    :cond_3
    invoke-static {p2}, Lcom/android/contacts/model/account/AccountComparator;->isWritableGoogleAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/model/account/AccountComparator;->mDefaultAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-virtual {p2, v0}, Lcom/android/contacts/model/account/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 45
    :cond_4
    invoke-static {p1}, Lcom/android/contacts/model/account/AccountComparator;->isWritableGoogleAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p2}, Lcom/android/contacts/model/account/AccountComparator;->isWritableGoogleAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 47
    :cond_5
    invoke-static {p2}, Lcom/android/contacts/model/account/AccountComparator;->isWritableGoogleAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/android/contacts/model/account/AccountComparator;->isWritableGoogleAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    .line 50
    :cond_6
    iget-object v0, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 54
    :cond_7
    iget-object v0, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 60
    :cond_8
    iget-object p1, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 61
    iget-object p2, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-nez p2, :cond_9

    goto :goto_0

    :cond_9
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    :goto_0
    return v2

    :cond_a
    return v1

    :cond_b
    :goto_1
    return v2

    :cond_c
    :goto_2
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lcom/android/contacts/model/account/AccountWithDataSet;

    check-cast p2, Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/account/AccountComparator;->compare(Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountWithDataSet;)I

    move-result p1

    return p1
.end method
