.class Lcom/android/contacts/model/SimContact$3;
.super Ljava/lang/Object;
.source "SimContact.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/model/SimContact;->compareById()Ljava/util/Comparator;
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

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/model/SimContact;Lcom/android/contacts/model/SimContact;)I
    .locals 2

    .line 256
    invoke-static {p1}, Lcom/android/contacts/model/SimContact;->access$200(Lcom/android/contacts/model/SimContact;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/android/contacts/model/SimContact;->access$200(Lcom/android/contacts/model/SimContact;)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 252
    check-cast p1, Lcom/android/contacts/model/SimContact;

    check-cast p2, Lcom/android/contacts/model/SimContact;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/SimContact$3;->compare(Lcom/android/contacts/model/SimContact;Lcom/android/contacts/model/SimContact;)I

    move-result p1

    return p1
.end method
