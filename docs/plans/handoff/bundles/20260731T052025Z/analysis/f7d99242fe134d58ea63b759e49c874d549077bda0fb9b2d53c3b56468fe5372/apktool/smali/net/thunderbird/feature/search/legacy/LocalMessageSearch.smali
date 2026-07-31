.class public final Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch$Companion;


# instance fields
.field public final accountUuidSet:Ljava/util/Set;

.field public conditionsRoot:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

.field public id:Ljava/lang/String;

.field public isManualSearch:Z

.field public final leafSet:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->Companion:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch$Companion;

    .line 7
    .line 8
    new-instance v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch$$ExternalSyntheticLambda0;-><init>(I)V

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
    new-instance v3, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    const/16 v4, 0x14

    .line 23
    .line 24
    invoke-direct {v3, v4}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch$$ExternalSyntheticLambda0;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v3}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x5

    .line 32
    new-array v3, v3, [Lkotlin/Lazy;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    aput-object v4, v3, v1

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    aput-object v4, v3, v1

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    aput-object v0, v3, v1

    .line 42
    .line 43
    const/4 v0, 0x3

    .line 44
    aput-object v4, v3, v0

    .line 45
    .line 46
    const/4 v0, 0x4

    .line 47
    aput-object v2, v3, v0

    .line 48
    .line 49
    sput-object v3, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->$childSerializers:[Lkotlin/Lazy;

    .line 50
    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->accountUuidSet:Ljava/util/Set;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->leafSet:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZLjava/util/Set;Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;Ljava/util/Set;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p2, ""

    .line 9
    .line 10
    :cond_0
    iput-object p2, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 11
    .line 12
    and-int/lit8 p2, p1, 0x2

    .line 13
    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    iput-boolean p2, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->isManualSearch:Z

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iput-boolean p3, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->isManualSearch:Z

    .line 21
    .line 22
    :goto_0
    and-int/lit8 p2, p1, 0x4

    .line 23
    .line 24
    if-nez p2, :cond_2

    .line 25
    .line 26
    new-instance p2, Ljava/util/HashSet;

    .line 27
    .line 28
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->accountUuidSet:Ljava/util/Set;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    iput-object p4, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->accountUuidSet:Ljava/util/Set;

    .line 35
    .line 36
    :goto_1
    and-int/lit8 p2, p1, 0x8

    .line 37
    .line 38
    if-nez p2, :cond_3

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    iput-object p2, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->conditionsRoot:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    iput-object p5, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->conditionsRoot:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 45
    .line 46
    :goto_2
    and-int/lit8 p1, p1, 0x10

    .line 47
    .line 48
    if-nez p1, :cond_4

    .line 49
    .line 50
    new-instance p1, Ljava/util/HashSet;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->leafSet:Ljava/util/Set;

    .line 56
    .line 57
    return-void

    .line 58
    :cond_4
    iput-object p6, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->leafSet:Ljava/util/Set;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final addAccountUuid(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->accountUuidSet:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final addAllowedFolder(J)V
    .locals 3

    .line 1
    new-instance v0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

    .line 2
    .line 3
    sget-object v1, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->FOLDER:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 4
    .line 5
    sget-object v2, Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;->EQUALS:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 6
    .line 7
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, v1, v2, p1}, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;-><init>(Lnet/thunderbird/feature/search/legacy/api/SearchField;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->and(Lnet/thunderbird/feature/search/legacy/api/SearchCondition;)Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->conditionsRoot:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 19
    .line 20
    return-void
.end method

.method public final and(Lnet/thunderbird/feature/search/legacy/api/SearchCondition;)Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;
    .locals 6

    .line 1
    new-instance v0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 2
    .line 3
    sget-object v1, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;->CONDITION:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    const/16 v5, 0xc

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    move-object v2, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;-><init>(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;Lnet/thunderbird/feature/search/legacy/api/SearchCondition;Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;I)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p1}, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->collectLeaves(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;Ljava/util/LinkedHashSet;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->leafSet:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->conditionsRoot:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-static {v0}, Lokio/Options$Companion;->validateTree(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;)V

    .line 31
    .line 32
    .line 33
    move-object v4, v0

    .line 34
    new-instance v0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 35
    .line 36
    sget-object v1, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;->AND:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v5, 0x2

    .line 40
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;-><init>(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;Lnet/thunderbird/feature/search/legacy/api/SearchCondition;Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iput-object v0, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->conditionsRoot:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 44
    .line 45
    return-object v0
.end method

.method public final and(Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;Ljava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    new-instance v0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

    invoke-direct {v0, p1, p3, p2}, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;-><init>(Lnet/thunderbird/feature/search/legacy/api/SearchField;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->and(Lnet/thunderbird/feature/search/legacy/api/SearchCondition;)Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    return-void
.end method

.method public final getAccountUuids()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->accountUuidSet:Ljava/util/Set;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getConditions()Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;
    .locals 6

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->conditionsRoot:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    new-instance v2, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

    .line 6
    .line 7
    sget-object p0, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->SUBJECT:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 8
    .line 9
    sget-object v0, Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;->CONTAINS:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    invoke-direct {v2, p0, v0, v1}, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;-><init>(Lnet/thunderbird/feature/search/legacy/api/SearchField;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 17
    .line 18
    sget-object v1, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;->CONDITION:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/16 v5, 0xc

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;-><init>(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;Lnet/thunderbird/feature/search/legacy/api/SearchCondition;Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;I)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    return-object p0
.end method

.method public final getFolderIds()Ljava/util/ArrayList;
    .locals 5

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->leafSet:Ljava/util/Set;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/Iterable;

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 25
    .line 26
    iget-object v1, v1, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->condition:Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v3, v1, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->field:Lnet/thunderbird/feature/search/legacy/api/SearchField;

    .line 32
    .line 33
    sget-object v4, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->FOLDER:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 34
    .line 35
    if-ne v3, v4, :cond_1

    .line 36
    .line 37
    iget-object v3, v1, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->attribute:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 38
    .line 39
    sget-object v4, Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;->EQUALS:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 40
    .line 41
    if-ne v3, v4, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object v1, v2

    .line 45
    :goto_1
    if-eqz v1, :cond_2

    .line 46
    .line 47
    iget-object v1, v1, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->value:Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    :cond_2
    if-eqz v2, :cond_0

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    return-object v0
.end method

.method public final getRemoteSearchArguments()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->leafSet:Ljava/util/Set;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 21
    .line 22
    iget-object v0, v0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->condition:Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v2, v0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->field:Lnet/thunderbird/feature/search/legacy/api/SearchField;

    .line 27
    .line 28
    sget-object v3, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->SUBJECT:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 29
    .line 30
    if-eq v2, v3, :cond_2

    .line 31
    .line 32
    sget-object v3, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->SENDER:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object v0, v1

    .line 38
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 39
    .line 40
    iget-object v1, v0, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;->value:Ljava/lang/String;

    .line 41
    .line 42
    :cond_3
    if-eqz v1, :cond_0

    .line 43
    .line 44
    :cond_4
    return-object v1
.end method

.method public final or(Lnet/thunderbird/feature/search/legacy/api/SearchCondition;)V
    .locals 6

    .line 1
    new-instance v0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 2
    .line 3
    sget-object v1, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;->CONDITION:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    const/16 v5, 0xc

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    move-object v2, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;-><init>(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;Lnet/thunderbird/feature/search/legacy/api/SearchCondition;Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;I)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p1}, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;->collectLeaves(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;Ljava/util/LinkedHashSet;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->leafSet:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->conditionsRoot:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-static {v0}, Lokio/Options$Companion;->validateTree(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;)V

    .line 31
    .line 32
    .line 33
    move-object v4, v0

    .line 34
    new-instance v0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 35
    .line 36
    sget-object v1, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;->OR:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v5, 0x2

    .line 40
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;-><init>(Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;Lnet/thunderbird/feature/search/legacy/api/SearchCondition;Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iput-object v0, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->conditionsRoot:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 44
    .line 45
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LocalSearch(id=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\', isManualSearch="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->isManualSearch:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", accountUuidSet="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->accountUuidSet:Ljava/util/Set;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", conditionsRoot="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->conditionsRoot:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", leafSet="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->leafSet:Ljava/util/Set;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ")"

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method
