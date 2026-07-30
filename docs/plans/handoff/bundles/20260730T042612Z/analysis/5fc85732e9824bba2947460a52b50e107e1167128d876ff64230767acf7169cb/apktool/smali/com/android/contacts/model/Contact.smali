.class public Lcom/android/contacts/model/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/Contact$Status;
    }
.end annotation


# instance fields
.field private final mAltDisplayName:Ljava/lang/String;

.field private final mCustomRingtone:Ljava/lang/String;

.field private mDirectoryAccountName:Ljava/lang/String;

.field private mDirectoryAccountType:Ljava/lang/String;

.field private mDirectoryDisplayName:Ljava/lang/String;

.field private mDirectoryExportSupport:I

.field private final mDirectoryId:J

.field private mDirectoryType:Ljava/lang/String;

.field private final mDisplayName:Ljava/lang/String;

.field private final mDisplayNameSource:I

.field private final mException:Ljava/lang/Exception;

.field private mGroups:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/android/contacts/group/GroupMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private final mId:J

.field private final mIsUserProfile:Z

.field private final mLookupKey:Ljava/lang/String;

.field private final mLookupUri:Landroid/net/Uri;

.field private final mNameRawContactId:J

.field private final mPhoneticName:Ljava/lang/String;

.field private mPhotoBinaryData:[B

.field private final mPhotoId:J

.field private final mPhotoUri:Ljava/lang/String;

.field private final mPresence:Ljava/lang/Integer;

.field private mRawContacts:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/android/contacts/model/RawContact;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestedUri:Landroid/net/Uri;

.field private final mSendToVoicemail:Z

.field private final mStarred:Z

.field private final mStatus:Lcom/android/contacts/model/Contact$Status;

.field private mStatuses:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/util/DataStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailPhotoBinaryData:[B

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V
    .locals 4

    move-object v0, p0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    sget-object v1, Lcom/android/contacts/model/Contact$Status;->LOADED:Lcom/android/contacts/model/Contact$Status;

    iput-object v1, v0, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    const/4 v1, 0x0

    .line 147
    iput-object v1, v0, Lcom/android/contacts/model/Contact;->mException:Ljava/lang/Exception;

    move-object v2, p1

    .line 148
    iput-object v2, v0, Lcom/android/contacts/model/Contact;->mRequestedUri:Landroid/net/Uri;

    move-object v2, p3

    .line 149
    iput-object v2, v0, Lcom/android/contacts/model/Contact;->mLookupUri:Landroid/net/Uri;

    move-object v2, p2

    .line 150
    iput-object v2, v0, Lcom/android/contacts/model/Contact;->mUri:Landroid/net/Uri;

    move-wide v2, p4

    .line 151
    iput-wide v2, v0, Lcom/android/contacts/model/Contact;->mDirectoryId:J

    move-object v2, p6

    .line 152
    iput-object v2, v0, Lcom/android/contacts/model/Contact;->mLookupKey:Ljava/lang/String;

    move-wide v2, p7

    .line 153
    iput-wide v2, v0, Lcom/android/contacts/model/Contact;->mId:J

    .line 154
    iput-object v1, v0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 155
    iput-object v1, v0, Lcom/android/contacts/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    move-wide v1, p9

    .line 156
    iput-wide v1, v0, Lcom/android/contacts/model/Contact;->mNameRawContactId:J

    move v1, p11

    .line 157
    iput v1, v0, Lcom/android/contacts/model/Contact;->mDisplayNameSource:I

    move-wide/from16 v1, p12

    .line 158
    iput-wide v1, v0, Lcom/android/contacts/model/Contact;->mPhotoId:J

    move-object/from16 v1, p14

    .line 159
    iput-object v1, v0, Lcom/android/contacts/model/Contact;->mPhotoUri:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 160
    iput-object v1, v0, Lcom/android/contacts/model/Contact;->mDisplayName:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 161
    iput-object v1, v0, Lcom/android/contacts/model/Contact;->mAltDisplayName:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 162
    iput-object v1, v0, Lcom/android/contacts/model/Contact;->mPhoneticName:Ljava/lang/String;

    move/from16 v1, p18

    .line 163
    iput-boolean v1, v0, Lcom/android/contacts/model/Contact;->mStarred:Z

    move-object/from16 v1, p19

    .line 164
    iput-object v1, v0, Lcom/android/contacts/model/Contact;->mPresence:Ljava/lang/Integer;

    move/from16 v1, p20

    .line 165
    iput-boolean v1, v0, Lcom/android/contacts/model/Contact;->mSendToVoicemail:Z

    move-object/from16 v1, p21

    .line 166
    iput-object v1, v0, Lcom/android/contacts/model/Contact;->mCustomRingtone:Ljava/lang/String;

    move/from16 v1, p22

    .line 167
    iput-boolean v1, v0, Lcom/android/contacts/model/Contact;->mIsUserProfile:Z

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/android/contacts/model/Contact$Status;Ljava/lang/Exception;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget-object v0, Lcom/android/contacts/model/Contact$Status;->ERROR:Lcom/android/contacts/model/Contact$Status;

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ERROR result must have exception"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    .line 107
    iput-object p3, p0, Lcom/android/contacts/model/Contact;->mException:Ljava/lang/Exception;

    .line 108
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mRequestedUri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mLookupUri:Landroid/net/Uri;

    .line 110
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mUri:Landroid/net/Uri;

    const-wide/16 p2, -0x1

    .line 111
    iput-wide p2, p0, Lcom/android/contacts/model/Contact;->mDirectoryId:J

    .line 112
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mLookupKey:Ljava/lang/String;

    .line 113
    iput-wide p2, p0, Lcom/android/contacts/model/Contact;->mId:J

    .line 114
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 115
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    .line 116
    iput-wide p2, p0, Lcom/android/contacts/model/Contact;->mNameRawContactId:J

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/android/contacts/model/Contact;->mDisplayNameSource:I

    .line 118
    iput-wide p2, p0, Lcom/android/contacts/model/Contact;->mPhotoId:J

    .line 119
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mPhotoUri:Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mDisplayName:Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mAltDisplayName:Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mPhoneticName:Ljava/lang/String;

    .line 123
    iput-boolean v0, p0, Lcom/android/contacts/model/Contact;->mStarred:Z

    .line 124
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mPresence:Ljava/lang/Integer;

    .line 125
    iput-boolean v0, p0, Lcom/android/contacts/model/Contact;->mSendToVoicemail:Z

    .line 126
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mCustomRingtone:Ljava/lang/String;

    .line 127
    iput-boolean v0, p0, Lcom/android/contacts/model/Contact;->mIsUserProfile:Z

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/android/contacts/model/Contact;)V
    .locals 2

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mRequestedUri:Landroid/net/Uri;

    .line 173
    iget-object p1, p2, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    .line 174
    iget-object p1, p2, Lcom/android/contacts/model/Contact;->mException:Ljava/lang/Exception;

    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mException:Ljava/lang/Exception;

    .line 175
    iget-object p1, p2, Lcom/android/contacts/model/Contact;->mLookupUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mLookupUri:Landroid/net/Uri;

    .line 176
    iget-object p1, p2, Lcom/android/contacts/model/Contact;->mUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mUri:Landroid/net/Uri;

    .line 177
    iget-wide v0, p2, Lcom/android/contacts/model/Contact;->mDirectoryId:J

    iput-wide v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryId:J

    .line 178
    iget-object p1, p2, Lcom/android/contacts/model/Contact;->mLookupKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mLookupKey:Ljava/lang/String;

    .line 179
    iget-wide v0, p2, Lcom/android/contacts/model/Contact;->mId:J

    iput-wide v0, p0, Lcom/android/contacts/model/Contact;->mId:J

    .line 180
    iget-wide v0, p2, Lcom/android/contacts/model/Contact;->mNameRawContactId:J

    iput-wide v0, p0, Lcom/android/contacts/model/Contact;->mNameRawContactId:J

    .line 181
    iget p1, p2, Lcom/android/contacts/model/Contact;->mDisplayNameSource:I

    iput p1, p0, Lcom/android/contacts/model/Contact;->mDisplayNameSource:I

    .line 182
    iget-wide v0, p2, Lcom/android/contacts/model/Contact;->mPhotoId:J

    iput-wide v0, p0, Lcom/android/contacts/model/Contact;->mPhotoId:J

    .line 183
    iget-object p1, p2, Lcom/android/contacts/model/Contact;->mPhotoUri:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mPhotoUri:Ljava/lang/String;

    .line 184
    iget-object p1, p2, Lcom/android/contacts/model/Contact;->mDisplayName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mDisplayName:Ljava/lang/String;

    .line 185
    iget-object p1, p2, Lcom/android/contacts/model/Contact;->mAltDisplayName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mAltDisplayName:Ljava/lang/String;

    .line 186
    iget-object p1, p2, Lcom/android/contacts/model/Contact;->mPhoneticName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mPhoneticName:Ljava/lang/String;

    .line 187
    iget-boolean p1, p2, Lcom/android/contacts/model/Contact;->mStarred:Z

    iput-boolean p1, p0, Lcom/android/contacts/model/Contact;->mStarred:Z

    .line 188
    iget-object p1, p2, Lcom/android/contacts/model/Contact;->mPresence:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mPresence:Ljava/lang/Integer;

    .line 189
    iget-object p1, p2, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 190
    iget-object p1, p2, Lcom/android/contacts/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    .line 192
    iget-object p1, p2, Lcom/android/contacts/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    .line 193
    iget-object p1, p2, Lcom/android/contacts/model/Contact;->mDirectoryType:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mDirectoryType:Ljava/lang/String;

    .line 194
    iget-object p1, p2, Lcom/android/contacts/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    .line 195
    iget-object p1, p2, Lcom/android/contacts/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    .line 196
    iget p1, p2, Lcom/android/contacts/model/Contact;->mDirectoryExportSupport:I

    iput p1, p0, Lcom/android/contacts/model/Contact;->mDirectoryExportSupport:I

    .line 198
    iget-object p1, p2, Lcom/android/contacts/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    .line 200
    iget-object p1, p2, Lcom/android/contacts/model/Contact;->mPhotoBinaryData:[B

    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mPhotoBinaryData:[B

    .line 201
    iget-boolean p1, p2, Lcom/android/contacts/model/Contact;->mSendToVoicemail:Z

    iput-boolean p1, p0, Lcom/android/contacts/model/Contact;->mSendToVoicemail:Z

    .line 202
    iget-object p1, p2, Lcom/android/contacts/model/Contact;->mCustomRingtone:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mCustomRingtone:Ljava/lang/String;

    .line 203
    iget-boolean p1, p2, Lcom/android/contacts/model/Contact;->mIsUserProfile:Z

    iput-boolean p1, p0, Lcom/android/contacts/model/Contact;->mIsUserProfile:Z

    return-void
.end method

.method public static forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/model/Contact;
    .locals 2

    .line 131
    new-instance v0, Lcom/android/contacts/model/Contact;

    sget-object v1, Lcom/android/contacts/model/Contact$Status;->ERROR:Lcom/android/contacts/model/Contact$Status;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/contacts/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/model/Contact$Status;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static forNotFound(Landroid/net/Uri;)Lcom/android/contacts/model/Contact;
    .locals 3

    .line 135
    new-instance v0, Lcom/android/contacts/model/Contact;

    sget-object v1, Lcom/android/contacts/model/Contact$Status;->NOT_FOUND:Lcom/android/contacts/model/Contact$Status;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/model/Contact$Status;Ljava/lang/Exception;)V

    return-object v0
.end method


# virtual methods
.method public areAllRawContactsSimAccounts(Landroid/content/Context;)Z
    .locals 3

    .line 470
    invoke-virtual {p0}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/RawContact;

    .line 473
    invoke-virtual {v2, p1}, Lcom/android/contacts/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v2

    .line 474
    instance-of v2, v2, Lcom/android/contacts/model/account/SimAccountType;

    if-nez v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public createRawContactDeltaList()Lcom/android/contacts/model/RawContactDeltaList;
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/model/RawContactDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v0

    return-object v0
.end method

.method public getAltDisplayName()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mAltDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 426
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContact;

    .line 427
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContact;->getContentValues()Ljava/util/ArrayList;

    move-result-object v0

    .line 431
    iget-wide v1, p0, Lcom/android/contacts/model/Contact;->mPhotoId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-object v1, p0, Lcom/android/contacts/model/Contact;->mPhotoBinaryData:[B

    if-eqz v1, :cond_0

    .line 432
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/photo"

    .line 433
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v2, p0, Lcom/android/contacts/model/Contact;->mPhotoBinaryData:[B

    const-string v3, "data15"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 435
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0

    .line 422
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot extract content values from an aggregated contact"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCustomRingtone()Ljava/lang/String;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mCustomRingtone:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryAccountName()Ljava/lang/String;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryAccountType()Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryDisplayName()Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryExportSupport()I
    .locals 1

    .line 393
    iget v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryExportSupport:I

    return v0
.end method

.method public getDirectoryId()J
    .locals 2

    .line 357
    iget-wide v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryId:J

    return-wide v0
.end method

.method public getDirectoryType()Ljava/lang/String;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayNameSource()I
    .locals 1

    .line 309
    iget v0, p0, Lcom/android/contacts/model/Contact;->mDisplayNameSource:I

    return v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getFirstWritableRawContactId(Landroid/content/Context;)J
    .locals 5

    .line 379
    invoke-virtual {p0}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/RawContact;

    .line 383
    invoke-virtual {v3, p1}, Lcom/android/contacts/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 384
    invoke-virtual {v4}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 385
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    return-wide v1
.end method

.method public getGroupMetaData()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/android/contacts/group/GroupMetaData;",
            ">;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 268
    iget-wide v0, p0, Lcom/android/contacts/model/Contact;->mId:J

    return-wide v0
.end method

.method public getLookupKey()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getNameRawContactId()J
    .locals 2

    .line 305
    iget-wide v0, p0, Lcom/android/contacts/model/Contact;->mNameRawContactId:J

    return-wide v0
.end method

.method public getPhoneticName()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mPhoneticName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoBinaryData()[B
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mPhotoBinaryData:[B

    return-object v0
.end method

.method public getPhotoId()J
    .locals 2

    .line 321
    iget-wide v0, p0, Lcom/android/contacts/model/Contact;->mPhotoId:J

    return-wide v0
.end method

.method public getPhotoUri()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mPhotoUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPresence()Ljava/lang/Integer;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mPresence:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRawContacts()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/android/contacts/model/RawContact;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getRequestedUri()Landroid/net/Uri;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mRequestedUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getStarred()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/android/contacts/model/Contact;->mStarred:Z

    return v0
.end method

.method public getStatuses()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/util/DataStatus;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public getThumbnailPhotoBinaryData()[B
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mThumbnailPhotoBinaryData:[B

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isDirectoryEntry()Z
    .locals 5

    .line 361
    iget-wide v0, p0, Lcom/android/contacts/model/Contact;->mDirectoryId:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisplayNameFromOrganization()Z
    .locals 2

    .line 317
    iget v0, p0, Lcom/android/contacts/model/Contact;->mDisplayNameSource:I

    const/16 v1, 0x1e

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isError()Z
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    sget-object v1, Lcom/android/contacts/model/Contact$Status;->ERROR:Lcom/android/contacts/model/Contact$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoaded()Z
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    sget-object v1, Lcom/android/contacts/model/Contact$Status;->LOADED:Lcom/android/contacts/model/Contact$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMultipleRawContacts()Z
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNotFound()Z
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    sget-object v1, Lcom/android/contacts/model/Contact$Status;->NOT_FOUND:Lcom/android/contacts/model/Contact$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSendToVoicemail()Z
    .locals 1

    .line 451
    iget-boolean v0, p0, Lcom/android/contacts/model/Contact;->mSendToVoicemail:Z

    return v0
.end method

.method public isUserProfile()Z
    .locals 1

    .line 459
    iget-boolean v0, p0, Lcom/android/contacts/model/Contact;->mIsUserProfile:Z

    return v0
.end method

.method public isWritableContact(Landroid/content/Context;)Z
    .locals 4

    .line 370
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/Contact;->getFirstWritableRawContactId(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    .line 212
    iput-object p2, p0, Lcom/android/contacts/model/Contact;->mDirectoryType:Ljava/lang/String;

    .line 213
    iput-object p3, p0, Lcom/android/contacts/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    .line 214
    iput-object p4, p0, Lcom/android/contacts/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    .line 215
    iput p5, p0, Lcom/android/contacts/model/Contact;->mDirectoryExportSupport:I

    return-void
.end method

.method setGroupMetaData(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/android/contacts/group/GroupMetaData;",
            ">;)V"
        }
    .end annotation

    .line 494
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method setPhotoBinaryData([B)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mPhotoBinaryData:[B

    return-void
.end method

.method setRawContacts(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/android/contacts/model/RawContact;",
            ">;)V"
        }
    .end annotation

    .line 486
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method setStatuses(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/util/DataStatus;",
            ">;)V"
        }
    .end annotation

    .line 490
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method setThumbnailPhotoBinaryData([B)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/android/contacts/model/Contact;->mThumbnailPhotoBinaryData:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/model/Contact;->mRequestedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",lookupkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/model/Contact;->mLookupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/model/Contact;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/model/Contact;->mStatus:Lcom/android/contacts/model/Contact$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
