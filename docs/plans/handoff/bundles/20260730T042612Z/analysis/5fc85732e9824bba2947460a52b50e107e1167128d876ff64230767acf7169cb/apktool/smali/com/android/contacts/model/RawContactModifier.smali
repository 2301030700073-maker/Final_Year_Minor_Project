.class public Lcom/android/contacts/model/RawContactModifier;
.super Ljava/lang/Object;
.source "RawContactModifier.java"


# static fields
.field private static final COLUMN_FOR_LABEL:Ljava/lang/String; = "data3"

.field private static final COLUMN_FOR_TYPE:Ljava/lang/String; = "data2"

.field private static final DEBUG:Z = false

.field private static final FREQUENCY_TOTAL:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "RawContactModifier"

.field private static final TYPE_CUSTOM:I

.field private static final sGenericMimeTypesWithTypeSupport:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 935
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    const-string v2, "vnd.android.cursor.item/email_v2"

    const-string v3, "vnd.android.cursor.item/im"

    const-string v4, "vnd.android.cursor.item/nickname"

    const-string v5, "vnd.android.cursor.item/website"

    const-string v6, "vnd.android.cursor.item/relation"

    const-string v7, "vnd.android.cursor.item/sip_address"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 936
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/contacts/model/RawContactModifier;->sGenericMimeTypesWithTypeSupport:Ljava/util/Set;

    .line 943
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/organization"

    const-string v2, "vnd.android.cursor.item/note"

    const-string v3, "vnd.android.cursor.item/photo"

    const-string v4, "vnd.android.cursor.item/group_membership"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 944
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/contacts/model/RawContactModifier;->sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustType(Lcom/android/contacts/model/ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/model/dataitem/DataKind;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/ValuesDelta;",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/ValuesDelta;",
            ">;",
            "Lcom/android/contacts/model/dataitem/DataKind;",
            ")Z"
        }
    .end annotation

    .line 793
    iget-object v0, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 797
    :cond_0
    iget-object v0, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 798
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType$EditType;

    iget v0, v0, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    .line 800
    :goto_0
    invoke-static {v0, p1, p2}, Lcom/android/contacts/model/RawContactModifier;->isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 801
    iget-object p1, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;I)V

    return v1

    .line 806
    :cond_2
    iget-object v0, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    .line 808
    iget-object v4, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 809
    iget v5, v4, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    invoke-static {v5, p1, p2}, Lcom/android/contacts/model/RawContactModifier;->isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 810
    iget-object p1, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    iget p2, v4, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;I)V

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    :goto_2
    return v1
.end method

.method protected static areEqual(Lcom/android/contacts/model/ValuesDelta;Landroid/content/ContentValues;Lcom/android/contacts/model/dataitem/DataKind;)Z
    .locals 3

    .line 500
    iget-object p2, p2, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 502
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountType$EditField;

    .line 503
    iget-object v2, v1, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 504
    iget-object v1, v1, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 505
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static canInsert(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z
    .locals 4

    .line 90
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v0

    .line 91
    invoke-static {p0, p1}, Lcom/android/contacts/model/RawContactModifier;->hasValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result p0

    .line 92
    iget p1, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method private static ensureEntryMaxSize(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/RawContactDelta;",
            "Lcom/android/contacts/model/dataitem/DataKind;",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/ValuesDelta;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/ValuesDelta;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1020
    :cond_0
    iget p0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    if-ltz p0, :cond_2

    .line 1021
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, p0, :cond_2

    .line 1022
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 1024
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/ValuesDelta;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object p2, p1

    :cond_2
    return-object p2
.end method

.method public static ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;
    .locals 3

    .line 113
    invoke-virtual {p1, p2}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, p2, v0}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {p0, p2}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/contacts/model/ValuesDelta;

    return-object p0

    .line 122
    :cond_1
    invoke-static {p0, p1}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object p0

    .line 123
    iget-object p1, p1, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string p2, "vnd.android.cursor.item/photo"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->setFromTemplate(Z)V

    :cond_2
    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static fixupLegacyImType(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "im_protocol"

    .line 873
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 878
    :cond_0
    :try_start_0
    invoke-static {v1}, Landroid/provider/Contacts$ContactMethods;->decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 879
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 880
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 882
    :cond_1
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static getBestValidType(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;ZI)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 289
    iget-object v1, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    .line 292
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/model/RawContactModifier;->getTypeFrequencies(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-object v6, v1

    .line 293
    invoke-static/range {v2 .. v7}, Lcom/android/contacts/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;Z)Ljava/util/ArrayList;

    move-result-object p0

    .line 295
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 298
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 301
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 302
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 303
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 304
    iget v2, v0, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 306
    iget v3, v0, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    if-ne p3, v3, :cond_3

    return-object v0

    :cond_3
    if-lez v2, :cond_2

    .line 313
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 318
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_5

    const/4 p1, 0x0

    .line 319
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/contacts/model/account/AccountType$EditType;

    return-object p0

    :cond_5
    return-object p1

    :cond_6
    :goto_1
    return-object v0
.end method

.method public static getCurrentType(Landroid/content/ContentValues;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 2

    .line 237
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 238
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 240
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/contacts/model/RawContactModifier;->getType(Lcom/android/contacts/model/dataitem/DataKind;I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentType(Landroid/database/Cursor;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 3

    .line 248
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 249
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return-object v1

    .line 251
    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 252
    invoke-static {p1, p0}, Lcom/android/contacts/model/RawContactModifier;->getType(Lcom/android/contacts/model/dataitem/DataKind;I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentType(Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 1

    .line 227
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 229
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/contacts/model/RawContactModifier;->getType(Lcom/android/contacts/model/dataitem/DataKind;I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p0

    return-object p0
.end method

.method private static getEntryCountByType(Ljava/util/ArrayList;Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/ValuesDelta;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 857
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/ValuesDelta;

    .line 858
    invoke-virtual {v1, p1}, Lcom/android/contacts/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 859
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getType(Lcom/android/contacts/model/dataitem/DataKind;I)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 2

    .line 259
    iget-object p0, p0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 260
    iget v1, v0, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getTypeFrequencies(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Landroid/util/SparseIntArray;
    .locals 4

    .line 191
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 194
    iget-object v1, p1, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 198
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/ValuesDelta;

    .line 200
    invoke-virtual {v2}, Lcom/android/contacts/model/ValuesDelta;->isVisible()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 203
    invoke-static {v2, p1}, Lcom/android/contacts/model/RawContactModifier;->getCurrentType(Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 205
    iget v3, v2, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 206
    iget v2, v2, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_3
    const/high16 p0, -0x80000000

    .line 209
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-object v0
.end method

.method public static getTypePrecedence(Lcom/android/contacts/model/dataitem/DataKind;I)I
    .locals 2

    const/4 v0, 0x0

    .line 272
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 274
    iget v1, v1, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const p0, 0x7fffffff

    return p0
.end method

.method public static getValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;Z)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/RawContactDelta;",
            "Lcom/android/contacts/model/dataitem/DataKind;",
            "Lcom/android/contacts/model/account/AccountType$EditType;",
            "Z",
            "Landroid/util/SparseIntArray;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/account/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-static {p1}, Lcom/android/contacts/model/RawContactModifier;->hasEditTypes(Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    if-nez p4, :cond_1

    .line 157
    invoke-static {p0, p1}, Lcom/android/contacts/model/RawContactModifier;->getTypeFrequencies(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Landroid/util/SparseIntArray;

    move-result-object p4

    :cond_1
    const/4 p0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p5, :cond_4

    const/high16 p5, -0x80000000

    .line 163
    invoke-virtual {p4, p5}, Landroid/util/SparseIntArray;->get(I)I

    move-result p5

    .line 164
    iget v3, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    if-ne v3, p0, :cond_2

    goto :goto_0

    :cond_2
    if-ge p5, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 p5, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p5, 0x1

    .line 168
    :goto_1
    iget-object p1, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 169
    iget v4, v3, Lcom/android/contacts/model/account/AccountType$EditType;->specificMax:I

    if-ne v4, p0, :cond_6

    :goto_3
    const/4 v4, 0x1

    goto :goto_4

    .line 170
    :cond_6
    iget v4, v3, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {p4, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    iget v5, v3, Lcom/android/contacts/model/account/AccountType$EditType;->specificMax:I

    if-ge v4, v5, :cond_7

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_4
    if-eqz p3, :cond_8

    :goto_5
    const/4 v5, 0x1

    goto :goto_6

    .line 171
    :cond_8
    iget-boolean v5, v3, Lcom/android/contacts/model/account/AccountType$EditType;->secondary:Z

    if-nez v5, :cond_9

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    .line 172
    :goto_6
    invoke-virtual {v3, p2}, Lcom/android/contacts/model/account/AccountType$EditType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    if-eqz p5, :cond_5

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    .line 175
    :cond_a
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    return-object v0
.end method

.method private static hasChanges(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/RawContactDelta;",
            "Lcom/android/contacts/model/account/AccountType;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 454
    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/dataitem/DataKind;

    .line 455
    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 456
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 457
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 460
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/ValuesDelta;

    .line 463
    invoke-virtual {v3}, Lcom/android/contacts/model/ValuesDelta;->isInsert()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-static {v3, v0}, Lcom/android/contacts/model/RawContactModifier;->isEmpty(Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_5

    .line 464
    invoke-virtual {v3}, Lcom/android/contacts/model/ValuesDelta;->isUpdate()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/android/contacts/model/ValuesDelta;->isDelete()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_5
    return v5

    :cond_6
    return v1
.end method

.method public static hasChanges(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z
    .locals 1

    const/4 v0, 0x0

    .line 386
    invoke-static {p0, p1, v0}, Lcom/android/contacts/model/RawContactModifier;->hasChanges(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/model/AccountTypeManager;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public static hasChanges(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/model/AccountTypeManager;Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/RawContactDeltaList;",
            "Lcom/android/contacts/model/AccountTypeManager;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDeltaList;->isMarkedForSplitting()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDeltaList;->isMarkedForJoining()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    .line 396
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/ValuesDelta;

    move-result-object v2

    const-string v3, "account_type"

    .line 397
    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data_set"

    .line 398
    invoke-virtual {v2, v4}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-virtual {p1, v3, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v2

    .line 400
    invoke-static {v0, v2, p2}, Lcom/android/contacts/model/RawContactModifier;->hasChanges(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public static hasEditTypes(Lcom/android/contacts/model/dataitem/DataKind;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 218
    iget-object p0, p0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z
    .locals 8

    .line 98
    invoke-static {p1}, Lcom/android/contacts/model/RawContactModifier;->hasEditTypes(Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    .line 99
    invoke-static/range {v2 .. v7}, Lcom/android/contacts/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/ValuesDelta;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    .line 334
    invoke-static {p0, p1, v0, v1}, Lcom/android/contacts/model/RawContactModifier;->getBestValidType(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;ZI)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 337
    invoke-static {p0, p1, v0, v1}, Lcom/android/contacts/model/RawContactModifier;->getBestValidType(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;ZI)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v0

    .line 339
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/account/AccountType$EditType;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object p0

    return-object p0
.end method

.method public static insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/account/AccountType$EditType;)Lcom/android/contacts/model/ValuesDelta;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 349
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 352
    iget-object v1, p1, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v2, "mimetype"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v1, p1, Lcom/android/contacts/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    if-eqz v1, :cond_1

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 359
    :cond_1
    iget-object p1, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 361
    iget p2, p2, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    :cond_2
    invoke-static {v0}, Lcom/android/contacts/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object p1

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/model/ValuesDelta;)Lcom/android/contacts/model/ValuesDelta;

    return-object p1
.end method

.method public static isEmpty(Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z
    .locals 3

    .line 477
    iget-object v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 478
    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->isInsert()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "data15"

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 482
    :cond_1
    iget-object p1, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-nez p1, :cond_2

    return v2

    .line 484
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType$EditField;

    .line 486
    iget-object v0, v0, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_4
    return v2
.end method

.method private static isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/model/dataitem/DataKind;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/ValuesDelta;",
            ">;",
            "Lcom/android/contacts/model/dataitem/DataKind;",
            ")Z"
        }
    .end annotation

    .line 825
    iget-object v0, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 827
    iget-object v3, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 828
    iget v4, v3, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    if-ne v4, p0, :cond_0

    .line 829
    iget v0, v3, Lcom/android/contacts/model/account/AccountType$EditType;->specificMax:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    return v3

    .line 844
    :cond_3
    iget-object p2, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/android/contacts/model/RawContactModifier;->getEntryCountByType(Ljava/util/ArrayList;Ljava/lang/String;I)I

    move-result p0

    if-ge p0, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static migrateEvent(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Ljava/lang/Integer;)V
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "vnd.android.cursor.item/contact_event"

    move-object/from16 v3, p0

    .line 1184
    invoke-virtual {v3, v2}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1183
    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/RawContactModifier;->ensureEntryMaxSize(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1185
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    .line 1189
    :cond_0
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 1190
    iget-object v1, v1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 1191
    iget v5, v4, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    check-cast v4, Lcom/android/contacts/model/account/AccountType$EventEditType;

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1193
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object/from16 v2, p3

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/ValuesDelta;

    .line 1194
    invoke-virtual {v4}, Lcom/android/contacts/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v5, "data1"

    .line 1198
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "data2"

    .line 1199
    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1200
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_2

    .line 1201
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1202
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/account/AccountType$EventEditType;

    .line 1204
    new-instance v8, Ljava/text/ParsePosition;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1206
    sget-object v10, Lcom/android/contacts/util/CommonDateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10, v6, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v10

    const/4 v11, 0x1

    if-nez v10, :cond_4

    .line 1209
    sget-object v9, Lcom/android/contacts/util/CommonDateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9, v6, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v10

    const/4 v9, 0x1

    :cond_4
    if-eqz v10, :cond_6

    if-eqz v9, :cond_6

    .line 1212
    invoke-virtual {v7}, Lcom/android/contacts/model/account/AccountType$EventEditType;->isYearOptional()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1214
    sget-object v6, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6, v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v6

    if-nez v2, :cond_5

    .line 1217
    invoke-virtual {v6, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1219
    :cond_5
    invoke-virtual {v6, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v7, 0x2

    .line 1220
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/4 v7, 0x5

    .line 1221
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 1223
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v16, 0x8

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v6

    invoke-virtual/range {v12 .. v18}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1225
    sget-object v7, Lcom/android/contacts/util/CommonDateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 1226
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1225
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    :cond_6
    invoke-static {v4}, Lcom/android/contacts/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/model/ValuesDelta;)Lcom/android/contacts/model/ValuesDelta;

    goto/16 :goto_1

    :cond_7
    :goto_2
    return-void
.end method

.method public static migrateGenericWithTypeColumn(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)V
    .locals 13

    .line 1256
    iget-object v0, p2, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 1257
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 1280
    :cond_0
    iget-object v0, p2, Lcom/android/contacts/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    const/4 v1, 0x0

    const-string v2, "data2"

    if-eqz v0, :cond_1

    .line 1281
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1283
    :goto_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1285
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v5, -0x1

    if-eqz v0, :cond_2

    .line 1287
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1288
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1294
    :cond_2
    iget-object v6, p2, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v7, "vnd.android.cursor.item/im"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_4

    iget-object v6, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    if-eqz v6, :cond_4

    .line 1295
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1296
    iget-object v6, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 1297
    iget v9, v8, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1298
    iget v9, v8, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    iget v8, v8, Lcom/android/contacts/model/account/AccountType$EditType;->specificMax:I

    invoke-virtual {v4, v9, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 1301
    iget-object v0, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType$EditType;

    iget v0, v0, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    .line 1306
    sget-object v6, Lcom/android/contacts/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Default type isn\'t available for mimetype "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p2, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_5
    iget p2, p2, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 1312
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 1315
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v8, 0x0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/model/ValuesDelta;

    if-eq p2, v5, :cond_6

    if-lt v8, p2, :cond_6

    goto :goto_4

    .line 1320
    :cond_6
    invoke-virtual {v9}, Lcom/android/contacts/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v10

    if-nez v10, :cond_7

    goto :goto_2

    .line 1325
    :cond_7
    invoke-virtual {v9, v2}, Lcom/android/contacts/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 1327
    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    if-eqz v0, :cond_9

    .line 1330
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1331
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v9, :cond_8

    .line 1332
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "data3"

    .line 1333
    invoke-virtual {v10, v9}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_8
    move-object v9, v11

    goto :goto_3

    .line 1337
    :cond_9
    invoke-virtual {v10, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    move-object v9, v1

    :cond_a
    :goto_3
    if-eqz v9, :cond_c

    .line 1343
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v4, v11, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    if-ltz v11, :cond_c

    .line 1345
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v6, v12, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    if-lt v12, v11, :cond_b

    goto :goto_2

    .line 1349
    :cond_b
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v6, v9, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1352
    :cond_c
    invoke-static {v10}, Lcom/android/contacts/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/model/ValuesDelta;)Lcom/android/contacts/model/ValuesDelta;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_d
    :goto_4
    return-void
.end method

.method public static migrateGenericWithoutTypeColumn(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)V
    .locals 1

    .line 1239
    iget-object v0, p2, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 1240
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1239
    invoke-static {p1, p2, p0}, Lcom/android/contacts/model/RawContactModifier;->ensureEntryMaxSize(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1241
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 1245
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/contacts/model/ValuesDelta;

    .line 1246
    invoke-virtual {p2}, Lcom/android/contacts/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1248
    invoke-static {p2}, Lcom/android/contacts/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/model/ValuesDelta;)Lcom/android/contacts/model/ValuesDelta;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static migratePostal(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)V
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v3, p0

    .line 1073
    invoke-virtual {v3, v2}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1072
    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/RawContactModifier;->ensureEntryMaxSize(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1074
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_9

    .line 1080
    :cond_0
    iget-object v3, v1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/account/AccountType$EditField;

    iget-object v3, v3, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 1081
    iget-object v5, v1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "data1"

    const-string v11, "data4"

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/account/AccountType$EditField;

    .line 1082
    iget-object v12, v8, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v6, 0x1

    .line 1085
    :cond_2
    iget-object v8, v8, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    .line 1090
    :cond_3
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1091
    iget-object v8, v1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1092
    iget-object v8, v1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 1093
    iget v12, v12, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1097
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/ValuesDelta;

    .line 1098
    invoke-virtual {v8}, Lcom/android/contacts/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v8

    if-nez v8, :cond_5

    goto :goto_2

    :cond_5
    const-string v12, "data2"

    .line 1102
    invoke-virtual {v8, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 1103
    invoke-interface {v5, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 1105
    iget-object v14, v1, Lcom/android/contacts/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    if-eqz v14, :cond_6

    .line 1106
    invoke-virtual {v14, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_3

    .line 1108
    :cond_6
    iget-object v14, v1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/contacts/model/account/AccountType$EditType;

    iget v14, v14, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    .line 1110
    :goto_3
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v12, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v13, :cond_7

    .line 1111
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "data3"

    .line 1112
    invoke-virtual {v8, v12}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1116
    :cond_7
    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1117
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    if-nez v6, :cond_d

    .line 1120
    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    if-eqz v7, :cond_8

    .line 1126
    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1128
    :cond_8
    invoke-virtual {v8, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_9
    if-eqz v6, :cond_d

    .line 1137
    sget-object v12, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    .line 1138
    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/16 v16, 0x3

    const/16 v17, 0x2

    const-string v14, "data10"

    const-string v15, "data9"

    const-string v10, "data8"

    const-string v4, "data7"

    const-string v13, "data6"

    const-string v1, "data5"

    if-eqz v12, :cond_a

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/String;

    .line 1141
    invoke-virtual {v8, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v21, 0x0

    aput-object v22, v12, v21

    .line 1142
    invoke-virtual {v8, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v20, 0x1

    aput-object v22, v12, v20

    .line 1143
    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v17

    .line 1144
    invoke-virtual {v8, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v12, v16

    .line 1145
    invoke-virtual {v8, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x4

    aput-object v16, v12, v17

    .line 1146
    invoke-virtual {v8, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x5

    aput-object v16, v12, v17

    .line 1147
    invoke-virtual {v8, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x6

    aput-object v16, v12, v17

    move-object/from16 p0, v2

    const/16 v20, 0x1

    const/16 v21, 0x0

    goto :goto_4

    :cond_a
    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/String;

    .line 1150
    invoke-virtual {v8, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v21, 0x0

    aput-object v22, v12, v21

    .line 1151
    invoke-virtual {v8, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v20, 0x1

    aput-object v22, v12, v20

    .line 1152
    invoke-virtual {v8, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v17

    .line 1153
    invoke-virtual {v8, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v12, v16

    .line 1154
    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x4

    aput-object v16, v12, v17

    .line 1155
    invoke-virtual {v8, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x5

    aput-object v16, v12, v17

    .line 1156
    invoke-virtual {v8, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x6

    aput-object v16, v12, v17

    move-object/from16 p0, v2

    .line 1158
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    .line 1159
    array-length v3, v12

    move-object/from16 v17, v5

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v3, :cond_c

    move/from16 v18, v3

    aget-object v3, v12, v5

    .line 1160
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_b

    move/from16 v19, v6

    .line 1161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_b
    move/from16 v19, v6

    :goto_6
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v18

    move/from16 v6, v19

    goto :goto_5

    :cond_c
    move/from16 v19, v6

    .line 1164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-virtual {v8, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1167
    invoke-virtual {v8, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {v8, v13}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v8, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1171
    invoke-virtual {v8, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {v8, v14}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_8

    :cond_d
    :goto_7
    move-object/from16 p0, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move/from16 v19, v6

    const/16 v20, 0x1

    const/16 v21, 0x0

    .line 1176
    :goto_8
    invoke-static {v8}, Lcom/android/contacts/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/model/ValuesDelta;)Lcom/android/contacts/model/ValuesDelta;

    move-object/from16 v2, p0

    move-object/from16 v1, p2

    move-object/from16 v3, v16

    move-object/from16 v5, v17

    move/from16 v6, v19

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_e
    :goto_9
    return-void
.end method

.method public static migrateStateForNewContact(Landroid/content/Context;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/account/AccountType;)V
    .locals 3

    const-string v0, "vnd.android.cursor.item/name"

    if-ne p4, p3, :cond_3

    .line 966
    invoke-virtual {p4}, Lcom/android/contacts/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/contacts/model/dataitem/DataKind;

    .line 967
    iget-object v1, p4, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 969
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 970
    invoke-static {p0, p1, p2, p4}, Lcom/android/contacts/model/RawContactModifier;->migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)V

    goto :goto_0

    .line 972
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 973
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 974
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_2
    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/ValuesDelta;

    .line 975
    invoke-virtual {v1}, Lcom/android/contacts/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 977
    invoke-static {v1}, Lcom/android/contacts/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/model/ValuesDelta;)Lcom/android/contacts/model/ValuesDelta;

    goto :goto_1

    .line 986
    :cond_3
    invoke-virtual {p4}, Lcom/android/contacts/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/contacts/model/dataitem/DataKind;

    .line 987
    iget-boolean v1, p4, Lcom/android/contacts/model/dataitem/DataKind;->editable:Z

    if-nez v1, :cond_5

    goto :goto_2

    .line 988
    :cond_5
    iget-object v1, p4, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v2, "#phoneticName"

    .line 989
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "#name"

    .line 990
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 993
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 994
    invoke-static {p0, p1, p2, p4}, Lcom/android/contacts/model/RawContactModifier;->migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)V

    goto :goto_2

    :cond_7
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    .line 995
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 996
    invoke-static {p1, p2, p4}, Lcom/android/contacts/model/RawContactModifier;->migratePostal(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)V

    goto :goto_2

    :cond_8
    const-string v2, "vnd.android.cursor.item/contact_event"

    .line 997
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x0

    .line 998
    invoke-static {p1, p2, p4, v1}, Lcom/android/contacts/model/RawContactModifier;->migrateEvent(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Ljava/lang/Integer;)V

    goto :goto_2

    .line 999
    :cond_9
    sget-object v2, Lcom/android/contacts/model/RawContactModifier;->sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1000
    invoke-static {p1, p2, p4}, Lcom/android/contacts/model/RawContactModifier;->migrateGenericWithoutTypeColumn(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)V

    goto :goto_2

    .line 1001
    :cond_a
    sget-object v2, Lcom/android/contacts/model/RawContactModifier;->sGenericMimeTypesWithTypeSupport:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1002
    invoke-static {p1, p2, p4}, Lcom/android/contacts/model/RawContactModifier;->migrateGenericWithTypeColumn(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)V

    goto :goto_2

    .line 1004
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected editable mime-type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    return-void
.end method

.method public static migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)V
    .locals 7

    const-string p0, "vnd.android.cursor.item/name"

    .line 1036
    invoke-virtual {p1, p0}, Lcom/android/contacts/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 1044
    :cond_0
    iget-object p1, p3, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "data7"

    const-string v4, "data8"

    const-string v5, "data9"

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/account/AccountType$EditField;

    .line 1045
    iget-object v6, v2, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    const/4 p3, 0x1

    .line 1048
    :cond_2
    iget-object v5, v2, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    .line 1051
    :cond_3
    iget-object v2, v2, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    if-nez p3, :cond_5

    .line 1057
    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_5
    if-nez v0, :cond_6

    .line 1060
    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_6
    if-nez v1, :cond_7

    .line 1063
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1066
    :cond_7
    invoke-static {p0}, Lcom/android/contacts/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/model/ValuesDelta;)Lcom/android/contacts/model/ValuesDelta;

    return-void
.end method

.method public static parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;
    .locals 5

    .line 901
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 907
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/model/RawContactModifier;->canInsert(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_1

    .line 908
    invoke-static {p4}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_5

    if-nez v1, :cond_2

    goto :goto_2

    .line 912
    :cond_2
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v3, -0x80000000

    .line 913
    :goto_1
    invoke-virtual {p2, p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 915
    invoke-static {p0, p1, v2, v0}, Lcom/android/contacts/model/RawContactModifier;->getBestValidType(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;ZI)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v0

    .line 918
    invoke-static {p0, p1, v0}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/account/AccountType$EditType;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object p0

    .line 919
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p5, p1}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 921
    iget-object p1, v0, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 923
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 924
    iget-object p2, v0, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object p0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public static parseExtras(Landroid/content/Context;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V
    .locals 6

    if-eqz p3, :cond_6

    .line 519
    invoke-virtual {p3}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 524
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/contacts/model/RawContactModifier;->parseStructuredNameExtra(Landroid/content/Context;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V

    .line 525
    invoke-static {p1, p2, p3}, Lcom/android/contacts/model/RawContactModifier;->parseStructuredPostalExtra(Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V

    const-string p0, "vnd.android.cursor.item/phone_v2"

    .line 529
    invoke-virtual {p1, p0}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p0

    const-string v3, "phone_type"

    const-string v4, "phone"

    const-string v5, "data1"

    move-object v0, p2

    move-object v1, p0

    move-object v2, p3

    .line 530
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    const-string v3, "secondary_phone_type"

    const-string v4, "secondary_phone"

    const-string v5, "data1"

    .line 531
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    const-string v3, "tertiary_phone_type"

    const-string v4, "tertiary_phone"

    const-string v5, "data1"

    .line 533
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    const-string p0, "vnd.android.cursor.item/email_v2"

    .line 539
    invoke-virtual {p1, p0}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p0

    const-string v3, "email_type"

    const-string v4, "email"

    const-string v5, "data1"

    move-object v1, p0

    .line 540
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    const-string v3, "secondary_email_type"

    const-string v4, "secondary_email"

    const-string v5, "data1"

    .line 541
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    const-string v3, "tertiary_email_type"

    const-string v4, "tertiary_email"

    const-string v5, "data1"

    .line 543
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    const-string p0, "vnd.android.cursor.item/im"

    .line 549
    invoke-virtual {p1, p0}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v1

    .line 550
    invoke-static {p3}, Lcom/android/contacts/model/RawContactModifier;->fixupLegacyImType(Landroid/os/Bundle;)V

    const-string v3, "im_protocol"

    const-string v4, "im_handle"

    const-string v5, "data1"

    .line 551
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    const-string p0, "company"

    .line 555
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "job_title"

    if-nez v0, :cond_2

    .line 556
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v2, "vnd.android.cursor.item/organization"

    .line 557
    invoke-virtual {p1, v2}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v2

    const-string v3, "data1"

    if-eqz v0, :cond_4

    .line 558
    invoke-static {p2, v2}, Lcom/android/contacts/model/RawContactModifier;->canInsert(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 559
    invoke-static {p2, v2}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v0

    .line 561
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 562
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 563
    invoke-virtual {v0, v3, p0}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 567
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "data4"

    .line 568
    invoke-virtual {v0, v1, p0}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string p0, "notes"

    .line 573
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "vnd.android.cursor.item/note"

    .line 574
    invoke-virtual {p1, v1}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v1

    if-eqz v0, :cond_5

    .line 575
    invoke-static {p2, v1}, Lcom/android/contacts/model/RawContactModifier;->canInsert(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 576
    invoke-static {p2, v1}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v0

    .line 578
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 579
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 580
    invoke-virtual {v0, v3, p0}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string p0, "data"

    .line 585
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 587
    invoke-static {p2, p1, p0}, Lcom/android/contacts/model/RawContactModifier;->parseValues(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/util/ArrayList;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private static parseStructuredNameExtra(Landroid/content/Context;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "vnd.android.cursor.item/name"

    .line 594
    invoke-static {p2, p1, v0}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    .line 595
    invoke-virtual {p2, v0}, Lcom/android/contacts/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object p2

    const-string v1, "name"

    .line 597
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 598
    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 599
    invoke-virtual {p1, v0}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    .line 601
    iget-object p1, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    const/4 v0, 0x1

    const/4 v2, 0x0

    const-string v3, "data1"

    if-eqz p1, :cond_1

    .line 602
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/account/AccountType$EditField;

    .line 603
    iget-object v4, v4, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 611
    invoke-virtual {p2, v3, v1}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 613
    :cond_2
    sget-object p1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v4, "complete_name"

    .line 614
    invoke-virtual {p1, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 615
    invoke-virtual {p1, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 616
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 617
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string p0, "data4"

    const-string p1, "data2"

    const-string v1, "data5"

    const-string v9, "data3"

    const-string v10, "data6"

    filled-new-array {p0, p1, v1, v9, v10}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 628
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 629
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p0, v2}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 631
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 632
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v9, p0}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x4

    .line 633
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v10, p0}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 637
    throw p0

    :cond_4
    :goto_1
    const-string p0, "phonetic_name"

    .line 642
    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 643
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 644
    invoke-static {p0, p1}, Lcom/android/contacts/util/NameConverter;->parsePhoneticName(Ljava/lang/String;Lcom/android/contacts/model/dataitem/StructuredNameDataItem;)Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    move-result-object p0

    .line 645
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getPhoneticFamilyName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "data9"

    invoke-virtual {p2, p3, p1}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getPhoneticMiddleName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "data8"

    invoke-virtual {p2, p3, p1}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getPhoneticGivenName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "data7"

    invoke-virtual {p2, p1, p0}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private static parseStructuredPostalExtra(Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    .line 654
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p0

    const-string v4, "postal_type"

    const-string v5, "postal"

    const-string v6, "data1"

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    .line 655
    invoke-static/range {v1 .. v6}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object p1

    const-string p2, "data1"

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 658
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 659
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 661
    iget-object p0, p0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-eqz p0, :cond_2

    .line 662
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/account/AccountType$EditField;

    .line 663
    iget-object v2, v2, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    const-string p0, "data4"

    .line 671
    invoke-virtual {p1, p0, v0}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-virtual {p1, p2}, Lcom/android/contacts/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private static parseValues(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/RawContactDelta;",
            "Lcom/android/contacts/model/account/AccountType;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 680
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "mimetype"

    .line 681
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 682
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 683
    sget-object v1, Lcom/android/contacts/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mimetype is required. Ignoring: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "vnd.android.cursor.item/name"

    .line 688
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "vnd.android.cursor.item/phone_v2"

    .line 690
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "formattedPhoneNumber"

    .line 691
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v2, "data2"

    .line 692
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 696
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "data3"

    .line 697
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    .line 698
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 702
    :cond_3
    invoke-virtual {p1, v1}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v2

    const-string v3, ". Ignoring: "

    if-nez v2, :cond_4

    .line 704
    sget-object v1, Lcom/android/contacts/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mimetype not supported for account type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountType;->getAccountTypeAndDataSet()Lcom/android/contacts/model/account/AccountTypeWithDataSet;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 704
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 709
    :cond_4
    invoke-static {v0}, Lcom/android/contacts/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object v4

    .line 710
    invoke-static {v4, v2}, Lcom/android/contacts/model/RawContactModifier;->isEmpty(Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_0

    .line 714
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 716
    iget v6, v2, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_f

    const-string v6, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto/16 :goto_3

    :cond_6
    if-eqz v5, :cond_a

    .line 748
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    .line 749
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/model/ValuesDelta;

    .line 750
    invoke-virtual {v9}, Lcom/android/contacts/model/ValuesDelta;->isDelete()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {v9, v2}, Lcom/android/contacts/model/RawContactModifier;->isEmpty(Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_1

    :cond_8
    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_9

    .line 756
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/ValuesDelta;

    .line 757
    invoke-virtual {v8}, Lcom/android/contacts/model/ValuesDelta;->markDeleted()V

    goto :goto_2

    :cond_9
    move v8, v7

    :cond_a
    if-eqz v8, :cond_b

    .line 763
    invoke-static {v4, v5, v2}, Lcom/android/contacts/model/RawContactModifier;->adjustType(Lcom/android/contacts/model/ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v8

    :cond_b
    if-eqz v8, :cond_c

    .line 767
    invoke-virtual {p0, v4}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/model/ValuesDelta;)Lcom/android/contacts/model/ValuesDelta;

    goto/16 :goto_0

    :cond_c
    const-string v4, "vnd.android.cursor.item/note"

    .line 768
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 771
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/ValuesDelta;

    .line 772
    invoke-static {v3, v2}, Lcom/android/contacts/model/RawContactModifier;->isEmpty(Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data1"

    invoke-virtual {v3, v2}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 773
    invoke-virtual {v3, v2, v0}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 779
    :cond_e
    sget-object v2, Lcom/android/contacts/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Will not override mimetype "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    :goto_3
    if-eqz v5, :cond_12

    .line 720
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 721
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :cond_10
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/ValuesDelta;

    .line 722
    invoke-virtual {v6}, Lcom/android/contacts/model/ValuesDelta;->isDelete()Z

    move-result v9

    if-nez v9, :cond_10

    .line 723
    invoke-static {v6, v0, v2}, Lcom/android/contacts/model/RawContactModifier;->areEqual(Lcom/android/contacts/model/ValuesDelta;Landroid/content/ContentValues;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v8, 0x0

    goto :goto_5

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_12
    const/4 v3, 0x0

    .line 732
    :cond_13
    :goto_5
    iget v1, v2, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v6, -0x1

    if-eq v1, v6, :cond_14

    if-lt v3, v1, :cond_14

    .line 733
    sget-object v1, Lcom/android/contacts/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mimetype allows at most "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " entries. Ignoring: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_14
    move v7, v8

    :goto_6
    if-eqz v7, :cond_15

    .line 739
    invoke-static {v4, v5, v2}, Lcom/android/contacts/model/RawContactModifier;->adjustType(Lcom/android/contacts/model/ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v7

    :cond_15
    if-eqz v7, :cond_0

    .line 743
    invoke-virtual {p0, v4}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/model/ValuesDelta;)Lcom/android/contacts/model/ValuesDelta;

    goto/16 :goto_0

    :cond_16
    return-void
.end method

.method public static trimEmpty(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;)V
    .locals 9

    .line 417
    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/dataitem/DataKind;

    .line 418
    iget-object v3, v2, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 419
    invoke-virtual {p0, v3}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/ValuesDelta;

    .line 424
    invoke-virtual {v5}, Lcom/android/contacts/model/ValuesDelta;->isInsert()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lcom/android/contacts/model/ValuesDelta;->isUpdate()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v6, 0x1

    :goto_3
    if-nez v6, :cond_5

    :goto_4
    const/4 v1, 0x1

    goto :goto_1

    .line 432
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/ValuesDelta;

    move-result-object v6

    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.google"

    .line 431
    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    .line 433
    iget-object v7, v2, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v8, "vnd.android.cursor.item/photo"

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    .line 436
    :goto_5
    invoke-static {v5, v2}, Lcom/android/contacts/model/RawContactModifier;->isEmpty(Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/dataitem/DataKind;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-nez v6, :cond_7

    .line 440
    invoke-virtual {v5}, Lcom/android/contacts/model/ValuesDelta;->markDeleted()V

    goto :goto_1

    .line 441
    :cond_7
    invoke-virtual {v5}, Lcom/android/contacts/model/ValuesDelta;->isFromTemplate()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_4

    :cond_8
    if-nez v1, :cond_9

    .line 448
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->markDeleted()V

    :cond_9
    return-void
.end method

.method public static trimEmpty(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/model/AccountTypeManager;)V
    .locals 4

    .line 376
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    .line 377
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/ValuesDelta;

    move-result-object v1

    const-string v2, "account_type"

    .line 378
    invoke-virtual {v1, v2}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data_set"

    .line 379
    invoke-virtual {v1, v3}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-virtual {p1, v2, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v1

    .line 381
    invoke-static {v0, v1}, Lcom/android/contacts/model/RawContactModifier;->trimEmpty(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;)V

    goto :goto_0

    :cond_0
    return-void
.end method
