.class public Lexpo/modules/structuredheaders/IntegerItem;
.super Ljava/lang/Object;
.source "IntegerItem.java"

# interfaces
.implements Lexpo/modules/structuredheaders/NumberItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexpo/modules/structuredheaders/NumberItem<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX:J = 0x38d7ea4c67fffL

.field private static final MIN:J = -0x38d7ea4c67fffL


# instance fields
.field private final params:Lexpo/modules/structuredheaders/Parameters;

.field private final value:J


# direct methods
.method private constructor <init>(JLexpo/modules/structuredheaders/Parameters;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x38d7ea4c67fffL

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x38d7ea4c67fffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 24
    iput-wide p1, p0, Lexpo/modules/structuredheaders/IntegerItem;->value:J

    .line 25
    const-string p1, "params must not be null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/structuredheaders/Parameters;

    iput-object p1, p0, Lexpo/modules/structuredheaders/IntegerItem;->params:Lexpo/modules/structuredheaders/Parameters;

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value must be in the range from -999999999999999 to 999999999999999"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static valueOf(J)Lexpo/modules/structuredheaders/IntegerItem;
    .locals 2

    .line 37
    new-instance v0, Lexpo/modules/structuredheaders/IntegerItem;

    sget-object v1, Lexpo/modules/structuredheaders/Parameters;->EMPTY:Lexpo/modules/structuredheaders/Parameters;

    invoke-direct {v0, p0, p1, v1}, Lexpo/modules/structuredheaders/IntegerItem;-><init>(JLexpo/modules/structuredheaders/Parameters;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .locals 2

    .line 68
    iget-wide v0, p0, Lexpo/modules/structuredheaders/IntegerItem;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lexpo/modules/structuredheaders/IntegerItem;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getAsLong()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lexpo/modules/structuredheaders/IntegerItem;->value:J

    return-wide v0
.end method

.method public getDivisor()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getParams()Lexpo/modules/structuredheaders/Parameters;
    .locals 1

    .line 51
    iget-object v0, p0, Lexpo/modules/structuredheaders/IntegerItem;->params:Lexpo/modules/structuredheaders/Parameters;

    return-object v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 1

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lexpo/modules/structuredheaders/IntegerItem;->serializeTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializeTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    .line 56
    iget-wide v0, p0, Lexpo/modules/structuredheaders/IntegerItem;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v0, p0, Lexpo/modules/structuredheaders/IntegerItem;->params:Lexpo/modules/structuredheaders/Parameters;

    invoke-virtual {v0, p1}, Lexpo/modules/structuredheaders/Parameters;->serializeTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/IntegerItem;
    .locals 3

    .line 42
    const-string v0, "params must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/structuredheaders/Parameters;

    invoke-virtual {v0}, Lexpo/modules/structuredheaders/Parameters;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 45
    :cond_0
    new-instance v0, Lexpo/modules/structuredheaders/IntegerItem;

    iget-wide v1, p0, Lexpo/modules/structuredheaders/IntegerItem;->value:J

    invoke-direct {v0, v1, v2, p1}, Lexpo/modules/structuredheaders/IntegerItem;-><init>(JLexpo/modules/structuredheaders/Parameters;)V

    return-object v0
.end method

.method public bridge synthetic withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/Item;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lexpo/modules/structuredheaders/IntegerItem;->withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/IntegerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/NumberItem;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lexpo/modules/structuredheaders/IntegerItem;->withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/IntegerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/Parametrizable;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lexpo/modules/structuredheaders/IntegerItem;->withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/IntegerItem;

    move-result-object p1

    return-object p1
.end method
