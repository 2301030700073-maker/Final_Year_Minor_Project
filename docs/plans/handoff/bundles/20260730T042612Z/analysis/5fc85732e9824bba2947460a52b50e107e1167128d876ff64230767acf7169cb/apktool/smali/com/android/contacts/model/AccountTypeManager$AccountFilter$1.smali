.class final enum Lcom/android/contacts/model/AccountTypeManager$AccountFilter$1;
.super Lcom/android/contacts/model/AccountTypeManager$AccountFilter;
.source "AccountTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/AccountTypeManager$AccountFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/model/AccountTypeManager$AccountFilter;-><init>(Ljava/lang/String;ILcom/android/contacts/model/AccountTypeManager$1;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/contacts/model/account/AccountInfo;)Z
    .locals 0

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

    .line 86
    check-cast p1, Lcom/android/contacts/model/account/AccountInfo;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/AccountTypeManager$AccountFilter$1;->apply(Lcom/android/contacts/model/account/AccountInfo;)Z

    move-result p1

    return p1
.end method
