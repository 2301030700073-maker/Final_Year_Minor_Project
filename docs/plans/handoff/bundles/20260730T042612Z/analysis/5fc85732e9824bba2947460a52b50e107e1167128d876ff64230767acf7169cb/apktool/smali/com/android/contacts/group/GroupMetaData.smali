.class public final Lcom/android/contacts/group/GroupMetaData;
.super Ljava/lang/Object;
.source "GroupMetaData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/contacts/group/GroupMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final accountName:Ljava/lang/String;

.field public final accountType:Ljava/lang/String;

.field public final dataSet:Ljava/lang/String;

.field public final defaultGroup:Z

.field public final editable:Z

.field public final favorites:Z

.field public final groupId:J

.field public final groupName:Ljava/lang/String;

.field public final readOnly:Z

.field public final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/android/contacts/group/GroupMetaData$1;

    invoke-direct {v0}, Lcom/android/contacts/group/GroupMetaData$1;-><init>()V

    sput-object v0, Lcom/android/contacts/group/GroupMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object p1

    const/4 v0, 0x3

    .line 63
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 64
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    .line 67
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 68
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 66
    invoke-virtual {p1, v4, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object p1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountType;->isGroupMembershipEditable()Z

    move-result p1

    .line 72
    :goto_0
    iput-object v2, p0, Lcom/android/contacts/group/GroupMetaData;->uri:Landroid/net/Uri;

    .line 73
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupMetaData;->accountName:Ljava/lang/String;

    .line 74
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupMetaData;->accountType:Ljava/lang/String;

    .line 75
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupMetaData;->dataSet:Ljava/lang/String;

    .line 76
    iput-wide v0, p0, Lcom/android/contacts/group/GroupMetaData;->groupId:J

    const/4 v0, 0x4

    .line 77
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupMetaData;->groupName:Ljava/lang/String;

    const/4 v0, 0x7

    .line 78
    invoke-static {p2, v0}, Lcom/android/contacts/group/GroupMetaData;->getBoolean(Landroid/database/Cursor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupMetaData;->readOnly:Z

    const/4 v0, 0x5

    .line 79
    invoke-static {p2, v0}, Lcom/android/contacts/group/GroupMetaData;->getBoolean(Landroid/database/Cursor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupMetaData;->defaultGroup:Z

    const/4 v0, 0x6

    .line 80
    invoke-static {p2, v0}, Lcom/android/contacts/group/GroupMetaData;->getBoolean(Landroid/database/Cursor;I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/contacts/group/GroupMetaData;->favorites:Z

    .line 81
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupMetaData;->editable:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/group/GroupMetaData;->uri:Landroid/net/Uri;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupMetaData;->accountName:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupMetaData;->accountType:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupMetaData;->dataSet:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/group/GroupMetaData;->groupId:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupMetaData;->groupName:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/group/GroupMetaData;->readOnly:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/group/GroupMetaData;->defaultGroup:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/android/contacts/group/GroupMetaData;->favorites:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcom/android/contacts/group/GroupMetaData;->editable:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/group/GroupMetaData$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupMetaData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static getBoolean(Landroid/database/Cursor;I)Z
    .locals 2

    .line 85
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/android/contacts/group/GroupMetaData;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupMetaData;->accountName:Ljava/lang/String;

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupMetaData;->groupName:Ljava/lang/String;

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/group/GroupMetaData;->groupId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 130
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupMetaData;->accountName:Ljava/lang/String;

    const-string v2, "accountName"

    .line 131
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/android/contacts/group/GroupMetaData;->accountType:Ljava/lang/String;

    const-string v2, "accountType"

    .line 132
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/android/contacts/group/GroupMetaData;->dataSet:Ljava/lang/String;

    const-string v2, "dataSet"

    .line 133
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-wide v1, p0, Lcom/android/contacts/group/GroupMetaData;->groupId:J

    const-string v3, "groupId"

    .line 134
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/android/contacts/group/GroupMetaData;->groupName:Ljava/lang/String;

    const-string v2, "groupName"

    .line 135
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-boolean v1, p0, Lcom/android/contacts/group/GroupMetaData;->readOnly:Z

    const-string v2, "readOnly"

    .line 136
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-boolean v1, p0, Lcom/android/contacts/group/GroupMetaData;->defaultGroup:Z

    const-string v2, "defaultGroup"

    .line 137
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-boolean v1, p0, Lcom/android/contacts/group/GroupMetaData;->favorites:Z

    const-string v2, "favorites"

    .line 138
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-boolean v1, p0, Lcom/android/contacts/group/GroupMetaData;->editable:Z

    const-string v2, "editable"

    .line 139
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 140
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupMetaData;->isValid()Z

    move-result v1

    const-string v2, "isValid"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 141
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 103
    iget-object p2, p0, Lcom/android/contacts/group/GroupMetaData;->uri:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    iget-object p2, p0, Lcom/android/contacts/group/GroupMetaData;->accountName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object p2, p0, Lcom/android/contacts/group/GroupMetaData;->accountType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object p2, p0, Lcom/android/contacts/group/GroupMetaData;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-wide v0, p0, Lcom/android/contacts/group/GroupMetaData;->groupId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 108
    iget-object p2, p0, Lcom/android/contacts/group/GroupMetaData;->groupName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-boolean p2, p0, Lcom/android/contacts/group/GroupMetaData;->readOnly:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-boolean p2, p0, Lcom/android/contacts/group/GroupMetaData;->defaultGroup:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-boolean p2, p0, Lcom/android/contacts/group/GroupMetaData;->favorites:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-boolean p2, p0, Lcom/android/contacts/group/GroupMetaData;->editable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
