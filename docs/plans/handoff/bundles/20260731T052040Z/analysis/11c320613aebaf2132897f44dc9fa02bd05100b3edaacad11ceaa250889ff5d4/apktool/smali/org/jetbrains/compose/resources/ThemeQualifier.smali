.class public final enum Lorg/jetbrains/compose/resources/ThemeQualifier;
.super Ljava/lang/Enum;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/jetbrains/compose/resources/Qualifier;


# static fields
.field public static final synthetic $VALUES:[Lorg/jetbrains/compose/resources/ThemeQualifier;

.field public static final Companion:Lorg/jetbrains/compose/resources/ThemeQualifier$Companion;

.field public static final enum DARK:Lorg/jetbrains/compose/resources/ThemeQualifier;

.field public static final enum LIGHT:Lorg/jetbrains/compose/resources/ThemeQualifier;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/jetbrains/compose/resources/ThemeQualifier;

    .line 2
    .line 3
    const-string v1, "LIGHT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/jetbrains/compose/resources/ThemeQualifier;->LIGHT:Lorg/jetbrains/compose/resources/ThemeQualifier;

    .line 10
    .line 11
    new-instance v1, Lorg/jetbrains/compose/resources/ThemeQualifier;

    .line 12
    .line 13
    const-string v3, "DARK"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lorg/jetbrains/compose/resources/ThemeQualifier;->DARK:Lorg/jetbrains/compose/resources/ThemeQualifier;

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v3, v3, [Lorg/jetbrains/compose/resources/ThemeQualifier;

    .line 23
    .line 24
    aput-object v0, v3, v2

    .line 25
    .line 26
    aput-object v1, v3, v4

    .line 27
    .line 28
    sput-object v3, Lorg/jetbrains/compose/resources/ThemeQualifier;->$VALUES:[Lorg/jetbrains/compose/resources/ThemeQualifier;

    .line 29
    .line 30
    new-instance v0, Lorg/jetbrains/compose/resources/ThemeQualifier$Companion;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lorg/jetbrains/compose/resources/ThemeQualifier;->Companion:Lorg/jetbrains/compose/resources/ThemeQualifier$Companion;

    .line 36
    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jetbrains/compose/resources/ThemeQualifier;
    .locals 1

    .line 1
    const-class v0, Lorg/jetbrains/compose/resources/ThemeQualifier;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jetbrains/compose/resources/ThemeQualifier;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/jetbrains/compose/resources/ThemeQualifier;
    .locals 1

    .line 1
    sget-object v0, Lorg/jetbrains/compose/resources/ThemeQualifier;->$VALUES:[Lorg/jetbrains/compose/resources/ThemeQualifier;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jetbrains/compose/resources/ThemeQualifier;

    .line 8
    .line 9
    return-object v0
.end method
