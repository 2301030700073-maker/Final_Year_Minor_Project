.class public Lcom/android/contacts/model/ValuesDelta;
.super Ljava/lang/Object;
.source "ValuesDelta.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/contacts/model/ValuesDelta;",
            ">;"
        }
    .end annotation
.end field

.field protected static sNextInsertId:I = -0x1


# instance fields
.field protected mAfter:Landroid/content/ContentValues;

.field protected mBefore:Landroid/content/ContentValues;

.field private mFromTemplate:Z

.field protected mIdColumn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 475
    new-instance v0, Lcom/android/contacts/model/ValuesDelta$1;

    invoke-direct {v0}, Lcom/android/contacts/model/ValuesDelta$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/ValuesDelta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_id"

    .line 43
    iput-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    return-void
.end method

.method private buildDiffHelper(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 4

    .line 437
    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->isInsert()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/contacts/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 440
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 441
    iget-object p1, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 442
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->isDelete()Z

    move-result v0

    const-string v2, "="

    if-eqz v0, :cond_1

    .line 444
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/contacts/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    :goto_0
    move-object v1, p1

    goto :goto_1

    .line 446
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->isUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/contacts/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 450
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {p1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private ensureUpdate()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    :cond_0
    return-void
.end method

.method public static fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/ValuesDelta;
    .locals 4

    .line 73
    new-instance v0, Lcom/android/contacts/model/ValuesDelta;

    invoke-direct {v0}, Lcom/android/contacts/model/ValuesDelta;-><init>()V

    const/4 v1, 0x0

    .line 74
    iput-object v1, v0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 75
    iput-object p0, v0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 78
    iget-object v1, v0, Lcom/android/contacts/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    sget v2, Lcom/android/contacts/model/ValuesDelta;->sNextInsertId:I

    add-int/lit8 v3, v2, -0x1

    sput v3, Lcom/android/contacts/model/ValuesDelta;->sNextInsertId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/model/ValuesDelta;
    .locals 1

    .line 62
    new-instance v0, Lcom/android/contacts/model/ValuesDelta;

    invoke-direct {v0}, Lcom/android/contacts/model/ValuesDelta;-><init>()V

    .line 63
    iput-object p0, v0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 64
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    iput-object p0, v0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    return-object v0
.end method

.method public static mergeAfter(Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/ValuesDelta;)Lcom/android/contacts/model/ValuesDelta;
    .locals 1

    if-nez p0, :cond_1

    .line 337
    invoke-virtual {p1}, Lcom/android/contacts/model/ValuesDelta;->isDelete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/model/ValuesDelta;->isTransient()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    .line 340
    new-instance p0, Lcom/android/contacts/model/ValuesDelta;

    invoke-direct {p0}, Lcom/android/contacts/model/ValuesDelta;-><init>()V

    .line 342
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->beforeExists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 344
    invoke-virtual {p1}, Lcom/android/contacts/model/ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    goto :goto_0

    .line 347
    :cond_3
    iget-object p1, p1, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iput-object p1, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public beforeExists()Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 0

    .line 416
    invoke-direct {p0, p1}, Lcom/android/contacts/model/ValuesDelta;->buildDiffHelper(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public buildDiffWrapper(Landroid/net/Uri;)Lcom/android/contacts/model/BuilderWrapper;
    .locals 2

    .line 423
    invoke-direct {p0, p1}, Lcom/android/contacts/model/ValuesDelta;->buildDiffHelper(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 425
    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->isInsert()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    new-instance v0, Lcom/android/contacts/model/BuilderWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/BuilderWrapper;-><init>(Landroid/content/ContentProviderOperation$Builder;I)V

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->isDelete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    new-instance v0, Lcom/android/contacts/model/BuilderWrapper;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/BuilderWrapper;-><init>(Landroid/content/ContentProviderOperation$Builder;I)V

    goto :goto_0

    .line 429
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->isUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    new-instance v0, Lcom/android/contacts/model/BuilderWrapper;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/BuilderWrapper;-><init>(Landroid/content/ContentProviderOperation$Builder;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public copyStringFrom(Lcom/android/contacts/model/ValuesDelta;Ljava/lang/String;)V
    .locals 1

    .line 283
    invoke-direct {p0}, Lcom/android/contacts/model/ValuesDelta;->ensureUpdate()V

    .line 284
    invoke-virtual {p0, p2}, Lcom/android/contacts/model/ValuesDelta;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/contacts/model/ValuesDelta;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public copyStructuredNameFieldsFrom(Lcom/android/contacts/model/ValuesDelta;)V
    .locals 1

    const-string v0, "data1"

    .line 548
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/model/ValuesDelta;Ljava/lang/String;)V

    const-string v0, "data2"

    .line 550
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/model/ValuesDelta;Ljava/lang/String;)V

    const-string v0, "data3"

    .line 551
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/model/ValuesDelta;Ljava/lang/String;)V

    const-string v0, "data4"

    .line 552
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/model/ValuesDelta;Ljava/lang/String;)V

    const-string v0, "data5"

    .line 553
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/model/ValuesDelta;Ljava/lang/String;)V

    const-string v0, "data6"

    .line 554
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/model/ValuesDelta;Ljava/lang/String;)V

    const-string v0, "data7"

    .line 556
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/model/ValuesDelta;Ljava/lang/String;)V

    const-string v0, "data8"

    .line 557
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/model/ValuesDelta;Ljava/lang/String;)V

    const-string v0, "data9"

    .line 558
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/model/ValuesDelta;Ljava/lang/String;)V

    const-string v0, "data10"

    .line 560
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/model/ValuesDelta;Ljava/lang/String;)V

    const-string v0, "data11"

    .line 561
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/model/ValuesDelta;Ljava/lang/String;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 355
    instance-of v0, p1, Lcom/android/contacts/model/ValuesDelta;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 357
    check-cast p1, Lcom/android/contacts/model/ValuesDelta;

    .line 358
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ValuesDelta;->subsetEquals(Lcom/android/contacts/model/ValuesDelta;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/contacts/model/ValuesDelta;->subsetEquals(Lcom/android/contacts/model/ValuesDelta;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getAfter()Landroid/content/ContentValues;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getAsByteArray(Ljava/lang/String;)[B
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object p2, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object p2, p0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public getAsLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBefore()Landroid/content/ContentValues;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getCompleteValues()Landroid/content/ContentValues;
    .locals 2

    .line 315
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 316
    iget-object v1, p0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v1, :cond_1

    .line 320
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    :cond_1
    const-string v1, "data1"

    .line 322
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "group_sourceid"

    .line 324
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    const-string v0, "data1"

    .line 536
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailData()Ljava/lang/String;
    .locals 1

    const-string v0, "data1"

    .line 585
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "data3"

    .line 597
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailType()Ljava/lang/Integer;
    .locals 1

    const-string v0, "data2"

    .line 593
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getGroupRowId()Ljava/lang/Long;
    .locals 1

    const-string v0, "data1"

    .line 492
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getMimetype()Ljava/lang/String;
    .locals 1

    const-string v0, "mimetype"

    .line 155
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "data3"

    .line 581
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNormalizedNumber()Ljava/lang/String;
    .locals 1

    const-string v0, "data4"

    .line 569
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    const-string v0, "data1"

    .line 565
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()Ljava/lang/Integer;
    .locals 1

    const-string v0, "data2"

    .line 577
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneticFamilyName()Ljava/lang/String;
    .locals 1

    const-string v0, "data9"

    .line 524
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneticGivenName()Ljava/lang/String;
    .locals 1

    const-string v0, "data7"

    .line 532
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneticMiddleName()Ljava/lang/String;
    .locals 1

    const-string v0, "data8"

    .line 528
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto()[B
    .locals 1

    const-string v0, "data15"

    .line 500
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public hasEmailType()Z
    .locals 1

    .line 589
    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->getEmailType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPhoneType()Z
    .locals 1

    .line 573
    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->getPhoneType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChanged(Ljava/lang/String;)Z
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    iget-object v2, p0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v2, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x1

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 151
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public isDelete()Z
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->beforeExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFromTemplate()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/android/contacts/model/ValuesDelta;->mFromTemplate:Z

    return v0
.end method

.method public isInsert()Z
    .locals 1

    .line 241
    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->beforeExists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNoop()Z
    .locals 1

    .line 234
    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->beforeExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrimary()Z
    .locals 6

    const-string v0, "is_primary"

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isSuperPrimary()Z
    .locals 6

    const-string v0, "is_super_primary"

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isTransient()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUpdate()Z
    .locals 5

    .line 213
    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->beforeExists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 217
    iget-object v3, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 218
    iget-object v4, p0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x1

    if-nez v2, :cond_2

    if-eqz v3, :cond_1

    return v4

    .line 223
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v4

    :cond_3
    :goto_0
    return v1
.end method

.method public isVisible()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 293
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 297
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v1, :cond_1

    .line 302
    invoke-virtual {v1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 303
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public markDeleted()V
    .locals 1

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 1

    .line 268
    invoke-direct {p0}, Lcom/android/contacts/model/ValuesDelta;->ensureUpdate()V

    .line 269
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 1

    .line 273
    invoke-direct {p0}, Lcom/android/contacts/model/ValuesDelta;->ensureUpdate()V

    .line 274
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 258
    invoke-direct {p0}, Lcom/android/contacts/model/ValuesDelta;->ensureUpdate()V

    .line 259
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 1

    .line 263
    invoke-direct {p0}, Lcom/android/contacts/model/ValuesDelta;->ensureUpdate()V

    .line 264
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    return-void
.end method

.method public putNull(Ljava/lang/String;)V
    .locals 1

    .line 278
    invoke-direct {p0}, Lcom/android/contacts/model/ValuesDelta;->ensureUpdate()V

    .line 279
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 469
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 470
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    iput-object v1, p0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 471
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "data1"

    if-nez p1, :cond_0

    .line 541
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 543
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setFromTemplate(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lcom/android/contacts/model/ValuesDelta;->mFromTemplate:Z

    return-void
.end method

.method public setGroupRowId(J)V
    .locals 1

    const-string v0, "data1"

    .line 488
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;J)V

    return-void
.end method

.method public setIdColumn(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/contacts/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    return-void
.end method

.method public setPhoneticFamilyName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "data9"

    .line 512
    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPhoneticGivenName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "data7"

    .line 520
    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPhoneticMiddleName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "data8"

    .line 516
    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPhoto([B)V
    .locals 1

    const-string v0, "data15"

    .line 496
    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;[B)V

    return-void
.end method

.method public setSuperPrimary(Z)V
    .locals 1

    const-string v0, "is_super_primary"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 505
    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 507
    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public subsetEquals(Lcom/android/contacts/model/ValuesDelta;)Z
    .locals 4

    .line 395
    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 396
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 397
    invoke-virtual {p1, v1}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    return v3

    .line 403
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->toString(Ljava/lang/StringBuilder;)V

    .line 367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 4

    const-string v0, "{ "

    .line 375
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "IdColumn="

    .line 376
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", FromTemplate="

    .line 378
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    iget-boolean v0, p0, Lcom/android/contacts/model/ValuesDelta;->mFromTemplate:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    .line 380
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 382
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 383
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "}"

    .line 387
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 464
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 465
    iget-object p2, p0, Lcom/android/contacts/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
