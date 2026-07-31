.class public final Lexpo/modules/updates/loader/UpdateDirective$NoUpdateAvailableUpdateDirective;
.super Lexpo/modules/updates/loader/UpdateDirective;
.source "RemoteUpdate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/loader/UpdateDirective;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoUpdateAvailableUpdateDirective"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lexpo/modules/updates/loader/UpdateDirective$NoUpdateAvailableUpdateDirective;",
        "Lexpo/modules/updates/loader/UpdateDirective;",
        "signingInfo",
        "Lexpo/modules/updates/loader/SigningInfo;",
        "<init>",
        "(Lexpo/modules/updates/loader/SigningInfo;)V",
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


# direct methods
.method public constructor <init>(Lexpo/modules/updates/loader/SigningInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lexpo/modules/updates/loader/UpdateDirective;-><init>(Lexpo/modules/updates/loader/SigningInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
