.class Lcom/android/contacts/model/SimContact$2;
.super Ljava/lang/Object;
.source "SimContact.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/model/SimContact;->compareByPhoneThenName()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/contacts/model/SimContact;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/model/SimContact;Lcom/android/contacts/model/SimContact;)I
    .locals 3

    .line 243
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 244
    invoke-static {p1}, Lcom/android/contacts/model/SimContact;->access$100(Lcom/android/contacts/model/SimContact;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/android/contacts/model/SimContact;->access$100(Lcom/android/contacts/model/SimContact;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 245
    invoke-static {p1}, Lcom/android/contacts/model/SimContact;->access$000(Lcom/android/contacts/model/SimContact;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/android/contacts/model/SimContact;->access$000(Lcom/android/contacts/model/SimContact;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->nullsFirst()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    .line 246
    invoke-virtual {p1}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 240
    check-cast p1, Lcom/android/contacts/model/SimContact;

    check-cast p2, Lcom/android/contacts/model/SimContact;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/SimContact$2;->compare(Lcom/android/contacts/model/SimContact;Lcom/android/contacts/model/SimContact;)I

    move-result p1

    return p1
.end method
