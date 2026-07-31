.class final Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration$WIFI_ONLY;
.super Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;
.source "UpdatesConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WIFI_ONLY"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\u00ca\u0001\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "expo/modules/updates/UpdatesConfiguration.CheckAutomaticallyConfiguration.WIFI_ONLY",
        "Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;",
        "toJSString",
        "",
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
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public toJSString()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "WIFI_ONLY"

    return-object v0
.end method
