.class public final Lexpo/modules/updates/selectionpolicy/LauncherSelectionPolicySingleUpdate;
.super Ljava/lang/Object;
.source "LauncherSelectionPolicySingleUpdate.kt"

# interfaces
.implements Lexpo/modules/updates/selectionpolicy/LauncherSelectionPolicy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLauncherSelectionPolicySingleUpdate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherSelectionPolicySingleUpdate.kt\nexpo/modules/updates/selectionpolicy/LauncherSelectionPolicySingleUpdate\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n1#2:19\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\"\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/updates/selectionpolicy/LauncherSelectionPolicySingleUpdate;",
        "Lexpo/modules/updates/selectionpolicy/LauncherSelectionPolicy;",
        "updateID",
        "Ljava/util/UUID;",
        "<init>",
        "(Ljava/util/UUID;)V",
        "selectUpdateToLaunch",
        "Lexpo/modules/updates/db/entity/UpdateEntity;",
        "updates",
        "",
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
.field private final updateID:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;)V
    .locals 1

    const-string v0, "updateID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/updates/selectionpolicy/LauncherSelectionPolicySingleUpdate;->updateID:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public selectUpdateToLaunch(Ljava/util/List;Lorg/json/JSONObject;)Lexpo/modules/updates/db/entity/UpdateEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lexpo/modules/updates/db/entity/UpdateEntity;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Lexpo/modules/updates/db/entity/UpdateEntity;"
        }
    .end annotation

    const-string p2, "updates"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lexpo/modules/updates/db/entity/UpdateEntity;

    invoke-virtual {v0}, Lexpo/modules/updates/db/entity/UpdateEntity;->getId()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/updates/selectionpolicy/LauncherSelectionPolicySingleUpdate;->updateID:Ljava/util/UUID;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    check-cast p2, Lexpo/modules/updates/db/entity/UpdateEntity;

    return-object p2
.end method
