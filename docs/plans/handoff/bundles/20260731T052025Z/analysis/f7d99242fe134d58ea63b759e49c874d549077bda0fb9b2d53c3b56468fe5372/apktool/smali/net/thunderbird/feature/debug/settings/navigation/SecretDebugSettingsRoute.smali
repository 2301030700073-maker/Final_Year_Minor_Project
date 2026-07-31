.class public final Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute$Companion;


# instance fields
.field public final basePath:Ljava/lang/String;

.field public final tab:Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute$Tab;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute;->Companion:Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute$Companion;

    .line 7
    .line 8
    new-instance v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/16 v1, 0x1b

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 16
    .line 17
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x2

    .line 22
    new-array v1, v1, [Lkotlin/Lazy;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    aput-object v0, v1, v2

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    const/4 v2, 0x1

    .line 29
    aput-object v0, v1, v2

    .line 30
    .line 31
    sput-object v1, Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute;->$childSerializers:[Lkotlin/Lazy;

    .line 32
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute$Tab;->FeatureFlag:Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute$Tab;

    iput-object v0, p0, Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute;->tab:Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute$Tab;

    .line 26
    const-string v0, "app://secret_debug_settings/{tab}"

    iput-object v0, p0, Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute;->basePath:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute$Tab;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p2, Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute$Tab;->Notification:Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute$Tab;

    .line 9
    .line 10
    :cond_0
    iput-object p2, p0, Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute;->tab:Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute$Tab;

    .line 11
    .line 12
    and-int/lit8 p1, p1, 0x2

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    const-string p1, "app://secret_debug_settings/{tab}"

    .line 17
    .line 18
    iput-object p1, p0, Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute;->basePath:Ljava/lang/String;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iput-object p3, p0, Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute;->basePath:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute;

    .line 12
    .line 13
    iget-object p0, p0, Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute;->tab:Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute$Tab;

    .line 14
    .line 15
    iget-object p1, p1, Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute;->tab:Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute$Tab;

    .line 16
    .line 17
    if-eq p0, p1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute;->tab:Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute$Tab;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SecretDebugSettingsRoute(tab="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute;->tab:Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute$Tab;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ")"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
