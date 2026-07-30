.class public Lcom/android/contacts/quickcontact/WebAddress;
.super Ljava/lang/Object;
.source "WebAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/WebAddress$ParseException;
    }
.end annotation


# static fields
.field static sAddressPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mAuthInfo:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mPort:I

.field private mScheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "(?:(http|https|file)\\:\\/\\/)?(?:([-A-Za-z0-9$_.+!*\'(),;?&=]+(?:\\:[-A-Za-z0-9$_.+!*\'(),;?&=]+)?)@)?([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef%_-][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef%_\\.-]*|\\[[0-9a-fA-F:\\.]+\\])?(?:\\:([0-9]*))?(\\/?[^#]*)?.*"

    const/4 v1, 0x2

    .line 56
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/WebAddress;->sAddressPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/quickcontact/WebAddress$ParseException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_b

    const-string v0, ""

    .line 70
    iput-object v0, p0, Lcom/android/contacts/quickcontact/WebAddress;->mScheme:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/android/contacts/quickcontact/WebAddress;->mHost:Ljava/lang/String;

    const/4 v1, -0x1

    .line 72
    iput v1, p0, Lcom/android/contacts/quickcontact/WebAddress;->mPort:I

    const-string v2, "/"

    .line 73
    iput-object v2, p0, Lcom/android/contacts/quickcontact/WebAddress;->mPath:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/android/contacts/quickcontact/WebAddress;->mAuthInfo:Ljava/lang/String;

    .line 76
    sget-object v3, Lcom/android/contacts/quickcontact/WebAddress;->sAddressPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    .line 79
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 80
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/quickcontact/WebAddress;->mScheme:Ljava/lang/String;

    :cond_0
    const/4 v3, 0x2

    .line 81
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 82
    iput-object v3, p0, Lcom/android/contacts/quickcontact/WebAddress;->mAuthInfo:Ljava/lang/String;

    :cond_1
    const/4 v3, 0x3

    .line 83
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 84
    iput-object v3, p0, Lcom/android/contacts/quickcontact/WebAddress;->mHost:Ljava/lang/String;

    :cond_2
    const/4 v3, 0x4

    .line 85
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 86
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 89
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/contacts/quickcontact/WebAddress;->mPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    new-instance p1, Lcom/android/contacts/quickcontact/WebAddress$ParseException;

    const-string v0, "Bad port"

    invoke-direct {p1, p0, v0}, Lcom/android/contacts/quickcontact/WebAddress$ParseException;-><init>(Lcom/android/contacts/quickcontact/WebAddress;Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const/4 v3, 0x5

    .line 94
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x0

    .line 98
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_4

    .line 99
    iput-object p1, p0, Lcom/android/contacts/quickcontact/WebAddress;->mPath:Ljava/lang/String;

    goto :goto_1

    .line 101
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/quickcontact/WebAddress;->mPath:Ljava/lang/String;

    .line 112
    :cond_5
    :goto_1
    iget p1, p0, Lcom/android/contacts/quickcontact/WebAddress;->mPort:I

    const-string v2, "https"

    const/16 v3, 0x1bb

    if-ne p1, v3, :cond_6

    iget-object p1, p0, Lcom/android/contacts/quickcontact/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 113
    iput-object v2, p0, Lcom/android/contacts/quickcontact/WebAddress;->mScheme:Ljava/lang/String;

    goto :goto_2

    .line 114
    :cond_6
    iget p1, p0, Lcom/android/contacts/quickcontact/WebAddress;->mPort:I

    if-ne p1, v1, :cond_8

    .line 115
    iget-object p1, p0, Lcom/android/contacts/quickcontact/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 116
    iput v3, p0, Lcom/android/contacts/quickcontact/WebAddress;->mPort:I

    goto :goto_2

    :cond_7
    const/16 p1, 0x50

    .line 118
    iput p1, p0, Lcom/android/contacts/quickcontact/WebAddress;->mPort:I

    .line 120
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/android/contacts/quickcontact/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "http"

    iput-object p1, p0, Lcom/android/contacts/quickcontact/WebAddress;->mScheme:Ljava/lang/String;

    :cond_9
    return-void

    .line 107
    :cond_a
    new-instance p1, Lcom/android/contacts/quickcontact/WebAddress$ParseException;

    const-string v0, "Bad address"

    invoke-direct {p1, p0, v0}, Lcom/android/contacts/quickcontact/WebAddress$ParseException;-><init>(Lcom/android/contacts/quickcontact/WebAddress;Ljava/lang/String;)V

    throw p1

    :cond_b
    const/4 p1, 0x0

    .line 67
    throw p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 126
    iget v0, p0, Lcom/android/contacts/quickcontact/WebAddress;->mPort:I

    const-string v1, ""

    const/16 v2, 0x1bb

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/WebAddress;->mScheme:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/contacts/quickcontact/WebAddress;->mPort:I

    const/16 v2, 0x50

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/contacts/quickcontact/WebAddress;->mScheme:Ljava/lang/String;

    const-string v2, "http"

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/contacts/quickcontact/WebAddress;->mPort:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 131
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/quickcontact/WebAddress;->mAuthInfo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/contacts/quickcontact/WebAddress;->mAuthInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/contacts/quickcontact/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/WebAddress;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
