.class Lorg/mozilla/javascript/regexp/REBackTrackData;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field final continuationOp:I

.field final continuationPc:I

.field final cp:I

.field final op:I

.field final parens:[J

.field final pc:I

.field final previous:Lorg/mozilla/javascript/regexp/REBackTrackData;

.field final stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/regexp/REGlobalData;IIIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->previous:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 7
    .line 8
    iput p2, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->op:I

    .line 9
    .line 10
    iput p3, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->pc:I

    .line 11
    .line 12
    iput p4, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->cp:I

    .line 13
    .line 14
    iput p5, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->continuationOp:I

    .line 15
    .line 16
    iput p6, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->continuationPc:I

    .line 17
    .line 18
    iget-object p2, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    .line 19
    .line 20
    iput-object p2, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->parens:[J

    .line 21
    .line 22
    iget-object p1, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    .line 23
    .line 24
    iput-object p1, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    .line 25
    .line 26
    return-void
.end method
