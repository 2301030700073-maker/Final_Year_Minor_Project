.class public final Lcom/android/contacts/model/RawContact;
.super Ljava/lang/Object;
.source "RawContact.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/RawContact$NamedDataItem;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/contacts/model/RawContact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private final mDataItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/RawContact$NamedDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 171
    new-instance v0, Lcom/android/contacts/model/RawContact$1;

    invoke-direct {v0}, Lcom/android/contacts/model/RawContact$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/RawContact;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 138
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/contacts/model/RawContact;-><init>(Landroid/content/ContentValues;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/android/contacts/model/RawContact;->mValues:Landroid/content/ContentValues;

    .line 143
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const-class v0, Landroid/content/ContentValues;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/android/contacts/model/RawContact;->mValues:Landroid/content/ContentValues;

    .line 153
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    .line 154
    sget-object v1, Lcom/android/contacts/model/RawContact$NamedDataItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/model/RawContact$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/contacts/model/RawContact;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createFrom(Landroid/content/Entity;)Lcom/android/contacts/model/RawContact;
    .locals 3

    .line 124
    invoke-virtual {p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object p0

    .line 127
    new-instance v1, Lcom/android/contacts/model/RawContact;

    invoke-direct {v1, v0}, Lcom/android/contacts/model/RawContact;-><init>(Landroid/content/ContentValues;)V

    .line 128
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity$NamedContentValues;

    .line 129
    iget-object v2, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/model/RawContact;->addNamedDataItemValues(Landroid/net/Uri;Landroid/content/ContentValues;)Lcom/android/contacts/model/RawContact$NamedDataItem;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 272
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "account_type"

    const-string v2, "account_name"

    const-string v3, "data_set"

    if-nez p1, :cond_0

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 276
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 284
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_1

    .line 287
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 294
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not a valid combination of account name, type, and data set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addDataItemValues(Landroid/content/ContentValues;)V
    .locals 1

    .line 315
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/model/RawContact;->addNamedDataItemValues(Landroid/net/Uri;Landroid/content/ContentValues;)Lcom/android/contacts/model/RawContact$NamedDataItem;

    return-void
.end method

.method public addNamedDataItemValues(Landroid/net/Uri;Landroid/content/ContentValues;)Lcom/android/contacts/model/RawContact$NamedDataItem;
    .locals 1

    .line 319
    new-instance v0, Lcom/android/contacts/model/RawContact$NamedDataItem;

    invoke-direct {v0, p1, p2}, Lcom/android/contacts/model/RawContact$NamedDataItem;-><init>(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 320
    iget-object p1, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 362
    :cond_0
    const-class v1, Lcom/android/contacts/model/RawContact;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    .line 364
    :cond_1
    check-cast p1, Lcom/android/contacts/model/RawContact;

    .line 365
    iget-object v1, p0, Lcom/android/contacts/model/RawContact;->mValues:Landroid/content/ContentValues;

    iget-object v2, p1, Lcom/android/contacts/model/RawContact;->mValues:Landroid/content/ContentValues;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    .line 366
    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 2

    .line 207
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType(Landroid/content/Context;)Lcom/android/contacts/model/account/AccountType;
    .locals 2

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContact;->getAccountTypeManager(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object p1

    return-object p1
.end method

.method public getAccountTypeManager(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/contacts/model/RawContact;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    if-nez v0, :cond_0

    .line 187
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/model/RawContact;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/model/RawContact;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    return-object p1
.end method

.method public getAccountTypeString()Ljava/lang/String;
    .locals 2

    .line 214
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactId()J
    .locals 2

    .line 253
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/RawContact$NamedDataItem;

    .line 327
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, v2, Lcom/android/contacts/model/RawContact$NamedDataItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    iget-object v2, v2, Lcom/android/contacts/model/RawContact$NamedDataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDataItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/dataitem/DataItem;",
            ">;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/RawContact$NamedDataItem;

    .line 337
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, v2, Lcom/android/contacts/model/RawContact$NamedDataItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    iget-object v2, v2, Lcom/android/contacts/model/RawContact$NamedDataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-static {v2}, Lcom/android/contacts/model/dataitem/DataItem;->createFrom(Landroid/content/ContentValues;)Lcom/android/contacts/model/dataitem/DataItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 2

    .line 221
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data_set"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 2

    .line 200
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 2

    .line 229
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "sourceid"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSync1()Ljava/lang/String;
    .locals 2

    .line 233
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "sync1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSync2()Ljava/lang/String;
    .locals 2

    .line 237
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "sync2"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSync3()Ljava/lang/String;
    .locals 2

    .line 241
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "sync3"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSync4()Ljava/lang/String;
    .locals 2

    .line 245
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "sync4"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/android/contacts/model/RawContact;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 356
    iget-object v1, p0, Lcom/android/contacts/model/RawContact;->mValues:Landroid/content/ContentValues;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDeleted()Z
    .locals 2

    .line 249
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDirty()Z
    .locals 2

    .line 225
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "dirty"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isStarred()Z
    .locals 2

    .line 257
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "starred"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 300
    iget-object v0, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/contacts/model/RawContact;->setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 303
    invoke-direct {p0, p1, p1, p1}, Lcom/android/contacts/model/RawContact;->setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setAccountToLocal()V
    .locals 1

    const/4 v0, 0x0

    .line 308
    invoke-direct {p0, v0, v0, v0}, Lcom/android/contacts/model/RawContact;->setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RawContact: "

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/model/RawContact;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 347
    iget-object v1, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/RawContact$NamedDataItem;

    const-string v3, "\n  "

    .line 348
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/contacts/model/RawContact$NamedDataItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n  -> "

    .line 349
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/contacts/model/RawContact$NamedDataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/contacts/model/RawContact;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 165
    iget-object p2, p0, Lcom/android/contacts/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
