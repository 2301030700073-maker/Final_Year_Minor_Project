.class public final Lleakcanary/AndroidLeakFixes$SPELL_CHECKER$apply$proxyService$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic $listenerImplHandlerField:Ljava/lang/reflect/Field;

.field public final synthetic $mSpellCheckerSessionListenerField:Ljava/lang/reflect/Field;

.field public final synthetic $noOpListener:Ljava/lang/Object;

.field public final synthetic $outerInstanceField:Ljava/lang/reflect/Field;

.field public final synthetic $realService:Ljava/lang/Object;

.field public final synthetic $spellCheckerListenerToSession:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/util/LinkedHashMap;Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lleakcanary/AndroidLeakFixes$SPELL_CHECKER$apply$proxyService$1;->$listenerImplHandlerField:Ljava/lang/reflect/Field;

    .line 5
    .line 6
    iput-object p2, p0, Lleakcanary/AndroidLeakFixes$SPELL_CHECKER$apply$proxyService$1;->$outerInstanceField:Ljava/lang/reflect/Field;

    .line 7
    .line 8
    iput-object p3, p0, Lleakcanary/AndroidLeakFixes$SPELL_CHECKER$apply$proxyService$1;->$spellCheckerListenerToSession:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    iput-object p4, p0, Lleakcanary/AndroidLeakFixes$SPELL_CHECKER$apply$proxyService$1;->$noOpListener:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p5, p0, Lleakcanary/AndroidLeakFixes$SPELL_CHECKER$apply$proxyService$1;->$mSpellCheckerSessionListenerField:Ljava/lang/reflect/Field;

    .line 13
    .line 14
    iput-object p6, p0, Lleakcanary/AndroidLeakFixes$SPELL_CHECKER$apply$proxyService$1;->$realService:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "getSpellCheckerService"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    iget-object v1, p0, Lleakcanary/AndroidLeakFixes$SPELL_CHECKER$apply$proxyService$1;->$spellCheckerListenerToSession:Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    if-eqz p3, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    :try_start_1
    aget-object v0, p3, v0

    .line 26
    .line 27
    iget-object v2, p0, Lleakcanary/AndroidLeakFixes$SPELL_CHECKER$apply$proxyService$1;->$listenerImplHandlerField:Ljava/lang/reflect/Field;

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget-object v3, p0, Lleakcanary/AndroidLeakFixes$SPELL_CHECKER$apply$proxyService$1;->$outerInstanceField:Ljava/lang/reflect/Field;

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v2, "finishSpellCheckerService"

    .line 64
    .line 65
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    if-eqz p3, :cond_5

    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    aget-object v0, p3, v0

    .line 75
    .line 76
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    iget-object v1, p0, Lleakcanary/AndroidLeakFixes$SPELL_CHECKER$apply$proxyService$1;->$mSpellCheckerSessionListenerField:Ljava/lang/reflect/Field;

    .line 83
    .line 84
    iget-object v2, p0, Lleakcanary/AndroidLeakFixes$SPELL_CHECKER$apply$proxyService$1;->$noOpListener:Ljava/lang/Object;

    .line 85
    .line 86
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 95
    .line 96
    .line 97
    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    :catch_0
    :cond_6
    :goto_0
    iget-object p0, p0, Lleakcanary/AndroidLeakFixes$SPELL_CHECKER$apply$proxyService$1;->$realService:Ljava/lang/Object;

    .line 99
    .line 100
    if-eqz p3, :cond_7

    .line 101
    .line 102
    :try_start_2
    array-length p1, p3

    .line 103
    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    goto :goto_1

    .line 112
    :cond_7
    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    .line 116
    :goto_1
    return-object p0

    .line 117
    :catch_1
    move-exception p0

    .line 118
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    throw p0
.end method
