.class public final Lcom/google/api/HttpRule;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HttpRule.java"

# interfaces
.implements Lcom/google/api/HttpRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/HttpRule$PatternCase;,
        Lcom/google/api/HttpRule$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/HttpRule;",
        "Lcom/google/api/HttpRule$Builder;",
        ">;",
        "Lcom/google/api/HttpRuleOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADDITIONAL_BINDINGS_FIELD_NUMBER:I = 0xb

.field public static final BODY_FIELD_NUMBER:I = 0x7

.field public static final CUSTOM_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

.field public static final DELETE_FIELD_NUMBER:I = 0x5

.field public static final GET_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/HttpRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATCH_FIELD_NUMBER:I = 0x6

.field public static final POST_FIELD_NUMBER:I = 0x4

.field public static final PUT_FIELD_NUMBER:I = 0x3

.field public static final RESPONSE_BODY_FIELD_NUMBER:I = 0xc

.field public static final SELECTOR_FIELD_NUMBER:I = 0x1


# instance fields
.field private additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/HttpRule;",
            ">;"
        }
    .end annotation
.end field

.field private body_:Ljava/lang/String;

.field private patternCase_:I

.field private pattern_:Ljava/lang/Object;

.field private responseBody_:Ljava/lang/String;

.field private selector_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2683
    new-instance v0, Lcom/google/api/HttpRule;

    invoke-direct {v0}, Lcom/google/api/HttpRule;-><init>()V

    .line 2686
    sput-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    .line 2687
    const-class v1, Lcom/google/api/HttpRule;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 287
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 293
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    .line 288
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/HttpRule;->selector_:Ljava/lang/String;

    .line 289
    iput-object v0, p0, Lcom/google/api/HttpRule;->body_:Ljava/lang/String;

    .line 290
    iput-object v0, p0, Lcom/google/api/HttpRule;->responseBody_:Ljava/lang/String;

    .line 291
    invoke-static {}, Lcom/google/api/HttpRule;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/api/HttpRule;
    .locals 1

    .line 282
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/HttpRule;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/google/api/HttpRule;->clearPattern()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setPutBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/HttpRule;Ljava/lang/String;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setPost(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/HttpRule;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/google/api/HttpRule;->clearPost()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setPostBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/api/HttpRule;Ljava/lang/String;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setDelete(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/api/HttpRule;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/google/api/HttpRule;->clearDelete()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setDeleteBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/api/HttpRule;Ljava/lang/String;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setPatch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/api/HttpRule;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/google/api/HttpRule;->clearPatch()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setPatchBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/HttpRule;Ljava/lang/String;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setSelector(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/api/HttpRule;Lcom/google/api/CustomHttpPattern;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setCustom(Lcom/google/api/CustomHttpPattern;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/api/HttpRule;Lcom/google/api/CustomHttpPattern;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->mergeCustom(Lcom/google/api/CustomHttpPattern;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/api/HttpRule;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/google/api/HttpRule;->clearCustom()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/api/HttpRule;Ljava/lang/String;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setBody(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/api/HttpRule;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/google/api/HttpRule;->clearBody()V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setBodyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/api/HttpRule;Ljava/lang/String;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setResponseBody(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/api/HttpRule;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/google/api/HttpRule;->clearResponseBody()V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setResponseBodyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/api/HttpRule;ILcom/google/api/HttpRule;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1, p2}, Lcom/google/api/HttpRule;->setAdditionalBindings(ILcom/google/api/HttpRule;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/HttpRule;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/google/api/HttpRule;->clearSelector()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/api/HttpRule;Lcom/google/api/HttpRule;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->addAdditionalBindings(Lcom/google/api/HttpRule;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/api/HttpRule;ILcom/google/api/HttpRule;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1, p2}, Lcom/google/api/HttpRule;->addAdditionalBindings(ILcom/google/api/HttpRule;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/api/HttpRule;Ljava/lang/Iterable;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->addAllAdditionalBindings(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/api/HttpRule;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/google/api/HttpRule;->clearAdditionalBindings()V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/api/HttpRule;I)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->removeAdditionalBindings(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setSelectorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/HttpRule;Ljava/lang/String;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setGet(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/HttpRule;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/google/api/HttpRule;->clearGet()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setGetBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/HttpRule;Ljava/lang/String;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/google/api/HttpRule;->setPut(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/HttpRule;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/google/api/HttpRule;->clearPut()V

    return-void
.end method

.method private addAdditionalBindings(ILcom/google/api/HttpRule;)V
    .locals 1

    .line 1251
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1252
    invoke-direct {p0}, Lcom/google/api/HttpRule;->ensureAdditionalBindingsIsMutable()V

    .line 1253
    iget-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addAdditionalBindings(Lcom/google/api/HttpRule;)V
    .locals 1

    .line 1236
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1237
    invoke-direct {p0}, Lcom/google/api/HttpRule;->ensureAdditionalBindingsIsMutable()V

    .line 1238
    iget-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAllAdditionalBindings(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/HttpRule;",
            ">;)V"
        }
    .end annotation

    .line 1266
    invoke-direct {p0}, Lcom/google/api/HttpRule;->ensureAdditionalBindingsIsMutable()V

    .line 1267
    iget-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private clearAdditionalBindings()V
    .locals 1

    .line 1280
    invoke-static {}, Lcom/google/api/HttpRule;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearBody()V
    .locals 1

    .line 1022
    invoke-static {}, Lcom/google/api/HttpRule;->getDefaultInstance()Lcom/google/api/HttpRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpRule;->body_:Ljava/lang/String;

    return-void
.end method

.method private clearCustom()V
    .locals 2

    .line 946
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 947
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v0, 0x0

    .line 948
    iput-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearDelete()V
    .locals 2

    .line 759
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 760
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v0, 0x0

    .line 761
    iput-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearGet()V
    .locals 2

    .line 494
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 495
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v0, 0x0

    .line 496
    iput-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearPatch()V
    .locals 2

    .line 847
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 848
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v0, 0x0

    .line 849
    iput-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearPattern()V
    .locals 1

    const/4 v0, 0x0

    .line 340
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v0, 0x0

    .line 341
    iput-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    return-void
.end method

.method private clearPost()V
    .locals 2

    .line 671
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 672
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v0, 0x0

    .line 673
    iput-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearPut()V
    .locals 2

    .line 583
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 584
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v0, 0x0

    .line 585
    iput-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearResponseBody()V
    .locals 1

    .line 1114
    invoke-static {}, Lcom/google/api/HttpRule;->getDefaultInstance()Lcom/google/api/HttpRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getResponseBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpRule;->responseBody_:Ljava/lang/String;

    return-void
.end method

.method private clearSelector()V
    .locals 1

    .line 402
    invoke-static {}, Lcom/google/api/HttpRule;->getDefaultInstance()Lcom/google/api/HttpRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpRule;->selector_:Ljava/lang/String;

    return-void
.end method

.method private ensureAdditionalBindingsIsMutable()V
    .locals 2

    .line 1204
    iget-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1205
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1207
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/HttpRule;
    .locals 1

    .line 2692
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    return-object v0
.end method

.method private mergeCustom(Lcom/google/api/CustomHttpPattern;)V
    .locals 3

    .line 925
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 926
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    .line 927
    invoke-static {}, Lcom/google/api/CustomHttpPattern;->getDefaultInstance()Lcom/google/api/CustomHttpPattern;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 928
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    invoke-static {v0}, Lcom/google/api/CustomHttpPattern;->newBuilder(Lcom/google/api/CustomHttpPattern;)Lcom/google/api/CustomHttpPattern$Builder;

    move-result-object v0

    .line 929
    invoke-virtual {v0, p1}, Lcom/google/api/CustomHttpPattern$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/CustomHttpPattern$Builder;

    invoke-virtual {p1}, Lcom/google/api/CustomHttpPattern$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    goto :goto_0

    .line 931
    :cond_0
    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    .line 933
    :goto_0
    iput v1, p0, Lcom/google/api/HttpRule;->patternCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1373
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/HttpRule$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/HttpRule;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1376
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-virtual {v0, p0}, Lcom/google/api/HttpRule;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1349
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0}, Lcom/google/api/HttpRule;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1356
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0, p1}, Lcom/google/api/HttpRule;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1312
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1319
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1361
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1368
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1336
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1343
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1299
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1306
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1324
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/HttpRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1331
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/HttpRule;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/HttpRule;",
            ">;"
        }
    .end annotation

    .line 2698
    sget-object v0, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeAdditionalBindings(I)V
    .locals 1

    .line 1292
    invoke-direct {p0}, Lcom/google/api/HttpRule;->ensureAdditionalBindingsIsMutable()V

    .line 1293
    iget-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAdditionalBindings(ILcom/google/api/HttpRule;)V
    .locals 1

    .line 1222
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1223
    invoke-direct {p0}, Lcom/google/api/HttpRule;->ensureAdditionalBindingsIsMutable()V

    .line 1224
    iget-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setBody(Ljava/lang/String;)V
    .locals 0

    .line 1004
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1006
    iput-object p1, p0, Lcom/google/api/HttpRule;->body_:Ljava/lang/String;

    return-void
.end method

.method private setBodyBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1039
    invoke-static {p1}, Lcom/google/api/HttpRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1040
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/HttpRule;->body_:Ljava/lang/String;

    return-void
.end method

.method private setCustom(Lcom/google/api/CustomHttpPattern;)V
    .locals 0

    .line 910
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 911
    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 912
    iput p1, p0, Lcom/google/api/HttpRule;->patternCase_:I

    return-void
.end method

.method private setDelete(Ljava/lang/String;)V
    .locals 1

    .line 747
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x5

    .line 748
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    .line 749
    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    return-void
.end method

.method private setDeleteBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 774
    invoke-static {p1}, Lcom/google/api/HttpRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 775
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 776
    iput p1, p0, Lcom/google/api/HttpRule;->patternCase_:I

    return-void
.end method

.method private setGet(Ljava/lang/String;)V
    .locals 1

    .line 481
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    .line 482
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    .line 483
    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    return-void
.end method

.method private setGetBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 510
    invoke-static {p1}, Lcom/google/api/HttpRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 511
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 512
    iput p1, p0, Lcom/google/api/HttpRule;->patternCase_:I

    return-void
.end method

.method private setPatch(Ljava/lang/String;)V
    .locals 1

    .line 835
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x6

    .line 836
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    .line 837
    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    return-void
.end method

.method private setPatchBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 862
    invoke-static {p1}, Lcom/google/api/HttpRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 863
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 864
    iput p1, p0, Lcom/google/api/HttpRule;->patternCase_:I

    return-void
.end method

.method private setPost(Ljava/lang/String;)V
    .locals 1

    .line 659
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    .line 660
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    .line 661
    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    return-void
.end method

.method private setPostBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 686
    invoke-static {p1}, Lcom/google/api/HttpRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 687
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 688
    iput p1, p0, Lcom/google/api/HttpRule;->patternCase_:I

    return-void
.end method

.method private setPut(Ljava/lang/String;)V
    .locals 1

    .line 571
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    .line 572
    iput v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    .line 573
    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    return-void
.end method

.method private setPutBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 598
    invoke-static {p1}, Lcom/google/api/HttpRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 599
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 600
    iput p1, p0, Lcom/google/api/HttpRule;->patternCase_:I

    return-void
.end method

.method private setResponseBody(Ljava/lang/String;)V
    .locals 0

    .line 1096
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1098
    iput-object p1, p0, Lcom/google/api/HttpRule;->responseBody_:Ljava/lang/String;

    return-void
.end method

.method private setResponseBodyBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1131
    invoke-static {p1}, Lcom/google/api/HttpRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1132
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/HttpRule;->responseBody_:Ljava/lang/String;

    return-void
.end method

.method private setSelector(Ljava/lang/String;)V
    .locals 0

    .line 387
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    iput-object p1, p0, Lcom/google/api/HttpRule;->selector_:Ljava/lang/String;

    return-void
.end method

.method private setSelectorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 416
    invoke-static {p1}, Lcom/google/api/HttpRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 417
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/HttpRule;->selector_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 2626
    sget-object p2, Lcom/google/api/HttpRule$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2676
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 2670
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2655
    :pswitch_2
    sget-object p1, Lcom/google/api/HttpRule;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2657
    const-class p2, Lcom/google/api/HttpRule;

    monitor-enter p2

    .line 2658
    :try_start_0
    sget-object p1, Lcom/google/api/HttpRule;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2660
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2663
    sput-object p1, Lcom/google/api/HttpRule;->PARSER:Lcom/google/protobuf/Parser;

    .line 2665
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

    .line 2652
    :pswitch_3
    sget-object p1, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    return-object p1

    .line 2634
    :pswitch_4
    const-string v0, "pattern_"

    const-string v1, "patternCase_"

    const-string v2, "selector_"

    const-string v3, "body_"

    const-class v4, Lcom/google/api/CustomHttpPattern;

    const-string v5, "additionalBindings_"

    const-class v6, Lcom/google/api/HttpRule;

    const-string v7, "responseBody_"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    .line 2644
    const-string p2, "\u0000\n\u0001\u0000\u0001\u000c\n\u0000\u0001\u0000\u0001\u0208\u0002\u023b\u0000\u0003\u023b\u0000\u0004\u023b\u0000\u0005\u023b\u0000\u0006\u023b\u0000\u0007\u0208\u0008<\u0000\u000b\u001b\u000c\u0208"

    .line 2648
    sget-object p3, Lcom/google/api/HttpRule;->DEFAULT_INSTANCE:Lcom/google/api/HttpRule;

    invoke-static {p3, p2, p1}, Lcom/google/api/HttpRule;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2631
    :pswitch_5
    new-instance p1, Lcom/google/api/HttpRule$Builder;

    invoke-direct {p1, p2}, Lcom/google/api/HttpRule$Builder;-><init>(Lcom/google/api/HttpRule$1;)V

    return-object p1

    .line 2628
    :pswitch_6
    new-instance p1, Lcom/google/api/HttpRule;

    invoke-direct {p1}, Lcom/google/api/HttpRule;-><init>()V

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

.method public getAdditionalBindings(I)Lcom/google/api/HttpRule;
    .locals 1

    .line 1188
    iget-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/HttpRule;

    return-object p1
.end method

.method public getAdditionalBindingsCount()I
    .locals 1

    .line 1175
    iget-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getAdditionalBindingsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/HttpRule;",
            ">;"
        }
    .end annotation

    .line 1149
    iget-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAdditionalBindingsOrBuilder(I)Lcom/google/api/HttpRuleOrBuilder;
    .locals 1

    .line 1201
    iget-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/HttpRuleOrBuilder;

    return-object p1
.end method

.method public getAdditionalBindingsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/HttpRuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1162
    iget-object v0, p0, Lcom/google/api/HttpRule;->additionalBindings_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/google/api/HttpRule;->body_:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 987
    iget-object v0, p0, Lcom/google/api/HttpRule;->body_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCustom()Lcom/google/api/CustomHttpPattern;
    .locals 2

    .line 894
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 895
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/CustomHttpPattern;

    return-object v0

    .line 897
    :cond_0
    invoke-static {}, Lcom/google/api/CustomHttpPattern;->getDefaultInstance()Lcom/google/api/CustomHttpPattern;

    move-result-object v0

    return-object v0
.end method

.method public getDelete()Ljava/lang/String;
    .locals 2

    .line 715
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 716
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 715
    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getDeleteBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 732
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 733
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 732
    :cond_0
    const-string v0, ""

    .line 735
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGet()Ljava/lang/String;
    .locals 2

    .line 447
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 448
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 447
    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getGetBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 465
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 466
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 465
    :cond_0
    const-string v0, ""

    .line 468
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPatch()Ljava/lang/String;
    .locals 2

    .line 803
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 804
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 803
    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getPatchBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 820
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 821
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 820
    :cond_0
    const-string v0, ""

    .line 823
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPatternCase()Lcom/google/api/HttpRule$PatternCase;
    .locals 1

    .line 335
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    invoke-static {v0}, Lcom/google/api/HttpRule$PatternCase;->forNumber(I)Lcom/google/api/HttpRule$PatternCase;

    move-result-object v0

    return-object v0
.end method

.method public getPost()Ljava/lang/String;
    .locals 2

    .line 627
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 628
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 627
    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getPostBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 644
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 645
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 644
    :cond_0
    const-string v0, ""

    .line 647
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPut()Ljava/lang/String;
    .locals 2

    .line 539
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 540
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 539
    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getPutBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 556
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/google/api/HttpRule;->pattern_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 556
    :cond_0
    const-string v0, ""

    .line 559
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBody()Ljava/lang/String;
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/google/api/HttpRule;->responseBody_:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseBodyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1079
    iget-object v0, p0, Lcom/google/api/HttpRule;->responseBody_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/google/api/HttpRule;->selector_:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/google/api/HttpRule;->selector_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasCustom()Z
    .locals 2

    .line 880
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDelete()Z
    .locals 2

    .line 702
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGet()Z
    .locals 2

    .line 433
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPatch()Z
    .locals 2

    .line 790
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPost()Z
    .locals 2

    .line 614
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPut()Z
    .locals 2

    .line 526
    iget v0, p0, Lcom/google/api/HttpRule;->patternCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
