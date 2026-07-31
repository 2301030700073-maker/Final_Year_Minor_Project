.class public Lorg/wikipedia/login/LoginResult;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/login/LoginResult$Companion;


# instance fields
.field public groups:Ljava/util/Set;

.field public final message:Ljava/lang/String;

.field public final messageCode:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final site:Lorg/wikipedia/dataclient/WikiSite;

.field public final status:Ljava/lang/String;

.field public userId:I

.field public final userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/login/LoginResult$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/login/LoginResult;->Companion:Lorg/wikipedia/login/LoginResult$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v2, 0x16

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    new-array v1, v1, [Lkotlin/Lazy;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    aput-object v3, v1, v2

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    aput-object v3, v1, v2

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    aput-object v3, v1, v2

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    aput-object v3, v1, v2

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    aput-object v3, v1, v2

    .line 40
    .line 41
    const/4 v2, 0x5

    .line 42
    aput-object v3, v1, v2

    .line 43
    .line 44
    const/4 v2, 0x6

    .line 45
    aput-object v0, v1, v2

    .line 46
    .line 47
    const/4 v0, 0x7

    .line 48
    aput-object v3, v1, v0

    .line 49
    .line 50
    sput-object v1, Lorg/wikipedia/login/LoginResult;->$childSerializers:[Lkotlin/Lazy;

    .line 51
    .line 52
    return-void
.end method

.method public synthetic constructor <init>(ILorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;Ljava/lang/String;)V
    .locals 3

    .line 1
    and-int/lit8 v0, p1, 0x1f

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x1f

    .line 5
    .line 6
    if-ne v2, v0, :cond_3

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lorg/wikipedia/login/LoginResult;->site:Lorg/wikipedia/dataclient/WikiSite;

    .line 12
    .line 13
    iput-object p3, p0, Lorg/wikipedia/login/LoginResult;->status:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p4, p0, Lorg/wikipedia/login/LoginResult;->userName:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p5, p0, Lorg/wikipedia/login/LoginResult;->password:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p6, p0, Lorg/wikipedia/login/LoginResult;->message:Ljava/lang/String;

    .line 20
    .line 21
    and-int/lit8 p2, p1, 0x20

    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    iput p2, p0, Lorg/wikipedia/login/LoginResult;->userId:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iput p7, p0, Lorg/wikipedia/login/LoginResult;->userId:I

    .line 30
    .line 31
    :goto_0
    and-int/lit8 p2, p1, 0x40

    .line 32
    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    sget-object p2, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 36
    .line 37
    iput-object p2, p0, Lorg/wikipedia/login/LoginResult;->groups:Ljava/util/Set;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iput-object p8, p0, Lorg/wikipedia/login/LoginResult;->groups:Ljava/util/Set;

    .line 41
    .line 42
    :goto_1
    and-int/lit16 p1, p1, 0x80

    .line 43
    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    iput-object v1, p0, Lorg/wikipedia/login/LoginResult;->messageCode:Ljava/lang/String;

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iput-object p9, p0, Lorg/wikipedia/login/LoginResult;->messageCode:Ljava/lang/String;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    sget-object p0, Lorg/wikipedia/login/LoginResult$$serializer;->INSTANCE:Lorg/wikipedia/login/LoginResult$$serializer;

    .line 53
    .line 54
    invoke-virtual {p0}, Lorg/wikipedia/login/LoginResult$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 59
    .line 60
    .line 61
    throw v1
.end method

.method public constructor <init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    and-int/lit16 p7, p7, 0x80

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    .line 62
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/wikipedia/login/LoginResult;->site:Lorg/wikipedia/dataclient/WikiSite;

    .line 65
    iput-object p2, p0, Lorg/wikipedia/login/LoginResult;->status:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lorg/wikipedia/login/LoginResult;->userName:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lorg/wikipedia/login/LoginResult;->password:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lorg/wikipedia/login/LoginResult;->message:Ljava/lang/String;

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lorg/wikipedia/login/LoginResult;->userId:I

    .line 70
    sget-object p1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    iput-object p1, p0, Lorg/wikipedia/login/LoginResult;->groups:Ljava/util/Set;

    .line 71
    iput-object p6, p0, Lorg/wikipedia/login/LoginResult;->messageCode:Ljava/lang/String;

    return-void
.end method
