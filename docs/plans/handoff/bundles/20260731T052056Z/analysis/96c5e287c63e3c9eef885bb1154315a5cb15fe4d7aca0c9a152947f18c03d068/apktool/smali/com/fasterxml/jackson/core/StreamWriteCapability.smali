.class public final enum Lcom/fasterxml/jackson/core/StreamWriteCapability;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/StreamWriteCapability;

.field public static final enum CAN_WRITE_BINARY_NATIVELY:Lcom/fasterxml/jackson/core/StreamWriteCapability;

.field public static final enum CAN_WRITE_FORMATTED_NUMBERS:Lcom/fasterxml/jackson/core/StreamWriteCapability;


# instance fields
.field private final _defaultState:Z

.field private final _mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/core/StreamWriteCapability;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "CAN_WRITE_BINARY_NATIVELY"

    .line 5
    .line 6
    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/StreamWriteCapability;-><init>(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/fasterxml/jackson/core/StreamWriteCapability;->CAN_WRITE_BINARY_NATIVELY:Lcom/fasterxml/jackson/core/StreamWriteCapability;

    .line 10
    .line 11
    new-instance v2, Lcom/fasterxml/jackson/core/StreamWriteCapability;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    const-string v4, "CAN_WRITE_FORMATTED_NUMBERS"

    .line 15
    .line 16
    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/core/StreamWriteCapability;-><init>(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v2, Lcom/fasterxml/jackson/core/StreamWriteCapability;->CAN_WRITE_FORMATTED_NUMBERS:Lcom/fasterxml/jackson/core/StreamWriteCapability;

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    new-array v4, v4, [Lcom/fasterxml/jackson/core/StreamWriteCapability;

    .line 23
    .line 24
    aput-object v0, v4, v1

    .line 25
    .line 26
    aput-object v2, v4, v3

    .line 27
    .line 28
    sput-object v4, Lcom/fasterxml/jackson/core/StreamWriteCapability;->$VALUES:[Lcom/fasterxml/jackson/core/StreamWriteCapability;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/StreamWriteCapability;->_defaultState:Z

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    shl-int/2addr p1, p2

    .line 13
    iput p1, p0, Lcom/fasterxml/jackson/core/StreamWriteCapability;->_mask:I

    .line 14
    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/StreamWriteCapability;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/core/StreamWriteCapability;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fasterxml/jackson/core/StreamWriteCapability;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/StreamWriteCapability;
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/StreamWriteCapability;->$VALUES:[Lcom/fasterxml/jackson/core/StreamWriteCapability;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/StreamWriteCapability;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fasterxml/jackson/core/StreamWriteCapability;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final enabledByDefault()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/fasterxml/jackson/core/StreamWriteCapability;->_defaultState:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getMask()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/fasterxml/jackson/core/StreamWriteCapability;->_mask:I

    .line 2
    .line 3
    return p0
.end method
