.class public final Lorg/jsoup/select/NodeEvaluator$InstanceType;
.super Lorg/jsoup/select/NodeEvaluator;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final selector:Ljava/lang/String;

.field public final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jsoup/select/NodeEvaluator$InstanceType;->type:Ljava/lang/Class;

    .line 5
    .line 6
    const-string p1, "::"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lorg/jsoup/select/NodeEvaluator$InstanceType;->selector:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final cost()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final evaluateMatch(Lorg/jsoup/nodes/Node;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jsoup/select/NodeEvaluator$InstanceType;->type:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jsoup/select/NodeEvaluator$InstanceType;->selector:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
