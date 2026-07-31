.class public final synthetic Lorg/mozilla/javascript/HashSlotMap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lorg/mozilla/javascript/SlotMap$SlotComputer;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILorg/mozilla/javascript/SlotMap$SlotComputer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/mozilla/javascript/HashSlotMap$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/SlotMap$SlotComputer;

    .line 5
    .line 6
    iput-object p1, p0, Lorg/mozilla/javascript/HashSlotMap$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 7
    .line 8
    iput p2, p0, Lorg/mozilla/javascript/HashSlotMap$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/HashSlotMap$$ExternalSyntheticLambda0;->f$2:I

    .line 2
    .line 3
    check-cast p2, Lorg/mozilla/javascript/Slot;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/mozilla/javascript/HashSlotMap$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/SlotMap$SlotComputer;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/mozilla/javascript/HashSlotMap$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v1, p0, v0, p1, p2}, Lorg/mozilla/javascript/HashSlotMap;->$r8$lambda$vrs9sZlh5OnqktHtiKCFXecfcPg(Lorg/mozilla/javascript/SlotMap$SlotComputer;Ljava/lang/Object;ILjava/lang/Object;Lorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/Slot;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
