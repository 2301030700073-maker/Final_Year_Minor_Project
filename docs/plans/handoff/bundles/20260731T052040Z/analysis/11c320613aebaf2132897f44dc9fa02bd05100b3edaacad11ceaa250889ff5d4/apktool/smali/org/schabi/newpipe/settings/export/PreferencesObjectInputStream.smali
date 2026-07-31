.class public final Lorg/schabi/newpipe/settings/export/PreferencesObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# static fields
.field public static final CLASS_WHITELIST:Ljava/util/Set;

.field public static final Companion:Lorg/schabi/newpipe/settings/export/PreferencesObjectInputStream$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lorg/schabi/newpipe/settings/export/PreferencesObjectInputStream$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/settings/export/PreferencesObjectInputStream;->Companion:Lorg/schabi/newpipe/settings/export/PreferencesObjectInputStream$Companion;

    .line 7
    .line 8
    const-string v10, "java.util.HashMap"

    .line 9
    .line 10
    const-string v11, "java.util.HashSet"

    .line 11
    .line 12
    const-string v1, "java.lang.Boolean"

    .line 13
    .line 14
    const-string v2, "java.lang.Byte"

    .line 15
    .line 16
    const-string v3, "java.lang.Character"

    .line 17
    .line 18
    const-string v4, "java.lang.Short"

    .line 19
    .line 20
    const-string v5, "java.lang.Integer"

    .line 21
    .line 22
    const-string v6, "java.lang.Long"

    .line 23
    .line 24
    const-string v7, "java.lang.Float"

    .line 25
    .line 26
    const-string v8, "java.lang.Double"

    .line 27
    .line 28
    const-string v9, "java.lang.Void"

    .line 29
    .line 30
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lorg/schabi/newpipe/settings/export/PreferencesObjectInputStream;->CLASS_WHITELIST:Ljava/util/Set;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/schabi/newpipe/settings/export/PreferencesObjectInputStream;->CLASS_WHITELIST:Ljava/util/Set;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/ClassNotFoundException;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "Class not allowed: "

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, ".name"

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method
