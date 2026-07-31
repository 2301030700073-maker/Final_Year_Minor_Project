.class public final Lcom/google/type/Money$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Money.java"

# interfaces
.implements Lcom/google/type/MoneyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/type/Money;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/type/Money;",
        "Lcom/google/type/Money$Builder;",
        ">;",
        "Lcom/google/type/MoneyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 280
    invoke-static {}, Lcom/google/type/Money;->access$000()Lcom/google/type/Money;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/type/Money$1;)V
    .locals 0

    .line 273
    invoke-direct {p0}, Lcom/google/type/Money$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCurrencyCode()Lcom/google/type/Money$Builder;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/google/type/Money$Builder;->copyOnWrite()V

    .line 334
    iget-object v0, p0, Lcom/google/type/Money$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Money;

    invoke-static {v0}, Lcom/google/type/Money;->access$200(Lcom/google/type/Money;)V

    return-object p0
.end method

.method public clearNanos()Lcom/google/type/Money$Builder;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/google/type/Money$Builder;->copyOnWrite()V

    .line 447
    iget-object v0, p0, Lcom/google/type/Money$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Money;

    invoke-static {v0}, Lcom/google/type/Money;->access$700(Lcom/google/type/Money;)V

    return-object p0
.end method

.method public clearUnits()Lcom/google/type/Money$Builder;
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/google/type/Money$Builder;->copyOnWrite()V

    .line 392
    iget-object v0, p0, Lcom/google/type/Money$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Money;

    invoke-static {v0}, Lcom/google/type/Money;->access$500(Lcom/google/type/Money;)V

    return-object p0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/google/type/Money$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Money;

    invoke-virtual {v0}, Lcom/google/type/Money;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencyCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/google/type/Money$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Money;

    invoke-virtual {v0}, Lcom/google/type/Money;->getCurrencyCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNanos()I
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/google/type/Money$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Money;

    invoke-virtual {v0}, Lcom/google/type/Money;->getNanos()I

    move-result v0

    return v0
.end method

.method public getUnits()J
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/google/type/Money$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Money;

    invoke-virtual {v0}, Lcom/google/type/Money;->getUnits()J

    move-result-wide v0

    return-wide v0
.end method

.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/type/Money$Builder;
    .locals 1

    .line 320
    invoke-virtual {p0}, Lcom/google/type/Money$Builder;->copyOnWrite()V

    .line 321
    iget-object v0, p0, Lcom/google/type/Money$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Money;

    invoke-static {v0, p1}, Lcom/google/type/Money;->access$100(Lcom/google/type/Money;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCurrencyCodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/Money$Builder;
    .locals 1

    .line 348
    invoke-virtual {p0}, Lcom/google/type/Money$Builder;->copyOnWrite()V

    .line 349
    iget-object v0, p0, Lcom/google/type/Money$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Money;

    invoke-static {v0, p1}, Lcom/google/type/Money;->access$300(Lcom/google/type/Money;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNanos(I)Lcom/google/type/Money$Builder;
    .locals 1

    .line 428
    invoke-virtual {p0}, Lcom/google/type/Money$Builder;->copyOnWrite()V

    .line 429
    iget-object v0, p0, Lcom/google/type/Money$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Money;

    invoke-static {v0, p1}, Lcom/google/type/Money;->access$600(Lcom/google/type/Money;I)V

    return-object p0
.end method

.method public setUnits(J)Lcom/google/type/Money$Builder;
    .locals 1

    .line 377
    invoke-virtual {p0}, Lcom/google/type/Money$Builder;->copyOnWrite()V

    .line 378
    iget-object v0, p0, Lcom/google/type/Money$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Money;

    invoke-static {v0, p1, p2}, Lcom/google/type/Money;->access$400(Lcom/google/type/Money;J)V

    return-object p0
.end method
