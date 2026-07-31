.class public Lorg/schabi/newpipe/error/ReCaptchaActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public foundCookies:Ljava/lang/String;

.field public recaptchaBinding:Lorg/jsoup/nodes/Printer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/schabi/newpipe/error/ReCaptchaActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleCookies(Ljava/lang/String;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "s_gl="

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string v0, "goojf="

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string v0, "VISITOR_INFO1_LIVE="

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const-string v0, "GOOGLE_ABUSE_EXEMPTION="

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void

    .line 45
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_6

    .line 52
    .line 53
    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    .line 54
    .line 55
    const-string v1, "; "

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    .line 65
    .line 66
    const-string v2, ";"

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iget-object v2, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    const-string v0, " "

    .line 77
    .line 78
    invoke-static {v2, v0, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    .line 83
    .line 84
    return-void

    .line 85
    :cond_5
    invoke-static {v2, v1, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    .line 90
    .line 91
    return-void

    .line 92
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v0, v1, p1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iput-object p1, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    .line 104
    .line 105
    return-void
.end method

.method public final handleCookiesFromUrl(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/error/ReCaptchaActivity;->handleCookies(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "google_abuse="

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, -0x1

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    const-string v1, "+path"

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/lit8 v0, v0, 0xd

    .line 31
    .line 32
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/Utils;->M_PATTERN:Ljava/util/regex/Pattern;

    .line 37
    .line 38
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 39
    .line 40
    invoke-static {p1, v0}, Lj$/net/URLDecoder;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/error/ReCaptchaActivity;->handleCookies(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/error/ReCaptchaActivity;->saveCookiesAndFinish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {p0, v0}, Lokio/Options$Companion;->setTheme(Landroid/content/ContextWrapper;I)V

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const v0, 0x7f0d0020

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const v0, 0x7f0a0328

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/webkit/WebView;

    .line 29
    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    const v0, 0x7f0a03fd

    .line 33
    .line 34
    .line 35
    invoke-static {v0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Landroidx/appcompat/widget/Toolbar;

    .line 40
    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    new-instance v0, Lorg/jsoup/nodes/Printer;

    .line 44
    .line 45
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 46
    .line 47
    const/4 v5, 0x4

    .line 48
    invoke-direct {v0, v5, p1, v3, v4}, Lorg/jsoup/nodes/Printer;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->recaptchaBinding:Lorg/jsoup/nodes/Printer;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->recaptchaBinding:Lorg/jsoup/nodes/Printer;

    .line 57
    .line 58
    iget-object p1, p1, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string v0, "recaptcha_url_extra"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    const-string v0, "&pbj=1"

    .line 89
    .line 90
    const-string v3, ""

    .line 91
    .line 92
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v0, "pbj=1&"

    .line 97
    .line 98
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string v0, "?pbj=1"

    .line 103
    .line 104
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    :goto_0
    const-string p1, "https://www.youtube.com"

    .line 110
    .line 111
    :goto_1
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->recaptchaBinding:Lorg/jsoup/nodes/Printer;

    .line 115
    .line 116
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v0, Landroid/webkit/WebView;

    .line 119
    .line 120
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const/4 v2, 0x1

    .line 125
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 126
    .line 127
    .line 128
    const-string v3, "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0"

    .line 129
    .line 130
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->recaptchaBinding:Lorg/jsoup/nodes/Printer;

    .line 134
    .line 135
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v0, Landroid/webkit/WebView;

    .line 138
    .line 139
    new-instance v3, Lorg/schabi/newpipe/error/ReCaptchaActivity$1;

    .line 140
    .line 141
    invoke-direct {v3, p0}, Lorg/schabi/newpipe/error/ReCaptchaActivity$1;-><init>(Lorg/schabi/newpipe/error/ReCaptchaActivity;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->recaptchaBinding:Lorg/jsoup/nodes/Printer;

    .line 148
    .line 149
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v0, Landroid/webkit/WebView;

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->recaptchaBinding:Lorg/jsoup/nodes/Printer;

    .line 157
    .line 158
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v0, Landroid/webkit/WebView;

    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 163
    .line 164
    .line 165
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 170
    .line 171
    .line 172
    iget-object p0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->recaptchaBinding:Lorg/jsoup/nodes/Printer;

    .line 173
    .line 174
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast p0, Landroid/webkit/WebView;

    .line 177
    .line 178
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    const-string p1, "Missing required view with ID: "

    .line 191
    .line 192
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0f0010

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lokio/Options$Companion;->setDisplayHomeAsUpEnabled(Z)V

    .line 19
    .line 20
    .line 21
    const p1, 0x7f1304fa

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lokio/Options$Companion;->setTitle(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lokio/Options$Companion;->setSubtitle()V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a0241

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/schabi/newpipe/error/ReCaptchaActivity;->saveCookiesAndFinish()V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final saveCookiesAndFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->recaptchaBinding:Lorg/jsoup/nodes/Printer;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/webkit/WebView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/error/ReCaptchaActivity;->handleCookiesFromUrl(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const v2, 0x7f13040f

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v2, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    .line 46
    .line 47
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    .line 53
    .line 54
    sget-object v0, Lorg/schabi/newpipe/DownloaderImpl;->instance:Lorg/schabi/newpipe/DownloaderImpl;

    .line 55
    .line 56
    iget-object v1, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v0, v0, Lorg/schabi/newpipe/DownloaderImpl;->mCookies:Ljava/util/HashMap;

    .line 59
    .line 60
    const-string v2, "recaptcha_cookies"

    .line 61
    .line 62
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const/4 v0, -0x1

    .line 66
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 67
    .line 68
    .line 69
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->recaptchaBinding:Lorg/jsoup/nodes/Printer;

    .line 70
    .line 71
    iget-object v0, v0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v0, Landroid/webkit/WebView;

    .line 74
    .line 75
    const-string v1, "about:blank"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Landroid/content/Intent;

    .line 81
    .line 82
    const-class v1, Lorg/schabi/newpipe/MainActivity;

    .line 83
    .line 84
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .line 86
    .line 87
    const/high16 v1, 0x4000000

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    .line 93
    .line 94
    .line 95
    return-void
.end method
