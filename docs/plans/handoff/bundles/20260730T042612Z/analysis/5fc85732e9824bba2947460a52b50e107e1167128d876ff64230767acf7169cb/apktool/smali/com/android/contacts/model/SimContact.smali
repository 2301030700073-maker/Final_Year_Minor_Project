.class public Lcom/android/contacts/model/SimContact;
.super Ljava/lang/Object;
.source "SimContact.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/contacts/model/SimContact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEmails:[Ljava/lang/String;

.field private final mId:J

.field private final mName:Ljava/lang/String;

.field private final mPhone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 195
    new-instance v0, Lcom/android/contacts/model/SimContact$1;

    invoke-direct {v0}, Lcom/android/contacts/model/SimContact$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/SimContact;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 52
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/SimContact;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lcom/android/contacts/model/SimContact;->mId:J

    .line 57
    iput-object p3, p0, Lcom/android/contacts/model/SimContact;->mName:Ljava/lang/String;

    if-nez p4, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/contacts/model/SimContact;->mPhone:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/android/contacts/model/SimContact;->mEmails:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/model/SimContact;)V
    .locals 6

    .line 63
    iget-wide v1, p1, Lcom/android/contacts/model/SimContact;->mId:J

    iget-object v3, p1, Lcom/android/contacts/model/SimContact;->mName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/model/SimContact;->mPhone:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/contacts/model/SimContact;->mEmails:[Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/SimContact;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/model/SimContact;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/contacts/model/SimContact;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/contacts/model/SimContact;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/contacts/model/SimContact;->mPhone:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/contacts/model/SimContact;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/android/contacts/model/SimContact;->mId:J

    return-wide v0
.end method

.method public static final compareById()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/android/contacts/model/SimContact;",
            ">;"
        }
    .end annotation

    .line 252
    new-instance v0, Lcom/android/contacts/model/SimContact$3;

    invoke-direct {v0}, Lcom/android/contacts/model/SimContact$3;-><init>()V

    return-object v0
.end method

.method public static final compareByPhoneThenName()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/android/contacts/model/SimContact;",
            ">;"
        }
    .end annotation

    .line 240
    new-instance v0, Lcom/android/contacts/model/SimContact$2;

    invoke-direct {v0}, Lcom/android/contacts/model/SimContact$2;-><init>()V

    return-object v0
.end method

.method public static final convertToContactsCursor(Ljava/util/Collection;[Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/contacts/model/SimContact;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/MatrixCursor;"
        }
    .end annotation

    .line 220
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 221
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/SimContact;

    .line 222
    invoke-virtual {p1, v0}, Lcom/android/contacts/model/SimContact;->appendAsContactRow(Landroid/database/MatrixCursor;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createInsertOp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 2

    .line 112
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    .line 113
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const-string v0, "mimetype"

    .line 114
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 115
    invoke-virtual {p1, p3, p4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    return-object p1
.end method

.method public static findByPhoneAndName(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimContact;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 235
    new-instance v6, Lcom/android/contacts/model/SimContact;

    const-wide/16 v1, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/SimContact;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/android/contacts/model/SimContact;->compareByPhoneThenName()Ljava/util/Comparator;

    move-result-object p1

    .line 235
    invoke-static {p0, v6, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    return p0
.end method

.method private getLookupKey()Ljava/lang/String;
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/contacts/model/SimContact;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sim-n-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/model/SimContact;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/SimContact;->mPhone:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sim-p-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/model/SimContact;->mPhone:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public appendAsContactRow(Landroid/database/MatrixCursor;)V
    .locals 2

    .line 120
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/contacts/model/SimContact;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {p1, v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/contacts/model/SimContact;->mName:Ljava/lang/String;

    const-string v1, "display_name"

    .line 121
    invoke-virtual {p1, v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 122
    invoke-direct {p0}, Lcom/android/contacts/model/SimContact;->getLookupKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lookup"

    invoke-virtual {p1, v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-void
.end method

.method public appendCreateContactOperations(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/android/contacts/model/SimContact;->hasName()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/model/SimContact;->hasPhone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/model/SimContact;->hasEmails()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 88
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 89
    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    const-string v3, "account_name"

    .line 90
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    const-string v3, "account_type"

    .line 91
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    iget-object p2, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    const-string v2, "data_set"

    .line 92
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    .line 93
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    .line 88
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object p2, p0, Lcom/android/contacts/model/SimContact;->mName:Ljava/lang/String;

    const-string v1, "data1"

    if-eqz p2, :cond_1

    const-string v2, "vnd.android.cursor.item/name"

    .line 95
    invoke-direct {p0, v0, v2, v1, p2}, Lcom/android/contacts/model/SimContact;->createInsertOp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_1
    iget-object p2, p0, Lcom/android/contacts/model/SimContact;->mPhone:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 99
    iget-object p2, p0, Lcom/android/contacts/model/SimContact;->mPhone:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-direct {p0, v0, v2, v1, p2}, Lcom/android/contacts/model/SimContact;->createInsertOp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_2
    iget-object p2, p0, Lcom/android/contacts/model/SimContact;->mEmails:[Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 103
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p2, v3

    const-string v5, "vnd.android.cursor.item/email_v2"

    .line 104
    invoke-direct {p0, v0, v5, v1, v4}, Lcom/android/contacts/model/SimContact;->createInsertOp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 165
    const-class v2, Lcom/android/contacts/model/SimContact;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 167
    :cond_1
    check-cast p1, Lcom/android/contacts/model/SimContact;

    .line 169
    iget-wide v2, p0, Lcom/android/contacts/model/SimContact;->mId:J

    iget-wide v4, p1, Lcom/android/contacts/model/SimContact;->mId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/SimContact;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/contacts/model/SimContact;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/SimContact;->mPhone:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/contacts/model/SimContact;->mPhone:Ljava/lang/String;

    .line 170
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/SimContact;->mEmails:[Ljava/lang/String;

    iget-object p1, p1, Lcom/android/contacts/model/SimContact;->mEmails:[Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/contacts/model/SimContact;->mEmails:[Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/android/contacts/model/SimContact;->mId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/contacts/model/SimContact;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/contacts/model/SimContact;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method public hasEmails()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/contacts/model/SimContact;->mEmails:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasName()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/contacts/model/SimContact;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasPhone()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/contacts/model/SimContact;->mPhone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 175
    iget-wide v0, p0, Lcom/android/contacts/model/SimContact;->mId:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 176
    iget-object v0, p0, Lcom/android/contacts/model/SimContact;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 177
    iget-object v0, p0, Lcom/android/contacts/model/SimContact;->mPhone:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 178
    iget-object v0, p0, Lcom/android/contacts/model/SimContact;->mEmails:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimContact{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/contacts/model/SimContact;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/model/SimContact;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPhone=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/contacts/model/SimContact;->mPhone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mEmails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/model/SimContact;->mEmails:[Ljava/lang/String;

    .line 158
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 189
    iget-wide v0, p0, Lcom/android/contacts/model/SimContact;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 190
    iget-object p2, p0, Lcom/android/contacts/model/SimContact;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object p2, p0, Lcom/android/contacts/model/SimContact;->mPhone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object p2, p0, Lcom/android/contacts/model/SimContact;->mEmails:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
