.class public final Lcom/fsck/k9/mailstore/SaveMessageDataCreator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public final createSaveMessageData(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/MessageDownloadState;Ljava/lang/String;)Lapp/k9mail/legacy/mailstore/SaveMessageData;
    .locals 14

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v2

    .line 8
    invoke-virtual {p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getSentDate()Ljava/util/Date;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-wide v4, v2

    .line 20
    :goto_0
    iget-object p0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mInternalDate:Ljava/util/Date;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    :cond_1
    move-wide v6, v2

    .line 29
    if-nez p3, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getSubject()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    move-object v2, p0

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move-object/from16 v2, p3

    .line 38
    .line 39
    :goto_1
    const-string p0, "multipart/encrypted"

    .line 40
    .line 41
    const-string v0, "application/pkcs7-mime"

    .line 42
    .line 43
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p1, p0}, Landroidx/collection/internal/Lock;->containsPartWithMimeType(Lcom/fsck/k9/mail/Part;[Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    const/4 v3, 0x0

    .line 52
    if-nez p0, :cond_4

    .line 53
    .line 54
    invoke-static {p1}, Lcom/fsck/k9/message/extractors/TextPartFinder;->findFirstTextPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Part;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {p0}, Landroidx/work/Operation$State;->isPartPgpInlineEncrypted(Lcom/fsck/k9/mail/Part;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    move-object p0, v3

    .line 66
    goto :goto_3

    .line 67
    :cond_4
    :goto_2
    new-instance p0, Lcom/fsck/k9/crypto/EncryptionResult;

    .line 68
    .line 69
    invoke-direct {p0}, Lcom/fsck/k9/crypto/EncryptionResult;-><init>()V

    .line 70
    .line 71
    .line 72
    :goto_3
    if-eqz p0, :cond_5

    .line 73
    .line 74
    new-instance v0, Lapp/k9mail/legacy/mailstore/SaveMessageData;

    .line 75
    .line 76
    iget-object v9, p0, Lcom/fsck/k9/crypto/EncryptionResult;->previewResult:Lokio/PriorityQueue;

    .line 77
    .line 78
    const/4 v10, 0x0

    .line 79
    iget-object v11, p0, Lcom/fsck/k9/crypto/EncryptionResult;->encryptionType:Ljava/lang/String;

    .line 80
    .line 81
    const/4 v8, 0x0

    .line 82
    move-object v1, p1

    .line 83
    move-wide v3, v4

    .line 84
    move-wide v5, v6

    .line 85
    move-object/from16 v7, p2

    .line 86
    .line 87
    invoke-direct/range {v0 .. v11}, Lapp/k9mail/legacy/mailstore/SaveMessageData;-><init>(Lcom/fsck/k9/mail/internet/MimeMessage;Ljava/lang/String;JJLcom/fsck/k9/mail/MessageDownloadState;ILokio/PriorityQueue;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v0

    .line 91
    :cond_5
    new-instance p0, Lapp/k9mail/legacy/mailstore/SaveMessageData;

    .line 92
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v3, v0}, Lcom/fsck/k9/mail/internet/JisSupport;->findViewablesAndAttachments(Lcom/fsck/k9/mail/Part;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    invoke-static {p1}, Lcom/fsck/k9/message/extractors/TextPartFinder;->findFirstTextPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Part;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const/16 v8, 0x8

    .line 110
    .line 111
    if-eqz v0, :cond_7

    .line 112
    .line 113
    invoke-interface {v0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    if-nez v10, :cond_6

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_6
    const/4 v10, 0x4

    .line 121
    const/4 v11, 0x0

    .line 122
    :try_start_0
    invoke-static {v0}, Lcom/fsck/k9/message/extractors/PreviewTextExtractor;->extractPreview(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-instance v12, Lokio/PriorityQueue;

    .line 127
    .line 128
    const/4 v13, 0x2

    .line 129
    invoke-direct {v12, v13, v0, v8}, Lokio/PriorityQueue;-><init>(ILjava/io/Serializable;I)V
    :try_end_0
    .catch Lcom/fsck/k9/message/extractors/PreviewExtractionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    :goto_4
    move-object v10, v12

    .line 133
    goto :goto_6

    .line 134
    :catch_0
    move-exception v0

    .line 135
    const-string v12, "Unexpected error while trying to extract preview text"

    .line 136
    .line 137
    new-array v11, v11, [Ljava/lang/Object;

    .line 138
    .line 139
    invoke-static {v0, v12, v11}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    new-instance v12, Lokio/PriorityQueue;

    .line 143
    .line 144
    invoke-direct {v12, v10, v3, v8}, Lokio/PriorityQueue;-><init>(ILjava/io/Serializable;I)V

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :catch_1
    move-exception v0

    .line 149
    const-string v12, "Failed to extract preview text"

    .line 150
    .line 151
    new-array v11, v11, [Ljava/lang/Object;

    .line 152
    .line 153
    invoke-static {v0, v12, v11}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    new-instance v12, Lokio/PriorityQueue;

    .line 157
    .line 158
    invoke-direct {v12, v10, v3, v8}, Lokio/PriorityQueue;-><init>(ILjava/io/Serializable;I)V

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_7
    :goto_5
    new-instance v12, Lokio/PriorityQueue;

    .line 163
    .line 164
    const/4 v0, 0x1

    .line 165
    invoke-direct {v12, v0, v3, v8}, Lokio/PriorityQueue;-><init>(ILjava/io/Serializable;I)V

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :goto_6
    invoke-static {p1}, Lcom/fsck/k9/message/extractors/TextPartFinder;->findFirstTextPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Part;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    if-eqz v0, :cond_9

    .line 174
    .line 175
    invoke-interface {v0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    if-nez v8, :cond_8

    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_8
    const-wide/32 v11, 0x32000

    .line 183
    .line 184
    .line 185
    invoke-static {v0, v11, v12}, Lcom/fsck/k9/mail/internet/JisSupport;->getTextFromPart(Lcom/fsck/k9/mail/Part;J)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-interface {v0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    const-string v8, "text/html"

    .line 194
    .line 195
    invoke-static {v0, v8}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-nez v0, :cond_a

    .line 200
    .line 201
    :cond_9
    :goto_7
    move-object v11, v3

    .line 202
    goto :goto_8

    .line 203
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    invoke-static {v3}, Landroidx/work/OperationKt;->htmlToText(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    goto :goto_7

    .line 211
    :goto_8
    const/4 v12, 0x0

    .line 212
    move-object v1, p0

    .line 213
    move-object/from16 v8, p2

    .line 214
    .line 215
    move-object v3, v2

    .line 216
    move-object v2, p1

    .line 217
    invoke-direct/range {v1 .. v12}, Lapp/k9mail/legacy/mailstore/SaveMessageData;-><init>(Lcom/fsck/k9/mail/internet/MimeMessage;Ljava/lang/String;JJLcom/fsck/k9/mail/MessageDownloadState;ILokio/PriorityQueue;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    return-object v1
.end method
