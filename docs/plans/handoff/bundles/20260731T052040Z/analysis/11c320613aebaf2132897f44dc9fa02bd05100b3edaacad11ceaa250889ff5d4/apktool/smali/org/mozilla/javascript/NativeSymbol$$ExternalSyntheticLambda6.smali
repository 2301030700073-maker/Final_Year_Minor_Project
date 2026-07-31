.class public final synthetic Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/mozilla/javascript/Context;

.field public final synthetic f$1:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic f$2:Lorg/mozilla/javascript/LambdaConstructor;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda6;->f$0:Lorg/mozilla/javascript/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda6;->f$1:Lorg/mozilla/javascript/Scriptable;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda6;->f$2:Lorg/mozilla/javascript/LambdaConstructor;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda6;->f$0:Lorg/mozilla/javascript/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda6;->f$1:Lorg/mozilla/javascript/Scriptable;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda6;->f$2:Lorg/mozilla/javascript/LambdaConstructor;

    .line 10
    .line 11
    invoke-static {v1, v2, p0, v0, p1}, Lorg/mozilla/javascript/NativeSymbol;->$r8$lambda$3z_PFkvXyxvh5cvps-B_yRmKoa8(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/NativeSymbol;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
