.class public final Lcom/fsck/k9/mailstore/MessageRepository;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final MESSAGE_DETAILS_HEADERS:Ljava/util/Set;


# instance fields
.field public final messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v5, "cc"

    .line 2
    .line 3
    const-string v6, "bcc"

    .line 4
    .line 5
    const-string v0, "date"

    .line 6
    .line 7
    const-string v1, "from"

    .line 8
    .line 9
    const-string v2, "sender"

    .line 10
    .line 11
    const-string v3, "reply-to"

    .line 12
    .line 13
    const-string v4, "to"

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/fsck/k9/mailstore/MessageRepository;->MESSAGE_DETAILS_HEADERS:Ljava/util/Set;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Lapp/k9mail/legacy/mailstore/MessageStoreManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mailstore/MessageRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 5
    .line 6
    return-void
.end method

.method public static firstHeaderOrNull(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v2, v0

    .line 17
    check-cast v2, Lcom/fsck/k9/mail/Header;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/fsck/k9/mail/Header;->name:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-static {v2, p0, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-object v0, v1

    .line 30
    :goto_0
    check-cast v0, Lcom/fsck/k9/mail/Header;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object p0, v0, Lcom/fsck/k9/mail/Header;->value:Ljava/lang/String;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_2
    return-object v1
.end method

.method public static parseAddresses(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/fsck/k9/mailstore/MessageRepository;->firstHeaderOrNull(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/fsck/k9/mail/internet/JisSupport;->unfold(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/fsck/k9/mail/K9MailLib;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method


# virtual methods
.method public final getMessageDetails(Lapp/k9mail/legacy/message/controller/MessageReference;)Lcom/fsck/k9/mailstore/MessageDetails;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/mailstore/MessageRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 5
    .line 6
    iget-object v0, p1, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Ljava/lang/String;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget-wide v1, p1, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 13
    .line 14
    iget-object v3, p1, Lapp/k9mail/legacy/message/controller/MessageReference;->uid:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object v4, Lcom/fsck/k9/mailstore/MessageRepository;->MESSAGE_DETAILS_HEADERS:Ljava/util/Set;

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveMessageOperations:Lcom/google/zxing/BinaryBitmap;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 50
    .line 51
    new-instance v0, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    const/4 v5, 0x2

    .line 54
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda0;-><init>(JLjava/lang/String;Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    check-cast p0, Ljava/util/List;

    .line 66
    .line 67
    const-string p1, "Date: "

    .line 68
    .line 69
    const-string v0, "date"

    .line 70
    .line 71
    invoke-static {v0, p0}, Lcom/fsck/k9/mailstore/MessageRepository;->firstHeaderOrNull(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-nez v0, :cond_0

    .line 76
    .line 77
    sget-object p1, Lcom/fsck/k9/mailstore/SendState$Companion;->INSTANCE:Lcom/fsck/k9/mailstore/SendState$Companion;

    .line 78
    .line 79
    :goto_0
    move-object v2, p1

    .line 80
    goto :goto_1

    .line 81
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    sget-object v1, Lorg/apache/james/mime4j/field/DefaultFieldParser;->PARSER:Lorg/apache/james/mime4j/field/DefaultFieldParser;

    .line 86
    .line 87
    invoke-static {p1}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    sget-object v1, Lorg/apache/james/mime4j/stream/RawFieldParser;->DEFAULT:Lorg/apache/james/mime4j/stream/RawFieldParser;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseField(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)Lorg/apache/james/mime4j/stream/RawField;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    sget-object v1, Lorg/apache/james/mime4j/field/DefaultFieldParser;->PARSER:Lorg/apache/james/mime4j/field/DefaultFieldParser;

    .line 101
    .line 102
    invoke-virtual {v1, p1}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->parse(Lorg/apache/james/mime4j/stream/Field;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    check-cast p1, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;

    .line 110
    .line 111
    new-instance v1, Lcom/fsck/k9/mailstore/MessageDate$ValidDate;

    .line 112
    .line 113
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->getDate()Ljava/util/Date;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-direct {v1, p1}, Lcom/fsck/k9/mailstore/MessageDate$ValidDate;-><init>(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    move-object v2, v1

    .line 124
    goto :goto_1

    .line 125
    :catch_0
    new-instance p1, Lcom/fsck/k9/mailstore/MessageDate$InvalidDate;

    .line 126
    .line 127
    invoke-direct {p1, v0}, Lcom/fsck/k9/mailstore/MessageDate$InvalidDate;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :goto_1
    const-string p1, "from"

    .line 132
    .line 133
    invoke-static {p1, p0}, Lcom/fsck/k9/mailstore/MessageRepository;->parseAddresses(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    const-string p1, "sender"

    .line 138
    .line 139
    invoke-static {p1, p0}, Lcom/fsck/k9/mailstore/MessageRepository;->parseAddresses(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const-string v0, "reply-to"

    .line 144
    .line 145
    invoke-static {v0, p0}, Lcom/fsck/k9/mailstore/MessageRepository;->parseAddresses(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    const-string v0, "to"

    .line 150
    .line 151
    invoke-static {v0, p0}, Lcom/fsck/k9/mailstore/MessageRepository;->parseAddresses(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    const-string v0, "cc"

    .line 156
    .line 157
    invoke-static {v0, p0}, Lcom/fsck/k9/mailstore/MessageRepository;->parseAddresses(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    const-string v0, "bcc"

    .line 162
    .line 163
    invoke-static {v0, p0}, Lcom/fsck/k9/mailstore/MessageRepository;->parseAddresses(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    new-instance v1, Lcom/fsck/k9/mailstore/MessageDetails;

    .line 168
    .line 169
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    move-object v4, p0

    .line 174
    check-cast v4, Lcom/fsck/k9/mail/Address;

    .line 175
    .line 176
    invoke-direct/range {v1 .. v8}, Lcom/fsck/k9/mailstore/MessageDetails;-><init>(Lcom/fsck/k9/mailstore/MessageDate;Ljava/util/List;Lcom/fsck/k9/mail/Address;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 177
    .line 178
    .line 179
    return-object v1
.end method
