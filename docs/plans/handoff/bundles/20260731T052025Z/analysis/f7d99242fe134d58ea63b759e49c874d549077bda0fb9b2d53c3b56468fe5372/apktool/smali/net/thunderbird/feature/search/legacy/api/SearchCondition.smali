.class public final Lnet/thunderbird/feature/search/legacy/api/SearchCondition;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lnet/thunderbird/feature/search/legacy/api/SearchCondition$Companion;


# instance fields
.field public final attribute:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

.field public final field:Lnet/thunderbird/feature/search/legacy/api/SearchField;

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->Companion:Lnet/thunderbird/feature/search/legacy/api/SearchCondition$Companion;

    .line 7
    .line 8
    new-instance v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/16 v1, 0x19

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch$$ExternalSyntheticLambda0;-><init>(I)V

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
    new-instance v2, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/16 v3, 0x1a

    .line 24
    .line 25
    invoke-direct {v2, v3}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch$$ExternalSyntheticLambda0;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x3

    .line 33
    new-array v2, v2, [Lkotlin/Lazy;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    aput-object v0, v2, v3

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    aput-object v1, v2, v0

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    const/4 v1, 0x2

    .line 43
    aput-object v0, v2, v1

    .line 44
    .line 45
    sput-object v2, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->$childSerializers:[Lkotlin/Lazy;

    .line 46
    .line 47
    return-void
.end method

.method public synthetic constructor <init>(ILnet/thunderbird/feature/search/legacy/api/SearchField;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;Ljava/lang/String;)V
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
    iput-object p2, p0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->field:Lnet/thunderbird/feature/search/legacy/api/SearchField;

    .line 10
    .line 11
    iput-object p3, p0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->attribute:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 12
    .line 13
    iput-object p4, p0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->value:Ljava/lang/String;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object p0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition$$serializer;->INSTANCE:Lnet/thunderbird/feature/search/legacy/api/SearchCondition$$serializer;

    .line 17
    .line 18
    invoke-virtual {p0}, Lnet/thunderbird/feature/search/legacy/api/SearchCondition$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    throw p0
.end method

.method public constructor <init>(Lnet/thunderbird/feature/search/legacy/api/SearchField;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->field:Lnet/thunderbird/feature/search/legacy/api/SearchField;

    .line 29
    iput-object p2, p0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->attribute:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 30
    iput-object p3, p0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->value:Ljava/lang/String;

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
    instance-of v1, p1, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

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
    check-cast p1, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

    .line 12
    .line 13
    iget-object v1, p0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->field:Lnet/thunderbird/feature/search/legacy/api/SearchField;

    .line 14
    .line 15
    iget-object v3, p1, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->field:Lnet/thunderbird/feature/search/legacy/api/SearchField;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->attribute:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 25
    .line 26
    iget-object v3, p1, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->attribute:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object p0, p0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->value:Ljava/lang/String;

    .line 32
    .line 33
    iget-object p1, p1, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->value:Ljava/lang/String;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->field:Lnet/thunderbird/feature/search/legacy/api/SearchField;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->attribute:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object p0, p0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->value:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    add-int/2addr p0, v1

    .line 25
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SearchCondition(field="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->field:Lnet/thunderbird/feature/search/legacy/api/SearchField;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", attribute="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->attribute:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", value="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ")"

    .line 29
    .line 30
    iget-object p0, p0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->value:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
