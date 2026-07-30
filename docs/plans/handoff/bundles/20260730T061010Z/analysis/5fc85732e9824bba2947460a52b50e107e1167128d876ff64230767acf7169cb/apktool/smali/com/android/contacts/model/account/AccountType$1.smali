.class Lcom/android/contacts/model/account/AccountType$1;
.super Ljava/lang/Object;
.source "AccountType.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/account/AccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/contacts/model/dataitem/DataKind;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/dataitem/DataKind;)I
    .locals 0

    .line 303
    iget p1, p1, Lcom/android/contacts/model/dataitem/DataKind;->weight:I

    iget p2, p2, Lcom/android/contacts/model/dataitem/DataKind;->weight:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 300
    check-cast p1, Lcom/android/contacts/model/dataitem/DataKind;

    check-cast p2, Lcom/android/contacts/model/dataitem/DataKind;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/account/AccountType$1;->compare(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/dataitem/DataKind;)I

    move-result p1

    return p1
.end method
