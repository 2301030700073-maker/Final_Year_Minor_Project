.class public final Lorg/wikimedia/testkitchen/ContextController;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v8, "agent_device_language"

    .line 2
    .line 3
    const-string v9, "agent_release_status"

    .line 4
    .line 5
    const-string v0, "agent_app_flavor"

    .line 6
    .line 7
    const-string v1, "agent_app_install_id"

    .line 8
    .line 9
    const-string v2, "agent_app_theme"

    .line 10
    .line 11
    const-string v3, "agent_app_version"

    .line 12
    .line 13
    const-string v4, "agent_app_version_name"

    .line 14
    .line 15
    const-string v5, "agent_client_platform"

    .line 16
    .line 17
    const-string v6, "agent_client_platform_family"

    .line 18
    .line 19
    const-string v7, "agent_device_family"

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    return-void
.end method
