.class public final enum Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

.field public static final $cachedSerializer$delegate:Lkotlin/Lazy;

.field public static final enum AND:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

.field public static final enum CONDITION:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

.field public static final Companion:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator$Companion;

.field public static final enum NOT:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

.field public static final enum OR:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 2
    .line 3
    const-string v1, "AND"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;->AND:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 10
    .line 11
    new-instance v1, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 12
    .line 13
    const-string v3, "NOT"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;->NOT:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 20
    .line 21
    new-instance v3, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 22
    .line 23
    const-string v5, "OR"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;->OR:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 30
    .line 31
    new-instance v5, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 32
    .line 33
    const-string v7, "CONDITION"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;->CONDITION:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 40
    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 43
    .line 44
    aput-object v0, v7, v2

    .line 45
    .line 46
    aput-object v1, v7, v4

    .line 47
    .line 48
    aput-object v3, v7, v6

    .line 49
    .line 50
    aput-object v5, v7, v8

    .line 51
    .line 52
    sput-object v7, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;->$VALUES:[Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 53
    .line 54
    new-instance v0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator$Companion;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;->Companion:Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator$Companion;

    .line 60
    .line 61
    new-instance v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    const/16 v1, 0x16

    .line 64
    .line 65
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch$$ExternalSyntheticLambda0;-><init>(I)V

    .line 66
    .line 67
    .line 68
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 69
    .line 70
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sput-object v0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;->$cachedSerializer$delegate:Lkotlin/Lazy;

    .line 75
    .line 76
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;
    .locals 1

    .line 1
    const-class v0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;->$VALUES:[Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode$Operator;

    .line 8
    .line 9
    return-object v0
.end method
