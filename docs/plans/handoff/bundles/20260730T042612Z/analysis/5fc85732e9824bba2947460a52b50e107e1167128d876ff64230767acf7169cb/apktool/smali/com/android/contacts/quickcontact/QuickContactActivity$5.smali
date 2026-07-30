.class Lcom/android/contacts/quickcontact/QuickContactActivity$5;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/contacts/model/dataitem/DataItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/model/dataitem/DataItem;Lcom/android/contacts/model/dataitem/DataItem;)I
    .locals 4

    .line 549
    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comparing DataItems with different mimetypes lhs.getMimeType(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " rhs.getMimeType(): "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QuickContact"

    .line 550
    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 555
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    return v2

    .line 557
    :cond_1
    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    return v3

    .line 559
    :cond_2
    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/DataItem;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/DataItem;->isPrimary()Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 561
    :cond_3
    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/DataItem;->isPrimary()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/DataItem;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 546
    check-cast p1, Lcom/android/contacts/model/dataitem/DataItem;

    check-cast p2, Lcom/android/contacts/model/dataitem/DataItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->compare(Lcom/android/contacts/model/dataitem/DataItem;Lcom/android/contacts/model/dataitem/DataItem;)I

    move-result p1

    return p1
.end method
