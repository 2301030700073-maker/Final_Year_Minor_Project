.class public final Lorg/apache/commons/io/IOUtils$ScratchChars;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/io/IOUtils$ScratchChars;

.field public static final LOCAL:Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;


# instance fields
.field public final buffer:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {v1, v0, v2}, Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;-><init>(Ljava/util/function/Supplier;I)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lorg/apache/commons/io/IOUtils$ScratchChars;->LOCAL:Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 14
    .line 15
    new-instance v0, Lorg/apache/commons/io/IOUtils$ScratchChars;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, Lorg/apache/commons/io/IOUtils$ScratchChars;-><init>([C)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lorg/apache/commons/io/IOUtils$ScratchChars;->INSTANCE:Lorg/apache/commons/io/IOUtils$ScratchChars;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>([C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/io/IOUtils$ScratchChars;->buffer:[C

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/IOUtils$ScratchChars;->buffer:[C

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lorg/apache/commons/io/IOUtils$ScratchChars;->LOCAL:Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, [Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    aget-object v0, p0, v0

    .line 15
    .line 16
    check-cast v0, [C

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    aput-object v0, p0, v1

    .line 25
    .line 26
    :cond_0
    return-void
.end method
