.class public final Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicyDevelopmentClient;
.super Ljava/lang/Object;
.source "ReaperSelectionPolicyDevelopmentClient.kt"

# interfaces
.implements Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0013\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J0\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicyDevelopmentClient;",
        "Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicy;",
        "maxUpdatesToKeep",
        "",
        "<init>",
        "(I)V",
        "selectUpdatesToDelete",
        "",
        "Lexpo/modules/updates/db/entity/UpdateEntity;",
        "updates",
        "launchedUpdate",
        "filters",
        "Lorg/json/JSONObject;",
        "expo-updates_release"
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
.field private final maxUpdatesToKeep:I


# direct methods
.method public static synthetic $r8$lambda$2Ci5nawOxUV7ON4_6GGFMljUW1k(Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/db/entity/UpdateEntity;)I
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicyDevelopmentClient;->selectUpdatesToDelete$lambda$0(Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/db/entity/UpdateEntity;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$l7JaycRCUpOvmtBi5b5-eeLdE-0(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicyDevelopmentClient;->selectUpdatesToDelete$lambda$1(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicyDevelopmentClient;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicyDevelopmentClient;->maxUpdatesToKeep:I

    if-lez p1, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Cannot initialize ReaperSelectionPolicyDevelopmentClient with maxUpdatesToKeep <= 0"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0xa

    .line 17
    :cond_0
    invoke-direct {p0, p1}, Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicyDevelopmentClient;-><init>(I)V

    return-void
.end method

.method private static final selectUpdatesToDelete$lambda$0(Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/db/entity/UpdateEntity;)I
    .locals 2

    const-string v0, "u1"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "u2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lexpo/modules/updates/db/entity/UpdateEntity;->getLastAccessed()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/UpdateEntity;->getLastAccessed()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lexpo/modules/updates/db/entity/UpdateEntity;->getCommitTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/UpdateEntity;->getCommitTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private static final selectUpdatesToDelete$lambda$1(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 28
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public selectUpdatesToDelete(Ljava/util/List;Lexpo/modules/updates/db/entity/UpdateEntity;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lexpo/modules/updates/db/entity/UpdateEntity;",
            ">;",
            "Lexpo/modules/updates/db/entity/UpdateEntity;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/updates/db/entity/UpdateEntity;",
            ">;"
        }
    .end annotation

    const-string p3, "updates"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    iget v0, p0, Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicyDevelopmentClient;->maxUpdatesToKeep:I

    if-gt p3, v0, :cond_0

    goto :goto_1

    .line 27
    :cond_0
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 28
    new-instance p3, Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicyDevelopmentClient$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicyDevelopmentClient$$ExternalSyntheticLambda0;-><init>()V

    new-instance v0, Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicyDevelopmentClient$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3}, Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicyDevelopmentClient$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 35
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    .line 37
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lexpo/modules/updates/selectionpolicy/ReaperSelectionPolicyDevelopmentClient;->maxUpdatesToKeep:I

    if-le v2, v3, :cond_3

    .line 38
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/updates/db/entity/UpdateEntity;

    .line 39
    invoke-virtual {v2}, Lexpo/modules/updates/db/entity/UpdateEntity;->getId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/UpdateEntity;->getId()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    .line 45
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_0

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Multiple updates with the same ID were passed into ReaperSelectionPolicyDevelopmentClient"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 48
    :cond_2
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object p3

    .line 25
    :cond_4
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
