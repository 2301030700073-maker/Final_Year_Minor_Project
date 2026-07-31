.class public final enum Lorg/koin/core/option/KoinOption;
.super Ljava/lang/Enum;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $VALUES:[Lorg/koin/core/option/KoinOption;

.field public static final enum VIEWMODEL_SCOPE_FACTORY:Lorg/koin/core/option/KoinOption;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/koin/core/option/KoinOption;

    .line 2
    .line 3
    const-string v1, "VIEWMODEL_SCOPE_FACTORY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/koin/core/option/KoinOption;->VIEWMODEL_SCOPE_FACTORY:Lorg/koin/core/option/KoinOption;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Lorg/koin/core/option/KoinOption;

    .line 13
    .line 14
    aput-object v0, v1, v2

    .line 15
    .line 16
    sput-object v1, Lorg/koin/core/option/KoinOption;->$VALUES:[Lorg/koin/core/option/KoinOption;

    .line 17
    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/koin/core/option/KoinOption;
    .locals 1

    .line 1
    const-class v0, Lorg/koin/core/option/KoinOption;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/koin/core/option/KoinOption;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/koin/core/option/KoinOption;
    .locals 1

    .line 1
    sget-object v0, Lorg/koin/core/option/KoinOption;->$VALUES:[Lorg/koin/core/option/KoinOption;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/koin/core/option/KoinOption;

    .line 8
    .line 9
    return-object v0
.end method
