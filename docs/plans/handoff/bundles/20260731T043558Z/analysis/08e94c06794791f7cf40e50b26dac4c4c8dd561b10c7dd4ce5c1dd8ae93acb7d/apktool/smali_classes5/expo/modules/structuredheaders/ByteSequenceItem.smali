.class public Lexpo/modules/structuredheaders/ByteSequenceItem;
.super Ljava/lang/Object;
.source "ByteSequenceItem.java"

# interfaces
.implements Lexpo/modules/structuredheaders/Item;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexpo/modules/structuredheaders/Item<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private final params:Lexpo/modules/structuredheaders/Parameters;

.field private final value:[B


# direct methods
.method private constructor <init>([BLexpo/modules/structuredheaders/Parameters;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "value must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lexpo/modules/structuredheaders/ByteSequenceItem;->value:[B

    .line 22
    const-string p1, "params must not be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/structuredheaders/Parameters;

    iput-object p1, p0, Lexpo/modules/structuredheaders/ByteSequenceItem;->params:Lexpo/modules/structuredheaders/Parameters;

    return-void
.end method

.method public static valueOf([B)Lexpo/modules/structuredheaders/ByteSequenceItem;
    .locals 2

    .line 34
    new-instance v0, Lexpo/modules/structuredheaders/ByteSequenceItem;

    sget-object v1, Lexpo/modules/structuredheaders/Parameters;->EMPTY:Lexpo/modules/structuredheaders/Parameters;

    invoke-direct {v0, p0, v1}, Lexpo/modules/structuredheaders/ByteSequenceItem;-><init>([BLexpo/modules/structuredheaders/Parameters;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lexpo/modules/structuredheaders/ByteSequenceItem;->get()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/nio/ByteBuffer;
    .locals 1

    .line 68
    iget-object v0, p0, Lexpo/modules/structuredheaders/ByteSequenceItem;->value:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lexpo/modules/structuredheaders/Parameters;
    .locals 1

    .line 48
    iget-object v0, p0, Lexpo/modules/structuredheaders/ByteSequenceItem;->params:Lexpo/modules/structuredheaders/Parameters;

    return-object v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 1

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lexpo/modules/structuredheaders/ByteSequenceItem;->serializeTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializeTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    const/16 v0, 0x3a

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Lexpo/modules/structuredheaders/ByteSequenceItem;->value:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    iget-object v0, p0, Lexpo/modules/structuredheaders/ByteSequenceItem;->params:Lexpo/modules/structuredheaders/Parameters;

    invoke-virtual {v0, p1}, Lexpo/modules/structuredheaders/Parameters;->serializeTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/ByteSequenceItem;
    .locals 2

    .line 39
    const-string v0, "params must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/structuredheaders/Parameters;

    invoke-virtual {v0}, Lexpo/modules/structuredheaders/Parameters;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 42
    :cond_0
    new-instance v0, Lexpo/modules/structuredheaders/ByteSequenceItem;

    iget-object v1, p0, Lexpo/modules/structuredheaders/ByteSequenceItem;->value:[B

    invoke-direct {v0, v1, p1}, Lexpo/modules/structuredheaders/ByteSequenceItem;-><init>([BLexpo/modules/structuredheaders/Parameters;)V

    return-object v0
.end method

.method public bridge synthetic withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/Item;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lexpo/modules/structuredheaders/ByteSequenceItem;->withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/ByteSequenceItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/Parametrizable;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lexpo/modules/structuredheaders/ByteSequenceItem;->withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/ByteSequenceItem;

    move-result-object p1

    return-object p1
.end method
