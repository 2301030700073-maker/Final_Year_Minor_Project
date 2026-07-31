.class public Lorg/mozilla/javascript/LambdaAccessorSlot;
.super Lorg/mozilla/javascript/Slot;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private transient getter:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private getterFunction:Lorg/mozilla/javascript/LambdaFunction;

.field private transient setter:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private setterFunction:Lorg/mozilla/javascript/LambdaFunction;


# direct methods
.method public static synthetic $r8$lambda$kr9FroWyUI7Z3ms3JDyn8-5cGlc(Ljava/util/function/Function;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/LambdaAccessorSlot;->lambda$setGetter$0(Ljava/util/function/Function;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$yyxBFVURK5f_Fe7ku33bv-5woHY(Ljava/util/function/BiConsumer;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/LambdaAccessorSlot;->lambda$setSetter$1(Ljava/util/function/BiConsumer;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/javascript/Slot;-><init>(Ljava/lang/Object;II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Slot;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Slot;-><init>(Lorg/mozilla/javascript/Slot;)V

    return-void
.end method

.method private static synthetic lambda$setGetter$0(Ljava/util/function/Function;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$setSetter$1(Ljava/util/function/BiConsumer;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    aget-object p1, p4, p1

    .line 3
    .line 4
    invoke-interface {p0, p3, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 8
    .line 9
    return-object p0
.end method


# virtual methods
.method public buildPropertyDescriptor(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 6

    .line 1
    new-instance v0, Lorg/mozilla/javascript/NativeObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/mozilla/javascript/Slot;->getAttributes()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/16 v2, 0xc8

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-lt p1, v2, :cond_0

    .line 19
    .line 20
    move p1, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move p1, v4

    .line 23
    :goto_0
    iget-object v2, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getterFunction:Lorg/mozilla/javascript/LambdaFunction;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    if-nez v2, :cond_4

    .line 28
    .line 29
    iget-object v2, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setterFunction:Lorg/mozilla/javascript/LambdaFunction;

    .line 30
    .line 31
    if-nez v2, :cond_4

    .line 32
    .line 33
    and-int/lit8 v2, v1, 0x1

    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    move v2, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v2, v4

    .line 40
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string/jumbo v5, "writable"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v5, v2, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_2
    if-nez v2, :cond_3

    .line 52
    .line 53
    iget-object v2, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setterFunction:Lorg/mozilla/javascript/LambdaFunction;

    .line 54
    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    move v2, v3

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    move v2, v4

    .line 60
    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->setCommonDescriptorProperties(IZ)V

    .line 61
    .line 62
    .line 63
    :cond_4
    :goto_3
    iget-object v2, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getterFunction:Lorg/mozilla/javascript/LambdaFunction;

    .line 64
    .line 65
    if-eqz v2, :cond_5

    .line 66
    .line 67
    const-string v5, "get"

    .line 68
    .line 69
    invoke-virtual {v0, v5, v2, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 70
    .line 71
    .line 72
    :cond_5
    iget-object p0, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setterFunction:Lorg/mozilla/javascript/LambdaFunction;

    .line 73
    .line 74
    const-string v2, "set"

    .line 75
    .line 76
    if-eqz p0, :cond_6

    .line 77
    .line 78
    invoke-virtual {v0, v2, p0, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 79
    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    if-eqz p1, :cond_7

    .line 83
    .line 84
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 85
    .line 86
    invoke-virtual {v0, v2, p0, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    :cond_7
    :goto_4
    if-eqz p1, :cond_a

    .line 90
    .line 91
    and-int/lit8 p0, v1, 0x2

    .line 92
    .line 93
    if-nez p0, :cond_8

    .line 94
    .line 95
    move p0, v3

    .line 96
    goto :goto_5

    .line 97
    :cond_8
    move p0, v4

    .line 98
    :goto_5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    const-string p1, "enumerable"

    .line 103
    .line 104
    invoke-virtual {v0, p1, p0, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 105
    .line 106
    .line 107
    and-int/lit8 p0, v1, 0x4

    .line 108
    .line 109
    if-nez p0, :cond_9

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_9
    move v3, v4

    .line 113
    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    const-string p1, "configurable"

    .line 118
    .line 119
    invoke-virtual {v0, p1, p0, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 120
    .line 121
    .line 122
    :cond_a
    return-object v0
.end method

.method public copySlot()Lorg/mozilla/javascript/LambdaAccessorSlot;
    .locals 2

    .line 1
    new-instance v0, Lorg/mozilla/javascript/LambdaAccessorSlot;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/mozilla/javascript/LambdaAccessorSlot;-><init>(Lorg/mozilla/javascript/Slot;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object v1, v0, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getter:Ljava/util/function/Function;

    .line 11
    .line 12
    iput-object v1, v0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getter:Ljava/util/function/Function;

    .line 13
    .line 14
    iget-object v1, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setter:Ljava/util/function/BiConsumer;

    .line 15
    .line 16
    iput-object v1, v0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setter:Ljava/util/function/BiConsumer;

    .line 17
    .line 18
    iget-object v1, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getterFunction:Lorg/mozilla/javascript/LambdaFunction;

    .line 19
    .line 20
    iput-object v1, v0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getterFunction:Lorg/mozilla/javascript/LambdaFunction;

    .line 21
    .line 22
    iget-object p0, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setterFunction:Lorg/mozilla/javascript/LambdaFunction;

    .line 23
    .line 24
    iput-object p0, v0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setterFunction:Lorg/mozilla/javascript/LambdaFunction;

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    iput-object p0, v0, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    .line 28
    .line 29
    iput-object p0, v0, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    .line 30
    .line 31
    return-object v0
.end method

.method public bridge synthetic copySlot()Lorg/mozilla/javascript/Slot;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lorg/mozilla/javascript/LambdaAccessorSlot;->copySlot()Lorg/mozilla/javascript/LambdaAccessorSlot;

    move-result-object p0

    return-object p0
.end method

.method public getPropertyDescriptor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/LambdaAccessorSlot;->buildPropertyDescriptor(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ScriptableObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getValue(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getter:Ljava/util/function/Function;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/Slot;->getValue(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public isSetterSlot()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public isValueSlot()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public replaceWith(Lorg/mozilla/javascript/LambdaAccessorSlot;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lorg/mozilla/javascript/LambdaAccessorSlot;->getterFunction:Lorg/mozilla/javascript/LambdaFunction;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getterFunction:Lorg/mozilla/javascript/LambdaFunction;

    .line 4
    .line 5
    iget-object v0, p1, Lorg/mozilla/javascript/LambdaAccessorSlot;->getter:Ljava/util/function/Function;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getter:Ljava/util/function/Function;

    .line 8
    .line 9
    iget-object v0, p1, Lorg/mozilla/javascript/LambdaAccessorSlot;->setterFunction:Lorg/mozilla/javascript/LambdaFunction;

    .line 10
    .line 11
    iput-object v0, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setterFunction:Lorg/mozilla/javascript/LambdaFunction;

    .line 12
    .line 13
    iget-object v0, p1, Lorg/mozilla/javascript/LambdaAccessorSlot;->setter:Ljava/util/function/BiConsumer;

    .line 14
    .line 15
    iput-object v0, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setter:Ljava/util/function/BiConsumer;

    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/mozilla/javascript/Slot;->getAttributes()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Slot;->setAttributes(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setGetter(Lorg/mozilla/javascript/Scriptable;Ljava/util/function/Function;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/util/function/Function<",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getter:Ljava/util/function/Function;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/mozilla/javascript/LambdaFunction;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/mozilla/javascript/Slot;->name:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "get "

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lorg/mozilla/javascript/LambdaAccessorSlot$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {v2, p2, v3}, Lorg/mozilla/javascript/LambdaAccessorSlot$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p1, v1, v3, v2}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getterFunction:Lorg/mozilla/javascript/LambdaFunction;

    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public setSetter(Lorg/mozilla/javascript/Scriptable;Ljava/util/function/BiConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/util/function/BiConsumer<",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setter:Ljava/util/function/BiConsumer;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/mozilla/javascript/LambdaFunction;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/mozilla/javascript/Slot;->name:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "set "

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lorg/mozilla/javascript/LambdaAccessorSlot$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    invoke-direct {v2, p2, v3}, Lorg/mozilla/javascript/LambdaAccessorSlot$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    invoke-direct {v0, p1, v1, p2, v2}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setterFunction:Lorg/mozilla/javascript/LambdaFunction;

    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Z)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->setter:Ljava/util/function/BiConsumer;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-nez p2, :cond_1

    .line 5
    .line 6
    iget-object p2, p0, Lorg/mozilla/javascript/LambdaAccessorSlot;->getter:Ljava/util/function/Function;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p3, p1}, Lorg/mozilla/javascript/Slot;->throwNoSetterException(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    invoke-super {p0, p1, p3, p3, p4}, Lorg/mozilla/javascript/Slot;->setValue(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Z)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_1
    invoke-interface {p2, p3, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return v0
.end method
