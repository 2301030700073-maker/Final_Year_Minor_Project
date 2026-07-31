.class public final Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData$$serializer;,
        Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData$Companion;
    }
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData$Companion;


# instance fields
.field public final appVersion:Ljava/lang/String;

.field public final appVersionInt:I

.field public final subscriptions:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData;->Companion:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData$Companion;

    .line 7
    .line 8
    new-instance v0, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/16 v1, 0xb

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 16
    .line 17
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x3

    .line 22
    new-array v1, v1, [Lkotlin/Lazy;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    aput-object v0, v1, v2

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    const/4 v2, 0x0

    .line 29
    aput-object v2, v1, v0

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    aput-object v2, v1, v0

    .line 33
    .line 34
    sput-object v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData;->$childSerializers:[Lkotlin/Lazy;

    .line 35
    .line 36
    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/lang/String;I)V
    .locals 2

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v1, v0, :cond_2

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData;->subscriptions:Ljava/util/List;

    .line 10
    .line 11
    and-int/lit8 p2, p1, 0x2

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    const-string p2, "0.29.0"

    .line 16
    .line 17
    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData;->appVersion:Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-object p3, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData;->appVersion:Ljava/lang/String;

    .line 21
    .line 22
    :goto_0
    and-int/lit8 p1, p1, 0x4

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    const/16 p1, 0x3f6

    .line 27
    .line 28
    iput p1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData;->appVersionInt:I

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iput p4, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData;->appVersionInt:I

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    sget-object p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData$$serializer;->INSTANCE:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData$$serializer;

    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/Platform_commonKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    throw p0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData;->subscriptions:Ljava/util/List;

    .line 47
    const-string p1, "0.29.0"

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData;->appVersion:Ljava/lang/String;

    const/16 p1, 0x3f6

    .line 48
    iput p1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData;->appVersionInt:I

    return-void
.end method
