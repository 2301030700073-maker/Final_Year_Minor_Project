.class public final Lexpo/modules/updates/loader/UpdateDirective$RollBackToEmbeddedUpdateDirective;
.super Lexpo/modules/updates/loader/UpdateDirective;
.source "RemoteUpdate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/loader/UpdateDirective;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RollBackToEmbeddedUpdateDirective"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lexpo/modules/updates/loader/UpdateDirective$RollBackToEmbeddedUpdateDirective;",
        "Lexpo/modules/updates/loader/UpdateDirective;",
        "commitTime",
        "Ljava/util/Date;",
        "signingInfo",
        "Lexpo/modules/updates/loader/SigningInfo;",
        "<init>",
        "(Ljava/util/Date;Lexpo/modules/updates/loader/SigningInfo;)V",
        "getCommitTime",
        "()Ljava/util/Date;",
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
.field private final commitTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;Lexpo/modules/updates/loader/SigningInfo;)V
    .locals 1

    const-string v0, "commitTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p2, v0}, Lexpo/modules/updates/loader/UpdateDirective;-><init>(Lexpo/modules/updates/loader/SigningInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lexpo/modules/updates/loader/UpdateDirective$RollBackToEmbeddedUpdateDirective;->commitTime:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final getCommitTime()Ljava/util/Date;
    .locals 1

    .line 15
    iget-object v0, p0, Lexpo/modules/updates/loader/UpdateDirective$RollBackToEmbeddedUpdateDirective;->commitTime:Ljava/util/Date;

    return-object v0
.end method
