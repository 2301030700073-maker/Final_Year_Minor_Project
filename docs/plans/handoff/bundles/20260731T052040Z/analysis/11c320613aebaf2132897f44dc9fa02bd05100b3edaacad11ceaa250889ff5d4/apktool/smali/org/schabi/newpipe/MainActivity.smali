.class public Lorg/schabi/newpipe/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public broadcastReceiver:Lorg/schabi/newpipe/MainActivity$3;

.field public drawerHeaderBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

.field public drawerLayoutBinding:Lorg/jsoup/parser/TokenData;

.field public mainBinding:Lorg/jsoup/nodes/Printer;

.field public servicesShown:Z

.field public sharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field public sharedPreferences:Landroid/content/SharedPreferences;

.field public toggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

.field public toolbarLayoutBinding:Lorg/jsoup/nodes/Printer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/schabi/newpipe/MainActivity;->servicesShown:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final addDrawerMenuForCurrentService()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->drawerLayoutBinding:Lorg/jsoup/parser/TokenData;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x7f1304ed

    .line 12
    .line 13
    .line 14
    const v2, 0x7f0a0253

    .line 15
    .line 16
    .line 17
    const/4 v3, -0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-interface {v0, v2, v3, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const v1, 0x7f08015e

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->drawerLayoutBinding:Lorg/jsoup/parser/TokenData;

    .line 30
    .line 31
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, -0x2

    .line 40
    const v3, 0x7f1301f2

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v2, v1, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const v1, 0x7f080158

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->drawerLayoutBinding:Lorg/jsoup/parser/TokenData;

    .line 54
    .line 55
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/4 v1, -0x3

    .line 64
    const v3, 0x7f1304e9

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v2, v1, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const v1, 0x7f0800ea

    .line 72
    .line 73
    .line 74
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->drawerLayoutBinding:Lorg/jsoup/parser/TokenData;

    .line 78
    .line 79
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const/4 v1, -0x4

    .line 88
    const v3, 0x7f13011f

    .line 89
    .line 90
    .line 91
    invoke-interface {v0, v2, v1, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const v1, 0x7f08010d

    .line 96
    .line 97
    .line 98
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->drawerLayoutBinding:Lorg/jsoup/parser/TokenData;

    .line 102
    .line 103
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const/4 v1, -0x5

    .line 112
    const v3, 0x7f13001e

    .line 113
    .line 114
    .line 115
    invoke-interface {v0, v2, v1, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const v1, 0x7f080116

    .line 120
    .line 121
    .line 122
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 123
    .line 124
    .line 125
    invoke-static {p0}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedServiceId(Landroid/content/Context;)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-static {v0}, Lus/shandian/giga/util/Utility;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getKioskList()Lorg/jsoup/parser/TokenData;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v0, Ljava/util/HashMap;

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    move v1, v4

    .line 150
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    const/4 v3, 0x1

    .line 155
    if-eqz v2, :cond_0

    .line 156
    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    check-cast v2, Ljava/lang/String;

    .line 162
    .line 163
    iget-object v5, p0, Lorg/schabi/newpipe/MainActivity;->drawerLayoutBinding:Lorg/jsoup/parser/TokenData;

    .line 164
    .line 165
    iget-object v5, v5, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v5, Lcom/google/android/material/navigation/NavigationView;

    .line 168
    .line 169
    invoke-virtual {v5}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    const v6, 0x7f0a0250

    .line 174
    .line 175
    .line 176
    invoke-static {p0, v2}, Lkotlin/ranges/RangesKt;->getTranslatedKioskName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    invoke-interface {v5, v6, v1, v4, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-static {v2}, Lkotlin/ranges/RangesKt;->getKioskIcon(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 189
    .line 190
    .line 191
    add-int/2addr v1, v3

    .line 192
    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->drawerLayoutBinding:Lorg/jsoup/parser/TokenData;

    .line 194
    .line 195
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    const v1, 0x7f130458

    .line 204
    .line 205
    .line 206
    const v2, 0x7f0a0251

    .line 207
    .line 208
    .line 209
    invoke-interface {v0, v2, v4, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    const v1, 0x7f080150

    .line 214
    .line 215
    .line 216
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->drawerLayoutBinding:Lorg/jsoup/parser/TokenData;

    .line 220
    .line 221
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    const v1, 0x7f13010a

    .line 230
    .line 231
    .line 232
    invoke-interface {v0, v2, v3, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    const v1, 0x7f0801ce

    .line 237
    .line 238
    .line 239
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 240
    .line 241
    .line 242
    iget-object p0, p0, Lorg/schabi/newpipe/MainActivity;->drawerLayoutBinding:Lorg/jsoup/parser/TokenData;

    .line 243
    .line 244
    iget-object p0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast p0, Lcom/google/android/material/navigation/NavigationView;

    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    const/4 v0, 0x2

    .line 253
    const v1, 0x7f1304e8

    .line 254
    .line 255
    .line 256
    invoke-interface {p0, v2, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    const v0, 0x7f08011a

    .line 261
    .line 262
    .line 263
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 264
    .line 265
    .line 266
    return-void
.end method

.method public final changeService(Landroid/view/MenuItem;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->drawerLayoutBinding:Lorg/jsoup/parser/TokenData;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p0}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedServiceId(Landroid/content/Context;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    :try_start_0
    invoke-static {p1}, Lus/shandian/giga/util/Utility;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/StreamingService;->serviceInfo:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    .line 32
    .line 33
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    new-instance v0, Lkotlin/Result$Failure;

    .line 38
    .line 39
    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    move-object p1, v0

    .line 43
    :goto_0
    sget-object v0, Lorg/schabi/newpipe/util/ServiceHelper;->DEFAULT_FALLBACK_SERVICE:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 44
    .line 45
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceInfo:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    .line 46
    .line 47
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->name:Ljava/lang/String;

    .line 48
    .line 49
    instance-of v2, p1, Lkotlin/Result$Failure;

    .line 50
    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    move-object p1, v0

    .line 54
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    const v1, 0x7f1300ce

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    .line 83
    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity;->drawerLayoutBinding:Lorg/jsoup/parser/TokenData;

    .line 88
    .line 89
    iget-object p1, p1, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p1, Lcom/google/android/material/navigation/NavigationView;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p0}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedServiceId(Landroid/content/Context;)I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    invoke-interface {p1, p0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    const/4 p1, 0x1

    .line 106
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final handleIntent(Landroid/content/Intent;)V
    .locals 12

    .line 1
    const-string v0, "key_link_type"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    const-string v2, ""

    .line 8
    .line 9
    const-string v3, "key_service_id"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v1, :cond_5

    .line 13
    .line 14
    :try_start_1
    const-string v1, "key_url"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v8

    .line 20
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    const-string v1, "key_title"

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    move-object v9, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v9, v1

    .line 35
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x1

    .line 46
    if-eq v0, v1, :cond_3

    .line 47
    .line 48
    const/4 p1, 0x2

    .line 49
    if-eq v0, p1, :cond_2

    .line 50
    .line 51
    const/4 p1, 0x3

    .line 52
    if-eq v0, p1, :cond_1

    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1, v7, v8, v9}, Landroidx/sqlite/SQLite;->openPlaylistFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    move-object p1, v0

    .line 65
    goto :goto_4

    .line 66
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1, v7, v8, v9}, Landroidx/sqlite/SQLite;->openChannelFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_3
    const-string v0, "play_queue_key"

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    sget-object v1, Lorg/schabi/newpipe/util/SerializedCache;->INSTANCE:Lorg/schabi/newpipe/util/SerializedCache;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lorg/schabi/newpipe/util/SerializedCache;->take(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 92
    .line 93
    :goto_1
    move-object v10, v0

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    const/4 v0, 0x0

    .line 96
    goto :goto_1

    .line 97
    :goto_2
    const-string/jumbo v0, "switching_players"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-static/range {v5 .. v11}, Landroidx/sqlite/SQLite;->openVideoDetailFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_5
    const-string v0, "key_open_search"

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_7

    .line 123
    .line 124
    const-string v0, "key_search_string"

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-nez v0, :cond_6

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_6
    move-object v2, v0

    .line 134
    :goto_3
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v0, p1, v2}, Landroidx/sqlite/SQLite;->openSearchFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p1}, Landroidx/sqlite/SQLite;->gotoMainFragment(Landroidx/fragment/app/FragmentManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :goto_4
    const-string v0, "Handling intent"

    .line 155
    .line 156
    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method public final kioskSelected(Landroid/view/MenuItem;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedService(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getKioskList()Lorg/jsoup/parser/TokenData;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v1, v1, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-ne v2, v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    iget p1, v0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 45
    .line 46
    invoke-static {p0}, Landroidx/sqlite/SQLite;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p1, v3}, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->getInstance(ILjava/lang/String;)Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const v0, 0x7f0a01a9

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0, v0, p1, v1}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method

.method public final onBackPressed()V
    .locals 4

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->mainBinding:Lorg/jsoup/nodes/Printer;

    .line 9
    .line 10
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;

    .line 13
    .line 14
    iget-object v2, p0, Lorg/schabi/newpipe/MainActivity;->drawerLayoutBinding:Lorg/jsoup/parser/TokenData;

    .line 15
    .line 16
    iget-object v2, v2, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lcom/google/android/material/navigation/NavigationView;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object p0, p0, Lorg/schabi/newpipe/MainActivity;->mainBinding:Lorg/jsoup/nodes/Printer;

    .line 30
    .line 31
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->mainBinding:Lorg/jsoup/nodes/Printer;

    .line 40
    .line 41
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Landroidx/fragment/app/FragmentContainerView;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 50
    .line 51
    const/4 v2, 0x5

    .line 52
    if-eq v0, v2, :cond_2

    .line 53
    .line 54
    const/4 v2, 0x4

    .line 55
    if-ne v0, v2, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const v1, 0x7f0a01aa

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    instance-of v1, v0, Lorg/schabi/newpipe/fragments/BackPressable;

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    check-cast v0, Lorg/schabi/newpipe/fragments/BackPressable;

    .line 74
    .line 75
    invoke-interface {v0}, Lorg/schabi/newpipe/fragments/BackPressable;->onBackPressed()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    iget-object p0, p0, Lorg/schabi/newpipe/MainActivity;->mainBinding:Lorg/jsoup/nodes/Printer;

    .line 82
    .line 83
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p0, Landroidx/fragment/app/FragmentContainerView;

    .line 86
    .line 87
    invoke-static {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const v2, 0x7f0a01a9

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    instance-of v3, v2, Lorg/schabi/newpipe/fragments/BackPressable;

    .line 107
    .line 108
    if-eqz v3, :cond_4

    .line 109
    .line 110
    check-cast v2, Lorg/schabi/newpipe/fragments/BackPressable;

    .line 111
    .line 112
    invoke-interface {v2}, Lorg/schabi/newpipe/fragments/BackPressable;->onBackPressed()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_5

    .line 117
    .line 118
    :cond_3
    return-void

    .line 119
    :cond_4
    instance-of v2, v2, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;

    .line 120
    .line 121
    if-eqz v2, :cond_5

    .line 122
    .line 123
    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/MainActivity;->openDetailFragmentFromCommentReplies(Landroidx/fragment/app/FragmentManagerImpl;Z)V

    .line 124
    .line 125
    .line 126
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    const/4 v1, 0x1

    .line 135
    if-ne v0, v1, :cond_6

    .line 136
    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_6
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v2, Lorg/schabi/newpipe/util/Localization;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const v3, 0x7f130036

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    const/16 v6, 0x21

    .line 26
    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    if-lt v7, v6, :cond_0

    .line 32
    .line 33
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    .line 43
    .line 44
    :cond_0
    const v2, 0x7f1300dc

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    :try_start_0
    invoke-static {v5}, Landroidx/core/os/LocaleListCompat;->forLanguageTags(Ljava/lang/String;)Landroidx/core/os/LocaleListCompat;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setApplicationLocales(Landroidx/core/os/LocaleListCompat;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    sget-object v0, Lorg/schabi/newpipe/util/Localization;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    const-string v2, "Failed to migrate previous custom app language setting to public per-app language APIs"

    .line 68
    .line 69
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    invoke-static {v1}, Lokio/Options$Companion;->getSelectedThemeKey(Landroid/content/Context;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v1, v0}, Lokio/Options$Companion;->setDayNightMode(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedServiceId(Landroid/content/Context;)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-static {v1, v0}, Lokio/Options$Companion;->setTheme(Landroid/content/ContextWrapper;I)V

    .line 84
    .line 85
    .line 86
    sget-boolean v0, Lorg/schabi/newpipe/util/DeviceUtils;->SAMSUNG:Z

    .line 87
    .line 88
    :try_start_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 89
    .line 90
    .line 91
    new-instance v0, Landroid/webkit/WebView;

    .line 92
    .line 93
    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    .line 96
    :catchall_0
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const/4 v2, 0x0

    .line 104
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, v1, Lorg/schabi/newpipe/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 109
    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iput-object v0, v1, Lorg/schabi/newpipe/MainActivity;->sharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const v3, 0x7f0d001e

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const v3, 0x7f0a0136

    .line 128
    .line 129
    .line 130
    invoke-static {v3, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    const-string v7, "Missing required view with ID: "

    .line 135
    .line 136
    if-eqz v5, :cond_12

    .line 137
    .line 138
    check-cast v5, Lcom/google/android/material/navigation/NavigationView;

    .line 139
    .line 140
    new-instance v10, Lorg/jsoup/parser/TokenData;

    .line 141
    .line 142
    const/4 v3, 0x5

    .line 143
    invoke-direct {v10, v5, v5, v3}, Lorg/jsoup/parser/TokenData;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 144
    .line 145
    .line 146
    const v3, 0x7f0a01a9

    .line 147
    .line 148
    .line 149
    invoke-static {v3, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    check-cast v8, Landroidx/fragment/app/FragmentContainerView;

    .line 154
    .line 155
    if-eqz v8, :cond_12

    .line 156
    .line 157
    const v3, 0x7f0a01aa

    .line 158
    .line 159
    .line 160
    invoke-static {v3, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    move-object v11, v8

    .line 165
    check-cast v11, Landroidx/fragment/app/FragmentContainerView;

    .line 166
    .line 167
    if-eqz v11, :cond_12

    .line 168
    .line 169
    const v3, 0x7f0a03fe

    .line 170
    .line 171
    .line 172
    invoke-static {v3, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    if-eqz v8, :cond_12

    .line 177
    .line 178
    invoke-static {v8}, Lorg/jsoup/nodes/Printer;->bind(Landroid/view/View;)Lorg/jsoup/nodes/Printer;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    new-instance v8, Lorg/jsoup/nodes/Printer;

    .line 183
    .line 184
    move-object v9, v0

    .line 185
    check-cast v9, Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;

    .line 186
    .line 187
    const/4 v13, 0x3

    .line 188
    invoke-direct/range {v8 .. v13}, Lorg/jsoup/nodes/Printer;-><init>(Landroid/view/ViewGroup;Landroidx/viewbinding/ViewBinding;Landroid/view/View;Ljava/lang/Object;I)V

    .line 189
    .line 190
    .line 191
    iput-object v8, v1, Lorg/schabi/newpipe/MainActivity;->mainBinding:Lorg/jsoup/nodes/Printer;

    .line 192
    .line 193
    iput-object v10, v1, Lorg/schabi/newpipe/MainActivity;->drawerLayoutBinding:Lorg/jsoup/parser/TokenData;

    .line 194
    .line 195
    iget-object v0, v5, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 196
    .line 197
    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 198
    .line 199
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    const v3, 0x7f0a0131

    .line 204
    .line 205
    .line 206
    invoke-static {v3, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    move-object v10, v5

    .line 211
    check-cast v10, Landroid/widget/ImageView;

    .line 212
    .line 213
    if-eqz v10, :cond_11

    .line 214
    .line 215
    const v3, 0x7f0a0132

    .line 216
    .line 217
    .line 218
    invoke-static {v3, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    move-object v11, v5

    .line 223
    check-cast v11, Landroid/widget/Button;

    .line 224
    .line 225
    if-eqz v11, :cond_11

    .line 226
    .line 227
    const v3, 0x7f0a0133

    .line 228
    .line 229
    .line 230
    invoke-static {v3, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    move-object v12, v5

    .line 235
    check-cast v12, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 236
    .line 237
    if-eqz v12, :cond_11

    .line 238
    .line 239
    const v3, 0x7f0a0134

    .line 240
    .line 241
    .line 242
    invoke-static {v3, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    move-object v13, v5

    .line 247
    check-cast v13, Landroid/widget/ImageView;

    .line 248
    .line 249
    if-eqz v13, :cond_11

    .line 250
    .line 251
    const v3, 0x7f0a0135

    .line 252
    .line 253
    .line 254
    invoke-static {v3, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    move-object v14, v5

    .line 259
    check-cast v14, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 260
    .line 261
    if-eqz v14, :cond_11

    .line 262
    .line 263
    new-instance v8, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 264
    .line 265
    move-object v9, v0

    .line 266
    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 267
    .line 268
    invoke-direct/range {v8 .. v14}, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/Button;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeTextView;)V

    .line 269
    .line 270
    .line 271
    iput-object v8, v1, Lorg/schabi/newpipe/MainActivity;->drawerHeaderBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 272
    .line 273
    iget-object v0, v1, Lorg/schabi/newpipe/MainActivity;->mainBinding:Lorg/jsoup/nodes/Printer;

    .line 274
    .line 275
    iget-object v3, v0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v3, Lorg/jsoup/nodes/Printer;

    .line 278
    .line 279
    iput-object v3, v1, Lorg/schabi/newpipe/MainActivity;->toolbarLayoutBinding:Lorg/jsoup/nodes/Printer;

    .line 280
    .line 281
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast v0, Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;

    .line 284
    .line 285
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    const-string v3, "key_link_type"

    .line 297
    .line 298
    if-nez v0, :cond_4

    .line 299
    .line 300
    invoke-static {}, Lorg/schabi/newpipe/util/StateSaver;->clearStateFiles()V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    if-eqz v0, :cond_3

    .line 308
    .line 309
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-eqz v0, :cond_3

    .line 318
    .line 319
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    if-nez v0, :cond_2

    .line 328
    .line 329
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-static {v0}, Landroidx/sqlite/SQLite;->openMainFragment(Landroidx/fragment/app/FragmentManager;)V

    .line 334
    .line 335
    .line 336
    :cond_2
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/MainActivity;->handleIntent(Landroid/content/Intent;)V

    .line 341
    .line 342
    .line 343
    goto :goto_1

    .line 344
    :cond_3
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-static {v0}, Landroidx/sqlite/SQLite;->gotoMainFragment(Landroidx/fragment/app/FragmentManager;)V

    .line 349
    .line 350
    .line 351
    :cond_4
    :goto_1
    iget-object v0, v1, Lorg/schabi/newpipe/MainActivity;->toolbarLayoutBinding:Lorg/jsoup/nodes/Printer;

    .line 352
    .line 353
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 356
    .line 357
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 358
    .line 359
    .line 360
    :try_start_2
    invoke-virtual {v1}, Lorg/schabi/newpipe/MainActivity;->setupDrawer()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 361
    .line 362
    .line 363
    goto :goto_2

    .line 364
    :catch_1
    move-exception v0

    .line 365
    const-string v5, "Setting up drawer"

    .line 366
    .line 367
    invoke-static {v1, v5, v0}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 368
    .line 369
    .line 370
    :goto_2
    invoke-static {v1}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-eqz v0, :cond_5

    .line 375
    .line 376
    invoke-static {v1}, Lorg/schabi/newpipe/views/FocusOverlayView;->setupFocusObserver(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 377
    .line 378
    .line 379
    :cond_5
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    sget-object v3, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->STREAM:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 388
    .line 389
    if-ne v0, v3, :cond_6

    .line 390
    .line 391
    goto :goto_3

    .line 392
    :cond_6
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getInstance()Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getPlayer()Lj$/util/Optional;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    if-eqz v0, :cond_7

    .line 405
    .line 406
    invoke-virtual {v1}, Lorg/schabi/newpipe/MainActivity;->openMiniPlayerIfMissing()V

    .line 407
    .line 408
    .line 409
    goto :goto_3

    .line 410
    :cond_7
    new-instance v0, Lorg/schabi/newpipe/MainActivity$3;

    .line 411
    .line 412
    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/MainActivity$3;-><init>(Ljava/lang/Object;I)V

    .line 413
    .line 414
    .line 415
    iput-object v0, v1, Lorg/schabi/newpipe/MainActivity;->broadcastReceiver:Lorg/schabi/newpipe/MainActivity$3;

    .line 416
    .line 417
    new-instance v0, Landroid/content/IntentFilter;

    .line 418
    .line 419
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 420
    .line 421
    .line 422
    const-string v3, "org.schabi.newpipe.VideoDetailFragment.ACTION_PLAYER_STARTED"

    .line 423
    .line 424
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    iget-object v3, v1, Lorg/schabi/newpipe/MainActivity;->broadcastReceiver:Lorg/schabi/newpipe/MainActivity$3;

    .line 428
    .line 429
    const/4 v5, 0x2

    .line 430
    invoke-static {v1, v3, v0, v5}, Lcoil3/decode/StaticImageDecoderKt;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 431
    .line 432
    .line 433
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getInstance()Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    iget-boolean v3, v0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->bound:Z

    .line 438
    .line 439
    if-nez v3, :cond_8

    .line 440
    .line 441
    new-instance v3, Landroid/content/Intent;

    .line 442
    .line 443
    const-class v5, Lorg/schabi/newpipe/player/PlayerService;

    .line 444
    .line 445
    invoke-direct {v3, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    .line 447
    .line 448
    const-string v5, "bind_player_holder_action"

    .line 449
    .line 450
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    .line 452
    .line 453
    iget-object v0, v0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->serviceConnection:Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;

    .line 454
    .line 455
    invoke-virtual {v1, v3, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 456
    .line 457
    .line 458
    :cond_8
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 459
    .line 460
    const/4 v3, 0x1

    .line 461
    if-lt v0, v6, :cond_9

    .line 462
    .line 463
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 464
    .line 465
    invoke-static {v1, v0}, Lcoil3/decode/StaticImageDecoderKt;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 466
    .line 467
    .line 468
    move-result v5

    .line 469
    if-eqz v5, :cond_9

    .line 470
    .line 471
    sget-object v5, Lorg/schabi/newpipe/App;->Companion:Lorg/schabi/newpipe/App$Companion;

    .line 472
    .line 473
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    invoke-static {}, Lorg/schabi/newpipe/App$Companion;->getInstance()Lorg/schabi/newpipe/App;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    iget-boolean v5, v5, Lorg/schabi/newpipe/App;->notificationsRequested:Z

    .line 481
    .line 482
    if-nez v5, :cond_9

    .line 483
    .line 484
    filled-new-array {v0}, [Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    const/16 v5, 0x30b

    .line 489
    .line 490
    invoke-static {v1, v0, v5}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 491
    .line 492
    .line 493
    invoke-static {}, Lorg/schabi/newpipe/App$Companion;->getInstance()Lorg/schabi/newpipe/App;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    iput-boolean v3, v0, Lorg/schabi/newpipe/App;->notificationsRequested:Z

    .line 498
    .line 499
    goto :goto_4

    .line 500
    :cond_9
    sget-object v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;

    .line 501
    .line 502
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 503
    .line 504
    .line 505
    sget-object v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;

    .line 506
    .line 507
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 508
    .line 509
    .line 510
    invoke-static {v1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;->areNewStreamsNotificationsEnabled(Landroid/content/Context;)Z

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    if-eqz v0, :cond_a

    .line 515
    .line 516
    invoke-static {v1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;->areNotificationsEnabledOnDevice(Landroid/content/Context;)Z

    .line 517
    .line 518
    .line 519
    move-result v0

    .line 520
    if-eqz v0, :cond_a

    .line 521
    .line 522
    sget-object v0, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->Companion:Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions$Companion;

    .line 523
    .line 524
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    .line 526
    .line 527
    invoke-static {v1}, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions$Companion;->from(Landroid/content/Context;)Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    invoke-static {v1, v0, v2}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;->schedule(Landroid/content/Context;Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;Z)V

    .line 532
    .line 533
    .line 534
    goto :goto_4

    .line 535
    :cond_a
    invoke-static {v1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;->cancel(Landroid/content/Context;)V

    .line 536
    .line 537
    .line 538
    :goto_4
    sget v0, Lorg/schabi/newpipe/settings/UpdateSettingsFragment;->$r8$clinit:I

    .line 539
    .line 540
    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    const v5, 0x7f130518

    .line 549
    .line 550
    .line 551
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v5

    .line 555
    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    if-nez v0, :cond_b

    .line 560
    .line 561
    sget-object v0, Lorg/schabi/newpipe/App;->Companion:Lorg/schabi/newpipe/App$Companion;

    .line 562
    .line 563
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 564
    .line 565
    .line 566
    invoke-static {}, Lorg/schabi/newpipe/App$Companion;->getInstance()Lorg/schabi/newpipe/App;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    iget-boolean v0, v0, Lorg/schabi/newpipe/App;->isFirstRun:Z

    .line 571
    .line 572
    if-nez v0, :cond_b

    .line 573
    .line 574
    invoke-static {}, Lorg/schabi/newpipe/util/ReleaseVersionUtil;->isReleaseApk()Z

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    if-eqz v0, :cond_b

    .line 579
    .line 580
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 581
    .line 582
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 583
    .line 584
    .line 585
    const v5, 0x7f130094

    .line 586
    .line 587
    .line 588
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v5

    .line 592
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    const v5, 0x7f130056

    .line 597
    .line 598
    .line 599
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v5

    .line 603
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    const v5, 0x7f130542

    .line 608
    .line 609
    .line 610
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v5

    .line 614
    new-instance v6, Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda0;

    .line 615
    .line 616
    invoke-direct {v6, v1, v2}, Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    new-instance v5, Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda0;

    .line 624
    .line 625
    invoke-direct {v5, v1, v3}, Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 626
    .line 627
    .line 628
    const v3, 0x7f13035d

    .line 629
    .line 630
    .line 631
    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 636
    .line 637
    .line 638
    :cond_b
    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    const v3, 0x7f130232

    .line 647
    .line 648
    .line 649
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v3

    .line 653
    const-wide/16 v5, 0x0

    .line 654
    .line 655
    invoke-interface {v0, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 656
    .line 657
    .line 658
    move-result-wide v5

    .line 659
    invoke-static {v5, v6}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    .line 660
    .line 661
    .line 662
    move-result-object v5

    .line 663
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    .line 664
    .line 665
    .line 666
    move-result-object v6

    .line 667
    const-wide/16 v7, 0x1e

    .line 668
    .line 669
    sget-object v9, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 670
    .line 671
    invoke-virtual {v5, v7, v8, v9}, Lj$/time/Instant;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Instant;

    .line 672
    .line 673
    .line 674
    move-result-object v5

    .line 675
    invoke-virtual {v5, v6}, Lj$/time/Instant;->isBefore(Lj$/time/Instant;)Z

    .line 676
    .line 677
    .line 678
    move-result v5

    .line 679
    if-eqz v5, :cond_10

    .line 680
    .line 681
    const-string/jumbo v25, "zh"

    .line 682
    .line 683
    .line 684
    const-string v26, "ja"

    .line 685
    .line 686
    const-string v7, "fr"

    .line 687
    .line 688
    const-string v8, "de"

    .line 689
    .line 690
    const-string v9, "ca"

    .line 691
    .line 692
    const-string v10, "es"

    .line 693
    .line 694
    const-string v11, "id"

    .line 695
    .line 696
    const-string v12, "it"

    .line 697
    .line 698
    const-string v13, "pl"

    .line 699
    .line 700
    const-string v14, "pt"

    .line 701
    .line 702
    const-string v15, "cs"

    .line 703
    .line 704
    const-string/jumbo v16, "sk"

    .line 705
    .line 706
    .line 707
    const-string v17, "fa"

    .line 708
    .line 709
    const-string v18, "ar"

    .line 710
    .line 711
    const-string/jumbo v19, "tr"

    .line 712
    .line 713
    .line 714
    const-string v20, "el"

    .line 715
    .line 716
    const-string/jumbo v21, "th"

    .line 717
    .line 718
    .line 719
    const-string v22, "ru"

    .line 720
    .line 721
    const-string/jumbo v23, "uk"

    .line 722
    .line 723
    .line 724
    const-string v24, "ko"

    .line 725
    .line 726
    filled-new-array/range {v7 .. v26}, [Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v5

    .line 730
    new-instance v7, Ljava/util/ArrayList;

    .line 731
    .line 732
    const/16 v8, 0x14

    .line 733
    .line 734
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 735
    .line 736
    .line 737
    move v9, v2

    .line 738
    :goto_5
    if-ge v9, v8, :cond_c

    .line 739
    .line 740
    aget-object v10, v5, v9

    .line 741
    .line 742
    invoke-static {v10}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    .line 747
    .line 748
    add-int/lit8 v9, v9, 0x1

    .line 749
    .line 750
    goto :goto_5

    .line 751
    :cond_c
    invoke-static {v7}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 752
    .line 753
    .line 754
    move-result-object v5

    .line 755
    invoke-static {}, Lorg/schabi/newpipe/util/Localization;->getAppLocale()Ljava/util/Locale;

    .line 756
    .line 757
    .line 758
    move-result-object v7

    .line 759
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v8

    .line 763
    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    move-result v5

    .line 767
    const-string v8, "https://keepandroidopen.org/"

    .line 768
    .line 769
    if-eqz v5, :cond_f

    .line 770
    .line 771
    const-string/jumbo v5, "zh"

    .line 772
    .line 773
    .line 774
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v9

    .line 778
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 779
    .line 780
    .line 781
    move-result v5

    .line 782
    if-eqz v5, :cond_e

    .line 783
    .line 784
    const-string v5, "TW"

    .line 785
    .line 786
    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v7

    .line 790
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    move-result v5

    .line 794
    if-eqz v5, :cond_d

    .line 795
    .line 796
    const-string/jumbo v5, "zh-TW"

    .line 797
    .line 798
    .line 799
    goto :goto_6

    .line 800
    :cond_d
    const-string/jumbo v5, "zh-CN"

    .line 801
    .line 802
    .line 803
    :goto_6
    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v8

    .line 807
    goto :goto_7

    .line 808
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    .line 809
    .line 810
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v7

    .line 817
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v8

    .line 824
    :cond_f
    :goto_7
    new-instance v5, Landroid/app/AlertDialog$Builder;

    .line 825
    .line 826
    invoke-direct {v5, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 827
    .line 828
    .line 829
    const-string v7, "Keep Android Open"

    .line 830
    .line 831
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 832
    .line 833
    .line 834
    move-result-object v5

    .line 835
    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 836
    .line 837
    .line 838
    move-result-object v5

    .line 839
    const v7, 0x7f130231

    .line 840
    .line 841
    .line 842
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 843
    .line 844
    .line 845
    move-result-object v5

    .line 846
    new-instance v7, Lorg/schabi/newpipe/MainActivity$$ExternalSyntheticLambda1;

    .line 847
    .line 848
    invoke-direct {v7, v0, v3, v6}, Lorg/schabi/newpipe/MainActivity$$ExternalSyntheticLambda1;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Lj$/time/Instant;)V

    .line 849
    .line 850
    .line 851
    const v0, 0x104000a

    .line 852
    .line 853
    .line 854
    invoke-virtual {v5, v0, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    const v3, 0x7f130233

    .line 859
    .line 860
    .line 861
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 862
    .line 863
    .line 864
    move-result-object v0

    .line 865
    const v3, 0x7f130230

    .line 866
    .line 867
    .line 868
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 873
    .line 874
    .line 875
    move-result-object v0

    .line 876
    const/4 v3, -0x2

    .line 877
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 878
    .line 879
    .line 880
    move-result-object v3

    .line 881
    new-instance v4, Lorg/schabi/newpipe/MainActivity$$ExternalSyntheticLambda2;

    .line 882
    .line 883
    invoke-direct {v4, v1, v8}, Lorg/schabi/newpipe/MainActivity$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/MainActivity;Ljava/lang/String;)V

    .line 884
    .line 885
    .line 886
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 887
    .line 888
    .line 889
    const/4 v3, -0x3

    .line 890
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 891
    .line 892
    .line 893
    move-result-object v0

    .line 894
    new-instance v3, Lorg/schabi/newpipe/MainActivity$$ExternalSyntheticLambda3;

    .line 895
    .line 896
    invoke-direct {v3, v1, v2}, Lorg/schabi/newpipe/MainActivity$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/MainActivity;I)V

    .line 897
    .line 898
    .line 899
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 900
    .line 901
    .line 902
    :cond_10
    invoke-static {v1}, Lorg/schabi/newpipe/settings/migration/MigrationManager;->showUserInfoIfPresent(Landroid/content/Context;)V

    .line 903
    .line 904
    .line 905
    return-void

    .line 906
    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 907
    .line 908
    .line 909
    move-result-object v0

    .line 910
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v0

    .line 918
    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 919
    .line 920
    .line 921
    return-void

    .line 922
    :cond_12
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 923
    .line 924
    .line 925
    move-result-object v0

    .line 926
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v0

    .line 930
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object v0

    .line 934
    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 935
    .line 936
    .line 937
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f0a01a9

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    instance-of p1, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity;->toolbarLayoutBinding:Lorg/jsoup/nodes/Printer;

    .line 20
    .line 21
    iget-object p1, p1, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Lorg/jsoup/nodes/Printer;

    .line 24
    .line 25
    iget-object p1, p1, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Landroid/widget/FrameLayout;

    .line 28
    .line 29
    const/16 v1, 0x8

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 v1, 0x0

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Lokio/Options$Companion;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 v2, 0x1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    instance-of p1, p1, Lorg/schabi/newpipe/fragments/MainFragment;

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, v1}, Lokio/Options$Companion;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity;->toggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity;->toolbarLayoutBinding:Lorg/jsoup/nodes/Printer;

    .line 79
    .line 80
    iget-object p1, p1, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 83
    .line 84
    new-instance v0, Lorg/schabi/newpipe/MainActivity$$ExternalSyntheticLambda3;

    .line 85
    .line 86
    invoke-direct {v0, p0, v2}, Lorg/schabi/newpipe/MainActivity$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/MainActivity;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lorg/schabi/newpipe/MainActivity;->mainBinding:Lorg/jsoup/nodes/Printer;

    .line 93
    .line 94
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p0, Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;

    .line 97
    .line 98
    const/4 p1, 0x3

    .line 99
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_0
    return v2

    .line 103
    :cond_4
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity;->mainBinding:Lorg/jsoup/nodes/Printer;

    .line 104
    .line 105
    iget-object p1, p1, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p1, Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;

    .line 108
    .line 109
    invoke-virtual {p1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1, v2}, Lokio/Options$Companion;->setDisplayHomeAsUpEnabled(Z)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity;->toolbarLayoutBinding:Lorg/jsoup/nodes/Printer;

    .line 120
    .line 121
    iget-object p1, p1, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 124
    .line 125
    new-instance v0, Lorg/schabi/newpipe/MainActivity$$ExternalSyntheticLambda3;

    .line 126
    .line 127
    const/4 v1, 0x2

    .line 128
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/MainActivity$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/MainActivity;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    .line 133
    .line 134
    return v2
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lorg/schabi/newpipe/util/StateSaver;->clearStateFiles()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->broadcastReceiver:Lorg/schabi/newpipe/MainActivity$3;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final onHomeButtonPressed()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0a01a9

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    instance-of v1, v1, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/MainActivity;->openDetailFragmentFromCommentReplies(Landroidx/fragment/app/FragmentManagerImpl;Z)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    const/4 v1, -0x1

    .line 23
    const-string v2, "search_fragment_tag"

    .line 24
    .line 25
    invoke-virtual {v0, v1, p0, v2}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(IILjava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    invoke-static {v0}, Landroidx/sqlite/SQLite;->gotoMainFragment(Landroidx/fragment/app/FragmentManager;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0a01aa

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v1, v0, Lorg/schabi/newpipe/player/event/OnKeyDownListener;

    .line 13
    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    iget-object v1, p0, Lorg/schabi/newpipe/MainActivity;->mainBinding:Lorg/jsoup/nodes/Printer;

    .line 17
    .line 18
    iget-object v1, v1, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Landroidx/fragment/app/FragmentContainerView;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 27
    .line 28
    const/4 v2, 0x5

    .line 29
    if-eq v1, v2, :cond_3

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    if-ne v1, v2, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    check-cast v0, Lorg/schabi/newpipe/player/event/OnKeyDownListener;

    .line 36
    .line 37
    check-cast v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 38
    .line 39
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget-object v0, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 46
    .line 47
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 48
    .line 49
    const-class v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda7;

    .line 56
    .line 57
    invoke-direct {v1, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda7;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_2

    .line 84
    .line 85
    :goto_0
    const/4 p0, 0x1

    .line 86
    return p0

    .line 87
    :cond_2
    const/4 p0, 0x0

    .line 88
    return p0

    .line 89
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    return p0
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "android.intent.action.MAIN"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "android.intent.category.LAUNCHER"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/MainActivity;->handleIntent(Landroid/content/Intent;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/schabi/newpipe/MainActivity;->onHomeButtonPressed()V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final onPostCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lorg/schabi/newpipe/App;->Companion:Lorg/schabi/newpipe/App$Companion;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lorg/schabi/newpipe/App$Companion;->getInstance()Lorg/schabi/newpipe/App;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    const v1, 0x7f130517

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object p0, p0, Lorg/schabi/newpipe/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 30
    .line 31
    const v0, 0x7f130518

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    invoke-static {p1, v2}, Lorg/schabi/newpipe/NewVersionWorker;->enqueueNewVersionCheckingWork(Landroid/content/Context;Z)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    array-length p2, p3

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    if-ge v1, p2, :cond_1

    .line 8
    .line 9
    aget v2, p3, v1

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :pswitch_0
    sget-object p1, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    sget-object p1, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;->areNewStreamsNotificationsEnabled(Landroid/content/Context;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-static {p0}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;->areNotificationsEnabledOnDevice(Landroid/content/Context;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    sget-object p1, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->Companion:Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions$Companion;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions$Companion;->from(Landroid/content/Context;)Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p0, p1, v0}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;->schedule(Landroid/content/Context;Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;Z)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    invoke-static {p0}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;->cancel(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const p1, 0x7f0a01aa

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    instance-of p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    check-cast p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 77
    .line 78
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openDownloadDialog()V

    .line 79
    .line 80
    .line 81
    :cond_3
    :goto_1
    return-void

    .line 82
    :pswitch_2
    invoke-static {p0}, Landroidx/sqlite/SQLite;->openDownloads(Landroid/app/Activity;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x309
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onResume()V
    .locals 5

    .line 1
    invoke-static {}, Lorg/schabi/newpipe/util/Localization;->resolvePrettyTime()Lorg/ocpsoft/prettytime/PrettyTime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/schabi/newpipe/util/Localization;->initPrettyTime(Lorg/ocpsoft/prettytime/PrettyTime;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->mainBinding:Lorg/jsoup/nodes/Printer;

    .line 12
    .line 13
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Z)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-static {p0}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedServiceId(Landroid/content/Context;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {v0}, Lus/shandian/giga/util/Utility;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v2, v2, Lorg/schabi/newpipe/extractor/StreamingService;->serviceInfo:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    .line 30
    .line 31
    iget-object v2, v2, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->name:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p0, Lorg/schabi/newpipe/MainActivity;->drawerHeaderBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 34
    .line 35
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderServiceView:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v3, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lorg/schabi/newpipe/MainActivity;->drawerHeaderBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 43
    .line 44
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderServiceIcon:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Landroid/widget/ImageView;

    .line 47
    .line 48
    invoke-static {v0}, Lorg/schabi/newpipe/util/ServiceHelper;->getIcon(I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->drawerHeaderBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 56
    .line 57
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderServiceView:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 60
    .line 61
    new-instance v3, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    const/16 v4, 0x15

    .line 64
    .line 65
    invoke-direct {v3, p0, v4}, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->drawerHeaderBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 72
    .line 73
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderActionButton:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Landroid/widget/Button;

    .line 76
    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const v4, 0x7f13012d

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string v2, "Setting up service toggle"

    .line 105
    .line 106
    invoke-static {p0, v2, v0}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 107
    .line 108
    .line 109
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 110
    .line 111
    const-string v2, "key_theme_change"

    .line 112
    .line 113
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    .line 119
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->sharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 120
    .line 121
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    .line 127
    .line 128
    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->recreate(Landroid/app/Activity;)V

    .line 129
    .line 130
    .line 131
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 132
    .line 133
    const-string v2, "key_main_page_change"

    .line 134
    .line 135
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_1

    .line 140
    .line 141
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->sharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 142
    .line 143
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 148
    .line 149
    .line 150
    new-instance v0, Landroid/content/Intent;

    .line 151
    .line 152
    const-class v1, Lorg/schabi/newpipe/MainActivity;

    .line 153
    .line 154
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .line 156
    .line 157
    const/high16 v1, 0x10000000

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    const v1, 0x8000

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 169
    .line 170
    .line 171
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 172
    .line 173
    const v1, 0x7f130147

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    const/4 v2, 0x1

    .line 181
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    iget-object p0, p0, Lorg/schabi/newpipe/MainActivity;->drawerLayoutBinding:Lorg/jsoup/parser/TokenData;

    .line 186
    .line 187
    iget-object p0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast p0, Lcom/google/android/material/navigation/NavigationView;

    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    const/4 v1, -0x5

    .line 196
    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/MainActivity;->sharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 5
    .line 6
    const-string v0, "is_in_background"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    .line 15
    .line 16
    const-string p0, "MainActivity"

    .line 17
    .line 18
    const-string v0, "App moved to foreground"

    .line 19
    .line 20
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/MainActivity;->sharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 5
    .line 6
    const-string v0, "is_in_background"

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    .line 15
    .line 16
    const-string p0, "MainActivity"

    .line 17
    .line 18
    const-string v0, "App moved to background"

    .line 19
    .line 20
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final openDetailFragmentFromCommentReplies(Landroidx/fragment/app/FragmentManagerImpl;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    if-ge v0, v2, :cond_0

    .line 8
    .line 9
    move-object v0, v1

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sub-int/2addr v0, v2

    .line 16
    iget-object v2, p1, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ne v0, v2, :cond_2

    .line 23
    .line 24
    iget-object v0, p1, Landroidx/fragment/app/FragmentManager;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 30
    .line 31
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :cond_2
    iget-object v2, p1, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    .line 42
    .line 43
    :goto_0
    iget-object v0, v0, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 44
    .line 45
    :goto_1
    sget v2, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->$r8$clinit:I

    .line 46
    .line 47
    const-string v2, "CommentRepliesFragment"

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;

    .line 54
    .line 55
    if-nez v3, :cond_3

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-virtual {v3}, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->getCommentsInfoItem()Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :goto_2
    if-eqz p2, :cond_4

    .line 63
    .line 64
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    .line 65
    .line 66
    .line 67
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_5

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_5
    iget-object p0, p0, Lorg/schabi/newpipe/MainActivity;->mainBinding:Lorg/jsoup/nodes/Printer;

    .line 75
    .line 76
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p0, Landroidx/fragment/app/FragmentContainerView;

    .line 79
    .line 80
    invoke-static {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 85
    .line 86
    const/4 v0, 0x5

    .line 87
    if-ne p2, v0, :cond_6

    .line 88
    .line 89
    :goto_3
    return-void

    .line 90
    :cond_6
    new-instance p2, Lorg/schabi/newpipe/MainActivity$4;

    .line 91
    .line 92
    invoke-direct {p2, p1, v1, p0}, Lorg/schabi/newpipe/MainActivity$4;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_7

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    :cond_7
    const/4 p1, 0x3

    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final openMiniPlayerIfMissing()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0a01aa

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 19
    .line 20
    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateBottomSheetState(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Landroidx/sqlite/SQLite;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p0, v1, v0, v2}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/BackStackRecord;->runOnCommitInternal(ZLjava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0, v0, v0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(ZZ)I

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public final setupDrawer()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/MainActivity;->addDrawerMenuForCurrentService()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/appcompat/app/ActionBarDrawerToggle;

    .line 5
    .line 6
    iget-object v1, p0, Lorg/schabi/newpipe/MainActivity;->mainBinding:Lorg/jsoup/nodes/Printer;

    .line 7
    .line 8
    iget-object v1, v1, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;

    .line 11
    .line 12
    iget-object v2, p0, Lorg/schabi/newpipe/MainActivity;->toolbarLayoutBinding:Lorg/jsoup/nodes/Printer;

    .line 13
    .line 14
    iget-object v2, v2, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    .line 17
    .line 18
    invoke-direct {v0, p0, v1, v2}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Lorg/schabi/newpipe/MainActivity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lorg/schabi/newpipe/MainActivity;->toggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->mainBinding:Lorg/jsoup/nodes/Printer;

    .line 27
    .line 28
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;

    .line 31
    .line 32
    iget-object v1, p0, Lorg/schabi/newpipe/MainActivity;->toggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->mainBinding:Lorg/jsoup/nodes/Printer;

    .line 38
    .line 39
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;

    .line 42
    .line 43
    new-instance v1, Lorg/schabi/newpipe/MainActivity$1;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lorg/schabi/newpipe/MainActivity$1;-><init>(Lorg/schabi/newpipe/MainActivity;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->drawerLayoutBinding:Lorg/jsoup/parser/TokenData;

    .line 52
    .line 53
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 56
    .line 57
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 58
    .line 59
    const/16 v2, 0x8

    .line 60
    .line 61
    invoke-direct {v1, p0, v2}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->drawerHeaderBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 68
    .line 69
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderActionButton:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Landroid/widget/Button;

    .line 72
    .line 73
    new-instance v1, Lorg/schabi/newpipe/MainActivity$$ExternalSyntheticLambda3;

    .line 74
    .line 75
    const/4 v2, 0x3

    .line 76
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/MainActivity$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/MainActivity;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    const v0, 0x7f13003a

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    const/4 v1, 0x7

    .line 94
    if-le v0, v1, :cond_0

    .line 95
    .line 96
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->drawerHeaderBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 97
    .line 98
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderNewpipeTitle:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const/4 v1, -0x2

    .line 107
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 108
    .line 109
    iget-object v1, p0, Lorg/schabi/newpipe/MainActivity;->drawerHeaderBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 110
    .line 111
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderNewpipeTitle:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->drawerHeaderBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 119
    .line 120
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderNewpipeTitle:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 123
    .line 124
    const/4 v1, 0x2

    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->drawerHeaderBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 129
    .line 130
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderNewpipeTitle:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 133
    .line 134
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const v2, 0x7f0700a9

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->drawerHeaderBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 149
    .line 150
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderNewpipeTitle:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 153
    .line 154
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    const v1, 0x7f0700ab

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 166
    .line 167
    .line 168
    :cond_0
    return-void
.end method

.method public final toggleServices()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/MainActivity;->servicesShown:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    iput-boolean v0, p0, Lorg/schabi/newpipe/MainActivity;->servicesShown:Z

    .line 6
    .line 7
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->drawerLayoutBinding:Lorg/jsoup/parser/TokenData;

    .line 8
    .line 9
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v2, 0x7f0a0252

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v2}, Landroid/view/Menu;->removeGroup(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->drawerLayoutBinding:Lorg/jsoup/parser/TokenData;

    .line 24
    .line 25
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const v3, 0x7f0a0253

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v3}, Landroid/view/Menu;->removeGroup(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->drawerLayoutBinding:Lorg/jsoup/parser/TokenData;

    .line 40
    .line 41
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const v3, 0x7f0a0250

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v3}, Landroid/view/Menu;->removeGroup(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->drawerLayoutBinding:Lorg/jsoup/parser/TokenData;

    .line 56
    .line 57
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const v3, 0x7f0a0251

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v3}, Landroid/view/Menu;->removeGroup(I)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->drawerHeaderBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 72
    .line 73
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerArrow:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Landroid/widget/ImageView;

    .line 76
    .line 77
    iget-boolean v3, p0, Lorg/schabi/newpipe/MainActivity;->servicesShown:Z

    .line 78
    .line 79
    if-eqz v3, :cond_0

    .line 80
    .line 81
    const v3, 0x7f0800e5

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const v3, 0x7f0800e4

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    .line 90
    .line 91
    iget-boolean v0, p0, Lorg/schabi/newpipe/MainActivity;->servicesShown:Z

    .line 92
    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->SERVICES:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_5

    .line 106
    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Lorg/schabi/newpipe/extractor/StreamingService;

    .line 112
    .line 113
    iget-object v4, v3, Lorg/schabi/newpipe/extractor/StreamingService;->serviceInfo:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    .line 114
    .line 115
    iget v3, v3, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 116
    .line 117
    iget-object v4, v4, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->name:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v5, p0, Lorg/schabi/newpipe/MainActivity;->drawerLayoutBinding:Lorg/jsoup/parser/TokenData;

    .line 120
    .line 121
    iget-object v5, v5, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v5, Lcom/google/android/material/navigation/NavigationView;

    .line 124
    .line 125
    invoke-virtual {v5}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    const/4 v6, 0x0

    .line 130
    invoke-interface {v5, v2, v3, v6, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-static {v3}, Lorg/schabi/newpipe/util/ServiceHelper;->getIcon(I)I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    const/4 v5, 0x3

    .line 143
    if-ne v3, v5, :cond_1

    .line 144
    .line 145
    sget-object v3, Lorg/schabi/newpipe/extractor/ServiceList;->PeerTube:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

    .line 146
    .line 147
    iget-object v3, v3, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;->instance:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    iget-object v5, v3, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->name:Ljava/lang/String;

    .line 153
    .line 154
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 155
    .line 156
    .line 157
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    const/4 v7, 0x0

    .line 162
    const v8, 0x7f0d006a

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5, v8, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    if-eqz v5, :cond_4

    .line 170
    .line 171
    check-cast v5, Landroid/widget/Spinner;

    .line 172
    .line 173
    invoke-static {p0}, Landroidx/room/Room;->getInstanceList(Landroid/content/Context;)Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    new-instance v8, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    move v10, v6

    .line 187
    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v11

    .line 191
    if-eqz v11, :cond_3

    .line 192
    .line 193
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    check-cast v11, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 198
    .line 199
    iget-object v12, v11, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->name:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    iget-object v11, v11, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->url:Ljava/lang/String;

    .line 205
    .line 206
    iget-object v12, v3, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->url:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v11

    .line 212
    if-eqz v11, :cond_2

    .line 213
    .line 214
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 215
    .line 216
    .line 217
    move-result v10

    .line 218
    sub-int/2addr v10, v1

    .line 219
    goto :goto_2

    .line 220
    :cond_3
    new-instance v3, Landroid/widget/ArrayAdapter;

    .line 221
    .line 222
    const v9, 0x7f0d0069

    .line 223
    .line 224
    .line 225
    invoke-direct {v3, p0, v9, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 226
    .line 227
    .line 228
    const v8, 0x1090009

    .line 229
    .line 230
    .line 231
    invoke-virtual {v3, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5, v10, v6}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 238
    .line 239
    .line 240
    new-instance v3, Lorg/schabi/newpipe/MainActivity$2;

    .line 241
    .line 242
    invoke-direct {v3, p0, v7, v4}, Lorg/schabi/newpipe/MainActivity$2;-><init>(Lorg/schabi/newpipe/MainActivity;Ljava/util/List;Landroid/view/MenuItem;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5, v3}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 246
    .line 247
    .line 248
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 249
    .line 250
    .line 251
    goto/16 :goto_1

    .line 252
    .line 253
    :cond_4
    const-string p0, "rootView"

    .line 254
    .line 255
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :cond_5
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity;->drawerLayoutBinding:Lorg/jsoup/parser/TokenData;

    .line 260
    .line 261
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 264
    .line 265
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-static {p0}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedServiceId(Landroid/content/Context;)I

    .line 270
    .line 271
    .line 272
    move-result p0

    .line 273
    invoke-interface {v0, p0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/MainActivity;->addDrawerMenuForCurrentService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .line 283
    .line 284
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    const-string v1, "Showing main page tabs"

    .line 287
    .line 288
    invoke-static {p0, v1, v0}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 289
    .line 290
    .line 291
    return-void
.end method
