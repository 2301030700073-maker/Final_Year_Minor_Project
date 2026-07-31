.class public final Lcom/google/api/ContextRule;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContextRule.java"

# interfaces
.implements Lcom/google/api/ContextRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/ContextRule$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/ContextRule;",
        "Lcom/google/api/ContextRule$Builder;",
        ">;",
        "Lcom/google/api/ContextRuleOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALLOWED_REQUEST_EXTENSIONS_FIELD_NUMBER:I = 0x4

.field public static final ALLOWED_RESPONSE_EXTENSIONS_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/ContextRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROVIDED_FIELD_NUMBER:I = 0x3

.field public static final REQUESTED_FIELD_NUMBER:I = 0x2

.field public static final SELECTOR_FIELD_NUMBER:I = 0x1


# instance fields
.field private allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provided_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requested_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selector_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1409
    new-instance v0, Lcom/google/api/ContextRule;

    invoke-direct {v0}, Lcom/google/api/ContextRule;-><init>()V

    .line 1412
    sput-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    .line 1413
    const-class v1, Lcom/google/api/ContextRule;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/ContextRule;->selector_:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 23
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 24
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 25
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/api/ContextRule;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/ContextRule;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->setSelector(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/ContextRule;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addProvided(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/ContextRule;Ljava/lang/Iterable;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addAllProvided(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/ContextRule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/api/ContextRule;->clearProvided()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/api/ContextRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addProvidedBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/api/ContextRule;ILjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/api/ContextRule;->setAllowedRequestExtensions(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/api/ContextRule;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addAllowedRequestExtensions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/api/ContextRule;Ljava/lang/Iterable;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addAllAllowedRequestExtensions(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/api/ContextRule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/api/ContextRule;->clearAllowedRequestExtensions()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/api/ContextRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addAllowedRequestExtensionsBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/api/ContextRule;ILjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/api/ContextRule;->setAllowedResponseExtensions(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/ContextRule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/api/ContextRule;->clearSelector()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/api/ContextRule;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addAllowedResponseExtensions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/api/ContextRule;Ljava/lang/Iterable;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addAllAllowedResponseExtensions(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/api/ContextRule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/api/ContextRule;->clearAllowedResponseExtensions()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/api/ContextRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addAllowedResponseExtensionsBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/ContextRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->setSelectorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/ContextRule;ILjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/api/ContextRule;->setRequested(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/ContextRule;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addRequested(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/ContextRule;Ljava/lang/Iterable;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addAllRequested(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/ContextRule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/api/ContextRule;->clearRequested()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/ContextRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/ContextRule;->addRequestedBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/ContextRule;ILjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/api/ContextRule;->setProvided(ILjava/lang/String;)V

    return-void
.end method

.method private addAllAllowedRequestExtensions(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 469
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureAllowedRequestExtensionsIsMutable()V

    .line 470
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllAllowedResponseExtensions(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 607
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureAllowedResponseExtensionsIsMutable()V

    .line 608
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllProvided(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 333
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureProvidedIsMutable()V

    .line 334
    iget-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllRequested(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureRequestedIsMutable()V

    .line 205
    iget-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllowedRequestExtensions(Ljava/lang/String;)V
    .locals 1

    .line 454
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 455
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureAllowedRequestExtensionsIsMutable()V

    .line 456
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAllowedRequestExtensionsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 495
    invoke-static {p1}, Lcom/google/api/ContextRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 496
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureAllowedRequestExtensionsIsMutable()V

    .line 497
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAllowedResponseExtensions(Ljava/lang/String;)V
    .locals 1

    .line 592
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 593
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureAllowedResponseExtensionsIsMutable()V

    .line 594
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAllowedResponseExtensionsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 633
    invoke-static {p1}, Lcom/google/api/ContextRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 634
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureAllowedResponseExtensionsIsMutable()V

    .line 635
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addProvided(Ljava/lang/String;)V
    .locals 1

    .line 319
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureProvidedIsMutable()V

    .line 321
    iget-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addProvidedBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 357
    invoke-static {p1}, Lcom/google/api/ContextRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 358
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureProvidedIsMutable()V

    .line 359
    iget-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addRequested(Ljava/lang/String;)V
    .locals 1

    .line 190
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureRequestedIsMutable()V

    .line 192
    iget-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addRequestedBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 228
    invoke-static {p1}, Lcom/google/api/ContextRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 229
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureRequestedIsMutable()V

    .line 230
    iget-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAllowedRequestExtensions()V
    .locals 1

    .line 482
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearAllowedResponseExtensions()V
    .locals 1

    .line 620
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearProvided()V
    .locals 1

    .line 345
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearRequested()V
    .locals 1

    .line 216
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSelector()V
    .locals 1

    .line 85
    invoke-static {}, Lcom/google/api/ContextRule;->getDefaultInstance()Lcom/google/api/ContextRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->selector_:Ljava/lang/String;

    return-void
.end method

.method private ensureAllowedRequestExtensionsIsMutable()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 422
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 424
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureAllowedResponseExtensionsIsMutable()V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 560
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 562
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureProvidedIsMutable()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 289
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureRequestedIsMutable()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 160
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/ContextRule;
    .locals 1

    .line 1418
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 715
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-virtual {v0}, Lcom/google/api/ContextRule;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/ContextRule$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/ContextRule;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 718
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-virtual {v0, p0}, Lcom/google/api/ContextRule;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 691
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0}, Lcom/google/api/ContextRule;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0, p1}, Lcom/google/api/ContextRule;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 654
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 661
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 710
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 641
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 648
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 666
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ContextRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 673
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ContextRule;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/ContextRule;",
            ">;"
        }
    .end annotation

    .line 1424
    sget-object v0, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAllowedRequestExtensions(ILjava/lang/String;)V
    .locals 1

    .line 439
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 440
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureAllowedRequestExtensionsIsMutable()V

    .line 441
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setAllowedResponseExtensions(ILjava/lang/String;)V
    .locals 1

    .line 577
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureAllowedResponseExtensionsIsMutable()V

    .line 579
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setProvided(ILjava/lang/String;)V
    .locals 1

    .line 305
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureProvidedIsMutable()V

    .line 307
    iget-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setRequested(ILjava/lang/String;)V
    .locals 1

    .line 176
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    invoke-direct {p0}, Lcom/google/api/ContextRule;->ensureRequestedIsMutable()V

    .line 178
    iget-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSelector(Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    iput-object p1, p0, Lcom/google/api/ContextRule;->selector_:Ljava/lang/String;

    return-void
.end method

.method private setSelectorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 99
    invoke-static {p1}, Lcom/google/api/ContextRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 100
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/ContextRule;->selector_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1356
    sget-object p2, Lcom/google/api/ContextRule$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1402
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1396
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1381
    :pswitch_2
    sget-object p1, Lcom/google/api/ContextRule;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1383
    const-class p2, Lcom/google/api/ContextRule;

    monitor-enter p2

    .line 1384
    :try_start_0
    sget-object p1, Lcom/google/api/ContextRule;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1386
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1389
    sput-object p1, Lcom/google/api/ContextRule;->PARSER:Lcom/google/protobuf/Parser;

    .line 1391
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 1378
    :pswitch_3
    sget-object p1, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    return-object p1

    .line 1364
    :pswitch_4
    const-string p1, "selector_"

    const-string p2, "requested_"

    const-string p3, "provided_"

    const-string v0, "allowedRequestExtensions_"

    const-string v1, "allowedResponseExtensions_"

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1371
    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0004\u0000\u0001\u0208\u0002\u021a\u0003\u021a\u0004\u021a\u0005\u021a"

    .line 1374
    sget-object p3, Lcom/google/api/ContextRule;->DEFAULT_INSTANCE:Lcom/google/api/ContextRule;

    invoke-static {p3, p2, p1}, Lcom/google/api/ContextRule;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1361
    :pswitch_5
    new-instance p1, Lcom/google/api/ContextRule$Builder;

    invoke-direct {p1, p2}, Lcom/google/api/ContextRule$Builder;-><init>(Lcom/google/api/ContextRule$1;)V

    return-object p1

    .line 1358
    :pswitch_6
    new-instance p1, Lcom/google/api/ContextRule;

    invoke-direct {p1}, Lcom/google/api/ContextRule;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAllowedRequestExtensions(I)Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAllowedRequestExtensionsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 418
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 417
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAllowedRequestExtensionsCount()I
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getAllowedRequestExtensionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedRequestExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAllowedResponseExtensions(I)Ljava/lang/String;
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAllowedResponseExtensionsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 556
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 555
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAllowedResponseExtensionsCount()I
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getAllowedResponseExtensionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/google/api/ContextRule;->allowedResponseExtensions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getProvided(I)Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getProvidedBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 285
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 284
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getProvidedCount()I
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getProvidedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/google/api/ContextRule;->provided_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRequested(I)Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getRequestedBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 156
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 155
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getRequestedCount()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getRequestedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/google/api/ContextRule;->requested_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/api/ContextRule;->selector_:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/api/ContextRule;->selector_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
