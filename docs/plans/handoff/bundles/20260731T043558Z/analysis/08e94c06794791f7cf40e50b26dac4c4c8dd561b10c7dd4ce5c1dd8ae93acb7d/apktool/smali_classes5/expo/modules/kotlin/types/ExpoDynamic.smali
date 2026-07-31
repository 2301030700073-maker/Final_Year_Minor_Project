.class public final Lexpo/modules/kotlin/types/ExpoDynamic;
.super Ljava/lang/Object;
.source "ExpoDynamic.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/types/ExpoDynamic$Type;,
        Lexpo/modules/kotlin/types/ExpoDynamic$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u0018B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000eJ\u0006\u0010\u000f\u001a\u00020\u000bJ\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0013J\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0015J\u0006\u0010\u0017\u001a\u00020\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000c\u00a8\u0006\u0019"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/ExpoDynamic;",
        "",
        "dynamic",
        "Lcom/facebook/react/bridge/Dynamic;",
        "<init>",
        "(Lcom/facebook/react/bridge/Dynamic;)V",
        "type",
        "Lexpo/modules/kotlin/types/ExpoDynamic$Type;",
        "getType",
        "()Lexpo/modules/kotlin/types/ExpoDynamic$Type;",
        "isNull",
        "",
        "()Z",
        "asArray",
        "",
        "asBoolean",
        "asDouble",
        "",
        "asInt",
        "",
        "asMap",
        "",
        "",
        "asString",
        "Type",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final dynamic:Lcom/facebook/react/bridge/Dynamic;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1

    const-string v0, "dynamic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/kotlin/types/ExpoDynamic;->dynamic:Lcom/facebook/react/bridge/Dynamic;

    return-void
.end method


# virtual methods
.method public final asArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lexpo/modules/kotlin/types/ExpoDynamic;->dynamic:Lcom/facebook/react/bridge/Dynamic;

    invoke-interface {v0}, Lcom/facebook/react/bridge/Dynamic;->asArray()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final asBoolean()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lexpo/modules/kotlin/types/ExpoDynamic;->dynamic:Lcom/facebook/react/bridge/Dynamic;

    invoke-interface {v0}, Lcom/facebook/react/bridge/Dynamic;->asBoolean()Z

    move-result v0

    return v0
.end method

.method public final asDouble()D
    .locals 2

    .line 43
    iget-object v0, p0, Lexpo/modules/kotlin/types/ExpoDynamic;->dynamic:Lcom/facebook/react/bridge/Dynamic;

    invoke-interface {v0}, Lcom/facebook/react/bridge/Dynamic;->asDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public final asInt()I
    .locals 1

    .line 47
    iget-object v0, p0, Lexpo/modules/kotlin/types/ExpoDynamic;->dynamic:Lcom/facebook/react/bridge/Dynamic;

    invoke-interface {v0}, Lcom/facebook/react/bridge/Dynamic;->asInt()I

    move-result v0

    return v0
.end method

.method public final asMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lexpo/modules/kotlin/types/ExpoDynamic;->dynamic:Lcom/facebook/react/bridge/Dynamic;

    invoke-interface {v0}, Lcom/facebook/react/bridge/Dynamic;->asMap()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final asString()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lexpo/modules/kotlin/types/ExpoDynamic;->dynamic:Lcom/facebook/react/bridge/Dynamic;

    invoke-interface {v0}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Lexpo/modules/kotlin/types/ExpoDynamic$Type;
    .locals 2

    .line 16
    iget-object v0, p0, Lexpo/modules/kotlin/types/ExpoDynamic;->dynamic:Lcom/facebook/react/bridge/Dynamic;

    invoke-interface {v0}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    sget-object v1, Lexpo/modules/kotlin/types/ExpoDynamic$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 22
    :pswitch_0
    sget-object v0, Lexpo/modules/kotlin/types/ExpoDynamic$Type;->Array:Lexpo/modules/kotlin/types/ExpoDynamic$Type;

    goto :goto_0

    .line 21
    :pswitch_1
    sget-object v0, Lexpo/modules/kotlin/types/ExpoDynamic$Type;->Map:Lexpo/modules/kotlin/types/ExpoDynamic$Type;

    goto :goto_0

    .line 20
    :pswitch_2
    sget-object v0, Lexpo/modules/kotlin/types/ExpoDynamic$Type;->String:Lexpo/modules/kotlin/types/ExpoDynamic$Type;

    goto :goto_0

    .line 19
    :pswitch_3
    sget-object v0, Lexpo/modules/kotlin/types/ExpoDynamic$Type;->Number:Lexpo/modules/kotlin/types/ExpoDynamic$Type;

    goto :goto_0

    .line 18
    :pswitch_4
    sget-object v0, Lexpo/modules/kotlin/types/ExpoDynamic$Type;->Boolean:Lexpo/modules/kotlin/types/ExpoDynamic$Type;

    :goto_0
    return-object v0

    .line 17
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExpoDynamic is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isNull()Z
    .locals 2

    .line 28
    iget-object v0, p0, Lexpo/modules/kotlin/types/ExpoDynamic;->dynamic:Lcom/facebook/react/bridge/Dynamic;

    invoke-interface {v0}, Lcom/facebook/react/bridge/Dynamic;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExpoDynamic is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
