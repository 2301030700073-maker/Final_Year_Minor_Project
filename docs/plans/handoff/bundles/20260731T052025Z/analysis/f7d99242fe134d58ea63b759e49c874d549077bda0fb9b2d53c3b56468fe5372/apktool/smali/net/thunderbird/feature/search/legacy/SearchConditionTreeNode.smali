.class public final Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Companion;


# instance fields
.field public final condition:Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

.field public final left:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

.field public final operator:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

.field public final right:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->Companion:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Companion;

    .line 7
    .line 8
    new-instance v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/16 v1, 0x15

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
    const/4 v1, 0x4

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
    const/4 v0, 0x3

    .line 35
    aput-object v2, v1, v0

    .line 36
    .line 37
    sput-object v1, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->$childSerializers:[Lkotlin/Lazy;

    .line 38
    .line 39
    return-void
.end method

.method public synthetic constructor <init>(ILnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;Lnet/thunderbird/feature/search/legacy/api/SearchCondition;Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;)V
    .locals 3

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v2, v0, :cond_3

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->operator:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 11
    .line 12
    and-int/lit8 p2, p1, 0x2

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    iput-object v1, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->condition:Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput-object p3, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->condition:Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

    .line 20
    .line 21
    :goto_0
    and-int/lit8 p2, p1, 0x4

    .line 22
    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    iput-object v1, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->left:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iput-object p4, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->left:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 29
    .line 30
    :goto_1
    and-int/lit8 p1, p1, 0x8

    .line 31
    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    iput-object v1, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->right:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    iput-object p5, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->right:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    sget-object p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$$serializer;->INSTANCE:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$$serializer;

    .line 41
    .line 42
    invoke-virtual {p0}, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/TuplesKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 47
    .line 48
    .line 49
    throw v1
.end method

.method public constructor <init>(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;Lnet/thunderbird/feature/search/legacy/api/SearchCondition;Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;I)V
    .locals 2

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    move-object p3, v1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v1

    .line 50
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->operator:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 52
    iput-object p2, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->condition:Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

    .line 53
    iput-object p3, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->left:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 54
    iput-object p4, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->right:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    return-void
.end method

.method public static collectLeaves(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;Ljava/util/LinkedHashSet;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->left:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 5
    .line 6
    iget-object v1, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->operator:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq v1, v2, :cond_2

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-eq v1, v2, :cond_3

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    if-ne v1, v0, :cond_1

    .line 22
    .line 23
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    invoke-static {v0, p1}, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->collectLeaves(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;Ljava/util/LinkedHashSet;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_3
    invoke-static {v0, p1}, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->collectLeaves(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;Ljava/util/LinkedHashSet;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->right:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 39
    .line 40
    invoke-static {p0, p1}, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->collectLeaves(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;Ljava/util/LinkedHashSet;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->operator:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, ")"

    .line 8
    .line 9
    iget-object v3, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->left:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 10
    .line 11
    const-string v4, "null"

    .line 12
    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    if-eq v1, v5, :cond_1

    .line 17
    .line 18
    const/4 v5, 0x2

    .line 19
    if-eq v1, v5, :cond_4

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    if-ne v1, v0, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->condition:Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

    .line 25
    .line 26
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0

    .line 36
    :cond_1
    if-eqz v3, :cond_3

    .line 37
    .line 38
    invoke-virtual {v3}, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-nez p0, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move-object v4, p0

    .line 46
    :cond_3
    :goto_0
    const-string p0, "(NOT "

    .line 47
    .line 48
    invoke-static {p0, v4, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_4
    if-eqz v3, :cond_5

    .line 54
    .line 55
    invoke-virtual {v3}, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-nez v1, :cond_6

    .line 60
    .line 61
    :cond_5
    move-object v1, v4

    .line 62
    :cond_6
    iget-object p0, p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->right:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 63
    .line 64
    if-eqz p0, :cond_8

    .line 65
    .line 66
    invoke-virtual {p0}, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    if-nez p0, :cond_7

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_7
    move-object v4, p0

    .line 74
    :cond_8
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string v0, "("

    .line 79
    .line 80
    const-string v3, " "

    .line 81
    .line 82
    invoke-static {v0, v1, v3, p0, v3}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0, v4, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0
.end method
