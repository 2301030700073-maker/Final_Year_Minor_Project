.class final enum Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;
.super Ljava/lang/Enum;
.source "FrameSeqDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

.field public static final enum FINISHING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

.field public static final enum IDLE:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

.field public static final enum INITIALIZING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

.field public static final enum RUNNING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;


# direct methods
.method private static synthetic $values()[Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;
    .locals 4

    .line 91
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->IDLE:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v1, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->RUNNING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v2, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->INITIALIZING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    sget-object v3, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->FINISHING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 92
    new-instance v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->IDLE:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    .line 93
    new-instance v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    const-string v1, "RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->RUNNING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    .line 94
    new-instance v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    const-string v1, "INITIALIZING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->INITIALIZING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    .line 95
    new-instance v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    const-string v1, "FINISHING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->FINISHING:Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    .line 91
    invoke-static {}, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->$values()[Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    move-result-object v0

    sput-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->$VALUES:[Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;
    .locals 1

    .line 91
    const-class v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    return-object p0
.end method

.method public static values()[Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;
    .locals 1

    .line 91
    sget-object v0, Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->$VALUES:[Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    invoke-virtual {v0}, [Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/penfeizhou/animation/decode/FrameSeqDecoder$State;

    return-object v0
.end method
