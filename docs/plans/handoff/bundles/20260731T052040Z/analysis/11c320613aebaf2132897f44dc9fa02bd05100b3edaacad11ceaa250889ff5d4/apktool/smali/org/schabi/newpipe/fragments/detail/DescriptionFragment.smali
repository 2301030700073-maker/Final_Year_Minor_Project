.class public Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;
.super Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDescription()Lorg/schabi/newpipe/extractor/stream/Description;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getService()Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getService()Lorg/schabi/newpipe/extractor/StreamingService;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getServiceId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getStreamUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getTags()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getTags()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final setupMetadata(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V
    .locals 8

    .line 1
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v7, 0x1

    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 14
    .line 15
    iget-object v1, v1, Lorg/koin/core/Koin;->optionRegistry:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 18
    .line 19
    iget-object v2, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 20
    .line 21
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 22
    .line 23
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->offsetDateTime()Lj$/time/OffsetDateTime;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sget-object v4, Lorg/schabi/newpipe/util/Localization;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    sget-object v4, Lj$/time/format/FormatStyle;->MEDIUM:Lj$/time/format/FormatStyle;

    .line 34
    .line 35
    invoke-static {v4}, Lj$/time/format/DateTimeFormatter;->ofLocalizedDate(Lj$/time/format/FormatStyle;)Lj$/time/format/DateTimeFormatter;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-static {}, Lorg/schabi/newpipe/util/Localization;->getAppLocale()Ljava/util/Locale;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v4, v5}, Lj$/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v3, v5}, Lj$/time/OffsetDateTime;->atZoneSameInstant(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v4, v3}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    new-array v4, v7, [Ljava/lang/Object;

    .line 60
    .line 61
    aput-object v3, v4, v6

    .line 62
    .line 63
    const v3, 0x7f13051d

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 75
    .line 76
    iget-object v1, v1, Lorg/koin/core/Koin;->optionRegistry:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 79
    .line 80
    const/16 v2, 0x8

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    :goto_0
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 86
    .line 87
    if-nez v1, :cond_1

    .line 88
    .line 89
    return-void

    .line 90
    :cond_1
    const v4, 0x7f1302da

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getCategory()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    const/4 v3, 0x0

    .line 98
    move-object v0, p0

    .line 99
    move-object v1, p1

    .line 100
    move-object v2, p2

    .line 101
    invoke-virtual/range {v0 .. v5}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ZILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 105
    .line 106
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getLicence()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    const v4, 0x7f1302dd

    .line 111
    .line 112
    .line 113
    move-object v1, p1

    .line 114
    invoke-virtual/range {v0 .. v5}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ZILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 118
    .line 119
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getPrivacy()Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 126
    .line 127
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getPrivacy()Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_5

    .line 136
    .line 137
    if-eq v1, v7, :cond_4

    .line 138
    .line 139
    const/4 v2, 0x2

    .line 140
    if-eq v1, v2, :cond_3

    .line 141
    .line 142
    const/4 v2, 0x3

    .line 143
    if-eq v1, v2, :cond_2

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_2
    const v6, 0x7f1302df

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_3
    const v6, 0x7f1302e0

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_4
    const v6, 0x7f1302e2

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_5
    const v6, 0x7f1302e1

    .line 159
    .line 160
    .line 161
    :goto_1
    if-eqz v6, :cond_6

    .line 162
    .line 163
    const v4, 0x7f1302de

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    const/4 v3, 0x0

    .line 171
    move-object v0, p0

    .line 172
    move-object v1, p1

    .line 173
    move-object v2, p2

    .line 174
    invoke-virtual/range {v0 .. v5}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ZILjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_6
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 178
    .line 179
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAgeLimit()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_7

    .line 184
    .line 185
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 186
    .line 187
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAgeLimit()I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    const/4 v3, 0x0

    .line 196
    const v4, 0x7f1302d3

    .line 197
    .line 198
    .line 199
    move-object v0, p0

    .line 200
    move-object v1, p1

    .line 201
    move-object v2, p2

    .line 202
    invoke-virtual/range {v0 .. v5}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ZILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :cond_7
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 206
    .line 207
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getLanguageInfo()Ljava/util/Locale;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    if-eqz v1, :cond_8

    .line 212
    .line 213
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 214
    .line 215
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getLanguageInfo()Ljava/util/Locale;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-static {}, Lorg/schabi/newpipe/util/Localization;->getAppLocale()Ljava/util/Locale;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v1, v2}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    const/4 v3, 0x0

    .line 228
    const v4, 0x7f1302dc

    .line 229
    .line 230
    .line 231
    move-object v0, p0

    .line 232
    move-object v1, p1

    .line 233
    move-object v2, p2

    .line 234
    invoke-virtual/range {v0 .. v5}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ZILjava/lang/String;)V

    .line 235
    .line 236
    .line 237
    :cond_8
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 238
    .line 239
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSupportInfo()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    const/4 v3, 0x1

    .line 244
    const v4, 0x7f1302e5

    .line 245
    .line 246
    .line 247
    move-object v0, p0

    .line 248
    move-object v1, p1

    .line 249
    move-object v2, p2

    .line 250
    invoke-virtual/range {v0 .. v5}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ZILjava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 254
    .line 255
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getHost()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    const v4, 0x7f1302db

    .line 260
    .line 261
    .line 262
    move-object v1, p1

    .line 263
    invoke-virtual/range {v0 .. v5}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ZILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 267
    .line 268
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getThumbnails()Ljava/util/List;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    const v4, 0x7f1302e7

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0, p1, p2, v4, v3}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addImagesMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ILjava/util/List;)V

    .line 276
    .line 277
    .line 278
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 279
    .line 280
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderAvatars()Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    const v4, 0x7f1302e8

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0, p1, p2, v4, v3}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addImagesMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ILjava/util/List;)V

    .line 288
    .line 289
    .line 290
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 291
    .line 292
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubChannelAvatars()Ljava/util/List;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    const v4, 0x7f1302e3

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0, p1, p2, v4, v3}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addImagesMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ILjava/util/List;)V

    .line 300
    .line 301
    .line 302
    return-void
.end method
