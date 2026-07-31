.class public interface abstract Lexpo/modules/updates/selectionpolicy/LoaderSelectionPolicy;
.super Ljava/lang/Object;
.source "LoaderSelectionPolicy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&J,\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/updates/selectionpolicy/LoaderSelectionPolicy;",
        "",
        "shouldLoadNewUpdate",
        "",
        "newUpdate",
        "Lexpo/modules/updates/db/entity/UpdateEntity;",
        "launchedUpdate",
        "filters",
        "Lorg/json/JSONObject;",
        "shouldLoadRollBackToEmbeddedDirective",
        "directive",
        "Lexpo/modules/updates/loader/UpdateDirective$RollBackToEmbeddedUpdateDirective;",
        "embeddedUpdate",
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


# virtual methods
.method public abstract shouldLoadNewUpdate(Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/db/entity/UpdateEntity;Lorg/json/JSONObject;)Z
.end method

.method public abstract shouldLoadRollBackToEmbeddedDirective(Lexpo/modules/updates/loader/UpdateDirective$RollBackToEmbeddedUpdateDirective;Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/db/entity/UpdateEntity;Lorg/json/JSONObject;)Z
.end method
