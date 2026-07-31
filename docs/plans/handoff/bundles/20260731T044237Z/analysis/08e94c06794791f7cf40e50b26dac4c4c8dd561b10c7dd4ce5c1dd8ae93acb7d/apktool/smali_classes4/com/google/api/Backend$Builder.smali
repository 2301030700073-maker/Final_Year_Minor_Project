.class public final Lcom/google/api/Backend$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Backend.java"

# interfaces
.implements Lcom/google/api/BackendOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Backend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Backend;",
        "Lcom/google/api/Backend$Builder;",
        ">;",
        "Lcom/google/api/BackendOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 279
    invoke-static {}, Lcom/google/api/Backend;->access$000()Lcom/google/api/Backend;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Backend$1;)V
    .locals 0

    .line 272
    invoke-direct {p0}, Lcom/google/api/Backend$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllRules(Ljava/lang/Iterable;)Lcom/google/api/Backend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/BackendRule;",
            ">;)",
            "Lcom/google/api/Backend$Builder;"
        }
    .end annotation

    .line 424
    invoke-virtual {p0}, Lcom/google/api/Backend$Builder;->copyOnWrite()V

    .line 425
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    invoke-static {v0, p1}, Lcom/google/api/Backend;->access$400(Lcom/google/api/Backend;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addRules(ILcom/google/api/BackendRule$Builder;)Lcom/google/api/Backend$Builder;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/google/api/Backend$Builder;->copyOnWrite()V

    .line 409
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    .line 410
    invoke-virtual {p2}, Lcom/google/api/BackendRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/BackendRule;

    .line 409
    invoke-static {v0, p1, p2}, Lcom/google/api/Backend;->access$300(Lcom/google/api/Backend;ILcom/google/api/BackendRule;)V

    return-object p0
.end method

.method public addRules(ILcom/google/api/BackendRule;)Lcom/google/api/Backend$Builder;
    .locals 1

    .line 378
    invoke-virtual {p0}, Lcom/google/api/Backend$Builder;->copyOnWrite()V

    .line 379
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    invoke-static {v0, p1, p2}, Lcom/google/api/Backend;->access$300(Lcom/google/api/Backend;ILcom/google/api/BackendRule;)V

    return-object p0
.end method

.method public addRules(Lcom/google/api/BackendRule$Builder;)Lcom/google/api/Backend$Builder;
    .locals 1

    .line 393
    invoke-virtual {p0}, Lcom/google/api/Backend$Builder;->copyOnWrite()V

    .line 394
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    invoke-virtual {p1}, Lcom/google/api/BackendRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/BackendRule;

    invoke-static {v0, p1}, Lcom/google/api/Backend;->access$200(Lcom/google/api/Backend;Lcom/google/api/BackendRule;)V

    return-object p0
.end method

.method public addRules(Lcom/google/api/BackendRule;)Lcom/google/api/Backend$Builder;
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/google/api/Backend$Builder;->copyOnWrite()V

    .line 364
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    invoke-static {v0, p1}, Lcom/google/api/Backend;->access$200(Lcom/google/api/Backend;Lcom/google/api/BackendRule;)V

    return-object p0
.end method

.method public clearRules()Lcom/google/api/Backend$Builder;
    .locals 1

    .line 438
    invoke-virtual {p0}, Lcom/google/api/Backend$Builder;->copyOnWrite()V

    .line 439
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    invoke-static {v0}, Lcom/google/api/Backend;->access$500(Lcom/google/api/Backend;)V

    return-object p0
.end method

.method public getRules(I)Lcom/google/api/BackendRule;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    invoke-virtual {v0, p1}, Lcom/google/api/Backend;->getRules(I)Lcom/google/api/BackendRule;

    move-result-object p1

    return-object p1
.end method

.method public getRulesCount()I
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    invoke-virtual {v0}, Lcom/google/api/Backend;->getRulesCount()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/BackendRule;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    .line 295
    invoke-virtual {v0}, Lcom/google/api/Backend;->getRulesList()Ljava/util/List;

    move-result-object v0

    .line 294
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeRules(I)Lcom/google/api/Backend$Builder;
    .locals 1

    .line 452
    invoke-virtual {p0}, Lcom/google/api/Backend$Builder;->copyOnWrite()V

    .line 453
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    invoke-static {v0, p1}, Lcom/google/api/Backend;->access$600(Lcom/google/api/Backend;I)V

    return-object p0
.end method

.method public setRules(ILcom/google/api/BackendRule$Builder;)Lcom/google/api/Backend$Builder;
    .locals 1

    .line 348
    invoke-virtual {p0}, Lcom/google/api/Backend$Builder;->copyOnWrite()V

    .line 349
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    .line 350
    invoke-virtual {p2}, Lcom/google/api/BackendRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/BackendRule;

    .line 349
    invoke-static {v0, p1, p2}, Lcom/google/api/Backend;->access$100(Lcom/google/api/Backend;ILcom/google/api/BackendRule;)V

    return-object p0
.end method

.method public setRules(ILcom/google/api/BackendRule;)Lcom/google/api/Backend$Builder;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/google/api/Backend$Builder;->copyOnWrite()V

    .line 334
    iget-object v0, p0, Lcom/google/api/Backend$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Backend;

    invoke-static {v0, p1, p2}, Lcom/google/api/Backend;->access$100(Lcom/google/api/Backend;ILcom/google/api/BackendRule;)V

    return-object p0
.end method
