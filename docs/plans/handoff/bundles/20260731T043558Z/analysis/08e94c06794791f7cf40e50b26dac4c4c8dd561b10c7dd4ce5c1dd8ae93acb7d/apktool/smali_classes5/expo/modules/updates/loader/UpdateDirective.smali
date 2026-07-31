.class public abstract Lexpo/modules/updates/loader/UpdateDirective;
.super Ljava/lang/Object;
.source "RemoteUpdate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/loader/UpdateDirective$Companion;,
        Lexpo/modules/updates/loader/UpdateDirective$NoUpdateAvailableUpdateDirective;,
        Lexpo/modules/updates/loader/UpdateDirective$RollBackToEmbeddedUpdateDirective;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \n2\u00020\u0001:\u0003\u0008\t\nB\u0013\u0008\u0004\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u0082\u0001\u0002\u000b\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/updates/loader/UpdateDirective;",
        "",
        "signingInfo",
        "Lexpo/modules/updates/loader/SigningInfo;",
        "<init>",
        "(Lexpo/modules/updates/loader/SigningInfo;)V",
        "getSigningInfo",
        "()Lexpo/modules/updates/loader/SigningInfo;",
        "NoUpdateAvailableUpdateDirective",
        "RollBackToEmbeddedUpdateDirective",
        "Companion",
        "Lexpo/modules/updates/loader/UpdateDirective$NoUpdateAvailableUpdateDirective;",
        "Lexpo/modules/updates/loader/UpdateDirective$RollBackToEmbeddedUpdateDirective;",
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


# static fields
.field public static final Companion:Lexpo/modules/updates/loader/UpdateDirective$Companion;


# instance fields
.field private final signingInfo:Lexpo/modules/updates/loader/SigningInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/loader/UpdateDirective$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/loader/UpdateDirective$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/loader/UpdateDirective;->Companion:Lexpo/modules/updates/loader/UpdateDirective$Companion;

    return-void
.end method

.method private constructor <init>(Lexpo/modules/updates/loader/SigningInfo;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/updates/loader/UpdateDirective;->signingInfo:Lexpo/modules/updates/loader/SigningInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lexpo/modules/updates/loader/SigningInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lexpo/modules/updates/loader/UpdateDirective;-><init>(Lexpo/modules/updates/loader/SigningInfo;)V

    return-void
.end method


# virtual methods
.method public final getSigningInfo()Lexpo/modules/updates/loader/SigningInfo;
    .locals 1

    .line 13
    iget-object v0, p0, Lexpo/modules/updates/loader/UpdateDirective;->signingInfo:Lexpo/modules/updates/loader/SigningInfo;

    return-object v0
.end method
