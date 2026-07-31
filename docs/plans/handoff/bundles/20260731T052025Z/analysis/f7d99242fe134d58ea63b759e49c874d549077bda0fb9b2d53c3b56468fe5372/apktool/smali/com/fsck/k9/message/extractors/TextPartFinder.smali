.class public final Lcom/fsck/k9/message/extractors/TextPartFinder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static findFirstTextPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Part;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/fsck/k9/mail/MimeType;->MIME_TYPE:Lkotlin/text/Regex;

    .line 5
    .line 6
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/fsck/k9/mail/K9MailLib;->parseOrNull(Ljava/lang/String;)Lcom/fsck/k9/mail/MimeType;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    instance-of v2, v1, Lcom/fsck/k9/mail/Multipart;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_b

    .line 22
    .line 23
    sget-object p0, Lcom/fsck/k9/message/extractors/TextPartFinderKt;->MULTIPART_ALTERNATIVE:Lcom/fsck/k9/mail/MimeType;

    .line 24
    .line 25
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_6

    .line 30
    .line 31
    check-cast v1, Lcom/fsck/k9/mail/Multipart;

    .line 32
    .line 33
    iget-object p0, v1, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 54
    .line 55
    sget-object v1, Lcom/fsck/k9/mail/MimeType;->MIME_TYPE:Lkotlin/text/Regex;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getMimeType()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Lcom/fsck/k9/mail/K9MailLib;->parseOrNull(Ljava/lang/String;)Lcom/fsck/k9/mail/MimeType;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, v0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;

    .line 66
    .line 67
    instance-of v2, v2, Lcom/fsck/k9/mail/Multipart;

    .line 68
    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    invoke-static {v0}, Lcom/fsck/k9/message/extractors/TextPartFinder;->findFirstTextPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Part;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-nez v0, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    sget-object v2, Lcom/fsck/k9/message/extractors/TextPartFinderKt;->TEXT_PLAIN:Lcom/fsck/k9/mail/MimeType;

    .line 79
    .line 80
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_2
    :goto_1
    move-object v3, v0

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    sget-object v2, Lcom/fsck/k9/message/extractors/TextPartFinderKt;->TEXT_PLAIN:Lcom/fsck/k9/mail/MimeType;

    .line 90
    .line 91
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    return-object v0

    .line 98
    :cond_4
    sget-object v2, Lcom/fsck/k9/message/extractors/TextPartFinderKt;->TEXT_HTML:Lcom/fsck/k9/mail/MimeType;

    .line 99
    .line 100
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_0

    .line 105
    .line 106
    if-nez v3, :cond_0

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    return-object v3

    .line 110
    :cond_6
    check-cast v1, Lcom/fsck/k9/mail/Multipart;

    .line 111
    .line 112
    iget-object p0, v1, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    :cond_7
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_c

    .line 127
    .line 128
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 133
    .line 134
    sget-object v1, Lcom/fsck/k9/mail/MimeType;->MIME_TYPE:Lkotlin/text/Regex;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getMimeType()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-static {v1}, Lcom/fsck/k9/mail/K9MailLib;->parseOrNull(Ljava/lang/String;)Lcom/fsck/k9/mail/MimeType;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    iget-object v2, v0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;

    .line 145
    .line 146
    instance-of v2, v2, Lcom/fsck/k9/mail/Multipart;

    .line 147
    .line 148
    if-eqz v2, :cond_9

    .line 149
    .line 150
    invoke-static {v0}, Lcom/fsck/k9/message/extractors/TextPartFinder;->findFirstTextPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Part;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    if-nez v0, :cond_8

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_8
    return-object v0

    .line 158
    :cond_9
    sget-object v2, Lcom/fsck/k9/message/extractors/TextPartFinderKt;->TEXT_PLAIN:Lcom/fsck/k9/mail/MimeType;

    .line 159
    .line 160
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-nez v2, :cond_a

    .line 165
    .line 166
    sget-object v2, Lcom/fsck/k9/message/extractors/TextPartFinderKt;->TEXT_HTML:Lcom/fsck/k9/mail/MimeType;

    .line 167
    .line 168
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_7

    .line 173
    .line 174
    :cond_a
    return-object v0

    .line 175
    :cond_b
    sget-object v1, Lcom/fsck/k9/message/extractors/TextPartFinderKt;->TEXT_PLAIN:Lcom/fsck/k9/mail/MimeType;

    .line 176
    .line 177
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-nez v1, :cond_d

    .line 182
    .line 183
    sget-object v1, Lcom/fsck/k9/message/extractors/TextPartFinderKt;->TEXT_HTML:Lcom/fsck/k9/mail/MimeType;

    .line 184
    .line 185
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_c

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_c
    return-object v3

    .line 193
    :cond_d
    :goto_3
    return-object p0
.end method
