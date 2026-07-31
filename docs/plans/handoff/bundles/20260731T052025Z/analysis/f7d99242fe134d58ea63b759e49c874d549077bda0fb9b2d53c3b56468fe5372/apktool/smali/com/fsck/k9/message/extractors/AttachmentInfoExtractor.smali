.class public final Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static extractAttachmentInfo(Lcom/fsck/k9/mail/Part;Landroid/net/Uri;JZ)Lcom/fsck/k9/mailstore/AttachmentViewInfo;
    .locals 9

    .line 180
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v2

    .line 183
    const-string v3, "filename"

    invoke-static {v2, v3}, Lcom/fsck/k9/mail/internet/JisSupport;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 184
    const-string v3, "name"

    invoke-static {v0, v3}, Lcom/fsck/k9/mail/internet/JisSupport;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    const/4 v0, 0x0

    if-nez v3, :cond_3

    if-eqz v1, :cond_1

    .line 185
    invoke-static {v1}, Lcom/fsck/k9/helper/FileHelper;->getExtensionByMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_2

    .line 186
    const-string v4, "."

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v3, ""

    :goto_1
    const-string v4, "noname"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-eqz v2, :cond_4

    .line 187
    invoke-static {v2, v0}, Lcom/fsck/k9/mail/internet/JisSupport;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "^(?i:inline)"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Content-ID"

    .line 188
    invoke-interface {p0, v0}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_4

    if-eqz v1, :cond_4

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 189
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "image/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    move v6, v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    const-wide/16 v4, -0x1

    cmp-long v0, p2, v4

    if-eqz v0, :cond_5

    goto :goto_4

    .line 190
    :cond_5
    const-string p2, "size"

    invoke-static {v2, p2}, Lcom/fsck/k9/mail/internet/JisSupport;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 191
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long p2, p2

    goto :goto_4

    :catch_0
    :cond_6
    move-wide p2, v4

    .line 192
    :goto_4
    new-instance v0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    move-object v7, p0

    move-object v5, p1

    move v8, p4

    move-object v2, v3

    move-wide v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/mailstore/AttachmentViewInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;ZLcom/fsck/k9/mail/Part;Z)V

    return-object v0
.end method


# virtual methods
.method public final extractAttachmentInfo(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/AttachmentViewInfo;
    .locals 9

    .line 1
    instance-of v0, p1, Lcom/fsck/k9/mailstore/LocalPart;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    move-object p0, p1

    .line 8
    check-cast p0, Lcom/fsck/k9/mailstore/LocalPart;

    .line 9
    .line 10
    invoke-interface {p0}, Lcom/fsck/k9/mailstore/LocalPart;->getAccountUuid()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {p0}, Lcom/fsck/k9/mailstore/LocalPart;->getPartId()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    invoke-interface {p0}, Lcom/fsck/k9/mailstore/LocalPart;->getSize()J

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    invoke-interface {p1}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    move v1, v2

    .line 29
    :cond_0
    sget-object p0, Lcom/fsck/k9/provider/AttachmentProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :goto_0
    move v2, v1

    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_1
    instance-of v0, p1, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    move-object p0, p1

    .line 59
    check-cast p0, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 64
    .line 65
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 66
    .line 67
    iget-wide v3, p0, Lcom/fsck/k9/mailstore/LocalMessage;->messagePartId:J

    .line 68
    .line 69
    iget p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSize:I

    .line 70
    .line 71
    int-to-long v5, p0

    .line 72
    move-object p0, p1

    .line 73
    check-cast p0, Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 74
    .line 75
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    .line 76
    .line 77
    if-eqz p0, :cond_2

    .line 78
    .line 79
    move v1, v2

    .line 80
    :cond_2
    sget-object p0, Lcom/fsck/k9/provider/AttachmentProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    goto :goto_0

    .line 103
    :cond_3
    invoke-interface {p1}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    instance-of v3, v0, Lcom/fsck/k9/mailstore/DeferredFileBody;

    .line 108
    .line 109
    const/4 v4, 0x0

    .line 110
    if-eqz v3, :cond_6

    .line 111
    .line 112
    check-cast v0, Lcom/fsck/k9/mailstore/DeferredFileBody;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/DeferredFileBody;->getSize()J

    .line 115
    .line 116
    .line 117
    move-result-wide v5

    .line 118
    invoke-interface {p1}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    :try_start_0
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/DeferredFileBody;->getFile()Ljava/io/File;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    iget-object p0, p0, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;->context:Landroid/content/Context;

    .line 127
    .line 128
    iget-object v0, v0, Lcom/fsck/k9/mailstore/DeferredFileBody;->encoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    .line 130
    :try_start_1
    sget-object v8, Lcom/fsck/k9/provider/DecryptedFileProvider;->AUTHORITY:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {p0, v8, v7}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    if-eqz v3, :cond_4

    .line 141
    .line 142
    const-string v7, "mime_type"

    .line 143
    .line 144
    invoke-virtual {p0, v7, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 145
    .line 146
    .line 147
    :cond_4
    if-eqz v0, :cond_5

    .line 148
    .line 149
    const-string v3, "encoding"

    .line 150
    .line 151
    invoke-virtual {p0, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 152
    .line 153
    .line 154
    :cond_5
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 155
    .line 156
    .line 157
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    :catch_0
    :goto_1
    move-object p0, v4

    .line 159
    goto :goto_2

    .line 160
    :catch_1
    move-exception p0

    .line 161
    const-string v0, "Decrypted temp file (no longer?) exists!"

    .line 162
    .line 163
    new-array v1, v1, [Ljava/lang/Object;

    .line 164
    .line 165
    invoke-static {p0, v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :goto_2
    invoke-static {p1, p0, v5, v6, v2}, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;->extractAttachmentInfo(Lcom/fsck/k9/mail/Part;Landroid/net/Uri;JZ)Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    return-object p0

    .line 174
    :cond_6
    const-string p0, "Unsupported part type provided"

    .line 175
    .line 176
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    return-object v4
.end method
