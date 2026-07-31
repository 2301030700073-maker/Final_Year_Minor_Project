.class final Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/CodeGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompleteOptionalCallJump"
.end annotation


# instance fields
.field private final afterLabel:I

.field private final putArgsAndDoCallLabel:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetafterLabel(Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;->afterLabel:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetputArgsAndDoCallLabel(Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;->putArgsAndDoCallLabel:I

    .line 2
    .line 3
    return p0
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;->putArgsAndDoCallLabel:I

    .line 5
    .line 6
    iput p2, p0, Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;->afterLabel:I

    .line 7
    .line 8
    return-void
.end method
