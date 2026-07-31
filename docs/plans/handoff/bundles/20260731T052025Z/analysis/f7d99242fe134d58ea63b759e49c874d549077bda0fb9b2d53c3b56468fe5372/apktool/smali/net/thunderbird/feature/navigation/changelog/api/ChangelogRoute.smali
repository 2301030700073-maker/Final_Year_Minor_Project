.class public final Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute$Companion;


# instance fields
.field public final basePath:Ljava/lang/String;

.field public final changeLogMode:Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute;->Companion:Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute$Companion;

    .line 7
    .line 8
    new-instance v0, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute$$ExternalSyntheticLambda0;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 15
    .line 16
    invoke-static {v2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v2, 0x2

    .line 21
    new-array v2, v2, [Lkotlin/Lazy;

    .line 22
    .line 23
    aput-object v0, v2, v1

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    const/4 v1, 0x1

    .line 27
    aput-object v0, v2, v1

    .line 28
    .line 29
    sput-object v2, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute;->$childSerializers:[Lkotlin/Lazy;

    .line 30
    .line 31
    return-void
.end method

.method public synthetic constructor <init>(ILnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;Ljava/lang/String;)V
    .locals 2

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v1, v0, :cond_1

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute;->changeLogMode:Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;

    .line 10
    .line 11
    and-int/lit8 p1, p1, 0x2

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const-string p1, "app://changelog"

    .line 16
    .line 17
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute;->basePath:Ljava/lang/String;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p3, p0, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute;->basePath:Ljava/lang/String;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    sget-object p0, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute$$serializer;->INSTANCE:Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute$$serializer;

    .line 24
    .line 25
    invoke-virtual {p0}, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute;

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
    check-cast p1, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute;

    .line 12
    .line 13
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute;->changeLogMode:Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;

    .line 14
    .line 15
    iget-object p1, p1, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute;->changeLogMode:Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;

    .line 16
    .line 17
    if-eq p0, p1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute;->changeLogMode:Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ChangelogRoute(changeLogMode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute;->changeLogMode:Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ")"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
