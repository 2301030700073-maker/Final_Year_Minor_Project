.class public Lexpo/modules/structuredheaders/TokenItem;
.super Ljava/lang/Object;
.source "TokenItem.java"

# interfaces
.implements Lexpo/modules/structuredheaders/Item;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexpo/modules/structuredheaders/Item<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final params:Lexpo/modules/structuredheaders/Parameters;

.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lexpo/modules/structuredheaders/Parameters;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "value must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lexpo/modules/structuredheaders/TokenItem;->checkParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/structuredheaders/TokenItem;->value:Ljava/lang/String;

    .line 19
    const-string p1, "params must not be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/structuredheaders/Parameters;

    iput-object p1, p0, Lexpo/modules/structuredheaders/TokenItem;->params:Lexpo/modules/structuredheaders/Parameters;

    return-void
.end method

.method private static checkParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 69
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-nez v0, :cond_0

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_0

    .line 71
    invoke-static {v1}, Lexpo/modules/structuredheaders/Utils;->isAlpha(C)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/16 v2, 0x20

    if-le v1, v2, :cond_1

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_1

    const-string v2, "\"(),;<=>?@[\\]{}"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v2, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Invalid character in Token at position %d: \'%c\' (0x%04x)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object p0

    .line 67
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Token can not be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/structuredheaders/TokenItem;
    .locals 2

    .line 31
    new-instance v0, Lexpo/modules/structuredheaders/TokenItem;

    sget-object v1, Lexpo/modules/structuredheaders/Parameters;->EMPTY:Lexpo/modules/structuredheaders/Parameters;

    invoke-direct {v0, p0, v1}, Lexpo/modules/structuredheaders/TokenItem;-><init>(Ljava/lang/String;Lexpo/modules/structuredheaders/Parameters;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lexpo/modules/structuredheaders/TokenItem;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lexpo/modules/structuredheaders/TokenItem;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Lexpo/modules/structuredheaders/Parameters;
    .locals 1

    .line 45
    iget-object v0, p0, Lexpo/modules/structuredheaders/TokenItem;->params:Lexpo/modules/structuredheaders/Parameters;

    return-object v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lexpo/modules/structuredheaders/TokenItem;->serializeTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializeTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    .line 50
    iget-object v0, p0, Lexpo/modules/structuredheaders/TokenItem;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v0, p0, Lexpo/modules/structuredheaders/TokenItem;->params:Lexpo/modules/structuredheaders/Parameters;

    invoke-virtual {v0, p1}, Lexpo/modules/structuredheaders/Parameters;->serializeTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public bridge synthetic withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/Item;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lexpo/modules/structuredheaders/TokenItem;->withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/TokenItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/Parametrizable;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lexpo/modules/structuredheaders/TokenItem;->withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/TokenItem;

    move-result-object p1

    return-object p1
.end method

.method public withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/TokenItem;
    .locals 2

    .line 36
    const-string v0, "params must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/structuredheaders/Parameters;

    invoke-virtual {v0}, Lexpo/modules/structuredheaders/Parameters;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 39
    :cond_0
    new-instance v0, Lexpo/modules/structuredheaders/TokenItem;

    iget-object v1, p0, Lexpo/modules/structuredheaders/TokenItem;->value:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lexpo/modules/structuredheaders/TokenItem;-><init>(Ljava/lang/String;Lexpo/modules/structuredheaders/Parameters;)V

    return-object v0
.end method
