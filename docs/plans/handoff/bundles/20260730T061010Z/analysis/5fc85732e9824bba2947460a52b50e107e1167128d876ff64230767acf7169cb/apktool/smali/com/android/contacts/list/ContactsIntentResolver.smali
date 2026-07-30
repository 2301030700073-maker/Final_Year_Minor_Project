.class public Lcom/android/contacts/list/ContactsIntentResolver;
.super Ljava/lang/Object;
.source "ContactsIntentResolver.java"


# instance fields
.field private final mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;
    .locals 12

    .line 56
    new-instance v0, Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactsRequest;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called with action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContactsIntentResolver"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.android.contacts.action.LIST_DEFAULT"

    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xa

    .line 63
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_1

    :cond_0
    const-string v2, "com.android.contacts.action.LIST_ALL_CONTACTS"

    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0xf

    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_1

    :cond_1
    const-string v2, "com.android.contacts.action.LIST_CONTACTS_WITH_PHONES"

    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x11

    .line 67
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_1

    :cond_2
    const-string v2, "com.android.contacts.action.LIST_STARRED"

    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, 0x1e

    .line 69
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_1

    :cond_3
    const-string v2, "com.android.contacts.action.LIST_FREQUENT"

    .line 70
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v1, 0x28

    .line 71
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_1

    :cond_4
    const-string v2, "com.android.contacts.action.LIST_STREQUENT"

    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v1, 0x32

    .line 73
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_1

    :cond_5
    const-string v2, "com.android.contacts.action.LIST_GROUP"

    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v1, 0x14

    .line 75
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_1

    :cond_6
    const-string v2, "com.android.contacts.action.ACTION_SELECT_ITEMS"

    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "vnd.android.cursor.dir/email_v2"

    const-string v5, "vnd.android.cursor.dir/phone_v2"

    if-eqz v2, :cond_8

    .line 78
    iget-object v1, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v1, 0x6b

    .line 80
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_1

    .line 81
    :cond_7
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v1, 0x6a

    .line 82
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_1

    :cond_8
    const-string v2, "android.intent.action.PICK"

    .line 84
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "vnd.android.cursor.dir/group"

    const-string v7, "vnd.android.cursor.dir/person"

    const-string v8, "vnd.android.cursor.dir/contact"

    const/16 v9, 0x64

    const/16 v10, 0x5a

    const/4 v11, 0x1

    if-eqz v2, :cond_10

    .line 85
    iget-object v1, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x3c

    if-eqz v2, :cond_9

    .line 87
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_1

    .line 88
    :cond_9
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 89
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 90
    invoke-virtual {v0, v11}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_1

    .line 91
    :cond_a
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 92
    invoke-virtual {v0, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_1

    :cond_b
    const-string v2, "vnd.android.cursor.dir/phone"

    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 94
    invoke-virtual {v0, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 95
    invoke-virtual {v0, v11}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_1

    :cond_c
    const-string v2, "vnd.android.cursor.dir/postal-address_v2"

    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 97
    invoke-virtual {v0, v9}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_1

    :cond_d
    const-string v2, "vnd.android.cursor.dir/postal-address"

    .line 98
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 99
    invoke-virtual {v0, v9}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 100
    invoke-virtual {v0, v11}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_1

    .line 101
    :cond_e
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v1, 0x69

    .line 102
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_1

    .line 103
    :cond_f
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v1, 0x15

    .line 104
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 105
    new-instance v1, Lcom/android/contacts/model/account/AccountWithDataSet;

    const-string v2, "com.android.contacts.extra.GROUP_ACCOUNT_NAME"

    .line 106
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.contacts.extra.GROUP_ACCOUNT_TYPE"

    .line 107
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.contacts.extra.GROUP_ACCOUNT_DATA_SET"

    .line 108
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setAccountWithDataSet(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    const-string v1, "com.android.contacts.extra.GROUP_CONTACT_IDS"

    .line 109
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setRawContactIds(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_10
    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 113
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alias.DialShortcut"

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/16 v1, 0x78

    .line 115
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_1

    :cond_11
    const-string v2, "alias.MessageShortcut"

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x82

    .line 117
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_1

    :cond_12
    const/16 v1, 0x6e

    .line 119
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_1

    :cond_13
    const-string v2, "android.intent.action.GET_CONTENT"

    .line 121
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 122
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vnd.android.cursor.item/contact"

    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x46

    if-eqz v2, :cond_14

    .line 124
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_1

    :cond_14
    const-string v2, "vnd.android.cursor.item/phone_v2"

    .line 125
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 126
    invoke-virtual {v0, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_1

    :cond_15
    const-string v2, "vnd.android.cursor.item/phone"

    .line 127
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 128
    invoke-virtual {v0, v10}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 129
    invoke-virtual {v0, v11}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_1

    :cond_16
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    .line 130
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 131
    invoke-virtual {v0, v9}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_1

    :cond_17
    const-string v2, "vnd.android.cursor.item/postal-address"

    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 133
    invoke-virtual {v0, v9}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 134
    invoke-virtual {v0, v11}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_1

    :cond_18
    const-string v2, "vnd.android.cursor.item/person"

    .line 135
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 136
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 137
    invoke-virtual {v0, v11}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_1

    :cond_19
    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    .line 139
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/16 v1, 0x50

    .line 140
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_1

    :cond_1a
    const-string v2, "android.intent.action.INSERT"

    .line 141
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 142
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/16 v1, 0x16

    .line 143
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_1

    :cond_1b
    const-string v2, "android.intent.action.SEARCH"

    .line 144
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v1, "query"

    .line 145
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v1, "phone"

    .line 149
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    :cond_1c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v1, "email"

    .line 152
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    :cond_1d
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, v11}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_1

    :cond_1e
    const-string v2, "android.intent.action.VIEW"

    .line 156
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8c

    if-eqz v4, :cond_22

    .line 157
    iget-object v1, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 159
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_0

    .line 161
    :cond_1f
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/group/GroupUtil;->isGroupUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 162
    invoke-virtual {v0, v6}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 163
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    .line 164
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    :cond_20
    const/16 v1, 0x17

    .line 167
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 168
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 160
    :cond_21
    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_1

    :cond_22
    const-string v3, "android.intent.action.EDIT"

    .line 170
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 171
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/group/GroupUtil;->isGroupUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v1, 0x18

    .line 172
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 173
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    goto :goto_1

    :cond_23
    const-string v3, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    .line 178
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 179
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 180
    invoke-virtual {v0, v6}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 181
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    .line 182
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    :cond_24
    const-string v2, "com.android.contacts.action.JOIN_CONTACT"

    .line 184
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v1, 0x96

    .line 185
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    :cond_25
    :goto_1
    const-string v1, "com.android.contacts.extra.TITLE_EXTRA"

    .line 188
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 190
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactsRequest;->setActivityTitle(Ljava/lang/CharSequence;)V

    :cond_26
    return-object v0
.end method
