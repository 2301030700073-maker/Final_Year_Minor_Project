.class public final Lcom/google/rpc/PreconditionFailure$Violation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PreconditionFailure.java"

# interfaces
.implements Lcom/google/rpc/PreconditionFailure$ViolationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/PreconditionFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Violation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/PreconditionFailure$Violation;",
        "Lcom/google/rpc/PreconditionFailure$Violation$Builder;",
        ">;",
        "Lcom/google/rpc/PreconditionFailure$ViolationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/PreconditionFailure$Violation;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBJECT_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private description_:Ljava/lang/String;

.field private subject_:Ljava/lang/String;

.field private type_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 758
    new-instance v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-direct {v0}, Lcom/google/rpc/PreconditionFailure$Violation;-><init>()V

    .line 761
    sput-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    .line 762
    const-class v1, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->type_:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->subject_:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->description_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1

    .line 111
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/rpc/PreconditionFailure$Violation;Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->setType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/rpc/PreconditionFailure$Violation;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure$Violation;->clearType()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/rpc/PreconditionFailure$Violation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->setTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/rpc/PreconditionFailure$Violation;Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->setSubject(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/rpc/PreconditionFailure$Violation;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure$Violation;->clearSubject()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/rpc/PreconditionFailure$Violation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->setSubjectBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/rpc/PreconditionFailure$Violation;Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/rpc/PreconditionFailure$Violation;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure$Violation;->clearDescription()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/rpc/PreconditionFailure$Violation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->setDescriptionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearDescription()V
    .locals 1

    .line 337
    invoke-static {}, Lcom/google/rpc/PreconditionFailure$Violation;->getDefaultInstance()Lcom/google/rpc/PreconditionFailure$Violation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->description_:Ljava/lang/String;

    return-void
.end method

.method private clearSubject()V
    .locals 1

    .line 256
    invoke-static {}, Lcom/google/rpc/PreconditionFailure$Violation;->getDefaultInstance()Lcom/google/rpc/PreconditionFailure$Violation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->getSubject()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->subject_:Ljava/lang/String;

    return-void
.end method

.method private clearType()V
    .locals 1

    .line 179
    invoke-static {}, Lcom/google/rpc/PreconditionFailure$Violation;->getDefaultInstance()Lcom/google/rpc/PreconditionFailure$Violation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->type_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1

    .line 767
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    .locals 1

    .line 434
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/rpc/PreconditionFailure$Violation;)Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    .locals 1

    .line 437
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-virtual {v0, p0}, Lcom/google/rpc/PreconditionFailure$Violation;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/rpc/PreconditionFailure$Violation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 373
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 380
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 360
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 367
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 385
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 392
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/PreconditionFailure$Violation;",
            ">;"
        }
    .end annotation

    .line 773
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 0

    .line 321
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    iput-object p1, p0, Lcom/google/rpc/PreconditionFailure$Violation;->description_:Ljava/lang/String;

    return-void
.end method

.method private setDescriptionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 352
    invoke-static {p1}, Lcom/google/rpc/PreconditionFailure$Violation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 353
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/PreconditionFailure$Violation;->description_:Ljava/lang/String;

    return-void
.end method

.method private setSubject(Ljava/lang/String;)V
    .locals 0

    .line 241
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    iput-object p1, p0, Lcom/google/rpc/PreconditionFailure$Violation;->subject_:Ljava/lang/String;

    return-void
.end method

.method private setSubjectBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 270
    invoke-static {p1}, Lcom/google/rpc/PreconditionFailure$Violation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 271
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/PreconditionFailure$Violation;->subject_:Ljava/lang/String;

    return-void
.end method

.method private setType(Ljava/lang/String;)V
    .locals 0

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    iput-object p1, p0, Lcom/google/rpc/PreconditionFailure$Violation;->type_:Ljava/lang/String;

    return-void
.end method

.method private setTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 193
    invoke-static {p1}, Lcom/google/rpc/PreconditionFailure$Violation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 194
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/PreconditionFailure$Violation;->type_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 707
    sget-object p2, Lcom/google/rpc/PreconditionFailure$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 751
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 745
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 730
    :pswitch_2
    sget-object p1, Lcom/google/rpc/PreconditionFailure$Violation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 732
    const-class p2, Lcom/google/rpc/PreconditionFailure$Violation;

    monitor-enter p2

    .line 733
    :try_start_0
    sget-object p1, Lcom/google/rpc/PreconditionFailure$Violation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 735
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 738
    sput-object p1, Lcom/google/rpc/PreconditionFailure$Violation;->PARSER:Lcom/google/protobuf/Parser;

    .line 740
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

    .line 727
    :pswitch_3
    sget-object p1, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    return-object p1

    .line 715
    :pswitch_4
    const-string p1, "type_"

    const-string p2, "subject_"

    const-string p3, "description_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 720
    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208"

    .line 723
    sget-object p3, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {p3, p2, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 712
    :pswitch_5
    new-instance p1, Lcom/google/rpc/PreconditionFailure$Violation$Builder;

    invoke-direct {p1, p2}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;-><init>(Lcom/google/rpc/PreconditionFailure$1;)V

    return-object p1

    .line 709
    :pswitch_6
    new-instance p1, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-direct {p1}, Lcom/google/rpc/PreconditionFailure$Violation;-><init>()V

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

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->description_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->subject_:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->subject_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->type_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
