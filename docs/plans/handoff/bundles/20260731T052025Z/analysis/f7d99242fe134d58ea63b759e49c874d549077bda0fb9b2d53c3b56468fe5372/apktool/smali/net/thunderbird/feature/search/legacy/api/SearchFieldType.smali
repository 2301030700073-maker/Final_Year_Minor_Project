.class public final enum Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

.field public static final $cachedSerializer$delegate:Lkotlin/Lazy;

.field public static final enum CUSTOM:Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

.field public static final Companion:Lnet/thunderbird/feature/search/legacy/api/SearchFieldType$Companion;

.field public static final enum NUMBER:Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

.field public static final enum TEXT:Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 2
    .line 3
    const-string v1, "TEXT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;->TEXT:Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 10
    .line 11
    new-instance v1, Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 12
    .line 13
    const-string v3, "NUMBER"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;->NUMBER:Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 20
    .line 21
    new-instance v3, Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 22
    .line 23
    const-string v5, "CUSTOM"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;->CUSTOM:Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 33
    .line 34
    aput-object v0, v5, v2

    .line 35
    .line 36
    aput-object v1, v5, v4

    .line 37
    .line 38
    aput-object v3, v5, v6

    .line 39
    .line 40
    sput-object v5, Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;->$VALUES:[Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 41
    .line 42
    new-instance v0, Lnet/thunderbird/feature/search/legacy/api/SearchFieldType$Companion;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;->Companion:Lnet/thunderbird/feature/search/legacy/api/SearchFieldType$Companion;

    .line 48
    .line 49
    new-instance v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    const/16 v1, 0x1b

    .line 52
    .line 53
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch$$ExternalSyntheticLambda0;-><init>(I)V

    .line 54
    .line 55
    .line 56
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 57
    .line 58
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    .line 63
    .line 64
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;
    .locals 1

    .line 1
    const-class v0, Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;->$VALUES:[Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/thunderbird/feature/search/legacy/api/SearchFieldType;

    .line 8
    .line 9
    return-object v0
.end method
