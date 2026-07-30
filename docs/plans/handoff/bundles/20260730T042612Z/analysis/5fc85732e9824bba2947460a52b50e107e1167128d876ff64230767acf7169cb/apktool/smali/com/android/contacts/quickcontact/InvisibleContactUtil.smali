.class public Lcom/android/contacts/quickcontact/InvisibleContactUtil;
.super Ljava/lang/Object;
.source "InvisibleContactUtil.java"


# direct methods
.method public static addToDefaultGroup(Lcom/android/contacts/model/Contact;Landroid/content/Context;)V
    .locals 10

    .line 73
    invoke-virtual {p0}, Lcom/android/contacts/model/Contact;->createRawContactDeltaList()Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v1

    .line 74
    invoke-static {p0, v1, p1}, Lcom/android/contacts/quickcontact/InvisibleContactUtil;->markAddToDefaultGroup(Lcom/android/contacts/model/Contact;Lcom/android/contacts/model/RawContactDeltaList;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 77
    const-class v5, Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, ""

    const-string v6, "android.intent.action.VIEW"

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Long;)Landroid/content/Intent;

    move-result-object p0

    .line 82
    invoke-static {p1, p0}, Lcom/android/contacts/ContactSaveService;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private static getDefaultGroupId(Ljava/util/List;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/group/GroupMetaData;",
            ">;)J"
        }
    .end annotation

    .line 111
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, -0x1

    move-wide v2, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/group/GroupMetaData;

    .line 112
    iget-boolean v5, v4, Lcom/android/contacts/group/GroupMetaData;->defaultGroup:Z

    if-eqz v5, :cond_0

    cmp-long v5, v2, v0

    if-eqz v5, :cond_1

    return-wide v0

    .line 115
    :cond_1
    iget-wide v2, v4, Lcom/android/contacts/group/GroupMetaData;->groupId:J

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method public static isInvisibleAndAddable(Lcom/android/contacts/model/Contact;Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 34
    invoke-virtual {p0}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    return v0

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/model/Contact;->getGroupMetaData()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    if-nez v1, :cond_3

    return v0

    .line 49
    :cond_3
    invoke-static {v1}, Lcom/android/contacts/quickcontact/InvisibleContactUtil;->getDefaultGroupId(Ljava/util/List;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    return v0

    .line 52
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/contacts/model/RawContact;

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/model/account/AccountType;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 55
    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 60
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object p0

    const-class p1, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;

    .line 59
    invoke-static {p0, p1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/dataitem/DataItem;

    .line 61
    check-cast p1, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;

    .line 62
    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;->getGroupRowId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 63
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :cond_7
    xor-int/lit8 p0, v0, 0x1

    return p0

    :cond_8
    :goto_0
    return v0
.end method

.method public static markAddToDefaultGroup(Lcom/android/contacts/model/Contact;Lcom/android/contacts/model/RawContactDeltaList;Landroid/content/Context;)Z
    .locals 5

    .line 88
    invoke-virtual {p0}, Lcom/android/contacts/model/Contact;->getGroupMetaData()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {p0}, Lcom/android/contacts/quickcontact/InvisibleContactUtil;->getDefaultGroupId(Ljava/util/List;)J

    move-result-wide v0

    const/4 p0, 0x0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return p0

    .line 94
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/RawContactDelta;

    .line 96
    invoke-static {p2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object p2

    .line 98
    invoke-virtual {p1, p2}, Lcom/android/contacts/model/RawContactDelta;->getAccountType(Lcom/android/contacts/model/AccountTypeManager;)Lcom/android/contacts/model/account/AccountType;

    move-result-object p2

    const-string v2, "vnd.android.cursor.item/group_membership"

    .line 99
    invoke-virtual {p2, v2}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p2

    .line 101
    invoke-static {p1, p2}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object p1

    if-nez p1, :cond_1

    return p0

    .line 104
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/model/ValuesDelta;->setGroupRowId(J)V

    const/4 p0, 0x1

    return p0
.end method
