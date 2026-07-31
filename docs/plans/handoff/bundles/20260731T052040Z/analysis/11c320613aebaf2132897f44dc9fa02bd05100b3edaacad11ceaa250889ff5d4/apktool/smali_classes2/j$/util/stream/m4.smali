.class public final Lj$/util/stream/m4;
.super Lj$/util/stream/w3;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic h:Ljava/util/function/IntBinaryOperator;

.field public final synthetic i:I


# direct methods
.method public constructor <init>(Lj$/util/stream/e7;Ljava/util/function/IntBinaryOperator;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lj$/util/stream/m4;->h:Ljava/util/function/IntBinaryOperator;

    .line 5
    .line 6
    iput p3, p0, Lj$/util/stream/m4;->i:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final Q()Lj$/util/stream/r4;
    .locals 2

    .line 1
    new-instance v0, Lj$/util/stream/l4;

    .line 2
    .line 3
    iget v1, p0, Lj$/util/stream/m4;->i:I

    .line 4
    .line 5
    iget-object p0, p0, Lj$/util/stream/m4;->h:Ljava/util/function/IntBinaryOperator;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lj$/util/stream/l4;-><init>(ILjava/util/function/IntBinaryOperator;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
