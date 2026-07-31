.class public final Lcom/fsck/k9/mail/store/imap/RealImapFolder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final RFC3501_DATE:Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;


# instance fields
.field public canCreateKeywords:Z

.field public connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

.field public final connectionManager:Lcom/fsck/k9/mail/store/imap/RealImapStore;

.field public exists:Z

.field public final folderNameCodec:Lcom/fsck/k9/mailstore/LocalFolder$12;

.field public inSearch:Z

.field public final internalImapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

.field public messageCount:I

.field public mode:Lcom/fsck/k9/mail/store/imap/OpenMode;

.field public final serverId:Ljava/lang/String;

.field public uidNext:J

.field public uidValidity:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->RFC3501_DATE:Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mail/store/imap/RealImapStore;Lcom/fsck/k9/mail/store/imap/RealImapStore;Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalFolder$12;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->internalImapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connectionManager:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->serverId:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p4, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->folderNameCodec:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 17
    .line 18
    const-wide/16 p1, -0x1

    .line 19
    .line 20
    iput-wide p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->uidNext:J

    .line 21
    .line 22
    const/4 p1, -0x1

    .line 23
    iput p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->messageCount:I

    .line 24
    .line 25
    return-void
.end method

.method public static getDateSearchString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->RFC3501_DATE:Lkotlin/random/FallbackThreadLocalRandom$implStorage$1;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, " SINCE "

    .line 22
    .line 23
    invoke-static {v0, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static getMessages(Lokhttp3/Headers$Builder;)Ljava/util/ArrayList;
    .locals 3

    .line 109
    iget-object p0, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 110
    sget-object v0, Lkotlin/comparisons/NaturalOrderComparator;->INSTANCE$1:Lkotlin/comparisons/NaturalOrderComparator;

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 113
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 114
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 115
    new-instance v2, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    invoke-direct {v2, v1}, Lcom/fsck/k9/mail/store/imap/ImapMessage;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static handleSelectOrExamineOkResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isTagged()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "OK"

    .line 14
    .line 15
    invoke-static {v2, v3}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 v2, 0x1

    .line 23
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/imap/ImapList;->isList(I)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/16 v4, 0x1c

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    new-instance p0, Landroidx/work/Configuration$Builder;

    .line 32
    .line 33
    invoke-direct {p0, v4, v1}, Landroidx/work/Configuration$Builder;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    move-object v1, p0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->isString(I)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    new-instance p0, Landroidx/work/Configuration$Builder;

    .line 51
    .line 52
    invoke-direct {p0, v4, v1}, Landroidx/work/Configuration$Builder;-><init>(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Ljava/lang/String;

    .line 61
    .line 62
    const-string v0, "READ-ONLY"

    .line 63
    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    new-instance v1, Landroidx/work/Configuration$Builder;

    .line 71
    .line 72
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-direct {v1, v4, p0}, Landroidx/work/Configuration$Builder;-><init>(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const-string v0, "READ-WRITE"

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_4

    .line 85
    .line 86
    new-instance v1, Landroidx/work/Configuration$Builder;

    .line 87
    .line 88
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-direct {v1, v4, p0}, Landroidx/work/Configuration$Builder;-><init>(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    new-instance p0, Landroidx/work/Configuration$Builder;

    .line 95
    .line 96
    invoke-direct {p0, v4, v1}, Landroidx/work/Configuration$Builder;-><init>(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    :goto_1
    if-nez v1, :cond_6

    .line 101
    .line 102
    return-void

    .line 103
    :cond_6
    iget-object p0, v1, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p0, Ljava/lang/Boolean;

    .line 106
    .line 107
    if-eqz p0, :cond_8

    .line 108
    .line 109
    if-eqz p0, :cond_7

    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_7
    const-string p0, "Called getOpenMode() despite hasOpenMode() returning false"

    .line 116
    .line 117
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_8
    return-void
.end method

.method public static parseBodyStructure(Lcom/fsck/k9/mail/store/imap/ImapList;Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    instance-of v4, v4, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    if-eqz v4, :cond_3

    .line 16
    .line 17
    sget-object v4, Lcom/fsck/k9/mail/BoundaryGenerator;->INSTANCE:Lcom/fsck/k9/mail/BoundaryGenerator;

    .line 18
    .line 19
    invoke-virtual {v4}, Lcom/fsck/k9/mail/BoundaryGenerator;->generateBoundary()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    new-instance v6, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 24
    .line 25
    invoke-direct {v6, v4}, Lcom/fsck/k9/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    move v7, v3

    .line 33
    :goto_0
    if-ge v7, v4, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0, v7}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    instance-of v8, v8, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 40
    .line 41
    if-eqz v8, :cond_1

    .line 42
    .line 43
    new-instance v8, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 44
    .line 45
    invoke-direct {v8, v3}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(I)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v9, v7, 0x1

    .line 49
    .line 50
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    const-string v11, "TEXT"

    .line 55
    .line 56
    invoke-static {v2, v11, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    if-eqz v11, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0, v7}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 67
    .line 68
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {v7, v8, v10}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->parseBodyStructure(Lcom/fsck/k9/mail/store/imap/ImapList;Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_0
    invoke-virtual {v0, v7}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    check-cast v7, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 80
    .line 81
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    new-instance v11, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v12, "."

    .line 93
    .line 94
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    invoke-static {v7, v8, v10}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->parseBodyStructure(Lcom/fsck/k9/mail/store/imap/ImapList;Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-virtual {v6, v8}, Lcom/fsck/k9/mail/Multipart;->addBodyPart(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 108
    .line 109
    .line 110
    move v7, v9

    .line 111
    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v0, v7}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, v0}, Lcom/fsck/k9/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_2
    invoke-static {v1, v6}, Lcom/fsck/k9/mail/internet/JisSupport;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    check-cast v4, Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v0, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    check-cast v6, Ljava/lang/String;

    .line 148
    .line 149
    const-string v7, "/"

    .line 150
    .line 151
    invoke-static {v4, v7, v6}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 156
    .line 157
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    const/4 v7, 0x2

    .line 165
    invoke-virtual {v0, v7}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    instance-of v8, v8, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 170
    .line 171
    if-eqz v8, :cond_4

    .line 172
    .line 173
    invoke-virtual {v0, v7}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    check-cast v8, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_4
    const/4 v8, 0x0

    .line 181
    :goto_2
    const/4 v10, 0x5

    .line 182
    invoke-virtual {v0, v10}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    check-cast v10, Ljava/lang/String;

    .line 187
    .line 188
    const/4 v11, 0x6

    .line 189
    invoke-virtual {v0, v11}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v11

    .line 193
    check-cast v11, Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v11

    .line 199
    const-string v12, "message/rfc822"

    .line 200
    .line 201
    invoke-static {v6, v12}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v12

    .line 205
    if-nez v12, :cond_f

    .line 206
    .line 207
    invoke-static {v6}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    const-string v12, ";\r\n %s=%s"

    .line 212
    .line 213
    if-eqz v8, :cond_6

    .line 214
    .line 215
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 216
    .line 217
    .line 218
    move-result v13

    .line 219
    add-int/lit8 v13, v13, -0x1

    .line 220
    .line 221
    invoke-static {v3, v13, v7}, Lokio/Options$Companion;->getProgressionLastElement(III)I

    .line 222
    .line 223
    .line 224
    move-result v13

    .line 225
    if-ltz v13, :cond_6

    .line 226
    .line 227
    move v14, v3

    .line 228
    :goto_3
    invoke-virtual {v8, v14}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v15

    .line 232
    check-cast v15, Ljava/lang/String;

    .line 233
    .line 234
    add-int/lit8 v9, v14, 0x1

    .line 235
    .line 236
    invoke-virtual {v8, v9}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v9

    .line 240
    check-cast v9, Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-static {v9}, Lcom/fsck/k9/mail/internet/JisSupport;->isToken(Ljava/lang/String;)Z

    .line 246
    .line 247
    .line 248
    move-result v16

    .line 249
    if-eqz v16, :cond_5

    .line 250
    .line 251
    :goto_4
    move/from16 v16, v5

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_5
    invoke-static {v9}, Lcom/fsck/k9/mail/internet/JisSupport;->quotedUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v9

    .line 258
    goto :goto_4

    .line 259
    :goto_5
    new-array v5, v7, [Ljava/lang/Object;

    .line 260
    .line 261
    aput-object v15, v5, v3

    .line 262
    .line 263
    aput-object v9, v5, v16

    .line 264
    .line 265
    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    invoke-static {v12, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    if-eq v14, v13, :cond_7

    .line 277
    .line 278
    add-int/lit8 v14, v14, 0x2

    .line 279
    .line 280
    move/from16 v5, v16

    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_6
    move/from16 v16, v5

    .line 284
    .line 285
    :cond_7
    const-string v5, "Content-Type"

    .line 286
    .line 287
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    invoke-interface {v1, v5, v6}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    const-string v5, "text"

    .line 295
    .line 296
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    if-eqz v6, :cond_8

    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 303
    .line 304
    .line 305
    move-result v6

    .line 306
    const/16 v8, 0x9

    .line 307
    .line 308
    if-le v6, v8, :cond_8

    .line 309
    .line 310
    invoke-virtual {v0, v8}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    instance-of v6, v6, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 315
    .line 316
    if-eqz v6, :cond_8

    .line 317
    .line 318
    invoke-virtual {v0, v8}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    move-object v9, v0

    .line 323
    check-cast v9, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 324
    .line 325
    goto :goto_6

    .line 326
    :cond_8
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    if-nez v4, :cond_9

    .line 331
    .line 332
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    const/16 v5, 0x8

    .line 337
    .line 338
    if-le v4, v5, :cond_9

    .line 339
    .line 340
    invoke-virtual {v0, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    instance-of v4, v4, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 345
    .line 346
    if-eqz v4, :cond_9

    .line 347
    .line 348
    invoke-virtual {v0, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    move-object v9, v0

    .line 353
    check-cast v9, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 354
    .line 355
    goto :goto_6

    .line 356
    :cond_9
    const/4 v9, 0x0

    .line 357
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .line 361
    .line 362
    if-eqz v9, :cond_c

    .line 363
    .line 364
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    if-nez v4, :cond_c

    .line 369
    .line 370
    invoke-virtual {v9, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    check-cast v4, Ljava/lang/String;

    .line 375
    .line 376
    const-string v5, "NIL"

    .line 377
    .line 378
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    if-nez v4, :cond_a

    .line 383
    .line 384
    invoke-virtual {v9, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    check-cast v4, Ljava/lang/String;

    .line 389
    .line 390
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 394
    .line 395
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    :cond_a
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    .line 406
    .line 407
    .line 408
    move-result v4

    .line 409
    move/from16 v5, v16

    .line 410
    .line 411
    if-le v4, v5, :cond_c

    .line 412
    .line 413
    invoke-virtual {v9, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    instance-of v4, v4, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 418
    .line 419
    if-eqz v4, :cond_c

    .line 420
    .line 421
    invoke-virtual {v9, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v4

    .line 425
    check-cast v4, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 426
    .line 427
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 428
    .line 429
    .line 430
    move-result v5

    .line 431
    add-int/lit8 v5, v5, -0x1

    .line 432
    .line 433
    invoke-static {v3, v5, v7}, Lokio/Options$Companion;->getProgressionLastElement(III)I

    .line 434
    .line 435
    .line 436
    move-result v5

    .line 437
    if-ltz v5, :cond_c

    .line 438
    .line 439
    move v6, v3

    .line 440
    :goto_7
    invoke-virtual {v4, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v8

    .line 444
    check-cast v8, Ljava/lang/String;

    .line 445
    .line 446
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    .line 448
    .line 449
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 450
    .line 451
    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v8

    .line 455
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    .line 457
    .line 458
    add-int/lit8 v9, v6, 0x1

    .line 459
    .line 460
    invoke-virtual {v4, v9}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v9

    .line 464
    check-cast v9, Ljava/lang/String;

    .line 465
    .line 466
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    invoke-static {v9}, Lcom/fsck/k9/mail/internet/JisSupport;->isToken(Ljava/lang/String;)Z

    .line 470
    .line 471
    .line 472
    move-result v13

    .line 473
    if-eqz v13, :cond_b

    .line 474
    .line 475
    goto :goto_8

    .line 476
    :cond_b
    invoke-static {v9}, Lcom/fsck/k9/mail/internet/JisSupport;->quotedUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v9

    .line 480
    :goto_8
    new-array v13, v7, [Ljava/lang/Object;

    .line 481
    .line 482
    aput-object v8, v13, v3

    .line 483
    .line 484
    const/16 v16, 0x1

    .line 485
    .line 486
    aput-object v9, v13, v16

    .line 487
    .line 488
    invoke-static {v13, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v8

    .line 492
    invoke-static {v12, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v8

    .line 496
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    if-eq v6, v5, :cond_c

    .line 500
    .line 501
    add-int/lit8 v6, v6, 0x2

    .line 502
    .line 503
    goto :goto_7

    .line 504
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v4

    .line 508
    const-string v5, "size"

    .line 509
    .line 510
    invoke-static {v4, v5}, Lcom/fsck/k9/mail/internet/JisSupport;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v4

    .line 514
    if-nez v4, :cond_d

    .line 515
    .line 516
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 517
    .line 518
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 519
    .line 520
    .line 521
    move-result-object v5

    .line 522
    const/4 v6, 0x1

    .line 523
    new-array v7, v6, [Ljava/lang/Object;

    .line 524
    .line 525
    aput-object v5, v7, v3

    .line 526
    .line 527
    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v3

    .line 531
    const-string v5, ";\r\n size=%d"

    .line 532
    .line 533
    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v3

    .line 537
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    :cond_d
    const-string v3, "Content-Disposition"

    .line 541
    .line 542
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-interface {v1, v3, v0}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    const-string v0, "Content-Transfer-Encoding"

    .line 550
    .line 551
    invoke-interface {v1, v0, v10}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    instance-of v0, v1, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 555
    .line 556
    if-eqz v0, :cond_e

    .line 557
    .line 558
    move-object v0, v1

    .line 559
    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 560
    .line 561
    iput v11, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSize:I

    .line 562
    .line 563
    :cond_e
    invoke-interface/range {p1 .. p2}, Lcom/fsck/k9/mail/Part;->setServerExtra(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    return-void

    .line 567
    :cond_f
    new-instance v0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 568
    .line 569
    const-string v1, "BODYSTRUCTURE message/rfc822 not yet supported."

    .line 570
    .line 571
    invoke-direct {v0, v1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    throw v0
.end method


# virtual methods
.method public final appendMessages(Ljava/util/List;)Ljava/util/HashMap;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->checkOpenWithWriteAccess()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_a

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->calculateSize()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->folderNameCodec:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getPrefixedName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v5, v6}, Lcom/fsck/k9/mailstore/LocalFolder$12;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-static {v5}, Landroidx/room/util/RelationUtil;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    iget-boolean v6, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->canCreateKeywords:Z

    .line 45
    .line 46
    const/4 v7, 0x1

    .line 47
    const/4 v8, 0x0

    .line 48
    if-nez v6, :cond_2

    .line 49
    .line 50
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->internalImapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 51
    .line 52
    iget-object v6, v6, Lcom/fsck/k9/mail/store/imap/RealImapStore;->permanentFlagsIndex:Ljava/util/LinkedHashSet;

    .line 53
    .line 54
    sget-object v9, Lnet/thunderbird/core/common/mail/Flag;->FORWARDED:Lnet/thunderbird/core/common/mail/Flag;

    .line 55
    .line 56
    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move v6, v8

    .line 64
    goto :goto_2

    .line 65
    :catch_0
    move-exception p1

    .line 66
    goto/16 :goto_4

    .line 67
    .line 68
    :cond_2
    :goto_1
    move v6, v7

    .line 69
    :goto_2
    iget-object v9, v1, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 70
    .line 71
    invoke-static {v9}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    check-cast v9, Ljava/lang/Iterable;

    .line 79
    .line 80
    invoke-static {v9, v6}, Landroidx/room/util/RelationUtil;->combineFlags$tfa_mail_protocols_imap(Ljava/lang/Iterable;Z)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 85
    .line 86
    const-string v10, "APPEND %s (%s) {%d}"

    .line 87
    .line 88
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const/4 v4, 0x3

    .line 93
    new-array v11, v4, [Ljava/lang/Object;

    .line 94
    .line 95
    aput-object v5, v11, v8

    .line 96
    .line 97
    aput-object v6, v11, v7

    .line 98
    .line 99
    const/4 v5, 0x2

    .line 100
    aput-object v3, v11, v5

    .line 101
    .line 102
    invoke-static {v11, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-static {v9, v10, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 111
    .line 112
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v3, v8}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    :cond_3
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v2}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->readResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    .line 128
    .line 129
    .line 130
    iget-boolean v6, v3, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isContinuationRequested:Z

    .line 131
    .line 132
    if-eqz v6, :cond_5

    .line 133
    .line 134
    new-instance v6, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;

    .line 135
    .line 136
    iget-object v9, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 137
    .line 138
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    monitor-enter v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :try_start_1
    iget-object v10, v9, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->imapOutputStream:Ljava/io/BufferedOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .line 144
    if-eqz v10, :cond_4

    .line 145
    .line 146
    :try_start_2
    monitor-exit v9

    .line 147
    invoke-direct {v6, v10}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v1, v6}, Lcom/fsck/k9/mail/Part;->writeTo(Ljava/io/OutputStream;)V

    .line 151
    .line 152
    .line 153
    const/16 v9, 0xd

    .line 154
    .line 155
    invoke-virtual {v6, v9}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->write(I)V

    .line 156
    .line 157
    .line 158
    const/16 v9, 0xa

    .line 159
    .line 160
    invoke-virtual {v6, v9}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->write(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_4
    :try_start_3
    const-string p1, "Required value was null."

    .line 168
    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 170
    .line 171
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v0

    .line 175
    :catchall_0
    move-exception p1

    .line 176
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    :try_start_4
    throw p1

    .line 178
    :cond_5
    :goto_3
    iget-object v6, v3, Lcom/fsck/k9/mail/store/imap/ImapResponse;->tag:Ljava/lang/String;

    .line 179
    .line 180
    if-eqz v6, :cond_3

    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    if-lt v6, v7, :cond_9

    .line 187
    .line 188
    invoke-virtual {v3, v8}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    const-string v9, "OK"

    .line 193
    .line 194
    invoke-static {v6, v9}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    if-eqz v6, :cond_9

    .line 199
    .line 200
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    if-le v6, v7, :cond_6

    .line 205
    .line 206
    invoke-virtual {v3, v7}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    instance-of v6, v3, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 211
    .line 212
    if-eqz v6, :cond_6

    .line 213
    .line 214
    move-object v6, v3

    .line 215
    check-cast v6, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 216
    .line 217
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    if-lt v6, v4, :cond_6

    .line 222
    .line 223
    move-object v4, v3

    .line 224
    check-cast v4, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 225
    .line 226
    invoke-virtual {v4, v8}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    check-cast v4, Ljava/lang/String;

    .line 231
    .line 232
    const-string v6, "APPENDUID"

    .line 233
    .line 234
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-eqz v4, :cond_6

    .line 239
    .line 240
    check-cast v3, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 241
    .line 242
    invoke-virtual {v3, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    check-cast v3, Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    if-lez v4, :cond_6

    .line 256
    .line 257
    iget-object v2, v1, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->setUid(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_6
    const-string v3, "Message-ID"

    .line 268
    .line 269
    iget-object v4, v1, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 270
    .line 271
    invoke-virtual {v4, v3}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    invoke-static {v3}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    check-cast v3, Ljava/lang/String;

    .line 283
    .line 284
    if-eqz v3, :cond_7

    .line 285
    .line 286
    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getUidFromMessageId(Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    :cond_7
    sget-object v3, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 291
    .line 292
    invoke-interface {v3}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    if-eqz v3, :cond_8

    .line 297
    .line 298
    const-string v3, "Got UID %s for message for %s"

    .line 299
    .line 300
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getLogId()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    new-array v5, v5, [Ljava/lang/Object;

    .line 305
    .line 306
    aput-object v2, v5, v8

    .line 307
    .line 308
    aput-object v4, v5, v7

    .line 309
    .line 310
    invoke-static {v3, v5}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    :cond_8
    if-eqz v2, :cond_0

    .line 314
    .line 315
    iget-object v3, v1, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 316
    .line 317
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setUid(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    goto/16 :goto_0

    .line 324
    .line 325
    :cond_9
    new-instance p1, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;

    .line 326
    .line 327
    const-string v0, "APPEND failed"

    .line 328
    .line 329
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-direct {p1, v0, v1}, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 334
    .line 335
    .line 336
    throw p1

    .line 337
    :cond_a
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 338
    .line 339
    .line 340
    move-result p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 341
    if-eqz p0, :cond_b

    .line 342
    .line 343
    return-object v2

    .line 344
    :cond_b
    return-object v0

    .line 345
    :goto_4
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 346
    .line 347
    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/RealImapConnection;Ljava/io/IOException;)Lnet/thunderbird/core/common/exception/MessagingException;

    .line 348
    .line 349
    .line 350
    move-result-object p0

    .line 351
    throw p0
.end method

.method public final checkOpen()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "Folder \'"

    .line 7
    .line 8
    const-string v1, "\' is not open."

    .line 9
    .line 10
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->serverId:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final checkOpenWithWriteAccess()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->checkOpen()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->mode:Lcom/fsck/k9/mail/store/imap/OpenMode;

    .line 5
    .line 6
    sget-object v1, Lcom/fsck/k9/mail/store/imap/OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/store/imap/OpenMode;

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string v0, "Folder \'"

    .line 12
    .line 13
    const-string v1, "\' needs to be opened for read-write access."

    .line 14
    .line 15
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->serverId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final close()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->messageCount:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->inSearch:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "IMAP search was aborted, shutting down connection."

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->close()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connectionManager:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/RealImapConnection;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit p0

    .line 49
    throw v0

    .line 50
    :cond_1
    return-void
.end method

.method public final copyMessages(Ljava/util/ArrayList;Lcom/fsck/k9/mail/store/imap/RealImapFolder;)Ljava/util/Map;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->checkOpen()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->folderNameCodec:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getPrefixedName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {v0, p2}, Lcom/fsck/k9/mailstore/LocalFolder$12;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-static {p2}, Landroidx/room/util/RelationUtil;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    const-string v1, "UID COPY"

    .line 79
    .line 80
    invoke-virtual {v0, v1, p2, p1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->executeCommandWithIdSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const/4 p2, 0x0

    .line 85
    invoke-static {p1, p2}, Landroidx/appcompat/app/ActionBar;->parse(Ljava/util/ArrayList;Z)Landroidx/work/Data$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    iget-object p0, p1, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    return-object p0

    .line 94
    :catch_0
    move-exception p1

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 97
    return-object p0

    .line 98
    :goto_2
    iget-object p2, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 99
    .line 100
    invoke-virtual {p0, p2, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/RealImapConnection;Ljava/io/IOException;)Lnet/thunderbird/core/common/exception/MessagingException;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    throw p0
.end method

.method public final create()Z
    .locals 8

    .line 1
    sget-object v0, Lcom/fsck/k9/mail/FolderType;->ARCHIVE:Lcom/fsck/k9/mail/FolderType;

    .line 2
    .line 3
    const-string v1, "CREATE "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connectionManager:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getConnection()Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 13
    .line 14
    .line 15
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto/16 :goto_7

    .line 19
    .line 20
    :cond_0
    :goto_0
    monitor-exit p0

    .line 21
    const-string v3, "CREATE-SPECIAL-USE"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->hasCapability(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x1

    .line 28
    const/4 v5, 0x0

    .line 29
    :try_start_1
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->folderNameCodec:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getPrefixedName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {v6, v7}, Lcom/fsck/k9/mailstore/LocalFolder$12;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-static {v6}, Landroidx/room/util/RelationUtil;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const/4 v7, 0x0

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move-object v0, v7

    .line 48
    :goto_1
    if-eqz v0, :cond_2

    .line 49
    .line 50
    const-string v7, "(USE (\\Archive))"

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :catchall_1
    move-exception v0

    .line 54
    goto/16 :goto_6

    .line 55
    .line 56
    :catch_0
    move-exception v0

    .line 57
    goto :goto_4

    .line 58
    :catch_1
    move-exception v0

    .line 59
    goto :goto_5

    .line 60
    :cond_2
    :goto_2
    if-nez v7, :cond_3

    .line 61
    .line 62
    const-string v7, ""

    .line 63
    .line 64
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, " "

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v2, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_5

    .line 101
    .line 102
    :cond_4
    move v4, v5

    .line 103
    goto :goto_3

    .line 104
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_4

    .line 113
    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 119
    .line 120
    invoke-virtual {v1, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const-string v3, "OK"

    .line 125
    .line 126
    invoke-static {v1, v3}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v1
    :try_end_1
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    :goto_3
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 133
    .line 134
    if-nez v0, :cond_7

    .line 135
    .line 136
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connectionManager:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 137
    .line 138
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/RealImapConnection;)V

    .line 139
    .line 140
    .line 141
    :cond_7
    return v4

    .line 142
    :goto_4
    :try_start_2
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 143
    .line 144
    invoke-virtual {p0, v1, v0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/RealImapConnection;Ljava/io/IOException;)Lnet/thunderbird/core/common/exception/MessagingException;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    throw v0

    .line 149
    :goto_5
    const-string v1, "Unable to create folder %s for %s"

    .line 150
    .line 151
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->serverId:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getLogId()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    const/4 v7, 0x2

    .line 158
    new-array v7, v7, [Ljava/lang/Object;

    .line 159
    .line 160
    aput-object v3, v7, v5

    .line 161
    .line 162
    aput-object v6, v7, v4

    .line 163
    .line 164
    invoke-static {v0, v1, v7}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 168
    .line 169
    if-nez v0, :cond_8

    .line 170
    .line 171
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connectionManager:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 172
    .line 173
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/RealImapConnection;)V

    .line 174
    .line 175
    .line 176
    :cond_8
    return v5

    .line 177
    :goto_6
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 178
    .line 179
    if-nez v1, :cond_9

    .line 180
    .line 181
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connectionManager:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 182
    .line 183
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/RealImapConnection;)V

    .line 184
    .line 185
    .line 186
    :cond_9
    throw v0

    .line 187
    :goto_7
    monitor-exit p0

    .line 188
    throw v0
.end method

.method public final deleteMessages(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->checkOpenWithWriteAccess()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, p1, v0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->setFlags(Ljava/util/ArrayList;Ljava/util/Set;Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->internalImapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->config:Lcom/fsck/k9/mail/store/imap/ImapStoreConfig;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/fsck/k9/mail/store/imap/ImapStoreConfig;->isExpungeImmediately()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    const/16 v2, 0xa

    .line 27
    .line 28
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 50
    .line 51
    iget-object v2, v2, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->checkOpenWithWriteAccess()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->expungeUids(Ljava/util/ArrayList;Z)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/fsck/k9/mail/store/imap/RealImapFolder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/fsck/k9/mail/store/imap/RealImapFolder;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->serverId:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->serverId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    if-eq p0, p1, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public final executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-object p1
.end method

.method public final exists()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->exists:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connectionManager:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getConnection()Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_3

    .line 21
    :cond_1
    :goto_0
    monitor-exit p0

    .line 22
    const/4 v2, 0x0

    .line 23
    :try_start_1
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->folderNameCodec:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getPrefixedName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v3, v4}, Lcom/fsck/k9/mailstore/LocalFolder$12;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3}, Landroidx/room/util/RelationUtil;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "STATUS %s (UIDVALIDITY)"

    .line 38
    .line 39
    new-array v5, v1, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object v3, v5, v2

    .line 42
    .line 43
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v0, v3}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->exists:Z
    :try_end_1
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    .line 56
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 57
    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connectionManager:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/RealImapConnection;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_1
    return v1

    .line 66
    :catchall_1
    move-exception v1

    .line 67
    goto :goto_2

    .line 68
    :catch_0
    move-exception v1

    .line 69
    :try_start_2
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/RealImapConnection;Ljava/io/IOException;)Lnet/thunderbird/core/common/exception/MessagingException;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    :goto_2
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 75
    .line 76
    if-nez v2, :cond_3

    .line 77
    .line 78
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connectionManager:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/RealImapConnection;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    throw v1

    .line 84
    :catch_1
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 85
    .line 86
    if-nez v1, :cond_4

    .line 87
    .line 88
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connectionManager:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/RealImapConnection;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    return v2

    .line 94
    :goto_3
    monitor-exit p0

    .line 95
    throw v0
.end method

.method public final expunge()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->checkOpenWithWriteAccess()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string v0, "EXPUNGE"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    move-exception v0

    .line 11
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 12
    .line 13
    invoke-virtual {p0, v1, v0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/RealImapConnection;Ljava/io/IOException;)Lnet/thunderbird/core/common/exception/MessagingException;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    throw p0
.end method

.method public final expungeUids(Ljava/util/ArrayList;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->capabilities:Ljava/util/Set;

    .line 13
    .line 14
    const-string v1, "UIDPLUS"

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    new-instance p2, Ljava/util/ArrayList;

    .line 23
    .line 24
    const/16 v0, 0xa

    .line 25
    .line 26
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p1

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p2, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    const-string v0, "UID EXPUNGE"

    .line 73
    .line 74
    const-string v1, ""

    .line 75
    .line 76
    invoke-virtual {p2, v0, v1, p1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->executeCommandWithIdSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/ArrayList;

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_1
    if-eqz p2, :cond_2

    .line 81
    .line 82
    const-string p1, "EXPUNGE"

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_2
    const-string p2, "Server doesn\'t support expunging individual messages: %s"

    .line 89
    .line 90
    const/4 v0, 0x1

    .line 91
    new-array v0, v0, [Ljava/lang/Object;

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    aput-object p1, v0, v1

    .line 95
    .line 96
    invoke-static {p2, v0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :goto_1
    iget-object p2, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 101
    .line 102
    invoke-virtual {p0, p2, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/RealImapConnection;Ljava/io/IOException;)Lnet/thunderbird/core/common/exception/MessagingException;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    throw p0

    .line 107
    :cond_3
    const-string p0, "expungeUids() must be called with a non-empty set of UIDs"

    .line 108
    .line 109
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final extractUidValidity(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isTagged()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "OK"

    .line 17
    .line 18
    invoke-static {v2, v3}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/store/imap/ImapList;->isList(I)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x2

    .line 43
    if-lt v3, v4, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v3, "UIDVALIDITY"

    .line 50
    .line 51
    invoke-static {v0, v3}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-ge v2, v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    instance-of v3, v0, Ljava/lang/String;

    .line 68
    .line 69
    if-nez v3, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    :try_start_0
    check-cast v0, Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    const-wide/16 v4, 0x0

    .line 88
    .line 89
    cmp-long p1, v4, v2

    .line 90
    .line 91
    if-gtz p1, :cond_2

    .line 92
    .line 93
    const-wide v4, 0x100000000L

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    cmp-long p1, v2, v4

    .line 99
    .line 100
    if-gez p1, :cond_2

    .line 101
    .line 102
    new-instance v1, Lcom/fsck/k9/mailstore/LocalFolder$15;

    .line 103
    .line 104
    invoke-direct {v1, v2, v3}, Lcom/fsck/k9/mailstore/LocalFolder$15;-><init>(J)V

    .line 105
    .line 106
    .line 107
    :catch_0
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 108
    .line 109
    iget-wide v0, v1, Lcom/fsck/k9/mailstore/LocalFolder$15;->val$rootMessagePartId:J

    .line 110
    .line 111
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->uidValidity:Ljava/lang/Long;

    .line 116
    .line 117
    :cond_3
    return-void
.end method

.method public final fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lokhttp3/HttpUrl$Builder;I)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v4, "FETCH"

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    goto/16 :goto_a

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->checkOpen()V

    .line 20
    .line 21
    .line 22
    const/16 v5, 0xa

    .line 23
    .line 24
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    invoke-static {v6}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    const/16 v7, 0x10

    .line 33
    .line 34
    if-ge v6, v7, :cond_1

    .line 35
    .line 36
    move v6, v7

    .line 37
    :cond_1
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    invoke-direct {v7, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    if-eqz v8, :cond_2

    .line 51
    .line 52
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    move-object v9, v8

    .line 57
    check-cast v9, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 58
    .line 59
    iget-object v9, v9, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 60
    .line 61
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-eqz v8, :cond_3

    .line 83
    .line 84
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    check-cast v8, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 89
    .line 90
    iget-object v8, v8, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    new-instance v9, Ljava/util/LinkedHashSet;

    .line 97
    .line 98
    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v5, "UID"

    .line 102
    .line 103
    invoke-interface {v9, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    sget-object v8, Lcom/fsck/k9/mail/FetchProfile$Item;->FLAGS:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 107
    .line 108
    invoke-virtual {v2, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    if-eqz v8, :cond_4

    .line 113
    .line 114
    const-string v8, "FLAGS"

    .line 115
    .line 116
    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :cond_4
    sget-object v8, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 120
    .line 121
    invoke-virtual {v2, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-eqz v8, :cond_5

    .line 126
    .line 127
    const-string v8, "INTERNALDATE"

    .line 128
    .line 129
    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    const-string v8, "RFC822.SIZE"

    .line 133
    .line 134
    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    const-string v8, "BODY.PEEK[HEADER.FIELDS (date subject from content-type to cc bcc reply-to message-id references in-reply-to list-post list-unsubscribe sender X-K9mail-Identity Chat-Version)]"

    .line 138
    .line 139
    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    :cond_5
    sget-object v8, Lcom/fsck/k9/mail/FetchProfile$Item;->STRUCTURE:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 143
    .line 144
    invoke-virtual {v2, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    if-eqz v8, :cond_6

    .line 149
    .line 150
    const-string v8, "BODYSTRUCTURE"

    .line 151
    .line 152
    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    :cond_6
    sget-object v8, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY_SANE:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 156
    .line 157
    invoke-virtual {v2, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    const/4 v15, 0x0

    .line 162
    const-string v11, "BODY.PEEK[]"

    .line 163
    .line 164
    const/4 v12, 0x1

    .line 165
    if-eqz v10, :cond_8

    .line 166
    .line 167
    if-lez p4, :cond_7

    .line 168
    .line 169
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 170
    .line 171
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v13

    .line 175
    new-array v14, v12, [Ljava/lang/Object;

    .line 176
    .line 177
    aput-object v13, v14, v15

    .line 178
    .line 179
    invoke-static {v14, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v13

    .line 183
    const-string v14, "BODY.PEEK[]<0.%d>"

    .line 184
    .line 185
    invoke-static {v10, v14, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_7
    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    :cond_8
    :goto_2
    sget-object v10, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 197
    .line 198
    invoke-virtual {v2, v10}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v13

    .line 202
    if-eqz v13, :cond_9

    .line 203
    .line 204
    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    :cond_9
    const/4 v13, 0x0

    .line 208
    const/16 v14, 0x3e

    .line 209
    .line 210
    move-object v11, v10

    .line 211
    const-string v10, " "

    .line 212
    .line 213
    move-object/from16 v16, v11

    .line 214
    .line 215
    const/4 v11, 0x0

    .line 216
    move/from16 v17, v12

    .line 217
    .line 218
    const/4 v12, 0x0

    .line 219
    move-object/from16 v18, v16

    .line 220
    .line 221
    move/from16 v16, v15

    .line 222
    .line 223
    move/from16 v15, v17

    .line 224
    .line 225
    invoke-static/range {v9 .. v14}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    new-instance v10, Ljava/util/LinkedHashSet;

    .line 230
    .line 231
    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    .line 232
    .line 233
    .line 234
    move/from16 v11, v16

    .line 235
    .line 236
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 237
    .line 238
    .line 239
    move-result v12

    .line 240
    if-ge v11, v12, :cond_15

    .line 241
    .line 242
    add-int/lit8 v12, v11, 0x64

    .line 243
    .line 244
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 245
    .line 246
    .line 247
    move-result v13

    .line 248
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    .line 249
    .line 250
    .line 251
    move-result v13

    .line 252
    invoke-virtual {v6, v11, v13}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object v19

    .line 256
    :try_start_0
    const-string v20, ","

    .line 257
    .line 258
    const/16 v23, 0x0

    .line 259
    .line 260
    const/16 v24, 0x3e

    .line 261
    .line 262
    const/16 v21, 0x0

    .line 263
    .line 264
    const/16 v22, 0x0

    .line 265
    .line 266
    invoke-static/range {v19 .. v24}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v11

    .line 270
    const-string v13, "UID FETCH %s (%s)"

    .line 271
    .line 272
    const/4 v14, 0x2

    .line 273
    move/from16 v17, v15

    .line 274
    .line 275
    new-array v15, v14, [Ljava/lang/Object;

    .line 276
    .line 277
    aput-object v11, v15, v16

    .line 278
    .line 279
    aput-object v9, v15, v17

    .line 280
    .line 281
    invoke-static {v15, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v11

    .line 285
    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    iget-object v13, v1, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 290
    .line 291
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    move/from16 v15, v16

    .line 295
    .line 296
    invoke-virtual {v13, v11, v15}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-object/from16 v11, v18

    .line 300
    .line 301
    invoke-virtual {v2, v11}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v13

    .line 305
    if-nez v13, :cond_b

    .line 306
    .line 307
    invoke-virtual {v2, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v13

    .line 311
    if-eqz v13, :cond_a

    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_a
    const/4 v13, 0x0

    .line 315
    goto :goto_5

    .line 316
    :catch_0
    move-exception v0

    .line 317
    goto/16 :goto_9

    .line 318
    .line 319
    :cond_b
    :goto_4
    new-instance v13, Landroidx/work/Data$Builder;

    .line 320
    .line 321
    invoke-direct {v13, v7}, Landroidx/work/Data$Builder;-><init>(Ljava/util/LinkedHashMap;)V

    .line 322
    .line 323
    .line 324
    :goto_5
    iget-object v15, v1, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 325
    .line 326
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v15, v13}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->readResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 330
    .line 331
    .line 332
    move-result-object v15

    .line 333
    iget-object v14, v15, Lcom/fsck/k9/mail/store/imap/ImapResponse;->tag:Ljava/lang/String;

    .line 334
    .line 335
    if-nez v14, :cond_12

    .line 336
    .line 337
    move/from16 v0, v17

    .line 338
    .line 339
    invoke-virtual {v15, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-static {v2, v4}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-eqz v0, :cond_11

    .line 348
    .line 349
    invoke-virtual {v15, v4}, Lcom/fsck/k9/mail/store/imap/ImapList;->getKeyedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 357
    .line 358
    invoke-virtual {v0, v5}, Lcom/fsck/k9/mail/store/imap/ImapList;->getKeyedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    check-cast v2, Ljava/lang/String;

    .line 363
    .line 364
    invoke-virtual {v7, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v18

    .line 368
    move-object/from16 v19, v4

    .line 369
    .line 370
    move-object/from16 v4, v18

    .line 371
    .line 372
    check-cast v4, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 373
    .line 374
    if-nez v4, :cond_d

    .line 375
    .line 376
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 377
    .line 378
    invoke-interface {v0}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-eqz v0, :cond_c

    .line 383
    .line 384
    const-string v0, "Do not have message in messageMap for UID %s for %s"

    .line 385
    .line 386
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getLogId()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    move-object/from16 p4, v4

    .line 391
    .line 392
    move-object/from16 v18, v5

    .line 393
    .line 394
    const/4 v5, 0x2

    .line 395
    new-array v4, v5, [Ljava/lang/Object;

    .line 396
    .line 397
    const/16 v16, 0x0

    .line 398
    .line 399
    aput-object v2, v4, v16

    .line 400
    .line 401
    const/16 v17, 0x1

    .line 402
    .line 403
    aput-object p4, v4, v17

    .line 404
    .line 405
    invoke-static {v0, v4}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    goto :goto_6

    .line 409
    :cond_c
    move-object/from16 v18, v5

    .line 410
    .line 411
    const/4 v5, 0x2

    .line 412
    const/16 v16, 0x0

    .line 413
    .line 414
    :goto_6
    invoke-virtual {v1, v15}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    .line 415
    .line 416
    .line 417
    const/16 v17, 0x1

    .line 418
    .line 419
    goto :goto_8

    .line 420
    :cond_d
    move-object/from16 v18, v5

    .line 421
    .line 422
    const/4 v5, 0x2

    .line 423
    const/16 v16, 0x0

    .line 424
    .line 425
    invoke-virtual {v1, v4, v0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->handleFetchResponse(Lcom/fsck/k9/mail/store/imap/ImapMessage;Lcom/fsck/k9/mail/store/imap/ImapList;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    if-eqz v0, :cond_10

    .line 430
    .line 431
    instance-of v15, v0, Ljava/lang/String;

    .line 432
    .line 433
    if-eqz v15, :cond_e

    .line 434
    .line 435
    check-cast v0, Ljava/lang/String;

    .line 436
    .line 437
    sget-object v15, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 438
    .line 439
    invoke-virtual {v0, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 444
    .line 445
    .line 446
    new-instance v15, Ljava/io/ByteArrayInputStream;

    .line 447
    .line 448
    invoke-direct {v15, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v4, v15}, Lcom/fsck/k9/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 452
    .line 453
    .line 454
    goto :goto_7

    .line 455
    :cond_e
    instance-of v0, v0, Ljava/lang/Integer;

    .line 456
    .line 457
    if-eqz v0, :cond_f

    .line 458
    .line 459
    goto :goto_7

    .line 460
    :cond_f
    new-instance v0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 461
    .line 462
    const-string v2, "Got FETCH response with bogus parameters"

    .line 463
    .line 464
    invoke-direct {v0, v2}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    throw v0

    .line 468
    :cond_10
    :goto_7
    invoke-interface {v10, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    const/16 v17, 0x1

    .line 473
    .line 474
    xor-int/lit8 v0, v0, 0x1

    .line 475
    .line 476
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 477
    .line 478
    .line 479
    invoke-interface {v10, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    if-eqz v3, :cond_13

    .line 483
    .line 484
    invoke-virtual {v3, v4, v0}, Lokhttp3/HttpUrl$Builder;->onFetchResponse(Lcom/fsck/k9/mail/store/imap/ImapMessage;Z)V

    .line 485
    .line 486
    .line 487
    goto :goto_8

    .line 488
    :cond_11
    const/16 v17, 0x1

    .line 489
    .line 490
    :cond_12
    move-object/from16 v19, v4

    .line 491
    .line 492
    move-object/from16 v18, v5

    .line 493
    .line 494
    const/4 v5, 0x2

    .line 495
    const/16 v16, 0x0

    .line 496
    .line 497
    invoke-virtual {v1, v15}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .line 499
    .line 500
    :cond_13
    :goto_8
    move-object/from16 v0, p1

    .line 501
    .line 502
    move-object/from16 v2, p2

    .line 503
    .line 504
    if-eqz v14, :cond_14

    .line 505
    .line 506
    move/from16 v15, v17

    .line 507
    .line 508
    move-object/from16 v5, v18

    .line 509
    .line 510
    move-object/from16 v4, v19

    .line 511
    .line 512
    move-object/from16 v18, v11

    .line 513
    .line 514
    move v11, v12

    .line 515
    goto/16 :goto_3

    .line 516
    .line 517
    :cond_14
    move v14, v5

    .line 518
    move-object/from16 v5, v18

    .line 519
    .line 520
    move-object/from16 v4, v19

    .line 521
    .line 522
    goto/16 :goto_5

    .line 523
    .line 524
    :goto_9
    iget-object v2, v1, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 525
    .line 526
    invoke-virtual {v1, v2, v0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/RealImapConnection;Ljava/io/IOException;)Lnet/thunderbird/core/common/exception/MessagingException;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    throw v0

    .line 531
    :cond_15
    :goto_a
    return-void
.end method

.method public final fetchPart(Lcom/fsck/k9/mail/store/imap/ImapMessage;Lcom/fsck/k9/mail/Part;Lokio/AsyncTimeout$Companion;I)V
    .locals 10

    .line 1
    const-string v0, "FETCH"

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->checkOpen()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p2}, Lcom/fsck/k9/mail/Part;->getServerExtra()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "TEXT"

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x1

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 24
    .line 25
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p4

    .line 29
    new-array v2, v4, [Ljava/lang/Object;

    .line 30
    .line 31
    aput-object p4, v2, v3

    .line 32
    .line 33
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    const-string v2, "BODY.PEEK[TEXT]<0.%d>"

    .line 38
    .line 39
    invoke-static {v1, v2, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p4

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-array p4, v4, [Ljava/lang/Object;

    .line 45
    .line 46
    aput-object v1, p4, v3

    .line 47
    .line 48
    invoke-static {p4, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p4

    .line 52
    const-string v1, "BODY.PEEK[%s]"

    .line 53
    .line 54
    invoke-static {v1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p4

    .line 58
    :goto_0
    :try_start_0
    const-string v1, "UID FETCH %s (UID %s)"

    .line 59
    .line 60
    iget-object v2, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 61
    .line 62
    const/4 v5, 0x2

    .line 63
    new-array v6, v5, [Ljava/lang/Object;

    .line 64
    .line 65
    aput-object v2, v6, v3

    .line 66
    .line 67
    aput-object p4, v6, v4

    .line 68
    .line 69
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    invoke-static {v1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p4

    .line 77
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p4, v3}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    new-instance p4, Lcom/google/zxing/BinaryBitmap;

    .line 86
    .line 87
    invoke-direct {p4, p2, p3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/fsck/k9/mail/Part;Lokio/AsyncTimeout$Companion;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, p4}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->readResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iget-object v2, v1, Lcom/fsck/k9/mail/store/imap/ImapResponse;->tag:Ljava/lang/String;

    .line 100
    .line 101
    if-nez v2, :cond_6

    .line 102
    .line 103
    invoke-virtual {v1, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-static {v6, v0}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-eqz v6, :cond_6

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->getKeyedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    check-cast v6, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 121
    .line 122
    const-string v7, "UID"

    .line 123
    .line 124
    invoke-virtual {v6, v7}, Lcom/fsck/k9/mail/store/imap/ImapList;->getKeyedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    check-cast v7, Ljava/lang/String;

    .line 129
    .line 130
    iget-object v8, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    if-nez v8, :cond_3

    .line 137
    .line 138
    sget-object v6, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 139
    .line 140
    invoke-interface {v6}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-eqz v6, :cond_2

    .line 145
    .line 146
    const-string v6, "Did not ask for UID %s for %s"

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getLogId()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    new-array v9, v5, [Ljava/lang/Object;

    .line 153
    .line 154
    aput-object v7, v9, v3

    .line 155
    .line 156
    aput-object v8, v9, v4

    .line 157
    .line 158
    invoke-static {v6, v9}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :catch_0
    move-exception p1

    .line 163
    goto :goto_3

    .line 164
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_3
    invoke-virtual {p0, p1, v6}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->handleFetchResponse(Lcom/fsck/k9/mail/store/imap/ImapMessage;Lcom/fsck/k9/mail/store/imap/ImapList;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    if-eqz v1, :cond_7

    .line 173
    .line 174
    instance-of v6, v1, Lcom/fsck/k9/mail/Body;

    .line 175
    .line 176
    if-eqz v6, :cond_4

    .line 177
    .line 178
    check-cast v1, Lcom/fsck/k9/mail/Body;

    .line 179
    .line 180
    invoke-static {p2, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_4
    instance-of v6, v1, Ljava/lang/String;

    .line 185
    .line 186
    if-eqz v6, :cond_5

    .line 187
    .line 188
    check-cast v1, Ljava/lang/String;

    .line 189
    .line 190
    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 191
    .line 192
    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 200
    .line 201
    invoke-direct {v6, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 202
    .line 203
    .line 204
    const-string v1, "Content-Transfer-Encoding"

    .line 205
    .line 206
    invoke-interface {p2, v1}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    aget-object v1, v1, v3

    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    const-string v7, "Content-Type"

    .line 216
    .line 217
    invoke-interface {p2, v7}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    aget-object v7, v7, v3

    .line 222
    .line 223
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p3, v1, v7, v6}, Lokio/AsyncTimeout$Companion;->createBody(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/fsck/k9/mail/internet/BinaryTempFileBody;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-static {p2, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_5
    new-instance p1, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 235
    .line 236
    const-string p2, "Got FETCH response with bogus parameters"

    .line 237
    .line 238
    invoke-direct {p1, p2}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    throw p1

    .line 242
    :cond_6
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .line 244
    .line 245
    :cond_7
    :goto_2
    if-eqz v2, :cond_1

    .line 246
    .line 247
    return-void

    .line 248
    :goto_3
    iget-object p2, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 249
    .line 250
    invoke-virtual {p0, p2, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/RealImapConnection;Ljava/io/IOException;)Lnet/thunderbird/core/common/exception/MessagingException;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    throw p0
.end method

.method public final getLogId()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->internalImapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->config:Lcom/fsck/k9/mail/store/imap/ImapStoreConfig;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/fsck/k9/mail/store/imap/ImapStoreConfig;->getLogLabel()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ":"

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->serverId:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, "/"

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 48
    .line 49
    if-eqz p0, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->getLogId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {v1, v0, p0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_0
    return-object v1
.end method

.method public final getMessages(IILjava/util/Date;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    if-lt p1, v2, :cond_0

    .line 5
    .line 6
    if-lt p2, v2, :cond_0

    .line 7
    .line 8
    if-lt p2, p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->checkOpen()V

    .line 11
    .line 12
    .line 13
    invoke-static {p3}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getDateSearchString(Ljava/util/Date;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/4 v4, 0x4

    .line 28
    new-array v5, v4, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object p1, v5, v0

    .line 31
    .line 32
    aput-object p2, v5, v2

    .line 33
    .line 34
    aput-object p3, v5, v1

    .line 35
    .line 36
    const-string p1, " NOT DELETED"

    .line 37
    .line 38
    const/4 p2, 0x3

    .line 39
    aput-object p1, v5, p2

    .line 40
    .line 41
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string p2, "UID SEARCH %d:%d%s%s"

    .line 46
    .line 47
    invoke-static {v3, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :try_start_0
    iget-object p2, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/fsck/k9/sasl/OAuthBearer;->parse(Ljava/util/ArrayList;)Lokhttp3/Headers$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getMessages(Lokhttp3/Headers$Builder;)Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-object p0

    .line 69
    :catch_0
    move-exception p1

    .line 70
    iget-object p2, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 71
    .line 72
    invoke-virtual {p0, p2, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/RealImapConnection;Ljava/io/IOException;)Lnet/thunderbird/core/common/exception/MessagingException;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    throw p0

    .line 77
    :cond_0
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 78
    .line 79
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 80
    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    new-array v3, v1, [Ljava/lang/Object;

    .line 90
    .line 91
    aput-object p1, v3, v0

    .line 92
    .line 93
    aput-object p2, v3, v2

    .line 94
    .line 95
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-string p2, "Invalid message set %d %d"

    .line 100
    .line 101
    invoke-static {p3, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {p0, p1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0
.end method

.method public final getPrefixedName()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "INBOX"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->serverId:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connectionManager:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getConnection()Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    :goto_0
    monitor-exit p0

    .line 26
    :try_start_1
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->open()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connectionManager:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/RealImapConnection;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->internalImapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getCombinedPrefix()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    const-string v0, ""

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :catchall_1
    move-exception v1

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception v1

    .line 52
    :try_start_2
    new-instance v2, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 53
    .line 54
    const-string v3, "Unable to get IMAP prefix"

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-direct {v2, v3, v4, v1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    :goto_1
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 62
    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connectionManager:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/RealImapConnection;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    throw v1

    .line 71
    :goto_2
    monitor-exit p0

    .line 72
    throw v0

    .line 73
    :cond_3
    const-string v0, ""

    .line 74
    .line 75
    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->serverId:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method public final getUidFromMessageId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getLogId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v3, 0x2

    .line 19
    new-array v3, v3, [Ljava/lang/Object;

    .line 20
    .line 21
    aput-object p1, v3, v1

    .line 22
    .line 23
    aput-object v0, v3, v2

    .line 24
    .line 25
    const-string v0, "Looking for UID for message with message-id %s for %s"

    .line 26
    .line 27
    invoke-static {v0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {p1}, Landroidx/room/util/RelationUtil;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-array v0, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    aput-object p1, v0, v1

    .line 37
    .line 38
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v0, "UID SEARCH HEADER MESSAGE-ID %s"

    .line 43
    .line 44
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    invoke-static {p0}, Lcom/fsck/k9/sasl/OAuthBearer;->parse(Ljava/util/ArrayList;)Lokhttp3/Headers$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iget-object p0, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Ljava/lang/Long;

    .line 63
    .line 64
    if-eqz p0, :cond_1

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 67
    .line 68
    .line 69
    move-result-wide p0

    .line 70
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_1
    const/4 p0, 0x0

    .line 76
    return-object p0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 79
    .line 80
    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/RealImapConnection;Ljava/io/IOException;)Lnet/thunderbird/core/common/exception/MessagingException;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    throw p0
.end method

.method public final handleFetchResponse(Lcom/fsck/k9/mail/store/imap/ImapMessage;Lcom/fsck/k9/mail/store/imap/ImapList;)Ljava/lang/Object;
    .locals 7

    .line 1
    const-string v0, "FLAGS"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->containsKey(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_6

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->getKeyedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 16
    .line 17
    if-eqz v0, :cond_6

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    move v4, v2

    .line 24
    :goto_0
    if-ge v4, v1, :cond_6

    .line 25
    .line 26
    invoke-virtual {v0, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Ljava/lang/String;

    .line 31
    .line 32
    const-string v6, "\\Deleted"

    .line 33
    .line 34
    invoke-static {v5, v6, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    sget-object v5, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 41
    .line 42
    invoke-virtual {p1, v5, v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const-string v6, "\\Answered"

    .line 47
    .line 48
    invoke-static {v5, v6, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_1

    .line 53
    .line 54
    sget-object v5, Lnet/thunderbird/core/common/mail/Flag;->ANSWERED:Lnet/thunderbird/core/common/mail/Flag;

    .line 55
    .line 56
    invoke-virtual {p1, v5, v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const-string v6, "\\Seen"

    .line 61
    .line 62
    invoke-static {v5, v6, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_2

    .line 67
    .line 68
    sget-object v5, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 69
    .line 70
    invoke-virtual {p1, v5, v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const-string v6, "\\Flagged"

    .line 75
    .line 76
    invoke-static {v5, v6, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_3

    .line 81
    .line 82
    sget-object v5, Lnet/thunderbird/core/common/mail/Flag;->FLAGGED:Lnet/thunderbird/core/common/mail/Flag;

    .line 83
    .line 84
    invoke-virtual {p1, v5, v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    const-string v6, "$Forwarded"

    .line 89
    .line 90
    invoke-static {v5, v6, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_4

    .line 95
    .line 96
    sget-object v5, Lnet/thunderbird/core/common/mail/Flag;->FORWARDED:Lnet/thunderbird/core/common/mail/Flag;

    .line 97
    .line 98
    invoke-virtual {p1, v5, v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 99
    .line 100
    .line 101
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->internalImapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 102
    .line 103
    iget-object v6, v6, Lcom/fsck/k9/mail/store/imap/RealImapStore;->permanentFlagsIndex:Ljava/util/LinkedHashSet;

    .line 104
    .line 105
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    const-string v6, "\\Draft"

    .line 110
    .line 111
    invoke-static {v5, v6, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-eqz v5, :cond_5

    .line 116
    .line 117
    sget-object v5, Lnet/thunderbird/core/common/mail/Flag;->DRAFT:Lnet/thunderbird/core/common/mail/Flag;

    .line 118
    .line 119
    invoke-virtual {p1, v5, v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 120
    .line 121
    .line 122
    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_6
    const-string v0, "INTERNALDATE"

    .line 126
    .line 127
    invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->containsKey(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    const/4 v4, 0x0

    .line 132
    if-eqz v1, :cond_9

    .line 133
    .line 134
    invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->getKeyedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Ljava/lang/String;

    .line 139
    .line 140
    if-eqz v0, :cond_8

    .line 141
    .line 142
    :try_start_0
    const-string v1, "NIL"

    .line 143
    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_7

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_7
    invoke-static {v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    .line 152
    .line 153
    .line 154
    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_3

    .line 156
    :catch_0
    move-exception p0

    .line 157
    new-instance p1, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 158
    .line 159
    const-string p2, "Unable to parse IMAP datetime \'"

    .line 160
    .line 161
    const-string v1, "\' "

    .line 162
    .line 163
    invoke-static {p2, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-direct {p1, p2, v2, p0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    throw p1

    .line 171
    :cond_8
    :goto_2
    move-object v0, v4

    .line 172
    :goto_3
    iput-object v0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mInternalDate:Ljava/util/Date;

    .line 173
    .line 174
    :cond_9
    const-string v0, "RFC822.SIZE"

    .line 175
    .line 176
    invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->containsKey(Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_a

    .line 181
    .line 182
    invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->getKeyedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    iput v0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mSize:I

    .line 193
    .line 194
    :cond_a
    const-string v0, "BODYSTRUCTURE"

    .line 195
    .line 196
    invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->containsKey(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_c

    .line 201
    .line 202
    invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->getKeyedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 207
    .line 208
    if-eqz v0, :cond_c

    .line 209
    .line 210
    :try_start_1
    const-string v1, "TEXT"

    .line 211
    .line 212
    invoke-static {v0, p1, v1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->parseBodyStructure(Lcom/fsck/k9/mail/store/imap/ImapList;Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V
    :try_end_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :catch_1
    move-exception v0

    .line 217
    sget-object v1, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 218
    .line 219
    invoke-interface {v1}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_b

    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getLogId()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    new-array v1, v3, [Ljava/lang/Object;

    .line 230
    .line 231
    aput-object p0, v1, v2

    .line 232
    .line 233
    const-string p0, "Error handling message for %s"

    .line 234
    .line 235
    invoke-static {v0, p0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    :cond_b
    iput-object v4, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    .line 239
    .line 240
    :cond_c
    :goto_4
    const-string p0, "BODY"

    .line 241
    .line 242
    invoke-virtual {p2, p0}, Lcom/fsck/k9/mail/store/imap/ImapList;->containsKey(Ljava/lang/String;)Z

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    if-eqz p1, :cond_f

    .line 247
    .line 248
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    sub-int/2addr p1, v3

    .line 253
    move v0, v2

    .line 254
    :goto_5
    if-ge v0, p1, :cond_e

    .line 255
    .line 256
    invoke-virtual {p2, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-static {v1, p0}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    if-eqz v1, :cond_d

    .line 265
    .line 266
    add-int/lit8 p0, v0, 0x2

    .line 267
    .line 268
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    if-ge p0, p1, :cond_f

    .line 273
    .line 274
    invoke-virtual {p2, p0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    instance-of p0, v4, Ljava/lang/String;

    .line 279
    .line 280
    if-eqz p0, :cond_f

    .line 281
    .line 282
    move-object p0, v4

    .line 283
    check-cast p0, Ljava/lang/String;

    .line 284
    .line 285
    const-string v1, "<"

    .line 286
    .line 287
    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 288
    .line 289
    .line 290
    move-result p0

    .line 291
    if-eqz p0, :cond_f

    .line 292
    .line 293
    add-int/lit8 v0, v0, 0x3

    .line 294
    .line 295
    if-ge v0, p1, :cond_f

    .line 296
    .line 297
    invoke-virtual {p2, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    goto :goto_6

    .line 302
    :cond_d
    add-int/lit8 v0, v0, 0x1

    .line 303
    .line 304
    goto :goto_5

    .line 305
    :cond_e
    const-string p0, "getKeyIndex() only works for keys that are in the collection."

    .line 306
    .line 307
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    :cond_f
    :goto_6
    return-object v4
.end method

.method public final handlePermanentFlags(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isTagged()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_a

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "OK"

    .line 14
    .line 15
    invoke-static {v2, v3}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_a

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/store/imap/ImapList;->isList(I)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x2

    .line 41
    if-lt v3, v4, :cond_a

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v5, "PERMANENTFLAGS"

    .line 48
    .line 49
    invoke-static {v3, v5}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_a

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/store/imap/ImapList;->isList(I)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_1

    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    new-instance v5, Ljava/util/HashSet;

    .line 74
    .line 75
    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 76
    .line 77
    .line 78
    move v6, v0

    .line 79
    move v7, v6

    .line 80
    :goto_0
    if-ge v6, v3, :cond_9

    .line 81
    .line 82
    invoke-virtual {p1, v6}, Lcom/fsck/k9/mail/store/imap/ImapList;->isString(I)Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-nez v8, :cond_2

    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :cond_2
    invoke-virtual {p1, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    check-cast v8, Ljava/lang/String;

    .line 95
    .line 96
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 97
    .line 98
    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    const/4 v10, -0x1

    .line 110
    sparse-switch v9, :sswitch_data_0

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :sswitch_0
    const-string v9, "\\answered"

    .line 115
    .line 116
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    if-nez v8, :cond_3

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    const/4 v10, 0x5

    .line 124
    goto :goto_1

    .line 125
    :sswitch_1
    const-string v9, "\\flagged"

    .line 126
    .line 127
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-nez v8, :cond_4

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    const/4 v10, 0x4

    .line 135
    goto :goto_1

    .line 136
    :sswitch_2
    const-string v9, "\\seen"

    .line 137
    .line 138
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-nez v8, :cond_5

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_5
    const/4 v10, 0x3

    .line 146
    goto :goto_1

    .line 147
    :sswitch_3
    const-string v9, "\\*"

    .line 148
    .line 149
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-nez v8, :cond_6

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_6
    move v10, v4

    .line 157
    goto :goto_1

    .line 158
    :sswitch_4
    const-string v9, "$forwarded"

    .line 159
    .line 160
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-nez v8, :cond_7

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_7
    move v10, v2

    .line 168
    goto :goto_1

    .line 169
    :sswitch_5
    const-string v9, "\\deleted"

    .line 170
    .line 171
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-nez v8, :cond_8

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_8
    move v10, v0

    .line 179
    :goto_1
    packed-switch v10, :pswitch_data_0

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :pswitch_0
    sget-object v8, Lnet/thunderbird/core/common/mail/Flag;->ANSWERED:Lnet/thunderbird/core/common/mail/Flag;

    .line 184
    .line 185
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :pswitch_1
    sget-object v8, Lnet/thunderbird/core/common/mail/Flag;->FLAGGED:Lnet/thunderbird/core/common/mail/Flag;

    .line 190
    .line 191
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :pswitch_2
    sget-object v8, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 196
    .line 197
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :pswitch_3
    move v7, v2

    .line 202
    goto :goto_2

    .line 203
    :pswitch_4
    sget-object v8, Lnet/thunderbird/core/common/mail/Flag;->FORWARDED:Lnet/thunderbird/core/common/mail/Flag;

    .line 204
    .line 205
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :pswitch_5
    sget-object v8, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 210
    .line 211
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_9
    new-instance v1, Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 219
    .line 220
    invoke-direct {v1, v5, v7}, Lcom/fsck/k9/mailstore/LocalFolder$8;-><init>(Ljava/util/HashSet;Z)V

    .line 221
    .line 222
    .line 223
    :cond_a
    :goto_3
    if-nez v1, :cond_b

    .line 224
    .line 225
    return-void

    .line 226
    :cond_b
    iget-object p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->internalImapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 227
    .line 228
    iget-object p1, p1, Lcom/fsck/k9/mail/store/imap/RealImapStore;->permanentFlagsIndex:Ljava/util/LinkedHashSet;

    .line 229
    .line 230
    iget-object v0, v1, Lcom/fsck/k9/mailstore/LocalFolder$8;->this$0:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast v0, Ljava/util/Set;

    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    check-cast v0, Ljava/util/Collection;

    .line 238
    .line 239
    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 240
    .line 241
    .line 242
    iget-boolean p1, v1, Lcom/fsck/k9/mailstore/LocalFolder$8;->val$includeDeleted:Z

    .line 243
    .line 244
    iput-boolean p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->canCreateKeywords:Z

    .line 245
    .line 246
    return-void

    .line 247
    :sswitch_data_0
    .sparse-switch
        -0x4ea9afc3 -> :sswitch_5
        -0x28a21580 -> :sswitch_4
        0xb4e -> :sswitch_3
        0x54640d7 -> :sswitch_2
        0x267a687e -> :sswitch_1
        0x2ad13939 -> :sswitch_0
    .end sparse-switch

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handleUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/fsck/k9/mail/store/imap/ImapResponse;->tag:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-le v0, v1, :cond_6

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v2, "EXISTS"

    .line 17
    .line 18
    invoke-static {v0, v2}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x2

    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->messageCount:I

    .line 37
    .line 38
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 39
    .line 40
    invoke-interface {v0}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    iget v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->messageCount:I

    .line 47
    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getLogId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    new-array v5, v2, [Ljava/lang/Object;

    .line 57
    .line 58
    aput-object v0, v5, v3

    .line 59
    .line 60
    aput-object v4, v5, v1

    .line 61
    .line 62
    const-string v0, "Got untagged EXISTS with value %d for %s"

    .line 63
    .line 64
    invoke-static {v0, v5}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v4, "OK"

    .line 72
    .line 73
    invoke-static {v0, v4}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-le v0, v1, :cond_5

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    instance-of v4, v0, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 90
    .line 91
    const/4 v5, 0x0

    .line 92
    if-eqz v4, :cond_1

    .line 93
    .line 94
    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    move-object v0, v5

    .line 98
    :goto_0
    if-nez v0, :cond_2

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    instance-of v6, v4, Ljava/lang/String;

    .line 106
    .line 107
    if-eqz v6, :cond_3

    .line 108
    .line 109
    move-object v5, v4

    .line 110
    check-cast v5, Ljava/lang/String;

    .line 111
    .line 112
    :cond_3
    if-nez v5, :cond_4

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    const-string v4, "UIDNEXT"

    .line 116
    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_5

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 130
    .line 131
    .line 132
    move-result-wide v4

    .line 133
    iput-wide v4, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->uidNext:J

    .line 134
    .line 135
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 136
    .line 137
    invoke-interface {v0}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_5

    .line 142
    .line 143
    iget-wide v4, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->uidNext:J

    .line 144
    .line 145
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getLogId()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    new-array v5, v2, [Ljava/lang/Object;

    .line 154
    .line 155
    aput-object v0, v5, v3

    .line 156
    .line 157
    aput-object v4, v5, v1

    .line 158
    .line 159
    const-string v0, "Got UidNext = %s for %s"

    .line 160
    .line 161
    invoke-static {v0, v5}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    :cond_5
    :goto_1
    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    const-string v0, "EXPUNGE"

    .line 169
    .line 170
    invoke-static {p1, v0}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-eqz p1, :cond_6

    .line 175
    .line 176
    iget p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->messageCount:I

    .line 177
    .line 178
    if-lez p1, :cond_6

    .line 179
    .line 180
    add-int/lit8 p1, p1, -0x1

    .line 181
    .line 182
    iput p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->messageCount:I

    .line 183
    .line 184
    sget-object p1, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 185
    .line 186
    invoke-interface {p1}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_6

    .line 191
    .line 192
    iget p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->messageCount:I

    .line 193
    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getLogId()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    new-array v0, v2, [Ljava/lang/Object;

    .line 203
    .line 204
    aput-object p1, v0, v3

    .line 205
    .line 206
    aput-object p0, v0, v1

    .line 207
    .line 208
    const-string p0, "Got untagged EXPUNGE with messageCount %d for %s"

    .line 209
    .line 210
    invoke-static {p0, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    :cond_6
    return-void
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->serverId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/RealImapConnection;Ljava/io/IOException;)Lnet/thunderbird/core/common/exception/MessagingException;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getLogId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 10
    .line 11
    const-string v0, "IOException for %s"

    .line 12
    .line 13
    invoke-static {p2, v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->close()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 22
    .line 23
    .line 24
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 25
    .line 26
    const-string p1, "IO Error"

    .line 27
    .line 28
    invoke-direct {p0, p1, v2, p2}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    return-object p0
.end method

.method public final moveMessages(Ljava/util/ArrayList;Lcom/fsck/k9/mail/store/imap/RealImapFolder;)Ljava/util/Map;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->checkOpenWithWriteAccess()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    const-string v3, "MOVE"

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->hasCapability(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ne v0, v2, :cond_3

    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->folderNameCodec:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 73
    .line 74
    invoke-virtual {p2}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getPrefixedName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {v0, p2}, Lcom/fsck/k9/mailstore/LocalFolder$12;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-static {p2}, Landroidx/room/util/RelationUtil;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    const-string v1, "UID MOVE"

    .line 92
    .line 93
    invoke-virtual {v0, v1, p2, p1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->executeCommandWithIdSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/ArrayList;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1, v2}, Landroidx/appcompat/app/ActionBar;->parse(Ljava/util/ArrayList;Z)Landroidx/work/Data$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-eqz p1, :cond_2

    .line 102
    .line 103
    iget-object p0, p1, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    return-object p0

    .line 106
    :catch_0
    move-exception p1

    .line 107
    goto :goto_2

    .line 108
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 109
    return-object p0

    .line 110
    :goto_2
    iget-object p2, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 111
    .line 112
    invoke-virtual {p0, p2, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/RealImapConnection;Ljava/io/IOException;)Lnet/thunderbird/core/common/exception/MessagingException;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    throw p0

    .line 117
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_4

    .line 135
    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 141
    .line 142
    iget-object v3, v3, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->copyMessages(Ljava/util/ArrayList;Lcom/fsck/k9/mail/store/imap/RealImapFolder;)Ljava/util/Map;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 153
    .line 154
    invoke-static {v1}, Lorg/jsoup/helper/Validate;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {p0, p1, v1, v2}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->setFlags(Ljava/util/ArrayList;Ljava/util/Set;Z)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->internalImapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 162
    .line 163
    iget-object p1, p1, Lcom/fsck/k9/mail/store/imap/RealImapStore;->config:Lcom/fsck/k9/mail/store/imap/ImapStoreConfig;

    .line 164
    .line 165
    invoke-interface {p1}, Lcom/fsck/k9/mail/store/imap/ImapStoreConfig;->isExpungeImmediately()Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->expungeUids(Ljava/util/ArrayList;Z)V

    .line 170
    .line 171
    .line 172
    return-object p2
.end method

.method public final open(Lcom/fsck/k9/mail/store/imap/OpenMode;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->mode:Lcom/fsck/k9/mail/store/imap/OpenMode;

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    :try_start_0
    const-string v0, "NOOP"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_2

    .line 15
    :catch_0
    move-exception v0

    .line 16
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 17
    .line 18
    invoke-virtual {p0, v1, v0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/RealImapConnection;Ljava/io/IOException;)Lnet/thunderbird/core/common/exception/MessagingException;

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connectionManager:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/RealImapConnection;)V

    .line 26
    .line 27
    .line 28
    monitor-enter p0

    .line 29
    :try_start_1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connectionManager:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getConnection()Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    monitor-exit p0

    .line 38
    const/4 v0, 0x0

    .line 39
    const/4 v1, 0x1

    .line 40
    :try_start_2
    sget-object v2, Lcom/fsck/k9/mail/store/imap/OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/store/imap/OpenMode;

    .line 41
    .line 42
    if-ne p1, v2, :cond_1

    .line 43
    .line 44
    const-string v2, "SELECT"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_1
    move-exception p1

    .line 48
    goto :goto_3

    .line 49
    :catch_2
    move-exception p1

    .line 50
    goto :goto_4

    .line 51
    :cond_1
    const-string v2, "EXAMINE"

    .line 52
    .line 53
    :goto_0
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->folderNameCodec:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getPrefixedName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3, v4}, Lcom/fsck/k9/mailstore/LocalFolder$12;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v3}, Landroidx/room/util/RelationUtil;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const-string v4, "%s %s"

    .line 68
    .line 69
    const/4 v5, 0x2

    .line 70
    new-array v6, v5, [Ljava/lang/Object;

    .line 71
    .line 72
    aput-object v2, v6, v0

    .line 73
    .line 74
    aput-object v3, v6, v1

    .line 75
    .line 76
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->mode:Lcom/fsck/k9/mail/store/imap/OpenMode;

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_2

    .line 99
    .line 100
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 105
    .line 106
    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->extractUidValidity(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->handlePermanentFlags(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->handleSelectOrExamineOkResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    .line 120
    .line 121
    .line 122
    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->exists:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 123
    .line 124
    :goto_2
    iget p0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->messageCount:I

    .line 125
    .line 126
    const/4 p1, -0x1

    .line 127
    if-eq p0, p1, :cond_3

    .line 128
    .line 129
    return-void

    .line 130
    :cond_3
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 131
    .line 132
    const-string p1, "Did not find message count during open"

    .line 133
    .line 134
    invoke-direct {p0, p1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p0

    .line 138
    :goto_3
    const-string v2, "Unable to open connection for %s"

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getLogId()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    new-array v1, v1, [Ljava/lang/Object;

    .line 145
    .line 146
    aput-object p0, v1, v0

    .line 147
    .line 148
    invoke-static {p1, v2, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :goto_4
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 153
    .line 154
    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/RealImapConnection;Ljava/io/IOException;)Lnet/thunderbird/core/common/exception/MessagingException;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    throw p0

    .line 159
    :catchall_0
    move-exception p1

    .line 160
    monitor-exit p0

    .line 161
    throw p1
.end method

.method public final search(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->checkOpen()V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->inSearch:Z

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "UID SEARCH"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1}, Landroidx/room/util/RelationUtil;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v2, " OR OR OR OR SUBJECT "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, " FROM "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, " TO "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, " CC "

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, " BCC "

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Lcom/fsck/k9/sasl/OAuthBearer;->parse(Ljava/util/ArrayList;)Lokhttp3/Headers$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getMessages(Lokhttp3/Headers$Builder;)Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->inSearch:Z

    .line 79
    .line 80
    return-object p1

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    goto :goto_1

    .line 83
    :catch_0
    move-exception p1

    .line 84
    :try_start_2
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 85
    .line 86
    invoke-virtual {p0, v1, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/RealImapConnection;Ljava/io/IOException;)Lnet/thunderbird/core/common/exception/MessagingException;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    :goto_1
    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->inSearch:Z

    .line 92
    .line 93
    throw p1
.end method

.method public final setFlags(Ljava/util/ArrayList;Ljava/util/Set;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->checkOpenWithWriteAccess()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->canCreateKeywords:Z

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    const/4 v2, 0x0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->internalImapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->permanentFlagsIndex:Ljava/util/LinkedHashSet;

    .line 61
    .line 62
    sget-object v3, Lnet/thunderbird/core/common/mail/Flag;->FORWARDED:Lnet/thunderbird/core/common/mail/Flag;

    .line 63
    .line 64
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    move v0, v2

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    :goto_1
    move v0, v1

    .line 74
    :goto_2
    check-cast p2, Ljava/lang/Iterable;

    .line 75
    .line 76
    invoke-static {p2, v0}, Landroidx/room/util/RelationUtil;->combineFlags$tfa_mail_protocols_imap(Ljava/lang/Iterable;Z)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    if-eqz p3, :cond_3

    .line 81
    .line 82
    const-string p3, "+"

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    const-string p3, "-"

    .line 86
    .line 87
    :goto_3
    const/4 v0, 0x2

    .line 88
    new-array v3, v0, [Ljava/lang/Object;

    .line 89
    .line 90
    aput-object p3, v3, v2

    .line 91
    .line 92
    aput-object p2, v3, v1

    .line 93
    .line 94
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    const-string p3, "%sFLAGS.SILENT (%s)"

    .line 99
    .line 100
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    :try_start_0
    iget-object p3, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 105
    .line 106
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    const-string v0, "UID STORE"

    .line 110
    .line 111
    invoke-virtual {p3, v0, p2, p1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->executeCommandWithIdSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :catch_0
    move-exception p1

    .line 116
    iget-object p2, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 117
    .line 118
    invoke-virtual {p0, p2, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/RealImapConnection;Ljava/io/IOException;)Lnet/thunderbird/core/common/exception/MessagingException;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    throw p0
.end method

.method public final setFlagsForAllMessages(Ljava/util/Set;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->checkOpenWithWriteAccess()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->canCreateKeywords:Z

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->internalImapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->permanentFlagsIndex:Ljava/util/LinkedHashSet;

    .line 13
    .line 14
    sget-object v3, Lnet/thunderbird/core/common/mail/Flag;->FORWARDED:Lnet/thunderbird/core/common/mail/Flag;

    .line 15
    .line 16
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    move v0, v1

    .line 26
    :goto_1
    :try_start_0
    check-cast p1, Ljava/lang/Iterable;

    .line 27
    .line 28
    invoke-static {p1, v0}, Landroidx/room/util/RelationUtil;->combineFlags$tfa_mail_protocols_imap(Ljava/lang/Iterable;Z)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "%s 1:* %sFLAGS.SILENT (%s)"

    .line 33
    .line 34
    const/4 v3, 0x3

    .line 35
    new-array v4, v3, [Ljava/lang/Object;

    .line 36
    .line 37
    const-string v5, "UID STORE"

    .line 38
    .line 39
    aput-object v5, v4, v2

    .line 40
    .line 41
    const-string v2, "+"

    .line 42
    .line 43
    aput-object v2, v4, v1

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    aput-object p1, v4, v1

    .line 47
    .line 48
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catch_0
    move-exception p1

    .line 61
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 62
    .line 63
    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/RealImapConnection;Ljava/io/IOException;)Lnet/thunderbird/core/common/exception/MessagingException;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    throw p0
.end method
