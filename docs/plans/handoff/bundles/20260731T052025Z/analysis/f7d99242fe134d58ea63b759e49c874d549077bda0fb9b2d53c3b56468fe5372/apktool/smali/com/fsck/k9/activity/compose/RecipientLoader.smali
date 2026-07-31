.class public Lcom/fsck/k9/activity/compose/RecipientLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;

.field public static final PROJECTION_CRYPTO_ADDRESSES:[Ljava/lang/String;

.field public static final PROJECTION_CRYPTO_STATUS:[Ljava/lang/String;

.field public static final PROJECTION_NICKNAME:[Ljava/lang/String;

.field public static final RECIPIENT_COMPARATOR:Landroidx/viewpager/widget/ViewPager$1;


# instance fields
.field public final addresses:[Lcom/fsck/k9/mail/Address;

.field public cachedRecipients:Ljava/util/List;

.field public final contactUri:Landroid/net/Uri;

.field public final contentResolver:Landroid/content/ContentResolver;

.field public final cryptoProvider:Ljava/lang/String;

.field public final lookupKeyUri:Landroid/net/Uri;

.field public observerContact:Landroidx/loader/content/Loader$ForceLoadContentObserver;

.field public observerKey:Landroidx/loader/content/Loader$ForceLoadContentObserver;

.field public final query:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-string v9, "sort_key"

    .line 2
    .line 3
    const-string v10, "starred"

    .line 4
    .line 5
    const-string v0, "_id"

    .line 6
    .line 7
    const-string v1, "display_name"

    .line 8
    .line 9
    const-string v2, "lookup"

    .line 10
    .line 11
    const-string v3, "data1"

    .line 12
    .line 13
    const-string v4, "data2"

    .line 14
    .line 15
    const-string v5, "data3"

    .line 16
    .line 17
    const-string v6, "contact_id"

    .line 18
    .line 19
    const-string v7, "photo_thumb_uri"

    .line 20
    .line 21
    const-string v8, "times_contacted"

    .line 22
    .line 23
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientLoader;->PROJECTION:[Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "contact_id"

    .line 30
    .line 31
    filled-new-array {v0}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientLoader;->PROJECTION_NICKNAME:[Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "uid_address"

    .line 38
    .line 39
    const-string v1, "address"

    .line 40
    .line 41
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientLoader;->PROJECTION_CRYPTO_ADDRESSES:[Ljava/lang/String;

    .line 46
    .line 47
    const-string v0, "uid_key_status"

    .line 48
    .line 49
    const-string v2, "autocrypt_key_status"

    .line 50
    .line 51
    filled-new-array {v1, v0, v2}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientLoader;->PROJECTION_CRYPTO_STATUS:[Ljava/lang/String;

    .line 56
    .line 57
    new-instance v0, Landroidx/viewpager/widget/ViewPager$1;

    .line 58
    .line 59
    const/16 v1, 0xf

    .line 60
    .line 61
    invoke-direct {v0, v1}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientLoader;->RECIPIENT_COMPARATOR:Landroidx/viewpager/widget/ViewPager$1;

    .line 65
    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->query:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->addresses:[Lcom/fsck/k9/mail/Address;

    .line 8
    .line 9
    if-eqz p4, :cond_0

    .line 10
    .line 11
    move-object v1, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, p3

    .line 14
    :goto_0
    iput-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contactUri:Landroid/net/Uri;

    .line 15
    .line 16
    if-eqz p4, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object p3, v0

    .line 20
    :goto_1
    iput-object p3, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->lookupKeyUri:Landroid/net/Uri;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->cryptoProvider:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p3, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->query:Ljava/lang/String;

    const/4 p3, 0x0

    .line 40
    iput-object p3, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->lookupKeyUri:Landroid/net/Uri;

    .line 41
    iput-object p3, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->addresses:[Lcom/fsck/k9/mail/Address;

    .line 42
    iput-object p3, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contactUri:Landroid/net/Uri;

    .line 43
    iput-object p2, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->cryptoProvider:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;[Lcom/fsck/k9/mail/Address;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->query:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->addresses:[Lcom/fsck/k9/mail/Address;

    .line 34
    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contactUri:Landroid/net/Uri;

    .line 35
    iput-object p2, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->cryptoProvider:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->lookupKeyUri:Landroid/net/Uri;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/compose/RecipientLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->cachedRecipients:Ljava/util/List;

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mStarted:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final fillContactDataFromCursor(Landroid/database/Cursor;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_a

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const/4 v3, 0x3

    .line 17
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    if-eqz v5, :cond_8

    .line 22
    .line 23
    invoke-static {v5}, Lokhttp3/Cookie$Companion;->isASCII(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-eqz v6, :cond_8

    .line 28
    .line 29
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v6, 0x6

    .line 37
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 38
    .line 39
    .line 40
    move-result-wide v7

    .line 41
    const/4 v6, 0x2

    .line 42
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    const/16 v10, 0x8

    .line 47
    .line 48
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    const/16 v11, 0x9

    .line 53
    .line 54
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    const/16 v12, 0xa

    .line 59
    .line 60
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 61
    .line 62
    .line 63
    move-result v12

    .line 64
    if-ne v12, v2, :cond_1

    .line 65
    .line 66
    move v12, v2

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 v12, 0x0

    .line 69
    :goto_1
    const/4 v13, 0x4

    .line 70
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 71
    .line 72
    .line 73
    move-result v14

    .line 74
    if-eqz v14, :cond_6

    .line 75
    .line 76
    move-object/from16 v15, p0

    .line 77
    .line 78
    iget-object v13, v15, Landroidx/loader/content/AsyncTaskLoader;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    if-eq v14, v2, :cond_5

    .line 81
    .line 82
    if-eq v14, v6, :cond_4

    .line 83
    .line 84
    if-eq v14, v3, :cond_3

    .line 85
    .line 86
    const/4 v2, 0x4

    .line 87
    if-eq v14, v2, :cond_2

    .line 88
    .line 89
    const/4 v6, 0x0

    .line 90
    goto :goto_3

    .line 91
    :cond_2
    const v2, 0x7f1201cb

    .line 92
    .line 93
    .line 94
    invoke-virtual {v13, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    :goto_2
    move-object v6, v2

    .line 99
    goto :goto_3

    .line 100
    :cond_3
    const v2, 0x7f1201cc

    .line 101
    .line 102
    .line 103
    invoke-virtual {v13, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    const v2, 0x7f1201cd

    .line 109
    .line 110
    .line 111
    invoke-virtual {v13, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    goto :goto_2

    .line 116
    :cond_5
    const v2, 0x7f1201ca

    .line 117
    .line 118
    .line 119
    invoke-virtual {v13, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    goto :goto_2

    .line 124
    :cond_6
    move-object/from16 v15, p0

    .line 125
    .line 126
    const/4 v2, 0x5

    .line 127
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    goto :goto_2

    .line 132
    :goto_3
    new-instance v3, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 133
    .line 134
    invoke-direct/range {v3 .. v12}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;Z)V

    .line 135
    .line 136
    .line 137
    iget-object v2, v3, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 138
    .line 139
    iget-object v2, v2, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 140
    .line 141
    if-eqz v2, :cond_9

    .line 142
    .line 143
    const/4 v2, 0x7

    .line 144
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-eqz v4, :cond_7

    .line 149
    .line 150
    const/4 v2, 0x0

    .line 151
    goto :goto_4

    .line 152
    :cond_7
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    :goto_4
    iput-object v2, v3, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->photoThumbnailUri:Landroid/net/Uri;

    .line 161
    .line 162
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-object/from16 v2, p2

    .line 166
    .line 167
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_8
    move-object/from16 v15, p0

    .line 173
    .line 174
    :cond_9
    move-object/from16 v2, p2

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :cond_a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public final loadInBackground()Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v3, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v4, ".provider.exported/autocrypt_status"

    .line 14
    .line 15
    const-string v5, "content://"

    .line 16
    .line 17
    iget-object v6, v1, Lcom/fsck/k9/activity/compose/RecipientLoader;->cryptoProvider:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v7, v1, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    iget-object v0, v1, Lcom/fsck/k9/activity/compose/RecipientLoader;->addresses:[Lcom/fsck/k9/mail/Address;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    array-length v10, v0

    .line 27
    move v11, v9

    .line 28
    :goto_0
    if-ge v11, v10, :cond_11

    .line 29
    .line 30
    aget-object v12, v0, v11

    .line 31
    .line 32
    iget-object v13, v12, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v13}, Lokhttp3/Cookie$Companion;->isASCII(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v13

    .line 38
    if-eqz v13, :cond_0

    .line 39
    .line 40
    new-instance v13, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 41
    .line 42
    invoke-direct {v13, v12}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;-><init>(Lcom/fsck/k9/mail/Address;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object v12, v12, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v3, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_0
    add-int/lit8 v11, v11, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    sget-object v14, Lcom/fsck/k9/activity/compose/RecipientLoader;->PROJECTION:[Ljava/lang/String;

    .line 57
    .line 58
    iget-object v13, v1, Lcom/fsck/k9/activity/compose/RecipientLoader;->contactUri:Landroid/net/Uri;

    .line 59
    .line 60
    if-eqz v13, :cond_3

    .line 61
    .line 62
    const/16 v16, 0x0

    .line 63
    .line 64
    const/16 v17, 0x0

    .line 65
    .line 66
    iget-object v12, v1, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    .line 67
    .line 68
    const/4 v15, 0x0

    .line 69
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    goto/16 :goto_8

    .line 76
    .line 77
    :cond_2
    invoke-virtual {v1, v0, v2, v3}, Lcom/fsck/k9/activity/compose/RecipientLoader;->fillContactDataFromCursor(Landroid/database/Cursor;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_8

    .line 81
    .line 82
    :cond_3
    const-string v0, "android.permission.READ_CONTACTS"

    .line 83
    .line 84
    iget-object v10, v1, Landroidx/loader/content/AsyncTaskLoader;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    iget-object v11, v1, Lcom/fsck/k9/activity/compose/RecipientLoader;->query:Ljava/lang/String;

    .line 87
    .line 88
    const/16 v18, 0x0

    .line 89
    .line 90
    if-eqz v11, :cond_e

    .line 91
    .line 92
    sget-object v13, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    .line 93
    .line 94
    const-string v12, "%"

    .line 95
    .line 96
    invoke-static {v12, v11, v12}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v15

    .line 100
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 101
    .line 102
    invoke-static {v10, v0}, Landroidx/tracing/TraceApi29Impl;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v16

    .line 106
    if-nez v16, :cond_4

    .line 107
    .line 108
    const-string/jumbo v8, "vnd.android.cursor.item/nickname"

    .line 109
    .line 110
    .line 111
    filled-new-array {v15, v8}, [Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v23

    .line 115
    const/16 v24, 0x0

    .line 116
    .line 117
    iget-object v8, v1, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    .line 118
    .line 119
    sget-object v21, Lcom/fsck/k9/activity/compose/RecipientLoader;->PROJECTION_NICKNAME:[Ljava/lang/String;

    .line 120
    .line 121
    const-string v22, "data1 LIKE ? AND mimetype = ?"

    .line 122
    .line 123
    move-object/from16 v19, v8

    .line 124
    .line 125
    invoke-virtual/range {v19 .. v24}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    goto :goto_1

    .line 130
    :cond_4
    new-instance v8, Lapp/k9mail/core/android/common/database/EmptyCursor;

    .line 131
    .line 132
    invoke-direct {v8}, Landroid/database/AbstractCursor;-><init>()V

    .line 133
    .line 134
    .line 135
    :goto_1
    if-nez v8, :cond_5

    .line 136
    .line 137
    move v8, v9

    .line 138
    move-object v9, v12

    .line 139
    goto :goto_3

    .line 140
    :cond_5
    move v15, v9

    .line 141
    :goto_2
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 142
    .line 143
    .line 144
    move-result v16

    .line 145
    if-eqz v16, :cond_6

    .line 146
    .line 147
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v15

    .line 151
    move-object/from16 v16, v15

    .line 152
    .line 153
    const-string v15, "contact_id = ?"

    .line 154
    .line 155
    move-object/from16 v17, v12

    .line 156
    .line 157
    iget-object v12, v1, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    .line 158
    .line 159
    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v16

    .line 163
    move-object/from16 v19, v17

    .line 164
    .line 165
    const-string v17, "times_contacted DESC, sort_key,is_super_primary DESC, is_primary DESC, _id"

    .line 166
    .line 167
    move-object/from16 v9, v19

    .line 168
    .line 169
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 170
    .line 171
    .line 172
    move-result-object v12

    .line 173
    invoke-virtual {v1, v12, v2, v3}, Lcom/fsck/k9/activity/compose/RecipientLoader;->fillContactDataFromCursor(Landroid/database/Cursor;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .line 175
    .line 176
    move-object v12, v9

    .line 177
    const/4 v9, 0x0

    .line 178
    const/4 v15, 0x1

    .line 179
    goto :goto_2

    .line 180
    :catchall_0
    move-exception v0

    .line 181
    goto/16 :goto_7

    .line 182
    .line 183
    :cond_6
    move-object v9, v12

    .line 184
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 185
    .line 186
    .line 187
    move v8, v15

    .line 188
    :goto_3
    invoke-static {v9, v11, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    sget-object v13, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    .line 193
    .line 194
    filled-new-array {v12, v12}, [Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v16

    .line 198
    invoke-static {v10, v0}, Landroidx/tracing/TraceApi29Impl;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-nez v0, :cond_7

    .line 203
    .line 204
    iget-object v12, v1, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    .line 205
    .line 206
    const-string v17, "times_contacted DESC, sort_key,is_super_primary DESC, is_primary DESC, _id"

    .line 207
    .line 208
    const-string v15, "display_name LIKE ?  OR (data1 LIKE ? AND mimetype = \'vnd.android.cursor.item/email_v2\')"

    .line 209
    .line 210
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 211
    .line 212
    .line 213
    move-result-object v18

    .line 214
    :cond_7
    move-object/from16 v0, v18

    .line 215
    .line 216
    if-nez v0, :cond_8

    .line 217
    .line 218
    const/4 v0, 0x0

    .line 219
    goto :goto_4

    .line 220
    :cond_8
    invoke-virtual {v1, v0, v2, v3}, Lcom/fsck/k9/activity/compose/RecipientLoader;->fillContactDataFromCursor(Landroid/database/Cursor;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 221
    .line 222
    .line 223
    const/4 v0, 0x1

    .line 224
    :goto_4
    or-int/2addr v0, v8

    .line 225
    if-eqz v0, :cond_9

    .line 226
    .line 227
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientLoader;->RECIPIENT_COMPARATOR:Landroidx/viewpager/widget/ViewPager$1;

    .line 228
    .line 229
    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, v1, Lcom/fsck/k9/activity/compose/RecipientLoader;->observerContact:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 233
    .line 234
    if-eqz v0, :cond_9

    .line 235
    .line 236
    new-instance v0, Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 237
    .line 238
    invoke-direct {v0, v1}, Landroidx/loader/content/Loader$ForceLoadContentObserver;-><init>(Lcom/fsck/k9/activity/compose/RecipientLoader;)V

    .line 239
    .line 240
    .line 241
    iput-object v0, v1, Lcom/fsck/k9/activity/compose/RecipientLoader;->observerContact:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 242
    .line 243
    const/4 v8, 0x0

    .line 244
    invoke-virtual {v7, v13, v8, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 245
    .line 246
    .line 247
    :cond_9
    if-eqz v6, :cond_11

    .line 248
    .line 249
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 265
    .line 266
    .line 267
    move-result-object v13

    .line 268
    iget-object v12, v1, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    .line 269
    .line 270
    sget-object v14, Lcom/fsck/k9/activity/compose/RecipientLoader;->PROJECTION_CRYPTO_ADDRESSES:[Ljava/lang/String;

    .line 271
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    filled-new-array {v0}, [Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v16

    .line 291
    const/16 v17, 0x0

    .line 292
    .line 293
    const/4 v15, 0x0

    .line 294
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 295
    .line 296
    .line 297
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    if-nez v0, :cond_a

    .line 299
    .line 300
    goto/16 :goto_8

    .line 301
    .line 302
    :cond_a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 303
    .line 304
    .line 305
    move-result v8

    .line 306
    if-eqz v8, :cond_d

    .line 307
    .line 308
    const/4 v8, 0x1

    .line 309
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v9

    .line 313
    sget-object v8, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 314
    .line 315
    invoke-static {v9}, Lcom/fsck/k9/mail/K9MailLib;->parseUnencoded(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 316
    .line 317
    .line 318
    move-result-object v8

    .line 319
    array-length v9, v8

    .line 320
    const/4 v10, 0x0

    .line 321
    :goto_5
    if-ge v10, v9, :cond_a

    .line 322
    .line 323
    aget-object v11, v8, v10

    .line 324
    .line 325
    iget-object v12, v11, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 326
    .line 327
    invoke-static {v12}, Lokhttp3/Cookie$Companion;->isASCII(Ljava/lang/String;)Z

    .line 328
    .line 329
    .line 330
    move-result v13

    .line 331
    if-eqz v13, :cond_c

    .line 332
    .line 333
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v13

    .line 337
    if-eqz v13, :cond_b

    .line 338
    .line 339
    goto :goto_6

    .line 340
    :cond_b
    new-instance v13, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 341
    .line 342
    invoke-direct {v13, v11}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;-><init>(Lcom/fsck/k9/mail/Address;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    invoke-virtual {v3, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    :cond_c
    :goto_6
    add-int/lit8 v10, v10, 0x1

    .line 352
    .line 353
    goto :goto_5

    .line 354
    :cond_d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 355
    .line 356
    .line 357
    goto :goto_8

    .line 358
    :catch_0
    move-exception v0

    .line 359
    const-string v8, "Couldn\'t obtain recipients from crypto provider!"

    .line 360
    .line 361
    const/4 v9, 0x0

    .line 362
    new-array v10, v9, [Ljava/lang/Object;

    .line 363
    .line 364
    invoke-static {v0, v8, v10}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    goto :goto_8

    .line 368
    :goto_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 369
    .line 370
    .line 371
    throw v0

    .line 372
    :cond_e
    iget-object v8, v1, Lcom/fsck/k9/activity/compose/RecipientLoader;->lookupKeyUri:Landroid/net/Uri;

    .line 373
    .line 374
    if-eqz v8, :cond_1c

    .line 375
    .line 376
    invoke-static {v10, v0}, Landroidx/tracing/TraceApi29Impl;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    if-nez v0, :cond_11

    .line 381
    .line 382
    invoke-static {v7, v8}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    if-nez v0, :cond_f

    .line 387
    .line 388
    goto :goto_8

    .line 389
    :cond_f
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    sget-object v13, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    .line 394
    .line 395
    filled-new-array {v0}, [Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v16

    .line 399
    const/16 v17, 0x0

    .line 400
    .line 401
    iget-object v12, v1, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    .line 402
    .line 403
    const-string v15, "contact_id=?"

    .line 404
    .line 405
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    if-nez v0, :cond_10

    .line 410
    .line 411
    goto :goto_8

    .line 412
    :cond_10
    invoke-virtual {v1, v0, v2, v3}, Lcom/fsck/k9/activity/compose/RecipientLoader;->fillContactDataFromCursor(Landroid/database/Cursor;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 413
    .line 414
    .line 415
    :cond_11
    :goto_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    if-eqz v0, :cond_12

    .line 420
    .line 421
    goto/16 :goto_d

    .line 422
    .line 423
    :cond_12
    if-eqz v6, :cond_1b

    .line 424
    .line 425
    new-instance v0, Ljava/util/ArrayList;

    .line 426
    .line 427
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 428
    .line 429
    .line 430
    move-result-object v8

    .line 431
    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 435
    .line 436
    .line 437
    move-result v8

    .line 438
    new-array v8, v8, [Ljava/lang/String;

    .line 439
    .line 440
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    move-object v12, v0

    .line 445
    check-cast v12, [Ljava/lang/String;

    .line 446
    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 463
    .line 464
    .line 465
    move-result-object v9

    .line 466
    :try_start_2
    iget-object v8, v1, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    .line 467
    .line 468
    sget-object v10, Lcom/fsck/k9/activity/compose/RecipientLoader;->PROJECTION_CRYPTO_STATUS:[Ljava/lang/String;

    .line 469
    .line 470
    const/4 v11, 0x0

    .line 471
    const/4 v13, 0x0

    .line 472
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 473
    .line 474
    .line 475
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 476
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 477
    .line 478
    .line 479
    move-result-object v4

    .line 480
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 485
    .line 486
    .line 487
    move-result v5

    .line 488
    const/4 v6, 0x2

    .line 489
    if-eqz v5, :cond_13

    .line 490
    .line 491
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    check-cast v5, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 496
    .line 497
    iput v6, v5, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->cryptoStatus:I

    .line 498
    .line 499
    goto :goto_9

    .line 500
    :cond_13
    if-nez v0, :cond_14

    .line 501
    .line 502
    goto :goto_d

    .line 503
    :cond_14
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 504
    .line 505
    .line 506
    move-result v4

    .line 507
    if-eqz v4, :cond_1a

    .line 508
    .line 509
    const/4 v8, 0x0

    .line 510
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v4

    .line 514
    const/4 v8, 0x1

    .line 515
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 516
    .line 517
    .line 518
    move-result v5

    .line 519
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 520
    .line 521
    .line 522
    move-result v8

    .line 523
    if-le v5, v8, :cond_15

    .line 524
    .line 525
    goto :goto_a

    .line 526
    :cond_15
    move v5, v8

    .line 527
    :goto_a
    sget-object v8, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 528
    .line 529
    invoke-static {v4}, Lcom/fsck/k9/mail/K9MailLib;->parseUnencoded(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    array-length v8, v4

    .line 534
    const/4 v10, 0x0

    .line 535
    :goto_b
    if-ge v10, v8, :cond_14

    .line 536
    .line 537
    aget-object v11, v4, v10

    .line 538
    .line 539
    iget-object v11, v11, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 540
    .line 541
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result v12

    .line 545
    if-eqz v12, :cond_18

    .line 546
    .line 547
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v11

    .line 551
    check-cast v11, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 552
    .line 553
    const/4 v12, 0x1

    .line 554
    if-eq v5, v12, :cond_17

    .line 555
    .line 556
    if-eq v5, v6, :cond_16

    .line 557
    .line 558
    goto :goto_c

    .line 559
    :cond_16
    iget v13, v11, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->cryptoStatus:I

    .line 560
    .line 561
    const/4 v14, 0x4

    .line 562
    if-eq v13, v14, :cond_19

    .line 563
    .line 564
    iput v14, v11, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->cryptoStatus:I

    .line 565
    .line 566
    goto :goto_c

    .line 567
    :cond_17
    iget v13, v11, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->cryptoStatus:I

    .line 568
    .line 569
    if-ne v13, v6, :cond_19

    .line 570
    .line 571
    const/4 v13, 0x3

    .line 572
    iput v13, v11, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->cryptoStatus:I

    .line 573
    .line 574
    goto :goto_c

    .line 575
    :cond_18
    const/4 v12, 0x1

    .line 576
    :cond_19
    :goto_c
    add-int/lit8 v10, v10, 0x1

    .line 577
    .line 578
    goto :goto_b

    .line 579
    :cond_1a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 580
    .line 581
    .line 582
    iget-object v0, v1, Lcom/fsck/k9/activity/compose/RecipientLoader;->observerKey:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 583
    .line 584
    if-eqz v0, :cond_1b

    .line 585
    .line 586
    new-instance v0, Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 587
    .line 588
    invoke-direct {v0, v1}, Landroidx/loader/content/Loader$ForceLoadContentObserver;-><init>(Lcom/fsck/k9/activity/compose/RecipientLoader;)V

    .line 589
    .line 590
    .line 591
    iput-object v0, v1, Lcom/fsck/k9/activity/compose/RecipientLoader;->observerKey:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 592
    .line 593
    const/4 v8, 0x0

    .line 594
    invoke-virtual {v7, v9, v8, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 595
    .line 596
    .line 597
    :catch_1
    :cond_1b
    :goto_d
    return-object v2

    .line 598
    :cond_1c
    const-string v0, "loader must be initialized with query or list of addresses!"

    .line 599
    .line 600
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    return-object v18
.end method

.method public final onAbandon()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->observerKey:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->contentResolver:Landroid/content/ContentResolver;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->observerContact:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final onStartLoading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->cachedRecipients:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, v0}, Landroidx/loader/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->takeContentChanged()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientLoader;->cachedRecipients:Ljava/util/List;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return-void

    .line 21
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->forceLoad()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
