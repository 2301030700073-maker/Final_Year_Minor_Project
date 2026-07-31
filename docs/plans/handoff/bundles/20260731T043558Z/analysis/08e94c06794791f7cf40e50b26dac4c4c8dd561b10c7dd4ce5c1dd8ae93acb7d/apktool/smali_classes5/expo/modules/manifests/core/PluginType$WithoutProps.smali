.class public final Lexpo/modules/manifests/core/PluginType$WithoutProps;
.super Lexpo/modules/manifests/core/PluginType;
.source "Manifest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/manifests/core/PluginType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WithoutProps"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\t\u001a\u00060\u0003j\u0002`\u0004H\u00c6\u0003J\u0017\u0010\n\u001a\u00020\u00002\u000c\u0008\u0002\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004H\u00c6\u0001J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0003H\u00d6\u0001R\u0015\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/manifests/core/PluginType$WithoutProps;",
        "Lexpo/modules/manifests/core/PluginType;",
        "plugin",
        "",
        "Lexpo/modules/manifests/core/PluginWithoutProps;",
        "<init>",
        "(Ljava/lang/String;)V",
        "getPlugin",
        "()Ljava/lang/String;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "expo-manifests_release"
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
.field private final plugin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 254
    invoke-direct {p0, v0}, Lexpo/modules/manifests/core/PluginType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lexpo/modules/manifests/core/PluginType$WithoutProps;->plugin:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/manifests/core/PluginType$WithoutProps;Ljava/lang/String;ILjava/lang/Object;)Lexpo/modules/manifests/core/PluginType$WithoutProps;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lexpo/modules/manifests/core/PluginType$WithoutProps;->plugin:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lexpo/modules/manifests/core/PluginType$WithoutProps;->copy(Ljava/lang/String;)Lexpo/modules/manifests/core/PluginType$WithoutProps;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/manifests/core/PluginType$WithoutProps;->plugin:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lexpo/modules/manifests/core/PluginType$WithoutProps;
    .locals 1

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/manifests/core/PluginType$WithoutProps;

    invoke-direct {v0, p1}, Lexpo/modules/manifests/core/PluginType$WithoutProps;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/manifests/core/PluginType$WithoutProps;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/manifests/core/PluginType$WithoutProps;

    iget-object v1, p0, Lexpo/modules/manifests/core/PluginType$WithoutProps;->plugin:Ljava/lang/String;

    iget-object p1, p1, Lexpo/modules/manifests/core/PluginType$WithoutProps;->plugin:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getPlugin()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lexpo/modules/manifests/core/PluginType$WithoutProps;->plugin:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lexpo/modules/manifests/core/PluginType$WithoutProps;->plugin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lexpo/modules/manifests/core/PluginType$WithoutProps;->plugin:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WithoutProps(plugin="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
