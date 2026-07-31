.class public Lexpo/modules/kotlin/jni/JavaScriptObject;
.super Ljava/lang/Object;
.source "JavaScriptObject.kt"

# interfaces
.implements Lexpo/modules/kotlin/jni/Destructible;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/jni/JavaScriptObject$PropertyDescriptor;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0017\u0018\u00002\u00020\u0001:\u00014B\u0011\u0008\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007J\u0011\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH\u0086 J\u0011\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\nH\u0086 J\u0013\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\t\u001a\u00020\nH\u0086\u0002J\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000fH\u0086 \u00a2\u0006\u0002\u0010\u0010J\t\u0010\u0011\u001a\u00020\u0012H\u0086 J\u0019\u0010\u0013\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0007H\u0082 J\u0019\u0010\u0016\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0017H\u0082 J\u001b\u0010\u0018\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\nH\u0082 J\u001b\u0010\u0019\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000cH\u0082 J\u001b\u0010\u001a\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0000H\u0082 J\u0011\u0010\u001b\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\nH\u0082 J!\u0010\u001c\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001eH\u0082 J!\u0010\u001f\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u001eH\u0082 J#\u0010 \u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001d\u001a\u00020\u001eH\u0082 J#\u0010!\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0082 J#\u0010\"\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u001d\u001a\u00020\u001eH\u0082 J\u0011\u0010#\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%H\u0082 J\u001b\u0010&\u001a\u00020\u00142\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00140\'H\u0000\u00a2\u0006\u0002\u0008(J\u0011\u0010)\u001a\u00020\u00142\u0006\u0010*\u001a\u00020\u001eH\u0086 J\u0016\u0010+\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0007J\u0019\u0010,\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0007H\u0086\u0002J\u0016\u0010+\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u001eJ\u0019\u0010,\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u001eH\u0086\u0002J\u0016\u0010+\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0017J\u0019\u0010,\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0017H\u0086\u0002J\u0018\u0010+\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\nJ\u001b\u0010,\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\nH\u0086\u0002J\u0018\u0010+\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000cJ\u001b\u0010,\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000cH\u0086\u0002J\u0018\u0010+\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0000J\u001b\u0010,\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0000H\u0086\u0002J\u0018\u0010+\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0008\u0010-\u001a\u0004\u0018\u00010.J\u001b\u0010,\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0086\u0002J&\u0010/\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00072\u000e\u0008\u0002\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020100J&\u0010/\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u001e2\u000e\u0008\u0002\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020100J&\u0010/\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00172\u000e\u0008\u0002\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020100J(\u0010/\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\n2\u000e\u0008\u0002\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020100J(\u0010/\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000c2\u000e\u0008\u0002\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020100J(\u0010/\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00002\u000e\u0008\u0002\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020100J(\u0010/\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0008\u0010-\u001a\u0004\u0018\u00010.2\u000e\u0008\u0002\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020100J\u0008\u00102\u001a\u00020\u0014H\u0004J\u0008\u00103\u001a\u00020\u0014H\u0016R\u0010\u0010\u0002\u001a\u00020\u00038\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/JavaScriptObject;",
        "Lexpo/modules/kotlin/jni/Destructible;",
        "mHybridData",
        "Lcom/facebook/jni/HybridData;",
        "<init>",
        "(Lcom/facebook/jni/HybridData;)V",
        "isValid",
        "",
        "hasProperty",
        "name",
        "",
        "getProperty",
        "Lexpo/modules/kotlin/jni/JavaScriptValue;",
        "get",
        "getPropertyNames",
        "",
        "()[Ljava/lang/String;",
        "createWeak",
        "Lexpo/modules/kotlin/jni/JavaScriptWeakObject;",
        "setBoolProperty",
        "",
        "value",
        "setDoubleProperty",
        "",
        "setStringProperty",
        "setJSValueProperty",
        "setJSObjectProperty",
        "unsetProperty",
        "defineBoolProperty",
        "options",
        "",
        "defineDoubleProperty",
        "defineStringProperty",
        "defineJSValueProperty",
        "defineJSObjectProperty",
        "defineNativeDeallocator",
        "deallocator",
        "Lexpo/modules/kotlin/jni/JNIFunctionBody;",
        "defineDeallocator",
        "Lkotlin/Function0;",
        "defineDeallocator$expo_modules_core_release",
        "setExternalMemoryPressure",
        "size",
        "setProperty",
        "set",
        "null",
        "",
        "defineProperty",
        "",
        "Lexpo/modules/kotlin/jni/JavaScriptObject$PropertyDescriptor;",
        "finalize",
        "deallocate",
        "PropertyDescriptor",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;


# direct methods
.method public static synthetic $r8$lambda$WNIPbVHy8lyPvybEHKWHTOIpaF0(Lkotlin/jvm/functions/Function0;[Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/kotlin/jni/JavaScriptObject;->defineDeallocator$lambda$0(Lkotlin/jvm/functions/Function0;[Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/facebook/jni/HybridData;)V
    .locals 1

    const-string v0, "mHybridData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/kotlin/jni/JavaScriptObject;->mHybridData:Lcom/facebook/jni/HybridData;

    return-void
.end method

.method private final native defineBoolProperty(Ljava/lang/String;ZI)V
.end method

.method private static final defineDeallocator$lambda$0(Lkotlin/jvm/functions/Function0;[Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 68
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final native defineDoubleProperty(Ljava/lang/String;DI)V
.end method

.method private final native defineJSObjectProperty(Ljava/lang/String;Lexpo/modules/kotlin/jni/JavaScriptObject;I)V
.end method

.method private final native defineJSValueProperty(Ljava/lang/String;Lexpo/modules/kotlin/jni/JavaScriptValue;I)V
.end method

.method private final native defineNativeDeallocator(Lexpo/modules/kotlin/jni/JNIFunctionBody;)V
.end method

.method public static synthetic defineProperty$default(Lexpo/modules/kotlin/jni/JavaScriptObject;Ljava/lang/String;DLjava/util/List;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 111
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    .line 108
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lexpo/modules/kotlin/jni/JavaScriptObject;->defineProperty(Ljava/lang/String;DLjava/util/List;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: defineProperty"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic defineProperty$default(Lexpo/modules/kotlin/jni/JavaScriptObject;Ljava/lang/String;ILjava/util/List;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 105
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 102
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/kotlin/jni/JavaScriptObject;->defineProperty(Ljava/lang/String;ILjava/util/List;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: defineProperty"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic defineProperty$default(Lexpo/modules/kotlin/jni/JavaScriptObject;Ljava/lang/String;Lexpo/modules/kotlin/jni/JavaScriptObject;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 129
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 126
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/kotlin/jni/JavaScriptObject;->defineProperty(Ljava/lang/String;Lexpo/modules/kotlin/jni/JavaScriptObject;Ljava/util/List;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: defineProperty"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic defineProperty$default(Lexpo/modules/kotlin/jni/JavaScriptObject;Ljava/lang/String;Lexpo/modules/kotlin/jni/JavaScriptValue;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 123
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 120
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/kotlin/jni/JavaScriptObject;->defineProperty(Ljava/lang/String;Lexpo/modules/kotlin/jni/JavaScriptValue;Ljava/util/List;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: defineProperty"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic defineProperty$default(Lexpo/modules/kotlin/jni/JavaScriptObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 117
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 114
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/kotlin/jni/JavaScriptObject;->defineProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: defineProperty"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic defineProperty$default(Lexpo/modules/kotlin/jni/JavaScriptObject;Ljava/lang/String;Ljava/lang/Void;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 136
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 133
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/kotlin/jni/JavaScriptObject;->defineProperty(Ljava/lang/String;Ljava/lang/Void;Ljava/util/List;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: defineProperty"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic defineProperty$default(Lexpo/modules/kotlin/jni/JavaScriptObject;Ljava/lang/String;ZLjava/util/List;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 99
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 96
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/kotlin/jni/JavaScriptObject;->defineProperty(Ljava/lang/String;ZLjava/util/List;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: defineProperty"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final native defineStringProperty(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private final native setBoolProperty(Ljava/lang/String;Z)V
.end method

.method private final native setDoubleProperty(Ljava/lang/String;D)V
.end method

.method private final native setJSObjectProperty(Ljava/lang/String;Lexpo/modules/kotlin/jni/JavaScriptObject;)V
.end method

.method private final native setJSValueProperty(Ljava/lang/String;Lexpo/modules/kotlin/jni/JavaScriptValue;)V
.end method

.method private final native setStringProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final native unsetProperty(Ljava/lang/String;)V
.end method


# virtual methods
.method public final native createWeak()Lexpo/modules/kotlin/jni/JavaScriptWeakObject;
.end method

.method public deallocate()V
    .locals 1

    .line 145
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaScriptObject;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V

    return-void
.end method

.method public final defineDeallocator$expo_modules_core_release(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "deallocator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lexpo/modules/kotlin/jni/JavaScriptObject$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/jni/JavaScriptObject$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-direct {p0, v0}, Lexpo/modules/kotlin/jni/JavaScriptObject;->defineNativeDeallocator(Lexpo/modules/kotlin/jni/JNIFunctionBody;)V

    return-void
.end method

.method public final defineProperty(Ljava/lang/String;DLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/kotlin/jni/JavaScriptObject$PropertyDescriptor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-static {p4}, Lexpo/modules/kotlin/jni/JavaScriptObjectKt;->access$toCppOptions(Ljava/util/List;)I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/kotlin/jni/JavaScriptObject;->defineDoubleProperty(Ljava/lang/String;DI)V

    return-void
.end method

.method public final defineProperty(Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/kotlin/jni/JavaScriptObject$PropertyDescriptor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v0, p2

    .line 106
    invoke-static {p3}, Lexpo/modules/kotlin/jni/JavaScriptObjectKt;->access$toCppOptions(Ljava/util/List;)I

    move-result p2

    invoke-direct {p0, p1, v0, v1, p2}, Lexpo/modules/kotlin/jni/JavaScriptObject;->defineDoubleProperty(Ljava/lang/String;DI)V

    return-void
.end method

.method public final defineProperty(Ljava/lang/String;Lexpo/modules/kotlin/jni/JavaScriptObject;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/jni/JavaScriptObject;",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/kotlin/jni/JavaScriptObject$PropertyDescriptor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-static {p3}, Lexpo/modules/kotlin/jni/JavaScriptObjectKt;->access$toCppOptions(Ljava/util/List;)I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/kotlin/jni/JavaScriptObject;->defineJSObjectProperty(Ljava/lang/String;Lexpo/modules/kotlin/jni/JavaScriptObject;I)V

    return-void
.end method

.method public final defineProperty(Ljava/lang/String;Lexpo/modules/kotlin/jni/JavaScriptValue;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/jni/JavaScriptValue;",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/kotlin/jni/JavaScriptObject$PropertyDescriptor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-static {p3}, Lexpo/modules/kotlin/jni/JavaScriptObjectKt;->access$toCppOptions(Ljava/util/List;)I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/kotlin/jni/JavaScriptObject;->defineJSValueProperty(Ljava/lang/String;Lexpo/modules/kotlin/jni/JavaScriptValue;I)V

    return-void
.end method

.method public final defineProperty(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/kotlin/jni/JavaScriptObject$PropertyDescriptor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-static {p3}, Lexpo/modules/kotlin/jni/JavaScriptObjectKt;->access$toCppOptions(Ljava/util/List;)I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/kotlin/jni/JavaScriptObject;->defineStringProperty(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final defineProperty(Ljava/lang/String;Ljava/lang/Void;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/kotlin/jni/JavaScriptObject$PropertyDescriptor;",
            ">;)V"
        }
    .end annotation

    const-string p2, "name"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "options"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 137
    invoke-static {p3}, Lexpo/modules/kotlin/jni/JavaScriptObjectKt;->access$toCppOptions(Ljava/util/List;)I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/kotlin/jni/JavaScriptObject;->defineJSObjectProperty(Ljava/lang/String;Lexpo/modules/kotlin/jni/JavaScriptObject;I)V

    return-void
.end method

.method public final defineProperty(Ljava/lang/String;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/kotlin/jni/JavaScriptObject$PropertyDescriptor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-static {p3}, Lexpo/modules/kotlin/jni/JavaScriptObjectKt;->access$toCppOptions(Ljava/util/List;)I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/kotlin/jni/JavaScriptObject;->defineBoolProperty(Ljava/lang/String;ZI)V

    return-void
.end method

.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lexpo/modules/kotlin/jni/JavaScriptObject;->deallocate()V

    return-void
.end method

.method public final get(Ljava/lang/String;)Lexpo/modules/kotlin/jni/JavaScriptValue;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/jni/JavaScriptObject;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/jni/JavaScriptObject;->getProperty(Ljava/lang/String;)Lexpo/modules/kotlin/jni/JavaScriptValue;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final native getProperty(Ljava/lang/String;)Lexpo/modules/kotlin/jni/JavaScriptValue;
.end method

.method public final native getPropertyNames()[Ljava/lang/String;
.end method

.method public final native hasProperty(Ljava/lang/String;)Z
.end method

.method public final isValid()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lexpo/modules/kotlin/jni/JavaScriptObject;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->isValid()Z

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/String;D)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/kotlin/jni/JavaScriptObject;->setDoubleProperty(Ljava/lang/String;D)V

    return-void
.end method

.method public final set(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v0, p2

    .line 77
    invoke-direct {p0, p1, v0, v1}, Lexpo/modules/kotlin/jni/JavaScriptObject;->setDoubleProperty(Ljava/lang/String;D)V

    return-void
.end method

.method public final set(Ljava/lang/String;Lexpo/modules/kotlin/jni/JavaScriptObject;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/jni/JavaScriptObject;->setJSObjectProperty(Ljava/lang/String;Lexpo/modules/kotlin/jni/JavaScriptObject;)V

    return-void
.end method

.method public final set(Ljava/lang/String;Lexpo/modules/kotlin/jni/JavaScriptValue;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/jni/JavaScriptObject;->setJSValueProperty(Ljava/lang/String;Lexpo/modules/kotlin/jni/JavaScriptValue;)V

    return-void
.end method

.method public final set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/jni/JavaScriptObject;->setStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    const-string p2, "name"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaScriptObject;->unsetProperty(Ljava/lang/String;)V

    return-void
.end method

.method public final set(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/jni/JavaScriptObject;->setBoolProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public final native setExternalMemoryPressure(I)V
.end method

.method public final setProperty(Ljava/lang/String;D)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/kotlin/jni/JavaScriptObject;->setDoubleProperty(Ljava/lang/String;D)V

    return-void
.end method

.method public final setProperty(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v0, p2

    .line 76
    invoke-direct {p0, p1, v0, v1}, Lexpo/modules/kotlin/jni/JavaScriptObject;->setDoubleProperty(Ljava/lang/String;D)V

    return-void
.end method

.method public final setProperty(Ljava/lang/String;Lexpo/modules/kotlin/jni/JavaScriptObject;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/jni/JavaScriptObject;->setJSObjectProperty(Ljava/lang/String;Lexpo/modules/kotlin/jni/JavaScriptObject;)V

    return-void
.end method

.method public final setProperty(Ljava/lang/String;Lexpo/modules/kotlin/jni/JavaScriptValue;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/jni/JavaScriptObject;->setJSValueProperty(Ljava/lang/String;Lexpo/modules/kotlin/jni/JavaScriptValue;)V

    return-void
.end method

.method public final setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/jni/JavaScriptObject;->setStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setProperty(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    const-string p2, "name"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0, p1}, Lexpo/modules/kotlin/jni/JavaScriptObject;->unsetProperty(Ljava/lang/String;)V

    return-void
.end method

.method public final setProperty(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/jni/JavaScriptObject;->setBoolProperty(Ljava/lang/String;Z)V

    return-void
.end method
