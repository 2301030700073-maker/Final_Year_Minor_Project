.class public Lcom/android/insecurebankv2/DoTransfer;
.super Landroid/app/Activity;
.source "DoTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/insecurebankv2/DoTransfer$RequestDoGets2;,
        Lcom/android/insecurebankv2/DoTransfer$RequestDoTransferTask;
    }
.end annotation


# static fields
.field public static final MYPREFS2:Ljava/lang/String; = "mySharedPreferences"


# instance fields
.field acc1:Ljava/lang/String;

.field acc2:Ljava/lang/String;

.field amount:Landroid/widget/EditText;

.field button1:Landroid/widget/Button;

.field from:Landroid/widget/EditText;

.field getAccounts:Landroid/widget/Button;

.field in:Ljava/io/InputStream;

.field jsonObject:Lorg/json/JSONObject;

.field number:Ljava/lang/String;

.field passNormalized:Ljava/lang/String;

.field phoneNumber:Landroid/widget/EditText;

.field protocol:Ljava/lang/String;

.field reader:Ljava/io/BufferedReader;

.field responseBody:Lorg/apache/http/HttpResponse;

.field result:Ljava/lang/String;

.field serverDetails:Landroid/content/SharedPreferences;

.field serverip:Ljava/lang/String;

.field serverport:Ljava/lang/String;

.field to:Landroid/widget/EditText;

.field transfer:Landroid/widget/Button;

.field usernameBase64ByteString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    const-string v0, "5554"

    iput-object v0, p0, Lcom/android/insecurebankv2/DoTransfer;->number:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/android/insecurebankv2/DoTransfer;->serverip:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/android/insecurebankv2/DoTransfer;->serverport:Ljava/lang/String;

    .line 78
    const-string v0, "http://"

    iput-object v0, p0, Lcom/android/insecurebankv2/DoTransfer;->protocol:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/insecurebankv2/DoTransfer;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/insecurebankv2/DoTransfer;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lcom/android/insecurebankv2/DoTransfer;->getNormalizedPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNormalizedPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 359
    new-instance v0, Lcom/android/insecurebankv2/CryptoClass;

    invoke-direct {v0}, Lcom/android/insecurebankv2/CryptoClass;-><init>()V

    .line 360
    .local v0, "crypt":Lcom/android/insecurebankv2/CryptoClass;
    invoke-virtual {v0, p1}, Lcom/android/insecurebankv2/CryptoClass;->aesDeccryptedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public callPreferences()V
    .locals 2

    .line 419
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/insecurebankv2/FilePrefActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 420
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/DoTransfer;->startActivity(Landroid/content/Intent;)V

    .line 421
    return-void
.end method

.method public convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/android/insecurebankv2/DoTransfer;->reader:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 372
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 374
    .local v1, "line":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/insecurebankv2/DoTransfer;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_0

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 376
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/DoTransfer;->setContentView(I)V

    .line 88
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/insecurebankv2/DoTransfer;->serverDetails:Landroid/content/SharedPreferences;

    .line 89
    iget-object v0, p0, Lcom/android/insecurebankv2/DoTransfer;->serverDetails:Landroid/content/SharedPreferences;

    const-string v1, "serverip"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/insecurebankv2/DoTransfer;->serverip:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/android/insecurebankv2/DoTransfer;->serverDetails:Landroid/content/SharedPreferences;

    const-string v1, "serverport"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/insecurebankv2/DoTransfer;->serverport:Ljava/lang/String;

    .line 93
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/DoTransfer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/insecurebankv2/DoTransfer;->transfer:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/android/insecurebankv2/DoTransfer;->transfer:Landroid/widget/Button;

    new-instance v1, Lcom/android/insecurebankv2/DoTransfer$1;

    invoke-direct {v1, p0}, Lcom/android/insecurebankv2/DoTransfer$1;-><init>(Lcom/android/insecurebankv2/DoTransfer;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/android/insecurebankv2/DoTransfer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/insecurebankv2/DoTransfer;->button1:Landroid/widget/Button;

    .line 105
    iget-object v0, p0, Lcom/android/insecurebankv2/DoTransfer;->button1:Landroid/widget/Button;

    new-instance v1, Lcom/android/insecurebankv2/DoTransfer$2;

    invoke-direct {v1, p0}, Lcom/android/insecurebankv2/DoTransfer$2;-><init>(Lcom/android/insecurebankv2/DoTransfer;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 384
    invoke-virtual {p0}, Lcom/android/insecurebankv2/DoTransfer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 385
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 394
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 396
    .local v0, "id":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x7f070008

    if-eq v1, v2, :cond_1

    const v2, 0x7f07000e

    if-eq v1, v2, :cond_0

    .line 412
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/android/insecurebankv2/DoTransfer;->callPreferences()V

    .line 403
    return v3

    .line 406
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/insecurebankv2/DoTransfer;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v4, Lcom/android/insecurebankv2/LoginActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 407
    .local v1, "i":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0, v1}, Lcom/android/insecurebankv2/DoTransfer;->startActivity(Landroid/content/Intent;)V

    .line 409
    return v3

    .line 399
    .end local v1    # "i":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/android/insecurebankv2/DoTransfer;->finish()V

    .line 400
    return v3
.end method
