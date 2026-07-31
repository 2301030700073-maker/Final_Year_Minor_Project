.class public final Lorg/jsoup/parser/Token$Doctype;
.super Lorg/jsoup/parser/Token;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public forceQuirks:Z

.field public final internalSubset:Lorg/jsoup/parser/TokenData;

.field public final name:Lorg/jsoup/parser/TokenData;

.field public pubSysKey:Ljava/lang/String;

.field public final publicIdentifier:Lorg/jsoup/parser/TokenData;

.field public sawInternalSubset:Z

.field public final systemIdentifier:Lorg/jsoup/parser/TokenData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(I)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lorg/jsoup/parser/TokenData;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TokenData;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->name:Lorg/jsoup/parser/TokenData;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->pubSysKey:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Lorg/jsoup/parser/TokenData;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TokenData;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->publicIdentifier:Lorg/jsoup/parser/TokenData;

    .line 22
    .line 23
    new-instance v0, Lorg/jsoup/parser/TokenData;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TokenData;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->systemIdentifier:Lorg/jsoup/parser/TokenData;

    .line 29
    .line 30
    new-instance v0, Lorg/jsoup/parser/TokenData;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TokenData;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->internalSubset:Lorg/jsoup/parser/TokenData;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Doctype;->sawInternalSubset:Z

    .line 39
    .line 40
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 41
    .line 42
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
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->name:Lorg/jsoup/parser/TokenData;

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->reset()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->pubSysKey:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->publicIdentifier:Lorg/jsoup/parser/TokenData;

    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->reset()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->systemIdentifier:Lorg/jsoup/parser/TokenData;

    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->reset()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->internalSubset:Lorg/jsoup/parser/TokenData;

    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->reset()V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Doctype;->sawInternalSubset:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 33
    .line 34
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
    iget-object p0, p0, Lorg/jsoup/parser/Token$Doctype;->name:Lorg/jsoup/parser/TokenData;

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

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
