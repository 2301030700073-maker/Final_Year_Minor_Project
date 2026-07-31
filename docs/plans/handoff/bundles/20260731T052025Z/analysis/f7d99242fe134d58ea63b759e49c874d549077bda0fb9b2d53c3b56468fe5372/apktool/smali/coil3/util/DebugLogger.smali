.class public final Lcoil3/util/DebugLogger;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcoil3/util/Logger;


# instance fields
.field private minLevel:Lcoil3/util/Logger$Level;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcoil3/util/DebugLogger;-><init>(Lcoil3/util/Logger$Level;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcoil3/util/Logger$Level;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcoil3/util/DebugLogger;->minLevel:Lcoil3/util/Logger$Level;

    return-void
.end method

.method public synthetic constructor <init>(Lcoil3/util/Logger$Level;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcoil3/util/Logger$Level;->Debug:Lcoil3/util/Logger$Level;

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcoil3/util/DebugLogger;-><init>(Lcoil3/util/Logger$Level;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getMinLevel()Lcoil3/util/Logger$Level;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/util/DebugLogger;->minLevel:Lcoil3/util/Logger$Level;

    .line 2
    .line 3
    return-object p0
.end method

.method public log(Ljava/lang/String;Lcoil3/util/Logger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-static {p2, p1, p3}, Lcoil3/util/Utils_androidKt;->println(Lcoil3/util/Logger$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    if-eqz p4, :cond_1

    .line 7
    .line 8
    new-instance p0, Ljava/io/StringWriter;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance p3, Ljava/io/PrintWriter;

    .line 14
    .line 15
    invoke-direct {p3, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p4, p3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {p2, p1, p0}, Lcoil3/util/Utils_androidKt;->println(Lcoil3/util/Logger$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public setMinLevel(Lcoil3/util/Logger$Level;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil3/util/DebugLogger;->minLevel:Lcoil3/util/Logger$Level;

    .line 2
    .line 3
    return-void
.end method
