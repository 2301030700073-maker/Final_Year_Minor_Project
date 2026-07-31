.class public Lorg/mozilla/javascript/engine/BindingsObject;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private final bindings:Ljavax/script/Bindings;


# direct methods
.method public constructor <init>(Ljavax/script/Bindings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lorg/mozilla/javascript/engine/BindingsObject;->bindings:Ljavax/script/Bindings;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "Bindings must not be null"

    .line 10
    .line 11
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    throw p0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/engine/BindingsObject;->bindings:Ljavax/script/Bindings;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljavax/script/Bindings;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p2, p0, Lorg/mozilla/javascript/engine/BindingsObject;->bindings:Ljavax/script/Bindings;

    .line 2
    .line 3
    invoke-interface {p2, p1}, Ljavax/script/Bindings;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    sget-object p0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/engine/BindingsObject;->bindings:Ljavax/script/Bindings;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Ljavax/script/Bindings;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-class p1, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {p0, p1}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "BindingsObject"

    .line 2
    .line 3
    return-object p0
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/engine/BindingsObject;->bindings:Ljavax/script/Bindings;

    .line 2
    .line 3
    invoke-interface {p0}, Ljavax/script/Bindings;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/engine/BindingsObject;->bindings:Ljavax/script/Bindings;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljavax/script/Bindings;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/engine/BindingsObject;->bindings:Ljavax/script/Bindings;

    .line 2
    .line 3
    invoke-static {p3, p2}, Lorg/mozilla/javascript/Context;->javaToJS(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p0, p1, p2}, Ljavax/script/Bindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method
