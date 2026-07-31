.class public final enum Lexpo/modules/video/enums/AudioMixingMode;
.super Ljava/lang/Enum;
.source "AudioMixingMode.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/video/enums/AudioMixingMode$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/video/enums/AudioMixingMode;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\r\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lexpo/modules/video/enums/AudioMixingMode;",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "MIX_WITH_OTHERS",
        "DUCK_OTHERS",
        "AUTO",
        "DO_NOT_MIX",
        "priority",
        "",
        "getPriority",
        "()I",
        "expo-video_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lexpo/modules/video/enums/AudioMixingMode;

.field public static final enum AUTO:Lexpo/modules/video/enums/AudioMixingMode;

.field public static final enum DO_NOT_MIX:Lexpo/modules/video/enums/AudioMixingMode;

.field public static final enum DUCK_OTHERS:Lexpo/modules/video/enums/AudioMixingMode;

.field public static final enum MIX_WITH_OTHERS:Lexpo/modules/video/enums/AudioMixingMode;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/video/enums/AudioMixingMode;
    .locals 4

    sget-object v0, Lexpo/modules/video/enums/AudioMixingMode;->MIX_WITH_OTHERS:Lexpo/modules/video/enums/AudioMixingMode;

    sget-object v1, Lexpo/modules/video/enums/AudioMixingMode;->DUCK_OTHERS:Lexpo/modules/video/enums/AudioMixingMode;

    sget-object v2, Lexpo/modules/video/enums/AudioMixingMode;->AUTO:Lexpo/modules/video/enums/AudioMixingMode;

    sget-object v3, Lexpo/modules/video/enums/AudioMixingMode;->DO_NOT_MIX:Lexpo/modules/video/enums/AudioMixingMode;

    filled-new-array {v0, v1, v2, v3}, [Lexpo/modules/video/enums/AudioMixingMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lexpo/modules/video/enums/AudioMixingMode;

    const/4 v1, 0x0

    const-string v2, "mixWithOthers"

    const-string v3, "MIX_WITH_OTHERS"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/AudioMixingMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/AudioMixingMode;->MIX_WITH_OTHERS:Lexpo/modules/video/enums/AudioMixingMode;

    .line 7
    new-instance v0, Lexpo/modules/video/enums/AudioMixingMode;

    const/4 v1, 0x1

    const-string v2, "duckOthers"

    const-string v3, "DUCK_OTHERS"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/AudioMixingMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/AudioMixingMode;->DUCK_OTHERS:Lexpo/modules/video/enums/AudioMixingMode;

    .line 8
    new-instance v0, Lexpo/modules/video/enums/AudioMixingMode;

    const/4 v1, 0x2

    const-string v2, "auto"

    const-string v3, "AUTO"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/AudioMixingMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/AudioMixingMode;->AUTO:Lexpo/modules/video/enums/AudioMixingMode;

    .line 9
    new-instance v0, Lexpo/modules/video/enums/AudioMixingMode;

    const/4 v1, 0x3

    const-string v2, "doNotMix"

    const-string v3, "DO_NOT_MIX"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/AudioMixingMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/AudioMixingMode;->DO_NOT_MIX:Lexpo/modules/video/enums/AudioMixingMode;

    invoke-static {}, Lexpo/modules/video/enums/AudioMixingMode;->$values()[Lexpo/modules/video/enums/AudioMixingMode;

    move-result-object v0

    sput-object v0, Lexpo/modules/video/enums/AudioMixingMode;->$VALUES:[Lexpo/modules/video/enums/AudioMixingMode;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/video/enums/AudioMixingMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/video/enums/AudioMixingMode;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/video/enums/AudioMixingMode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/video/enums/AudioMixingMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/video/enums/AudioMixingMode;
    .locals 1

    const-class v0, Lexpo/modules/video/enums/AudioMixingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 20
    check-cast p0, Lexpo/modules/video/enums/AudioMixingMode;

    return-object p0
.end method

.method public static values()[Lexpo/modules/video/enums/AudioMixingMode;
    .locals 1

    sget-object v0, Lexpo/modules/video/enums/AudioMixingMode;->$VALUES:[Lexpo/modules/video/enums/AudioMixingMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, [Lexpo/modules/video/enums/AudioMixingMode;

    return-object v0
.end method


# virtual methods
.method public final getPriority()I
    .locals 4

    .line 13
    sget-object v0, Lexpo/modules/video/enums/AudioMixingMode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lexpo/modules/video/enums/AudioMixingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :cond_3
    :goto_0
    return v1
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lexpo/modules/video/enums/AudioMixingMode;->value:Ljava/lang/String;

    return-object v0
.end method
