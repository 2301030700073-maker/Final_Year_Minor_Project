.class public final Lorg/jsoup/parser/Token$Doctype;
.super Lorg/jsoup/parser/Token;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public forceQuirks:Z

.field public final internalSubset:Lokhttp3/FormBody$Builder;

.field public final name:Lokhttp3/FormBody$Builder;

.field public pubSysKey:Ljava/lang/String;

.field public final publicIdentifier:Lokhttp3/FormBody$Builder;

.field public final systemIdentifier:Lokhttp3/FormBody$Builder;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Doctype:Lorg/jsoup/parser/Token$TokenType;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$TokenType;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lokhttp3/FormBody$Builder;

    .line 7
    .line 8
    const/16 v1, 0x19

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, v1, v2}, Lokhttp3/FormBody$Builder;-><init>(IZ)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->name:Lokhttp3/FormBody$Builder;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->pubSysKey:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Lokhttp3/FormBody$Builder;

    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lokhttp3/FormBody$Builder;-><init>(IZ)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->publicIdentifier:Lokhttp3/FormBody$Builder;

    .line 25
    .line 26
    new-instance v0, Lokhttp3/FormBody$Builder;

    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lokhttp3/FormBody$Builder;-><init>(IZ)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->systemIdentifier:Lokhttp3/FormBody$Builder;

    .line 32
    .line 33
    new-instance v0, Lokhttp3/FormBody$Builder;

    .line 34
    .line 35
    invoke-direct {v0, v1, v2}, Lokhttp3/FormBody$Builder;-><init>(IZ)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->internalSubset:Lokhttp3/FormBody$Builder;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/jsoup/parser/Token;->startPos:I

    .line 3
    .line 4
    iput v0, p0, Lorg/jsoup/parser/Token;->endPos:I

    .line 5
    .line 6
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->name:Lokhttp3/FormBody$Builder;

    .line 7
    .line 8
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->reset()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->pubSysKey:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->publicIdentifier:Lokhttp3/FormBody$Builder;

    .line 15
    .line 16
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->reset()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->systemIdentifier:Lokhttp3/FormBody$Builder;

    .line 20
    .line 21
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->reset()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->internalSubset:Lokhttp3/FormBody$Builder;

    .line 25
    .line 26
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->reset()V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 31
    .line 32
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "<!doctype "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lorg/jsoup/parser/Token$Doctype;->name:Lokhttp3/FormBody$Builder;

    .line 9
    .line 10
    invoke-virtual {p0}, Lokhttp3/FormBody$Builder;->value()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, ">"

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
