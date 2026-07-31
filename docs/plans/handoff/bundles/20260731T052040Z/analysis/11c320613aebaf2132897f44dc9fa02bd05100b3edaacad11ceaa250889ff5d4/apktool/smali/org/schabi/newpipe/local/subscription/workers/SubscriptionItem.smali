.class public final Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem$$serializer;,
        Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem$Companion;


# instance fields
.field public final name:Ljava/lang/String;

.field public final serviceId:I

.field public final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;->Companion:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    and-int/lit8 v0, p1, 0x7

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    if-ne v1, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p2, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;->serviceId:I

    .line 10
    .line 11
    iput-object p3, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;->url:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p4, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;->name:Ljava/lang/String;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem$$serializer;->INSTANCE:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem$$serializer;

    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/Platform_commonKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p2, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;->serviceId:I

    .line 29
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;->url:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;

    .line 12
    .line 13
    iget v1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;->serviceId:I

    .line 14
    .line 15
    iget v3, p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;->serviceId:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;->url:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;->url:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;->name:Ljava/lang/String;

    .line 32
    .line 33
    iget-object p1, p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;->name:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;->serviceId:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;->url:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;->name:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    add-int/2addr p0, v0

    .line 19
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SubscriptionItem(serviceId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;->serviceId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", url="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;->url:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", name="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ")"

    .line 29
    .line 30
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;->name:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
