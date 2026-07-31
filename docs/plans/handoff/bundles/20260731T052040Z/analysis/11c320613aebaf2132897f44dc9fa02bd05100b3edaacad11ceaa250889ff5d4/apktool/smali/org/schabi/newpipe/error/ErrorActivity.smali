.class public final Lorg/schabi/newpipe/error/ErrorActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/error/ErrorActivity$Companion;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public binding:Lorg/schabi/newpipe/databinding/ActivityErrorBinding;

.field public currentTimeStamp:Ljava/lang/String;

.field public errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/error/ErrorActivity$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/error/ErrorActivity;->Companion:Lorg/schabi/newpipe/error/ErrorActivity$Companion;

    .line 7
    .line 8
    const-class v0, Lorg/schabi/newpipe/error/ErrorActivity;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sput-object v0, Lorg/schabi/newpipe/error/ErrorActivity;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getOsString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "os.name"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v1, Landroid/os/Build$VERSION;->BASE_OS:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    const-string v1, "Android"

    .line 19
    .line 20
    :cond_0
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 21
    .line 22
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, " "

    .line 33
    .line 34
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, " - "

    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method


# virtual methods
.method public final buildJson()Ljava/lang/String;
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/grack/nanojson/JsonStringWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->object()V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "user_action"

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lorg/schabi/newpipe/error/ErrorActivity;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const-string v4, "errorInfo"

    .line 16
    .line 17
    if-eqz v2, :cond_5

    .line 18
    .line 19
    :try_start_1
    iget-object v2, v2, Lorg/schabi/newpipe/error/ErrorInfo;->userAction:Lorg/schabi/newpipe/error/UserAction;

    .line 20
    .line 21
    invoke-virtual {v2}, Lorg/schabi/newpipe/error/UserAction;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "request"

    .line 29
    .line 30
    iget-object v2, p0, Lorg/schabi/newpipe/error/ErrorActivity;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 31
    .line 32
    if-eqz v2, :cond_4

    .line 33
    .line 34
    iget-object v2, v2, Lorg/schabi/newpipe/error/ErrorInfo;->request:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "content_language"

    .line 40
    .line 41
    invoke-static {p0}, Lorg/schabi/newpipe/util/Localization;->getPreferredLocale(Landroid/content/Context;)Ljava/util/Locale;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    new-instance v5, Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-direct {v5, v6, v2}, Lorg/schabi/newpipe/extractor/localization/Localization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLocalizationCode()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v1, "content_country"

    .line 66
    .line 67
    invoke-static {p0}, Lorg/schabi/newpipe/util/Localization;->getPreferredContentCountry(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v1, "app_language"

    .line 82
    .line 83
    invoke-static {}, Lorg/schabi/newpipe/util/Localization;->getAppLocale()Ljava/util/Locale;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v1, "service"

    .line 98
    .line 99
    iget-object v2, p0, Lorg/schabi/newpipe/error/ErrorActivity;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 100
    .line 101
    if-eqz v2, :cond_3

    .line 102
    .line 103
    sget-object v5, Lorg/schabi/newpipe/error/ErrorInfo;->Companion:Lorg/schabi/newpipe/error/ErrorInfo$Companion;

    .line 104
    .line 105
    iget-object v2, v2, Lorg/schabi/newpipe/error/ErrorInfo;->serviceId:Ljava/lang/Integer;

    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-static {v2}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->getServiceName(Ljava/lang/Integer;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string v1, "package"

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string/jumbo v1, "version"

    .line 127
    .line 128
    .line 129
    const-string v2, "0.29.0"

    .line 130
    .line 131
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v1, "os"

    .line 135
    .line 136
    invoke-static {}, Lorg/schabi/newpipe/error/ErrorActivity;->getOsString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string/jumbo v1, "time"

    .line 144
    .line 145
    .line 146
    iget-object v2, p0, Lorg/schabi/newpipe/error/ErrorActivity;->currentTimeStamp:Ljava/lang/String;

    .line 147
    .line 148
    if-eqz v2, :cond_2

    .line 149
    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const-string v1, "exceptions"

    .line 154
    .line 155
    iget-object v2, p0, Lorg/schabi/newpipe/error/ErrorActivity;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 156
    .line 157
    if-eqz v2, :cond_1

    .line 158
    .line 159
    iget-object v2, v2, Lorg/schabi/newpipe/error/ErrorInfo;->stackTraces:[Ljava/lang/String;

    .line 160
    .line 161
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonStringWriter;->array(Ljava/util/Collection;Ljava/lang/String;)Lcom/grack/nanojson/JsonStringWriter;

    .line 166
    .line 167
    .line 168
    const-string/jumbo v1, "user_comment"

    .line 169
    .line 170
    .line 171
    iget-object p0, p0, Lorg/schabi/newpipe/error/ErrorActivity;->binding:Lorg/schabi/newpipe/databinding/ActivityErrorBinding;

    .line 172
    .line 173
    if-eqz p0, :cond_0

    .line 174
    .line 175
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorCommentBox:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast p0, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 178
    .line 179
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-virtual {v0, v1, p0}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->done()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    return-object p0

    .line 201
    :cond_0
    const-string p0, "binding"

    .line 202
    .line 203
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v3

    .line 207
    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw v3

    .line 211
    :cond_2
    const-string p0, "currentTimeStamp"

    .line 212
    .line 213
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v3

    .line 217
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v3

    .line 221
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw v3

    .line 225
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    :catch_0
    move-exception p0

    .line 230
    sget-object v0, Lorg/schabi/newpipe/error/ErrorActivity;->TAG:Ljava/lang/String;

    .line 231
    .line 232
    const-string v1, "Error while erroring: Could not build json"

    .line 233
    .line 234
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    .line 236
    .line 237
    const-string p0, ""

    .line 238
    .line 239
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lokio/Options$Companion;->getSelectedThemeKey(Landroid/content/Context;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lokio/Options$Companion;->setDayNightMode(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    invoke-static {v0, v1}, Lokio/Options$Companion;->setTheme(Landroid/content/ContextWrapper;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const v2, 0x7f0d001d

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const v2, 0x7f0a014c

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    move-object v8, v5

    .line 38
    check-cast v8, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 39
    .line 40
    if-eqz v8, :cond_11

    .line 41
    .line 42
    const v2, 0x7f0a014d

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    move-object v9, v5

    .line 50
    check-cast v9, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 51
    .line 52
    if-eqz v9, :cond_11

    .line 53
    .line 54
    const v2, 0x7f0a014e

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    move-object v10, v5

    .line 62
    check-cast v10, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 63
    .line 64
    if-eqz v10, :cond_11

    .line 65
    .line 66
    const v2, 0x7f0a014f

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    move-object v11, v5

    .line 74
    check-cast v11, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 75
    .line 76
    if-eqz v11, :cond_11

    .line 77
    .line 78
    const v2, 0x7f0a0150

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    move-object v12, v5

    .line 86
    check-cast v12, Landroid/widget/Button;

    .line 87
    .line 88
    if-eqz v12, :cond_11

    .line 89
    .line 90
    const v2, 0x7f0a0151

    .line 91
    .line 92
    .line 93
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    move-object v13, v5

    .line 98
    check-cast v13, Landroid/widget/Button;

    .line 99
    .line 100
    if-eqz v13, :cond_11

    .line 101
    .line 102
    const v2, 0x7f0a0152

    .line 103
    .line 104
    .line 105
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    move-object v14, v5

    .line 110
    check-cast v14, Landroid/widget/Button;

    .line 111
    .line 112
    if-eqz v14, :cond_11

    .line 113
    .line 114
    const v2, 0x7f0a0153

    .line 115
    .line 116
    .line 117
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    move-object v15, v5

    .line 122
    check-cast v15, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 123
    .line 124
    if-eqz v15, :cond_11

    .line 125
    .line 126
    const v2, 0x7f0a0154

    .line 127
    .line 128
    .line 129
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    move-object/from16 v16, v5

    .line 134
    .line 135
    check-cast v16, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 136
    .line 137
    if-eqz v16, :cond_11

    .line 138
    .line 139
    const v2, 0x7f0a0348

    .line 140
    .line 141
    .line 142
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    check-cast v5, Landroid/widget/ScrollView;

    .line 147
    .line 148
    if-eqz v5, :cond_11

    .line 149
    .line 150
    const v2, 0x7f0a03fe

    .line 151
    .line 152
    .line 153
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    if-eqz v5, :cond_11

    .line 158
    .line 159
    invoke-static {v5}, Lorg/jsoup/nodes/Printer;->bind(Landroid/view/View;)Lorg/jsoup/nodes/Printer;

    .line 160
    .line 161
    .line 162
    move-result-object v17

    .line 163
    new-instance v6, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;

    .line 164
    .line 165
    move-object v7, v1

    .line 166
    check-cast v7, Landroid/widget/FrameLayout;

    .line 167
    .line 168
    invoke-direct/range {v6 .. v17}, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;-><init>(Landroid/widget/FrameLayout;Lorg/schabi/newpipe/views/NewPipeEditText;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/jsoup/nodes/Printer;)V

    .line 169
    .line 170
    .line 171
    iput-object v6, v0, Lorg/schabi/newpipe/error/ErrorActivity;->binding:Lorg/schabi/newpipe/databinding/ActivityErrorBinding;

    .line 172
    .line 173
    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 174
    .line 175
    .line 176
    iget-object v1, v0, Lorg/schabi/newpipe/error/ErrorActivity;->binding:Lorg/schabi/newpipe/databinding/ActivityErrorBinding;

    .line 177
    .line 178
    const-string v2, "binding"

    .line 179
    .line 180
    if-eqz v1, :cond_10

    .line 181
    .line 182
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->toolbarLayout:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v1, Lorg/jsoup/nodes/Printer;

    .line 185
    .line 186
    iget-object v1, v1, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    const/4 v5, 0x1

    .line 198
    if-eqz v1, :cond_0

    .line 199
    .line 200
    invoke-virtual {v1, v5}, Lokio/Options$Companion;->setDisplayHomeAsUpEnabled(Z)V

    .line 201
    .line 202
    .line 203
    const v6, 0x7f13016a

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v6}, Lokio/Options$Companion;->setTitle(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v5}, Lokio/Options$Companion;->setDisplayShowTitleEnabled(Z)V

    .line 210
    .line 211
    .line 212
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    const-string v6, "error_info"

    .line 217
    .line 218
    const-class v7, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 219
    .line 220
    invoke-static {v1, v6, v7}, Landroidx/room/Room;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    check-cast v1, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 228
    .line 229
    iput-object v1, v0, Lorg/schabi/newpipe/error/ErrorActivity;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 230
    .line 231
    iget-object v1, v0, Lorg/schabi/newpipe/error/ErrorActivity;->binding:Lorg/schabi/newpipe/databinding/ActivityErrorBinding;

    .line 232
    .line 233
    if-eqz v1, :cond_f

    .line 234
    .line 235
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorSorryView:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 238
    .line 239
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    const v6, 0x7f1301fa

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    const-string v7, "\n"

    .line 255
    .line 256
    invoke-static {v1, v7, v6}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    iget-object v6, v0, Lorg/schabi/newpipe/error/ErrorActivity;->binding:Lorg/schabi/newpipe/databinding/ActivityErrorBinding;

    .line 261
    .line 262
    if-eqz v6, :cond_e

    .line 263
    .line 264
    iget-object v6, v6, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorSorryView:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v6, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 267
    .line 268
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    .line 270
    .line 271
    invoke-static {}, Lj$/time/ZonedDateTime;->now()Lj$/time/ZonedDateTime;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    sget-object v6, Lj$/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Lj$/time/format/DateTimeFormatter;

    .line 276
    .line 277
    invoke-virtual {v1, v6}, Lj$/time/ZonedDateTime;->format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    iput-object v1, v0, Lorg/schabi/newpipe/error/ErrorActivity;->currentTimeStamp:Ljava/lang/String;

    .line 285
    .line 286
    iget-object v1, v0, Lorg/schabi/newpipe/error/ErrorActivity;->binding:Lorg/schabi/newpipe/databinding/ActivityErrorBinding;

    .line 287
    .line 288
    if-eqz v1, :cond_d

    .line 289
    .line 290
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorReportEmailButton:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v1, Landroid/widget/Button;

    .line 293
    .line 294
    new-instance v6, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda0;

    .line 295
    .line 296
    invoke-direct {v6, v0, v4}, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/error/ErrorActivity;I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    .line 301
    .line 302
    iget-object v1, v0, Lorg/schabi/newpipe/error/ErrorActivity;->binding:Lorg/schabi/newpipe/databinding/ActivityErrorBinding;

    .line 303
    .line 304
    if-eqz v1, :cond_c

    .line 305
    .line 306
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorReportCopyButton:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast v1, Landroid/widget/Button;

    .line 309
    .line 310
    new-instance v6, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda0;

    .line 311
    .line 312
    invoke-direct {v6, v0, v5}, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/error/ErrorActivity;I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    .line 317
    .line 318
    iget-object v1, v0, Lorg/schabi/newpipe/error/ErrorActivity;->binding:Lorg/schabi/newpipe/databinding/ActivityErrorBinding;

    .line 319
    .line 320
    if-eqz v1, :cond_b

    .line 321
    .line 322
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorReportGitHubButton:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast v1, Landroid/widget/Button;

    .line 325
    .line 326
    new-instance v5, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda0;

    .line 327
    .line 328
    const/4 v6, 0x2

    .line 329
    invoke-direct {v5, v0, v6}, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/error/ErrorActivity;I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    .line 334
    .line 335
    iget-object v1, v0, Lorg/schabi/newpipe/error/ErrorActivity;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 336
    .line 337
    const-string v5, "errorInfo"

    .line 338
    .line 339
    if-eqz v1, :cond_a

    .line 340
    .line 341
    iget-object v6, v0, Lorg/schabi/newpipe/error/ErrorActivity;->binding:Lorg/schabi/newpipe/databinding/ActivityErrorBinding;

    .line 342
    .line 343
    if-eqz v6, :cond_9

    .line 344
    .line 345
    iget-object v6, v6, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorInfoLabelsView:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v6, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 348
    .line 349
    const v8, 0x7f130229

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v8

    .line 356
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    .line 358
    .line 359
    iget-object v6, v1, Lorg/schabi/newpipe/error/ErrorInfo;->userAction:Lorg/schabi/newpipe/error/UserAction;

    .line 360
    .line 361
    invoke-virtual {v6}, Lorg/schabi/newpipe/error/UserAction;->getMessage()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    iget-object v8, v1, Lorg/schabi/newpipe/error/ErrorInfo;->request:Ljava/lang/String;

    .line 366
    .line 367
    invoke-static {v0}, Lorg/schabi/newpipe/util/Localization;->getPreferredLocale(Landroid/content/Context;)Ljava/util/Locale;

    .line 368
    .line 369
    .line 370
    move-result-object v9

    .line 371
    new-instance v10, Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 372
    .line 373
    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v11

    .line 377
    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v9

    .line 381
    invoke-direct {v10, v11, v9}, Lorg/schabi/newpipe/extractor/localization/Localization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v10}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLocalizationCode()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v9

    .line 388
    invoke-static {v0}, Lorg/schabi/newpipe/util/Localization;->getPreferredContentCountry(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 389
    .line 390
    .line 391
    move-result-object v10

    .line 392
    invoke-virtual {v10}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v10

    .line 396
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    invoke-static {}, Lorg/schabi/newpipe/util/Localization;->getAppLocale()Ljava/util/Locale;

    .line 400
    .line 401
    .line 402
    move-result-object v11

    .line 403
    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v11

    .line 407
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    sget-object v12, Lorg/schabi/newpipe/error/ErrorInfo;->Companion:Lorg/schabi/newpipe/error/ErrorInfo$Companion;

    .line 411
    .line 412
    iget-object v1, v1, Lorg/schabi/newpipe/error/ErrorInfo;->serviceId:Ljava/lang/Integer;

    .line 413
    .line 414
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    .line 416
    .line 417
    invoke-static {v1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->getServiceName(Ljava/lang/Integer;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    iget-object v12, v0, Lorg/schabi/newpipe/error/ErrorActivity;->currentTimeStamp:Ljava/lang/String;

    .line 422
    .line 423
    if-eqz v12, :cond_8

    .line 424
    .line 425
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v13

    .line 429
    invoke-static {}, Lorg/schabi/newpipe/error/ErrorActivity;->getOsString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v14

    .line 433
    new-instance v15, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    const-string v1, "\n0.29.0\n"

    .line 484
    .line 485
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    iget-object v6, v0, Lorg/schabi/newpipe/error/ErrorActivity;->binding:Lorg/schabi/newpipe/databinding/ActivityErrorBinding;

    .line 496
    .line 497
    if-eqz v6, :cond_7

    .line 498
    .line 499
    iget-object v6, v6, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorInfosView:Ljava/lang/Object;

    .line 500
    .line 501
    check-cast v6, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 502
    .line 503
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    .line 505
    .line 506
    iget-object v1, v0, Lorg/schabi/newpipe/error/ErrorActivity;->binding:Lorg/schabi/newpipe/databinding/ActivityErrorBinding;

    .line 507
    .line 508
    if-eqz v1, :cond_6

    .line 509
    .line 510
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorMessageView:Ljava/lang/Object;

    .line 511
    .line 512
    check-cast v1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 513
    .line 514
    iget-object v6, v0, Lorg/schabi/newpipe/error/ErrorActivity;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 515
    .line 516
    if-eqz v6, :cond_5

    .line 517
    .line 518
    iget-object v6, v6, Lorg/schabi/newpipe/error/ErrorInfo;->message:Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 519
    .line 520
    invoke-virtual {v6, v0}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;->getText(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 521
    .line 522
    .line 523
    move-result-object v6

    .line 524
    invoke-static {v1, v6}, Lkotlin/math/MathKt;->setTextWithLinks(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 525
    .line 526
    .line 527
    iget-object v1, v0, Lorg/schabi/newpipe/error/ErrorActivity;->binding:Lorg/schabi/newpipe/databinding/ActivityErrorBinding;

    .line 528
    .line 529
    if-eqz v1, :cond_4

    .line 530
    .line 531
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorView:Ljava/lang/Object;

    .line 532
    .line 533
    check-cast v1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 534
    .line 535
    iget-object v2, v0, Lorg/schabi/newpipe/error/ErrorActivity;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 536
    .line 537
    if-eqz v2, :cond_3

    .line 538
    .line 539
    iget-object v2, v2, Lorg/schabi/newpipe/error/ErrorInfo;->stackTraces:[Ljava/lang/String;

    .line 540
    .line 541
    const-string v6, "-------------------------------------\n"

    .line 542
    .line 543
    const/16 v7, 0x38

    .line 544
    .line 545
    const-string v8, "-------------------------------------"

    .line 546
    .line 547
    invoke-static {v2, v6, v8, v7}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    .line 553
    .line 554
    iget-object v0, v0, Lorg/schabi/newpipe/error/ErrorActivity;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 555
    .line 556
    if-eqz v0, :cond_2

    .line 557
    .line 558
    iget-object v0, v0, Lorg/schabi/newpipe/error/ErrorInfo;->stackTraces:[Ljava/lang/String;

    .line 559
    .line 560
    array-length v1, v0

    .line 561
    :goto_0
    if-ge v4, v1, :cond_1

    .line 562
    .line 563
    aget-object v2, v0, v4

    .line 564
    .line 565
    sget-object v3, Lorg/schabi/newpipe/error/ErrorActivity;->TAG:Ljava/lang/String;

    .line 566
    .line 567
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    .line 569
    .line 570
    add-int/lit8 v4, v4, 0x1

    .line 571
    .line 572
    goto :goto_0

    .line 573
    :cond_1
    return-void

    .line 574
    :cond_2
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    throw v3

    .line 578
    :cond_3
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    throw v3

    .line 582
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    throw v3

    .line 586
    :cond_5
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    throw v3

    .line 590
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    throw v3

    .line 594
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    throw v3

    .line 598
    :cond_8
    const-string v0, "currentTimeStamp"

    .line 599
    .line 600
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    throw v3

    .line 604
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    throw v3

    .line 608
    :cond_a
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    throw v3

    .line 612
    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    throw v3

    .line 616
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    throw v3

    .line 620
    :cond_d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    throw v3

    .line 624
    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    throw v3

    .line 628
    :cond_f
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    throw v3

    .line 632
    :cond_10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    throw v3

    .line 636
    :cond_11
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    const-string v1, "Missing required view with ID: "

    .line 645
    .line 646
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const v0, 0x7f0f0003

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const v0, 0x102002c

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    const v0, 0x7f0a024e

    .line 19
    .line 20
    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const v0, 0x7f13016a

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Lorg/schabi/newpipe/error/ErrorActivity;->buildJson()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v2, ""

    .line 39
    .line 40
    invoke-static {p1, v0, p0, v2}, Landroidx/transition/Transition$Impl26;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method public final openPrivacyPolicyDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 7
    .line 8
    const v2, 0x1080027

    .line 9
    .line 10
    .line 11
    iput v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    .line 12
    .line 13
    const v2, 0x7f1303fc

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 17
    .line 18
    .line 19
    const v2, 0x7f1304be

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    iput-boolean v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 27
    .line 28
    new-instance v1, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda3;

    .line 29
    .line 30
    invoke-direct {v1, p1, v2}, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;I)V

    .line 31
    .line 32
    .line 33
    const v3, 0x7f13040c

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda4;

    .line 40
    .line 41
    invoke-direct {v1, v2, p2, p0, p1}, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const p0, 0x7f13001b

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const p1, 0x7f1300d2

    .line 52
    .line 53
    .line 54
    const/4 p2, 0x0

    .line 55
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 60
    .line 61
    .line 62
    return-void
.end method
